# Form: NMIS_AGREE_LOTS_UNITS subform

**Backend tables referenced:** `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOTS2`, `Form:NMIS_AGREEMENT_LOTS_Review_Only`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_SPECIES_PRODUCTS_UNIT_CODE_Label | Unit Code |  |  |  | 0.21, 0.04, 0.42, 0.35 |
| Label | UNIT_TYPE_Label | Unit Type |  |  |  | 0.76, 0.04, 0.62, 0.36 |
| Label | UNIT_DESC_Label | Unit Description |  |  |  | 1.44, 0.04, 2.12, 0.36 |
| Label | INV_DENSITIES_PER_CONTAINER_Label | Inv Densities/ Cont |  |  |  | 3.62, 0.04, 0.82, 0.36 |
| Label | CELLS_PER_CONTAINER_Label | Cells/Cont |  |  |  | 4.53, 0.04, 0.62, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NMIS_SPECIES_PRODUCTS_UNIT_CODE |  | NMIS_SPECIES_PRODUCTS_UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 0.08, 0.03, 0.66, 0.20 |
| TextBox | UNIT_TYPE |  | UNIT_TYPE |  |  | 0.80, 0.03, 0.52, 0.20 |
| TextBox | UNIT_DESC |  | UNIT_DESC |  |  | 1.44, 0.03, 2.12, 0.20 |
| TextBox | INV_DENSITIES_PER_CONTAINER |  | INV_DENSITIES_PER_CONTAINER |  |  | 3.62, 0.03, 0.81, 0.20 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 4.53, 0.03, 0.61, 0.20 |
