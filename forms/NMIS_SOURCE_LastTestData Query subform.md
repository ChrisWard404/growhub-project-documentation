# Form: NMIS_SOURCE_LastTestData Query subform

**Caption:** NMIS_SOURCELastTestData Query subform  
**Record source:**

```sql
**NMIS_SOURCE_LastTestData_Table
```

**Embedded in:** `Form:NMIS_AGREEMENTS`, `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOTS2`, `Form:NMIS_AGREEMENT_LOTS_Review_Only`, `Form:NMIS_AGREEMENT_LOTS_old`, `Form:NMIS_AGREEMENT_LOTS_old2`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 1.14, 0.05, 0.58, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 0.90, 1.24, 0.85, 0.20 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 1.59, 0.35, 0.11, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 0.72, 0.29, 0.33, 0.20 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 0.90, 0.77, 0.33, 0.20 |
| Label | TEST_DATE_Label | Last Test Date: |  |  |  | 0.04, 0.05, 1.05, 0.20 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross/Unit: |  |  |  | 0.05, 1.24, 0.82, 0.20 |
| Label | STRATIFIED_Label | Strat: |  |  |  | 1.13, 0.29, 0.42, 0.20 |
| Label | GERM_PCT_Label | Germ %: |  |  |  | 0.05, 0.29, 0.63, 0.20 |
| Label | PURITY_PCT_Label | Purity %: |  |  |  | 0.05, 0.77, 0.81, 0.20 |
| CheckBox | CHECK_STRAT |  | CHECK_STRAT |  |  | 1.73, 0.35, 0.00, 0.00 |
| TextBox | Text47 |  | TYPE_OF_TEST |  |  | 1.02, 0.53, 0.75, 0.20 |
| Label | Label48 | Type of Test: |  |  |  | 0.05, 0.53, 0.91, 0.20 |
| TextBox | Text49 |  | FILLED_PCT |  |  | 0.90, 1.01, 0.33, 0.20 |
| Label | Label50 | Filled %: |  |  |  | 0.05, 1.01, 0.81, 0.20 |
