# Form: Change_Bend_plntmstr_Symbol

**Caption:** Change Bend plntmstr Symbol  
**Record source:**

```sql
SELECT [*NMIS_SOURCE_LOTS_Bend].ID, [*NMIS_SOURCE_LOTS_Bend].SOURCE_CODE, [*NMIS_SOURCE_LOTS_Bend].PLNTMSTR_SYMBOL FROM [*NMIS_SOURCE_LOTS_Bend] WHERE ((([*NMIS_SOURCE_LOTS_Bend].ID)=[Forms]![NMIS_SOURCE_LOTS_Bend]![ID]));
```

**Backend tables referenced:** `NMIS_SPECIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label6 | Change/Add Bend Species Code |  |  |  | 1.16, 0.21, 3.20, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Source ID | ID |  |  | 0.04, 0.44, 1.19, 0.21 |
| TextBox | SOURCE_CODE | Source Code | SOURCE_CODE |  |  | 1.29, 0.44, 2.83, 0.21 |
| ComboBox | PLNTMSTR_SYMBOL | Species Code | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES.PLNTMSTR_SYMBOL; |  | 4.21, 0.44, 1.02, 0.21 |
| CommandButton | Append_Species_from_Bend | Add Bend Species |  |  |  | 4.09, 0.71, 1.31, 0.00 |
