/* 
 * Merges all of the zone2* tables into the wellhead_protection_zone table.
 */
DO
$$
DECLARE
    tables RECORD;

BEGIN
    TRUNCATE wellhead_protection_zones;

    FOR tables IN SELECT table_name FROM information_schema.tables
    WHERE
        table_schema = 'public' AND table_type = 'BASE TABLE' AND table_name LIKE
        'zone2%' LOOP
            
            IF tables.table_name = 'zone2_mlgw_2014' THEN
                EXECUTE 'INSERT INTO wellhead_protection_zones(whpa_id, well_field, '
                    || 'aquifer, wkb_geometry) '
                    || 'SELECT concat(' || quote_literal(tables.table_name)
                    || ', ''_'', ogc_fid), well_field, aquifer, '
                    || 'wkb_geometry FROM ' || quote_ident(tables.table_name);
            ELSE
                EXECUTE 'INSERT INTO wellhead_protection_zones(whpa_id, '
                    || 'wkb_geometry) '
                    || 'SELECT concat(' || quote_literal(tables.table_name)
                    || ', ''_'', ogc_fid), wkb_geometry FROM '
                    || quote_ident(tables.table_name);
            END IF;
    END LOOP;
END$$;    
            

