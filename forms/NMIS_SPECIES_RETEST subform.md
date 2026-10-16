# Form: NMIS_SPECIES_RETEST subform

**Caption:** NMIS_SPECIES_RETEST subform1  
**Record source:**

```sql
SELECT NMIS_SPECIES_RETEST.NURSERY_ASSOCIATE, NMIS_SPECIES_RETEST.PLNTMSTR_SYMBOL, NMIS_SPECIES_RETEST.FIRST_RETEST_YEARS, NMIS_SPECIES_RETEST.INTERVAL_RETEST_YEARS, NMIS_SPECIES_RETEST.MIN_RETEST_AMT FROM NMIS_SPECIES_RETEST;
```

**Backend tables referenced:** `NMIS_SPECIES_RETEST`  
**Embedded in:** `Form:NMIS_SPECIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NURSERY_ASSOCIATE_Label | Nursery Associate |  |  |  | 0.13, 0.04, 1.25, 0.20 |
| Label | FIRST_RETEST_YEARS_Label | First (Yrs) |  |  |  | 1.52, 0.04, 0.90, 0.20 |
| Label | INTERVAL_RETEST_YEARS_Label | Interval (Yrs) |  |  |  | 2.62, 0.04, 1.00, 0.20 |
| Label | MIN_RETEST_AMT_Label | Minimum Amount |  |  |  | 3.78, 0.04, 1.25, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 0.13, 0.04, 1.27, 0.20 |
| TextBox | FIRST_RETEST_YEARS |  | FIRST_RETEST_YEARS |  |  | 1.52, 0.04, 0.92, 0.20 |
| TextBox | INTERVAL_RETEST_YEARS |  | INTERVAL_RETEST_YEARS |  |  | 2.62, 0.04, 1.04, 0.20 |
| TextBox | MIN_RETEST_AMT |  | MIN_RETEST_AMT |  |  | 3.78, 0.04, 1.26, 0.20 |
