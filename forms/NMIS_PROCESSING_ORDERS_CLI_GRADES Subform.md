# Form: NMIS_PROCESSING_ORDERS_CLI_GRADES Subform

**Caption:** NMIS_ORDER_GRADES Subform  
**Record source:**

```sql
NMIS_ORDER_GRADES
```

**Backend tables referenced:** `NMIS_ORDER_GRADES`, `NMIS_PRODUCT_GRADES`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_CLI subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_GRADE_Label | Product Grade |  |  |  | 0.04, 0.00, 1.08, 0.21 |
| Label | GRADE_PCT_Label | Grade % |  |  |  | 1.17, 0.00, 1.00, 0.21 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 2.25, 0.00, 0.70, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GRADE_PCT |  | GRADE_PCT |  |  | 1.17, 0.04, 0.00, 0.20 |
| ComboBox | PRODUCT_GRADE |  | PRODUCT_GRADE | SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES;  |  | 0.04, 0.04, 1.08, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_PCT | % Total | =Sum([GRADE_PCT]) |  |  | 1.17, 0.03, 0.00, 0.20 |
