---
title: Contaminant Source Inventories Database Progress Report
author: Eric Goddard
date: \today
geometry: margin=1in
---

#Work Completed
Work thus far has focused on understanding the existing database design and 
modeling the schema for the new database. A Python script was written that creates
a markdown file for each table in the existing database and lists the field names 
and data types. Additionally, it lists all of the common fields. The new schema 
design (as it currently stands) is in Figure 1. 

![The new schema for the Contaminant Source Inventory Database][fig1]

#Work Remaining
Some additional work is required to finalize the schema design. I was missing some 
of the data, so the schema in Figure 1 will need to be modified slightly. After it 
is finalized, the remaining steps include:

1. Populating the Postgres/PostGIS database with the current database
2. Writing SQL scripts to normalize the data using the new schema
3. Write Python scripts to automate populating the database with updates and new 
features on a yearly basis, preferably using APIs if they exist, otherwise by
extracting information from CSV files and spreadsheets.
4. Write Python script that generates the report.

#Barriers
Not many barriers to report at this stage since I'm still basically in the 
planning phase. The Python script that generates a report for the existing 
database displayed a number of issues with the fields, mostly with inconsistent
naming (typos, different caps, etc.) that will make moving the source data into 
the new schema more complicated, but not impossible.

[fig1]: csi_schema.png "The new schema for the Contaminant Source Inventory Database"
