SELECT
    exposure_id,

    previous_stage,
    new_stage,

    transition_reason,

    transition_ts

FROM ifrs9_stage_history

ORDER BY transition_ts;
