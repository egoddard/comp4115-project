/*
 * Merges and transforms all of the CSI complete tables into the new facilities table.
*/
DO
$$
DECLARE
    tables RECORD;
    comment_col text;
    hyperlink_cols text;


BEGIN
    FOR tables in select table_name from information_schema.tables 
    where 
        table_schema='public' and table_type = 'BASE TABLE' 
        and table_name like '%complete' LOOP
            EXECUTE 'SELECT column_name from information_schema.columns
                     where table_name = ' || quote_literal(tables.table_name) ||
                    ' and column_name like ''comment%''' INTO comment_col;

            EXECUTE 'SELECT array_to_string(array_agg(column_name::text), '','')' ||
                    ' FROM information_schema.columns where table_name = ' || quote_literal(tables.table_name) ||
                    ' and column_name like ''hyperlink%''' INTO hyperlink_cols;

            EXECUTE 'INSERT INTO facilities(facility_id, facility_name, address, phone,
                         property_type, facility_type, facility_status, csi_zone, comments,
                         "date", wkb_geometry)
                     SELECT concat(split_part(' || quote_literal(tables.table_name) || 
                            ', ''_csi'', 1), ''_'', fac_no), fac_name, address, phone,
                        prop_type, fac_type, fac_status, csi_zone, ' || 
                        quote_ident(comment_col) || ', "date", wkb_geometry FROM ' || 
                        quote_ident(tables.table_name);

            EXECUTE 'INSERT INTO hyperlinks(facility_id, url)
                     SELECT concat(split_part(' || quote_literal(tables.table_name) ||
                            ', ''_csi'', 1), ''_'', fac_no), unnest(array[' ||
                             hyperlink_cols || ']) from ' || 
                             quote_ident(tables.table_name);

            EXECUTE 'DELETE FROM hyperlinks where url IS NULL or url IN (''<Null>'', '''', '' '')';
                       
            



    END LOOP;
END$$;
