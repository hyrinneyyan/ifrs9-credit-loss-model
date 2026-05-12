CREATE TABLE ifrs9_risk_parameter_versions (
    parameter_version_id UUID PRIMARY KEY,

    model_type VARCHAR(20),

    pd_model_version VARCHAR(50),
    lgd_model_version VARCHAR(50),
    ead_model_version VARCHAR(50),

    macroeconomic_scenario VARCHAR(50),

    effective_from DATE,
    effective_to DATE,

    approved_by VARCHAR(100),

    created_at TIMESTAMP DEFAULT NOW()
);
