# Form: NMIS_SPECIES subform

**Caption:** NMIS_SPECIES subform  
**Record source:**

```sql
SELECT NMIS_SPECIES.* FROM NMIS_SPECIES WHERE (((NMIS_SPECIES.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SPECIES]![Like_Symbol] & "*")) ORDER BY NMIS_SPECIES.GENUS, NMIS_SPECIES.SPECIES;
```

**Backend tables referenced:** `NMIS_SPECIES`, `NMIS_SPECIES_GROUP`  
**Embedded in:** `Form:NMIS_SPECIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PLNTMSTR_SYMBOL_Label | Symbol |  |  |  | 0.04, 0.03, 0.60, 0.20 |
| Label | VERNACULAR_Label | Common Name |  |  |  | 0.72, 0.03, 2.00, 0.20 |
| Label | XGENUS_Label | Genus |  |  |  | 2.80, 0.03, 1.25, 0.20 |
| Label | SPECIES_Label | Species |  |  |  | 4.14, 0.03, 1.25, 0.20 |
| Label | SPECIES_GROUP_Label | Species Group |  |  |  | 5.47, 0.03, 1.02, 0.20 |
| Label | SPECIES_NO_Label | Abbreviation |  |  |  | 7.36, 0.03, 0.87, 0.20 |
| Label | SPECIES_ABBREVIATION_Label | Species No. |  |  |  | 6.53, 0.03, 0.78, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.04, 0.03, 0.60, 0.20 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 0.72, 0.03, 2.00, 0.20 |
| TextBox | SPECIES |  | SPECIES |  |  | 4.14, 0.03, 1.25, 0.20 |
| ComboBox | SPECIES_GROUP |  | SPECIES_GROUP | SELECT [NMIS_SPECIES_GROUP].[SPECIES_GROUP] FROM NMIS_SPECIES_GROUP;  |  | 5.47, 0.03, 1.02, 0.20 |
| TextBox | SPECIES_NO |  | SPECIES_NO |  |  | 6.54, 0.03, 0.78, 0.20 |
| TextBox | SPECIES_ABBREVIATION |  | SPECIES_ABBREVIATION |  |  | 7.36, 0.03, 0.87, 0.20 |
| TextBox | XGENUS |  | GENUS |  |  | 2.80, 0.03, 1.25, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Like_Symbol = Plntmstr_Symbol
    
End Sub
```
