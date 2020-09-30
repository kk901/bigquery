
.past_n_days_action_history as (
/*ある日を起点に過去N日の行動履歴を集約する際に活用*/
  SELECT DISTINCT
  dt,user_id,action_dt,action_id
  FROM
  (
    SELECT
    dt as action_dt,user_id,action_id,DATE_ADD(dt,interval date_term DAY) as dt
    FROM　
    (
      SELECT
      dt,user_id,action_id,date_term
      FROM
      (
        SELECT
        dt,user_id,action_id,GENERATE_ARRAY(1, 90, 1) as date_term
        FROM
        t1 a
      )
      , UNNEST(date_term) AS date_term
    )
)
 
