# Form: NMIS_SOURCE_TESTS subform1

**Caption:** NMIS_SOURCE_TESTS subform1  
**Record source:**

```sql
SELECT NMIS_SOURCE_TESTS.CN, NMIS_SOURCE_TESTS.SOURCE_LOT_CN, NMIS_SOURCE_TESTS.GERM_PCT, NMIS_SOURCE_TESTS.TEST_DATE FROM NMIS_SOURCE_TESTS;
```

**Backend tables referenced:** `NMIS_SOURCE_TESTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CN_Label | CN |  |  |  | 0.04, 0.04, 1.83, 0.20 |
| Label | SOURCE_LOT_CN_Label | SOURCE_LOT_CN |  |  |  | 1.92, 0.04, 1.83, 0.20 |
| Label | GERM_PCT_Label | GERM_PCT |  |  |  | 3.79, 0.04, 0.83, 0.20 |
| Label | TEST_DATE_Label | TEST_DATE |  |  |  | 4.67, 0.04, 0.79, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.04, 0.04, 1.83, 0.20 |
| TextBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN |  |  | 1.92, 0.04, 1.83, 0.20 |
| TextBox | GERM_PCT |  | GERM_PCT |  |  | 3.79, 0.04, 0.83, 0.20 |
| TextBox | TEST_DATE |  | TEST_DATE |  |  | 4.67, 0.04, 0.79, 0.20 |
