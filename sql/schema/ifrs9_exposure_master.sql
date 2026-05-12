CREATE TABLE ifrs9_exposure_master (
    exposure_id UUID PRIMARY KEY,

    customer_id UUID,
    account_id UUID,

    product_type VARCHAR(50),

    origination_date DATE,
    maturity_date DATE,

    current_balance NUMERIC(18,2),
    undrawn_amount NUMERIC(18,2),

    days_past_due INT,

    effective_profit_rate NUMERIC(8,4),

    collateral_value NUMERIC(18,2),

    active_flag BOOLEAN,

    created_at TIMESTAMP DEFAULT NOW()
);
