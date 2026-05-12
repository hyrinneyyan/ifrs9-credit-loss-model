# IFRS 9 Design Overview

## Objective

This model supports IFRS 9 Expected Credit Loss (ECL) provisioning with:
- Stage classification
- PD/LGD/EAD calculations
- Parameter versioning
- Auditability
- Macroeconomic overlays

---

# Design Choices

## Separate Exposure and Metric Tables

Exposure data is separated from calculated metrics to:
- preserve raw account state,
- enable recalculation,
- support multiple parameter versions.

---

## Stage Transition History

A dedicated history table tracks movement between:
- Stage 1,
- Stage 2,
- Stage 3.

This enables:
- audit replay,
- SICR analysis,
- cure tracking,
- regulator reporting.

---

## PIT vs TTC Versioning

Parameter versioning supports:
- Point-in-Time models,
- Through-the-Cycle models,
- macroeconomic stress scenarios.

Historical parameter versions remain immutable for replayability.

---

## Auditability

Provision calculations store:
- PD/LGD/EAD inputs,
- parameter versions,
- timestamps,
- calculation hashes.

This supports full audit reconstruction.

---

## Scalability

The model is optimized for:
- daily batch provisioning,
- portfolio aggregation,
- historical trend analysis,
- finance reporting marts.

The architecture is compatible with both conventional and Islamic finance products.
