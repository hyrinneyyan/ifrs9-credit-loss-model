SELECT
    exposure_id,

    days_past_due,

    CASE
        WHEN days_past_due >= 90 THEN 3
        WHEN days_past_due >= 30 THEN 2
        ELSE 1
    END AS ifrs9_stage

FROM ifrs9_exposure_master;
