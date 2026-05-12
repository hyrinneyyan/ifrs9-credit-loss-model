CREATE TABLE ifrs9_stage_history (
    stage_event_id UUID PRIMARY KEY,

    exposure_id UUID,

    previous_stage INT,
    new_stage INT,

    transition_reason VARCHAR(255),

    days_past_due INT,

    risk_score NUMERIC(8,4),

    triggered_by VARCHAR(50),

    transition_ts TIMESTAMP,

    approved_by VARCHAR(100)
);
