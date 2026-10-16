# Form: NMIS_PRODUCT_GRADES Subform

**Caption:** NMIS_PRODUCT_GRADES  
**Record source:**

```sql
SELECT NMIS_PRODUCT_GRADES.* FROM NMIS_PRODUCT_GRADES;
```

**Backend tables referenced:** `NMIS_PRODUCT_GRADES`  
**Embedded in:** `Form:NMIS_PRODUCTS`, `Form:NMIS_PRODUCTS_Unlocked`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_GRADE_Label | Grade |  |  |  | 0.04, 0.04, 0.83, 0.20 |
| Label | PRODUCT_GRADE_DESC_Label | Description |  |  |  | 0.96, 0.04, 1.62, 0.20 |
| Label | GRADE_DEFAULT_Label | Default |  |  |  | 2.67, 0.04, 0.51, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_GRADE |  | PRODUCT_GRADE |  |  | 0.04, 0.04, 0.83, 0.20 |
| TextBox | PRODUCT_GRADE_DESC |  | PRODUCT_GRADE_DESC |  |  | 0.96, 0.04, 1.62, 0.20 |
| CheckBox | GRADE_DEFAULT |  | GRADE_DEFAULT |  |  | 2.88, 0.04, 0.00, 0.20 |
