CREATE TABLE ifrs9_exposure_metrics (
    metric_id UUID PRIMARY KEY,

    exposure_id UUID,

    parameter_version_id UUID,

    reporting_date DATE,

    stage INT,

    pd_12m NUMERIC(10,6),
    pd_lifetime NUMERIC(10,6),

    lgd NUMERIC(10,6),

    ead NUMERIC(18,2),

    forward_looking_adjustment NUMERIC(10,6),

    final_ecl NUMERIC(18,2),

    calculation_ts TIMESTAMP
);
