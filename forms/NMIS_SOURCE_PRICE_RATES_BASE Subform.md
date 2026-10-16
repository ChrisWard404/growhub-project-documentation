# Form: NMIS_SOURCE_PRICE_RATES_BASE Subform

**Record source:**

```sql
SELECT NMIS_SOURCE_PRICE_RATES_BASE.BASE_AMOUNT, NMIS_SOURCE_PRICE_RATES_BASE.FY FROM NMIS_SOURCE_PRICE_RATES_BASE ORDER BY NMIS_SOURCE_PRICE_RATES_BASE.FY DESC;
```

**Backend tables referenced:** `NMIS_SOURCE_PRICE_RATES_BASE`  
**Embedded in:** `Form:NMIS_SOURCE_PRICE_RATES_BASE`, `Form:NMIS_SPECIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label5 | FY |  |  |  | 0.39, 0.04, 0.45, 0.21 |
| Label | Label6 | Base Amt |  |  |  | 1.18, 0.04, 0.79, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BASE_AMOUNT |  | BASE_AMOUNT |  |  | 1.17, 0.04, 0.80, 0.20 |
| TextBox | FY |  | FY |  |  | 0.38, 0.04, 0.46, 0.20 |
