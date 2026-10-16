# Form: NMIS_PROCESSING_ORDERS_BILLED1 subform

**Caption:** NMIS_ORDERS_BILLED  
**Record source:**

```sql
NMIS_ORDERS_BILLED Query
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`, `NMIS_ORDERS_BILLED`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_BILLED`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | ID |  |  |  | 0.04, 0.04, 1.15, 0.17 |
| Label | ORDER ID_Label | Order ID |  |  |  | 1.23, 0.04, 0.62, 0.17 |
| Label | ORDER CODE_Label | Code |  |  |  | 1.89, 0.04, 0.62, 0.17 |
| Label | ORDER AMT_Label | Order Amt |  |  |  | 2.56, 0.04, 0.71, 0.17 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.38, 0.04, 0.75, 0.20 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 4.17, 0.04, 0.42, 0.20 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 4.62, 0.04, 0.71, 0.20 |
| Label | Label23 | Billed |  |  |  | 3.31, 0.04, 0.46, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.04, 0.04, 1.15, 0.20 |
| TextBox | ORDER ID |  | ORDER ID |  |  | 1.23, 0.04, 0.62, 0.20 |
| TextBox | ORDER CODE |  | ORDER CODE |  |  | 1.89, 0.04, 0.62, 0.20 |
| TextBox | ORDER AMT |  | ORDER AMT |  |  | 2.56, 0.04, 0.71, 0.20 |
| CheckBox | BILLED |  | BILLED |  |  | 3.52, 0.04, 0.00, 0.00 |
