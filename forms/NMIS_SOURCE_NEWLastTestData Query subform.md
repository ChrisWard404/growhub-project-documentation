# Form: NMIS_SOURCE_NEWLastTestData Query subform

**Caption:** NMIS_SOURCE_NEWLastTestData Query subform  
**Record source:**

```sql
SELECT [NMIS_SOURCE_NEWLastTestData Query].[SOURCE_LOT_CN], [NMIS_SOURCE_NEWLastTestData Query].[TEST_DATE], [NMIS_SOURCE_NEWLastTestData Query].[GROSS_SOURCE_PER_UNIT], [NMIS_SOURCE_NEWLastTestData Query].[STRATIFIED], [NMIS_SOURCE_NEWLastTestData Query].[GERM_PCT], [NMIS_SOURCE_NEWLastTestData Query].[PURITY_PCT] FROM [NMIS_SOURCE_NEWLastTestData Query];
```


## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 1.19, 0.07, 0.58, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | GROSS_SOURCE_PER_UNIT |  |  | 1.19, 0.75, 0.59, 0.20 |
| CheckBox | STRATIFIED |  | STRATIFIED |  |  | 1.59, 0.35, 0.11, 0.00 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 1.19, 0.29, 0.33, 0.20 |
| TextBox | PURITY_PCT |  | PURITY_PCT |  |  | 1.19, 0.52, 0.33, 0.20 |
| Label | TEST_DATE_Label | Last Test Date: |  |  |  | 0.11, 0.07, 1.05, 0.20 |
| Label | GROSS_SOURCE_PER_UNIT_Label | Gross/Unit: |  |  |  | 0.35, 0.75, 0.81, 0.20 |
| Label | STRATIFIED_Label | Strat: |  |  |  | 0.73, 0.29, 0.42, 0.20 |
| Label | GERM_PCT_Label | Germ %: |  |  |  | 0.05, 0.29, 0.63, 0.20 |
| Label | PURITY_PCT_Label | Purity %: |  |  |  | 0.45, 0.52, 0.71, 0.20 |
