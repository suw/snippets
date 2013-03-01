# SQL query to convert decimal coordinates to degrees, minutes, to seconds.

## How to use:

1. Put decimal coordinates into the latitude and longitude fields
1. Create the following fields: lat_deg, lat_min, lat_sec
1. Modify table name and run update.

## Notes:

1. Originally written for MSSQL but with minor modification of functions
it will likely work for MySQL and PostgreSQL
1. This is a completely crude and inaccurate method of conversion. It
obviously does not take into consideration datum or projection.
