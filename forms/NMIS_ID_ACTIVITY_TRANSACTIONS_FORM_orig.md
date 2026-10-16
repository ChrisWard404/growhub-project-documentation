# Form: NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_orig

**Caption:** NMIS ID Activities and Transactions  
**Record source:**

```sql
NMIS_AGREEMENT_LOTS
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_ID_LOCATIONS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_ID_ACTIVITIES_ACTIVITIES_subform`, `Form.NMIS_ID_ACTIVITIES_TRANSACTIONS_subform`, `Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform`, `Form.NMIS_ID_LOCATIONS subform1`, `Form.NMIS_ID_ACTIVITIES_ACTIVITIES2_subform`, `Form.NMIS_ID_ACTIVITIES_TRANSACTIONS2_subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.08, 0.49, 8.71, 0.00 |
| TextBox | Activity_Parent1 |  |  |  |  | 0.96, 0.07, 0.38, 0.00 |
| TextBox | Activity_Parent2 |  |  |  |  | 1.39, 0.07, 0.38, 0.00 |
| TextBox | Activity_Parent3 |  |  |  |  | 0.08, 0.26, 0.38, 0.00 |
| TextBox | Activity_Parent4 |  |  |  |  | 0.96, 0.26, 0.38, 0.00 |
| TextBox | Activity_Code1 |  |  |  |  | 7.40, 0.06, 0.38, 0.00 |
| TextBox | Activity_Code6 |  |  |  |  | 7.84, 0.27, 0.38, 0.00 |
| TextBox | Activity_Code2 |  |  |  |  | 7.83, 0.06, 0.38, 0.00 |
| TextBox | Activity_Code7 |  |  |  |  | 8.25, 0.27, 0.38, 0.00 |
| TextBox | Activity_Code3 |  |  |  |  | 8.24, 0.06, 0.38, 0.00 |
| TextBox | Activity_Parent5 |  |  |  |  | 0.52, 0.26, 0.38, 0.00 |
| TextBox | Activity_Code4 |  |  |  |  | 8.67, 0.06, 0.38, 0.00 |
| TextBox | Activity_Code5 |  |  |  |  | 7.40, 0.27, 0.38, 0.00 |
| TextBox | Default_Activity_Code |  |  |  |  | 2.11, 0.26, 0.39, 0.00 |
| Label | Label16 | NMIS ID Activities/Transactions  |  |  |  | 2.93, 0.08, 3.55, 0.31 |
| Rectangle | Box92 |  |  |  |  | 6.57, 0.03, 2.57, 0.44 |
| Label | Label93 | Activity Code |  |  |  | 6.60, 0.06, 0.74, 0.17 |
| Label | Label94 | Parent Activity |  |  |  | 0.07, 0.07, 0.85, 0.17 |
| Rectangle | Box95 |  |  |  |  | 0.00, 0.04, 1.83, 0.42 |
| Label | Label96 | Default Activity |  |  |  | 1.91, 0.07, 0.77, 0.17 |
| Rectangle | Box97 |  |  |  |  | 1.88, 0.04, 0.83, 0.42 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | SPECIES_PRODUCT | Species Product: | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 5.98, 0.33, 2.71, 0.20 |
| ComboBox | PRODUCT | Product: | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 5.97, 0.05, 2.71, 0.20 |
| ComboBox | SOURCE_LOT_CN | Source Code: | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], "(" & [NMIS_SOURCE_LOTS].[ID] & ") " & [SOURCE_CODE] AS SOURCE_CODE_n_ID FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN];  |  | 1.24, 0.33, 3.31, 0.20 |
| Label | Label41 | Agreement Lot: |  |  |  | 0.10, 0.05, 1.07, 0.20 |
| ComboBox | CN |  |  | SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID], [NMIS_AGREEMENT_LOTS].[BEGIN_FY], "(" & [NMIS_SOURCE_LOTS].[ID] & ") " & [Source_CODE] AS Source_Lot FROM NMIS_SOURCE_LOTS RIGHT JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN] ORDER BY [NMIS_AGREEMENT_LOTS].[BEGIN_FY] DESC , [NMIS_AGREEMENT_LOTS].[ID];  |  | 1.24, 0.05, 0.00, 0.20 |
| TextBox | Modified_By |  | =[NMIS_ID_ACTIVITIES subform1].Form!CN |  |  | 0.12, 3.92, 0.79, 0.21 |
| TabControl | TabCtl67 |  |  |  |  | 0.00, 0.62, 9.59, 5.90 |
| Page | Activities_and_Transactions | Activities and Transactions |  |  |  | 0.07, 0.88, 9.44, 5.58 |
| Subform | NMIS_ID_ACTIVITIES subform1 |  | Form.NMIS_ID_ACTIVITIES_ACTIVITIES_subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.08, 0.88, 9.42, 2.93 |
| Subform | NMIS_Cultrual_TRANSACTIONS subform |  | Form.NMIS_ID_ACTIVITIES_TRANSACTIONS_subform (master: MODIFIED_BY → child: ID_ACTIVITY_CN) |  |  | 0.08, 3.85, 9.42, 2.60 |
| Subform | NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform |  | Form.NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform (master: MODIFIED_BY → child: CN) |  |  | 0.54, 2.58, 0.85, 1.38 |
| Page | ID_Locations | ID Locations |  |  |  | 0.07, 0.88, 9.44, 5.58 |
| Subform | NMIS_ID_LOCATIONS subform1 |  | Form.NMIS_ID_LOCATIONS subform1 (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.38, 1.33, 8.66, 4.88 |
| Label | Label52 | ID Locations |  |  |  | 4.09, 0.96, 1.18, 0.24 |
| Page | All_Activities | All Activities |  |  |  | 0.07, 0.88, 9.44, 5.58 |
| Subform | NMIS_ID_ACTIVITIES_ACTIVITIES_subform |  | Form.NMIS_ID_ACTIVITIES_ACTIVITIES2_subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.52, 1.04, 8.39, 5.21 |
| Page | All_Transactions | All Transactions |  |  |  | 0.06, 0.88, 9.46, 5.58 |
| Subform | NMIS_ID_ACTIVITIES_TRANSACTIONS_subform |  | Form.NMIS_ID_ACTIVITIES_TRANSACTIONS2_subform (master: CN → child: NMIS_AGREEMENT_LOTS.CN) |  |  | 0.06, 1.04, 9.46, 5.25 |
