CREATE OR REPLACE VIEW whpa_report AS
    SELECT
        f.ogc_fid, f.facility_id, f.facility_name, f.whpa_id, f.address, f.phone,
        f.property_type, f.facility_type, f.facility_status, f.csi_zone,
        f."date", f.comments, ST_AsText(wkb_geometry) AS location, wkb_geometry, 
        h.urls, e.issues
    FROM 
        facilities as f
    LEFT JOIN
        (SELECT
            facility_id, array_to_string(array_agg(url), ',') AS urls
         FROM
            hyperlinks
         GROUP BY
            facility_id) as h ON f.facility_id = h.facility_id
    LEFT JOIN
        (SELECT
            facility_id, array_agg(concat(issue, ' (', env_id, ')')) AS issues
         FROM
            env_issues
         GROUP BY
            facility_id) AS e ON f.facility_id = e.facility_id;
