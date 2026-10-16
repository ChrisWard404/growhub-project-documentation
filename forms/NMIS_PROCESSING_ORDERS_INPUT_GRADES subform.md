# Form: NMIS_PROCESSING_ORDERS_INPUT_GRADES subform

**Caption:** NMIS_PROCESSING_ORDERS_GRADES Subform  
**Record source:**

```sql
NMIS_ORDER_GRADES
```

**Backend tables referenced:** `NMIS_ORDER_GRADES`, `NMIS_PRODUCT_GRADES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_GRADE_Label | Product Grade |  |  |  | 0.04, 0.03, 1.08, 0.21 |
| Label | GRADE_PCT_Label | Grade % |  |  |  | 1.17, 0.03, 0.96, 0.21 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 0.92, 0.04, 0.70, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GRADE_PCT |  | GRADE_PCT |  |  | 1.17, 0.04, 0.96, 0.20 |
| ComboBox | PRODUCT_GRADE |  | PRODUCT_GRADE | SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE, NMIS_PRODUCT_GRADES.PRODUCT_GRADE_DESC FROM NMIS_PRODUCT_GRADES; |  | 0.04, 0.04, 1.08, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_PCT | % Total | =Sum([GRADE_PCT]) |  |  | 1.17, 0.03, 0.96, 0.20 |
