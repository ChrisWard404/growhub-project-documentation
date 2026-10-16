# Form: NMIS_PRODUCT_CHARGES Subform

**Caption:** NMIS_PRODUCT_CHARGES  
**Record source:**

```sql
NMIS_PRODUCT_CHARGES
```

**Order by:** `NMIS_PRODUCT_CHARGES.ACTIVITY_CODE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CATEGORIES`, `NMIS_PRODUCT_CHARGES`, `NMIS_PRODUCT_GRADES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.36, 0.04, 0.42, 0.37 |
| Label | CATEGORY_CODE_Label | Category Code |  |  |  | 0.86, 0.04, 0.68, 0.37 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 1.61, 0.04, 0.78, 0.37 |
| Label | PRODUCT_GRADE_Label |   Product Grade |  |  |  | 2.47, 0.04, 0.96, 0.37 |
| Label | CHARGE_PER_UNIT_Label | Charge per Unit |  |  |  | 3.51, 0.04, 0.68, 0.37 |
| Label | CHARGE_PER_AMT_Label | Charge per Amt. |  |  |  | 4.25, 0.04, 0.73, 0.37 |
| Label | Label18 | Product CN |  |  |  | 0.04, 0.04, 0.45, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.36, 0.04, 0.42, 0.24 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 3.51, 0.04, 0.68, 0.24 |
| TextBox | CHARGE_PER_AMT |  | CHARGE_PER_AMT |  |  | 4.25, 0.04, 0.73, 0.24 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="LIFT" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PROC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP"));  |  | 1.61, 0.04, 0.78, 0.24 |
| ComboBox | PRODUCT_GRADE |  | PRODUCT_GRADE | SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES;  |  | 2.47, 0.04, 0.96, 0.24 |
| TextBox | PRODUCT_CN | Text19: | PRODUCT_CN |  |  | 0.04, 0.04, 0.45, 0.24 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 0.86, 0.04, 0.68, 0.24 |
