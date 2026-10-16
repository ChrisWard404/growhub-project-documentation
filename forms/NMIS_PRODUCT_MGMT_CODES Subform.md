# Form: NMIS_PRODUCT_MGMT_CODES Subform

**Caption:** NMIS_PRODUCT_MGMT_CODES  
**Record source:**

```sql
NMIS_PRODUCT_MGMT_CODES
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CATEGORIES`, `NMIS_PRODUCT_GRADES`, `NMIS_PRODUCT_MGMT_CODES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CN_Label | Product CN |  |  |  | 4.62, 0.04, 0.58, 0.37 |
| Label | CATEGORY_CODE_Label | Category Code |  |  |  | 0.61, 0.04, 0.64, 0.37 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 1.34, 0.04, 0.74, 0.37 |
| Label | PRODUCT_GRADE_Label | Product Grade |  |  |  | 2.18, 0.04, 0.96, 0.37 |
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.07, 0.04, 0.45, 0.37 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 3.22, 0.04, 0.58, 0.37 |
| Label | PERCENT_OF_CHARGE_Label | Percent |  |  |  | 3.90, 0.04, 0.58, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CN |  | PRODUCT_CN |  |  | 4.62, 0.04, 0.58, 0.24 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.07, 0.04, 0.45, 0.24 |
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 3.22, 0.04, 0.58, 0.24 |
| TextBox | PERCENT_OF_CHARGE |  | PERCENT_OF_CHARGE |  |  | 3.90, 0.04, 0.58, 0.24 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 0.61, 0.04, 0.64, 0.24 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES WHERE ((([NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE])='PROC'));  |  | 1.34, 0.04, 0.74, 0.24 |
| ComboBox | PRODUCT_GRADE |  | PRODUCT_GRADE | SELECT [NMIS_PRODUCT_GRADES].[PRODUCT_GRADE] FROM NMIS_PRODUCT_GRADES;  |  | 2.18, 0.04, 0.96, 0.24 |
