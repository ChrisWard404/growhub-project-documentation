# Form: Species_Product_End_Product_Group  subform

**Caption:** Species_Product_End_Product_Group  subform  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[CN] AS NMIS_AGREEMENT_LOTS_CN, [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [Species_Product_End_Prod_Group_and_Desc].[CN] AS Species_Product_End_Prod_Group_and_Desc_CN, [Species_Product_End_Prod_Group_and_Desc].[PRODUCT_GROUP] FROM Species_Product_End_Prod_Group_and_Desc INNER JOIN NMIS_AGREEMENT_LOTS ON [Species_Product_End_Prod_Group_and_Desc].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Embedded in:** `Form:NMIS_PROCESS_LABELS_ST1`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_GROUP |  | PRODUCT_GROUP |  |  | 0.00, 0.00, 0.71, 0.18 |
