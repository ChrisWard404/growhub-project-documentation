# Form: Sowing_Priority

**Caption:** Ojyord_Calibration subform  
**Record source:**

```sql
SELECT Sowing_Priority_Query.NMIS_SOWING_ORDER.SOWING_ORDER AS SOWING_ORDER, Sowing_Priority_Query.PRODUCT_DESC, Sowing_Priority_Query.PLNTMSTR_SYMBOL, Sowing_Priority_Query.SPECIES_PRODUCT_DESC, Sowing_Priority_Query.SIZE_SPEC_STRING, [Agreement_Lot_Major_Client Query].Major_Client, NMIS_AGREEMENT_LOTS.ID AS NMIS_AGREEMENT_LOTS_ID, NMIS_AGREEMENT_LOTS.CATEGORY_CODE, Sowing_Priority_Query.SowGroup, NMIS_AGREEMENT_LOTS.NURSERY_ASSOCIATE, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY, NMIS_AGREEMENT_LOTS.EST_CONTAINERS_REQUIRED, Sowing_Priority_Query.SPEC_MIN, Sowing_Priority_Query.BEGIN_SEASON_CODE, agreement_lot_ID_and_source_string.AGREEMENT_LOT_ID_AND_SOURCE2, Sowing_Priority_Query.PRODUCT_GROUP, Sowing_Priority_Query.UNIT_CODE, NMIS_AGREEMENT_LOTS.ID_ORIGINAL, Sowing_Priority_Query.SowGroup_Description, [NMIS_AGREEMENT_LOTS].[BEGIN_FY] & [BEGIN_SEASON_CODE] AS BegFYSeason, Left$(nz([nmis_agreement_lots].[Category_Code],"BR"),1) AS Cost_Center, NMIS_AGREEMENT_LOTS.SOWING_PRIORITY, NMIS_AGREEMENT_LOTS.CN AS Agreement_Lot_CN FROM Sowing_Priority_Query INNER JOIN ([Agreement_Lot_Major_Client Query] INNER JOIN (agreement_lot_ID_and_source_string INNER JOIN NMIS_AGREEMENT_LOTS ON agreement_lot_ID_and_source_string.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON [Agreement_Lot_Major_Client Query].AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON Sowing_Priority_Query.Species_Product_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN ORDER BY Sowing_Priority_Query.NMIS_SOWING_ORDER.SOWING_ORDER, NMIS_AGREEMENT_LOTS.SOWING_PRIORITY, Sowing_Priority_Query.PRODUCT_DESC, Sowing_Priority_Query.PLNTMSTR_SYMBOL, Sowing_Priority_Query.SPECIES_PRODUCT_DESC, Sowing_Priority_Query.SIZE_SPEC_STRING, [Agreement_Lot_Major_Client Query].Major_Client;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SOWING_ORDER`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Like_Sowing_Group | Sow Group: |  | SELECT NZ([SOWING_ORDER_CODE]," None") AS SOC, NMIS_SOWING_ORDER.DESCRIPTION FROM NMIS_SOWING_ORDER ORDER BY NZ([SOWING_ORDER_CODE]," None"); |  | 1.76, 0.23, 0.48, 0.20 |
| TextBox | Like_Begin_fy | FY: |  |  |  | 0.39, 0.25, 0.41, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_SOWING_ORDER.SOWING_ORDER |  | SowGroup |  |  | 0.08, 0.03, 0.42, 0.21 |
| TextBox | SOWING_PRIORITY |  | SOWING_PRIORITY |  |  | 0.62, 0.03, 0.38, 0.21 |
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 4.17, 0.03, 0.00, 0.21 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 5.29, 0.03, 0.00, 0.21 |
| TextBox | SIZE_SPEC_STRING |  | SIZE_SPEC_STRING |  |  | 6.42, 0.03, 0.00, 0.21 |
| TextBox | AGREEMENT_LOT_ID_AND_SOURCE2 |  | AGREEMENT_LOT_ID_AND_SOURCE2 |  |  | 1.12, 0.03, 2.96, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Sowing_Group_Change()

    DoCmd.Requery
    
End Sub
```
