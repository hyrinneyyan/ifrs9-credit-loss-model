SELECT
    exposure_id,

    stage,

    CASE
        WHEN stage = 1
            THEN pd_12m * lgd * ead

        WHEN stage IN (2,3)
            THEN pd_lifetime * lgd * ead
    END AS expected_credit_loss

FROM ifrs9_exposure_metrics;
