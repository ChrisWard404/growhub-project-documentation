# Form: NMIS_LOCATION_ACTIVITIES

**Caption:** NMIS LOCATION ACTIVITIES  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[ID], [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN], [NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN], [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[MODIFIED_BY] FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Subforms/subreports:** `Form.NMIS_LOCATION_ACTIVITIES subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | NMIS Location Activities |  |  |  | 4.65, 0.08, 2.75, 0.31 |
| Line | Line17 |  |  |  |  | 0.08, 0.78, 11.73, 0.00 |
| Label | Label52 | Cultural Activities by Location |  |  |  | 4.55, 0.46, 2.94, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_LOCATION_ACTIVITIES subform |  | Form.NMIS_LOCATION_ACTIVITIES subform |  |  | 0.12, 0.17, 11.83, 5.46 |
