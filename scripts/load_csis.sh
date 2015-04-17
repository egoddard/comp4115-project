#!/bin/bash

# Load the 2014 Complete CSI geodatabase into postgres
ogr2ogr -overwrite -skipfailures -f "PostgreSQL" PG:"user=eric dbname=gwi_csi" \
    ../data/CSI_2014_Complete.gdb

# Load the Wellhead Protection Areas into postgres
ogr2ogr -overwrite -skipfailures -f "PostgreSQL" PG:"user=eric dbname=gwi_csi" \
    ../data/WHPAZone2_2014.gdb

