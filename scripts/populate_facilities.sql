/*
 * Merges and transforms all of the CSI complete tables into the new facilities table.
*/
DO
$$
DECLARE
    tables RECORD;
    comment_col text;
    hyperlink_cols text;
    base_id text;
    env_id_cols text[];
    env_data_cols text[];
    env_query text;
    env_id int;
    id_min int;
    id_max int;


BEGIN
    TRUNCATE facilities;
    TRUNCATE hyperlinks;
    TRUNCATE env_issues;


    FOR tables in select table_name from information_schema.tables 
    where 
        table_schema='public' and table_type = 'BASE TABLE' 
        and table_name like '%complete' LOOP
            -- Get the column name for the comments attribute, since it is
            -- spelled slightly different in the tables we want to merge.
            EXECUTE 'SELECT column_name from information_schema.columns
                     where table_name = ' || quote_literal(tables.table_name) ||
                    ' and column_name like ''comment%''' INTO comment_col;

            -- Get the columns that contain hyperlinks in each table we want to
            -- merge. The number of hyperlink columns varies.
            EXECUTE 'SELECT array_to_string(array_agg(column_name::text), '','')' ||
                    ' FROM information_schema.columns where table_name = ' || quote_literal(tables.table_name) ||
                    ' and column_name like ''hyperlink%''' INTO hyperlink_cols;

            -- Get the env ID columns into a sorted array
            EXECUTE 'SELECT ARRAY(select column_name::text FROM information_schema.columns'
                     || ' WHERE (column_name LIKE ''env_id%''  OR column_name LIKE ''envid%'')'
                     || ' AND table_name = ' || quote_literal(tables.table_name) 
                     || ' ORDER BY column_name)' 
                     INTO env_id_cols;

            -- Get the env data columns into a sorted array that matches env_id
            EXECUTE 'SELECT ARRAY(select column_name::text FROM information_schema.columns'
                     || ' WHERE column_name LIKE ''env_data%'' AND table_name = ' ||
                     quote_literal(tables.table_name) || 'ORDER BY column_name)'
                     INTO env_data_cols;

            EXECUTE 'SELECT concat(split_part(' || quote_literal(tables.table_name) ||
                    ', ''_csi'', 1), ''_'')' INTO base_id;

            /* Move the fields from each of the input tables into the new, 
             * facilities table. A new, unique id is created
             * for each facility using the table name and its fac_no.
             */
            EXECUTE 'INSERT INTO facilities(facility_id, facility_name, address, '
                    || 'phone, property_type, facility_type, facility_status, '
                    || 'csi_zone, comments, "date", wkb_geometry) '
                    || 'SELECT concat(' || quote_literal(base_id) || ', fac_no), '
                    || 'fac_name, address, phone, prop_type, fac_type, fac_status, '
                    || 'csi_zone, ' || quote_ident(comment_col) || ', "date", '
                    || 'wkb_geometry FROM ' || quote_ident(tables.table_name);

            -- Unpivot the input table so that each hyperlink is row-wise
            -- instead of column-wise with the unnest function.
            EXECUTE 'INSERT INTO hyperlinks(facility_id, url)
                     SELECT concat(' || quote_literal(base_id) || ', fac_no), '
                    || 'unnest(array[' || hyperlink_cols || ']) from ' 
                    ||  quote_ident(tables.table_name);

            -- Loop over the env_id array by index
            id_min := array_lower(env_id_cols, 1);
            id_max := array_upper(env_id_cols, 1);

            env_query := 'INSERT INTO env_issues(facility_id, env_id, issue) ';

            FOR env_id in id_min .. id_max LOOP
                env_query := env_query || 'SELECT concat(' || quote_literal(base_id) 
                    || ', fac_no)::text AS fac_id, ' || quote_ident(env_id_cols[env_id]) 
                    || '::text as env_id, '
                    || quote_ident(env_data_cols[env_id]) || '::text as env_data FROM '
                    || quote_ident(tables.table_name) || ' UNION ';
            END LOOP;

            EXECUTE rtrim(env_query, ' UNION ');
            
            -- Delete the empty rows from hyperlinks and env_issues 
            EXECUTE 'DELETE FROM hyperlinks where url IS NULL or url IN '
                || '(''<Null>'', '''', '' '')';

            EXECUTE 'DELETE FROM env_issues WHERE env_id IS NULL or env_id IN '
                || '(''<Null>'', '''', '' '')';
    END LOOP;
END$$;
