# Form: NMIS_SPECIES_NO subform

**Caption:** NMIS_SPECIES_NO subform  
**Record source:**

```sql
SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[SPECIES_NO], [NMIS_SPECIES].[SPECIES_ABBREVIATION] FROM NMIS_SPECIES;
```

**Backend tables referenced:** `NMIS_SPECIES`  
**Embedded in:** `Form:NMIS_SOURCE_LOTS_INPUT`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PLNTMSTR_SYMBOL_Label | Species Symbol |  |  |  | 0.04, 0.04, 1.08, 0.20 |
| Label | SPECIES_NO_Label | Species Code # |  |  |  | 1.17, 0.04, 1.06, 0.20 |
| Label | Label4 | Species Abbreviation |  |  |  | 2.29, 0.04, 1.48, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.04, 0.04, 1.08, 0.20 |
| TextBox | SPECIES_NO |  | SPECIES_NO |  |  | 1.17, 0.04, 1.06, 0.20 |
| TextBox | SPECIES_ABBREVIATION |  | SPECIES_ABBREVIATION |  |  | 2.50, 0.04, 0.00, 0.20 |
