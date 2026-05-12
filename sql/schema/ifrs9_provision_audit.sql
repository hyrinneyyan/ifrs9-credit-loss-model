CREATE TABLE ifrs9_provision_audit (
    audit_id UUID PRIMARY KEY,

    exposure_id UUID,

    reporting_date DATE,

    stage INT,

    pd_used NUMERIC(10,6),
    lgd_used NUMERIC(10,6),
    ead_used NUMERIC(18,2),

    macroeconomic_overlay NUMERIC(10,6),

    final_provision NUMERIC(18,2),

    parameter_version_id UUID,

    calculation_hash VARCHAR(64),

    created_at TIMESTAMP DEFAULT NOW()
);
