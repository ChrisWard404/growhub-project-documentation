# Form: NMIS_ORDER_ACT-TRANS-LOC

**Caption:** NMIS Order Activities and Transactions  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[ID], [NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN], [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN] FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ID_ACTIVITIES`, `NMIS_ID_LOCATIONS`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_ORDR subform`, `Form.NMIS_ORDR_LOC subform`, `Form.NMIS_ORDR_ACT subform`, `Form.NMIS_ORDR_TRANS subform`  
**Opened from (VBA):** `Form_NMIS_PROCESSING_ORDERS_CLI subform`, `Form_NMIS_PROCESSING_ORDERS_ID subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | NMIS Order Activities |  |  |  | 3.38, 0.08, 2.50, 0.31 |
| Line | Line17 |  |  |  |  | 0.08, 0.49, 8.96, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | SOURCE_LOT_CN | Source Code: | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [Source_Lot_ID_and_Source_string].[ID_SOURCE2] FROM NMIS_AGREEMENT_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON [NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN]=[Source_Lot_ID_and_Source_string].[CN];  |  | 5.73, 0.12, 3.25, 0.20 |
| Label | Label41 | Select An Agreement Lot ID: |  |  |  | 0.71, 0.08, 2.37, 0.25 |
| ComboBox | CN |  |  | SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID], [Source_Lot_ID_and_Source_string].[ID_SOURCE2] FROM Source_Lot_ID_and_Source_string INNER JOIN (Agreement_Lots_Currently_Active2 INNER JOIN NMIS_AGREEMENT_LOTS ON [Agreement_Lots_Currently_Active2].[CN]=[NMIS_AGREEMENT_LOTS].[CN]) ON [Source_Lot_ID_and_Source_string].[CN]=[NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN] ORDER BY [NMIS_AGREEMENT_LOTS].[ID];  |  | 3.15, 0.12, 1.31, 0.20 |
| Subform | NMIS_ORDR subform |  | Form.NMIS_ORDR subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 1.08, 4.38, 2.10 |
| Label | Label20 | Select An Order |  |  |  | 0.38, 0.83, 1.21, 0.22 |
| TextBox | ORDER_CN |  | =[NMIS_ORDR subform].Form!CN |  |  | 1.62, 0.83, 1.04, 0.21 |
| Subform | NMIS_ORDR_LOC subform | Create or Select A Location | Form.NMIS_ORDR_LOC subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 3.67, 3.71, 1.98 |
| TextBox | ID_LOCATION_CN |  | =[NMIS_ORDR_LOC subform].Form!CN |  |  | 2.46, 3.42, 1.04, 0.21 |
| Subform | NMIS_ORDR_ACT subform | Create or Select An Activity | Form.NMIS_ORDR_ACT subform (master: CN → child: AGREEMENT_LOT_CN) |  | Enter | 4.50, 1.08, 4.58, 2.10 |
| Subform | NMIS_ORDR_TRANS subform | Create or Select A Transaction | Form.NMIS_ORDR_TRANS subform (master: ID_LOCATION_CN;ID_ACTIVITY_CN → child: ID_LOCATION_CN;ID_ACTIVITY_CN) |  |  | 4.12, 3.67, 4.96, 1.98 |
| TextBox | ID_ACTIVITY_CN |  | =[NMIS_ORDR_ACT subform].Form!CN |  |  | 6.88, 0.83, 0.96, 0.21 |
| Label | Label110 | Species Product |  |  |  | 4.54, 0.46, 1.12, 0.21 |
| ComboBox | SPECIES_PRODUCT |  | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 5.75, 0.46, 3.23, 0.20 |
| ComboBox | PRODUCT | Product: | =[cn] | SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_PRODUCTS].[PRODUCT_DESC] FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENT_LOTS].[SPECIES_PRODUCT_CN];  |  | 1.49, 0.46, 2.71, 0.20 |
| TextBox | FISCAL_YEAR |  | =[NMIS_ORDR subform].Form!FISCAL_YEAR |  |  | 3.75, 0.79, 0.71, 0.21 |
| TextBox | ACT_DATE |  | =[NMIS_ORDR_ACT subform].Form!ACTIVITY_DATE |  |  | 7.96, 0.79, 0.96, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub NMIS_ORDR_ACT_subform_Enter()

    ORDER_CN.Requery

End Sub
```
