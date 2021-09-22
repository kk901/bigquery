/*UDF section */
/*
 * START_AT() : データが取得可能な最小となる日付を定義
 * 
 */
 CREATE TEMP FUNCTION MIN_DATE() AS (
   (
      SELECT
           MIN(date)  AS start_at
      FROM
          table 
    )
);

CREATE TEMP FUNCTION END_DATE() AS (
  TIMESTAMP('2030-01-01') 
);

SELECT
    *
FROM 
    table 2
WHERE 
_PARTITIONTIME >= MIN_DATE()
AND _PARTITIONTIME <= END_DATE()
