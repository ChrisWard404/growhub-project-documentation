# Form: NMIS_SOURCE_PRICE_RATES Subform

**Caption:** NMIS_SOURCE_PRICE_RATES  
**Record source:**

```sql
SELECT NMIS_SOURCE_PRICE_RATES.* FROM NMIS_SOURCE_PRICE_RATES ORDER BY NMIS_SOURCE_PRICE_RATES.FY DESC , NMIS_SOURCE_PRICE_RATES.PRICE_RATE_CODE;
```

**Backend tables referenced:** `NMIS_SOURCE_PRICE_RATES`  
**Embedded in:** `Form:NMIS_SOURCE_PRICE_RATES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label8 | Price Rate Code |  |  |  | 0.70, 0.04, 0.77, 0.37 |
| Label | Label9 | Description |  |  |  | 2.36, 0.04, 3.70, 0.37 |
| Label | Label10 | $ Amt or Factor |  |  |  | 1.53, 0.04, 0.77, 0.37 |
| Label | Label11 | FY |  |  |  | 0.14, 0.04, 0.50, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRICE_RATE_CODE |  | PRICE_RATE_CODE |  |  | 0.70, 0.06, 0.77, 0.21 |
| TextBox | FY |  | FY |  |  | 0.14, 0.06, 0.50, 0.21 |
| TextBox | AMOUNT |  | AMOUNT |  |  | 1.53, 0.06, 0.77, 0.21 |
| TextBox | DESCRIPTION |  | DESCRIPTION |  |  | 2.36, 0.04, 3.70, 0.21 |
