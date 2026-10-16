# Form: NMIS_Category_Units subform

**Caption:** NMIS_Category_Units subform  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[CATEGORY_CODE] FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_CATEGORIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CN_Label | CN |  |  |  | 0.04, 0.04, 2.02, 0.19 |
| Label | CATEGORY_CODE_Label | Category Code |  |  |  | 2.10, 0.04, 1.78, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.04, 0.04, 2.02, 0.17 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 2.10, 0.04, 1.78, 0.17 |
