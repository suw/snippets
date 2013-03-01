UPDATE table_name_here
SET
lat_deg = CONVERT(INT, latitude),
lat_min = ABS ( CONVERT(INT, (latitude - CONVERT(INT, latitude)) * 60) ),
lat_sec = ABS ( CONVERT(INT, (
            (latitude - CONVERT(INT, latitude)) * 60 - 
            (CONVERT(INT, (latitude - CONVERT(INT, latitude)) * 60))
        ) * 60
    )
),
long_deg = CONVERT(INT, ABS(longitude)),
long_min = ABS(CONVERT(INT, (ABS(longitude) - CONVERT(INT, ABS(longitude))) * 60)),
long_sec = ABS(
    CONVERT(INT, (
            (ABS(longitude) - CONVERT(INT, ABS(longitude))) * 60 - 
            (CONVERT(INT, (ABS(longitude) - CONVERT(INT, ABS(longitude))) * 60))
        ) * 60
    )
)
