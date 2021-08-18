

    SELECT
        user_id
        , month
        --, CONCAT(user_id,use_month) AS key
        --, FARM_FINGERPRINT( CAST(CONCAT(user_id,month) AS STRING) )  AS h
        --, ABS(FARM_FINGERPRINT( CAST(CONCAT(user_id,month) AS STRING) )) AS h_2
        --, MOD(ABS(FARM_FINGERPRINT( CAST(CONCAT(user_id,month) AS STRING) )),10) AS h_3
    FROM
        table_1
    WHERE
        MOD(ABS(FARM_FINGERPRINT( CAST(CONCAT(user_id,month) AS STRING) )),10) = 1
        /*10分の1*/
        
