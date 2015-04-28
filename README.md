#Contaminant Source Inventory database redesign
Eric Goddard

This project was completed as part of the COMP 4115 - Database Processes and 
Design course at the University of Memphis. The goal was to redesign the 
Contaminant Source Inventory (CSI) database that is updated annually to make it 
easier to use, update, and generate reports in other formats as required for 
various state and local agencies. The project had four goals:

    1. Create a consolidated, normalized database design that will make it easier 
       to update and generate annual reports. (Completed) 
    2. Migrate historical data into the new database. (Completed) 
    3. Automate updating of the source regulatory data. 
    4. Automate the generation of reports. (Completed) 
 

Only the code to transform and migrate the database is provided; no source data 
is included. Assuming one had the source data and wanted to transform the source 
data into the new schema, perform the migration and generate the Excel reports 
for distribution, the following commands would need to be run:

```bash
createdb gwi_csi
./scripts/load_csis.sh
psql -d gwi_csi -a -f scripts/schema_transformation.sql
psql -d gwi_csi -a -f scripts/merge_zones.sql
psql -d gwi_csi -a -f scripts/populate_facilities.sql
psql -d gwi_csi -a -f scripts/drop_source_data.sql
psql -d gwi_csi -a -f scripts/report_view.sql

python generate_report.py
```
