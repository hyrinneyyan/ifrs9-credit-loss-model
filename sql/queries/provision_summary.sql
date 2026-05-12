SELECT
    reporting_date,

    stage,

    COUNT(*) AS exposure_count,

    SUM(ead) AS total_ead,

    SUM(final_ecl) AS total_provision

FROM ifrs9_exposure_metrics

GROUP BY 1,2

ORDER BY 1,2;
