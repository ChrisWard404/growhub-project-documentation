# Form: NMIS_ID_ACTIVITIES_ACTIVITIES2_subform

**Caption:** NMIS ID Cultural Activities subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES ORDER BY [NMIS_ID_ACTIVITIES].[ACTIVITY_DATE];
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_TREATMENT_PRODUCTS`  
**Embedded in:** `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu3`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_orig`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Activity Date |  |  |  | 0.62, 0.44, 0.53, 0.37 |
| Label | Label33 | Activity |  |  |  | 1.23, 0.44, 1.86, 0.37 |
| TextBox | Index |  | Index |  |  | 5.96, 0.05, 0.50, 0.00 |
| TextBox | CN |  | CN |  |  | 2.52, 0.03, 0.74, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 1.48, 0.04, 0.88, 0.00 |
| Label | Label54 | FY |  |  |  | 0.05, 0.44, 0.53, 0.37 |
| Label | Label56 | Treatment Product |  |  |  | 3.14, 0.44, 1.07, 0.37 |
| Label | Label58 |  Units  |  |  |  | 4.27, 0.44, 0.54, 0.37 |
| Label | Label60 | Amount/ Unit |  |  |  | 5.29, 0.44, 0.59, 0.37 |
| Label | Label62 | Activity Time |  |  |  | 5.93, 0.44, 0.52, 0.37 |
| Label | Label52 | Activities  |  |  |  | 3.49, 0.07, 1.15, 0.24 |
| Line | Line63 |  |  |  |  | 0.04, 0.37, 8.08, 0.00 |
| Label | Label68 | Unit Code |  |  |  | 4.85, 0.44, 0.39, 0.37 |
| Label | Label71 | Units Presc. |  |  |  | 6.50, 0.44, 0.52, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME], [NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE] FROM NMIS_ACTIVITY_CODES ORDER BY [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME];  |  | 1.23, 0.03, 1.89, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.62, 0.03, 0.56, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 0.54, 0.25, 7.50, 0.20 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR_NUMBER], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 0.03, 0.03, 0.54, 0.20 |
| ComboBox | TREATMENT_PRODUCT_ID |  | TREATMENT_PRODUCT_ID | SELECT [NMIS_TREATMENT_PRODUCTS].[TREATMENT_PRODUCT_ID], [NMIS_TREATMENT_PRODUCTS].[TREATMENT_PRODUCT_DESC] FROM NMIS_TREATMENT_PRODUCTS;  |  | 3.17, 0.03, 1.02, 0.20 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 4.27, 0.03, 0.54, 0.20 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 5.32, 0.03, 0.56, 0.20 |
| TextBox | ACTIVITY_TIME |  | ACTIVITY_TIME |  |  | 5.93, 0.03, 0.52, 0.20 |
| Label | Label64 | Note: |  |  |  | 0.08, 0.25, 0.41, 0.20 |
| TextBox | Combo66 |  | UNIT_CODE |  |  | 4.88, 0.03, 0.37, 0.20 |
| TextBox | ACTIVITY_UNITS_PRESCRIBED |  | ACTIVITY_UNITS_PRESCRIBED |  |  | 6.50, 0.03, 0.52, 0.20 |
