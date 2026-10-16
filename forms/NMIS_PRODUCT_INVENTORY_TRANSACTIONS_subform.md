# Form: NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform

**Caption:** NMIS_Cultrual_TRANSACTIONS subform  
**Record source:**

```sql
SELECT NMIS_TRANSACTIONS.* FROM NMIS_TRANSACTIONS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN ORDER BY NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_FISCAL_YEARS`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_PRODUCT_INVENTORIES`, `NMIS_TRANSACTIONS`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  
**Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate, Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.04, 0.40, 0.76, 0.35 |
| Label | ID_LOCATION_CN_Label | Location |  |  |  | 0.84, 0.40, 1.48, 0.35 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | Units |  |  |  | 2.92, 0.40, 0.67, 0.35 |
| Label | AMT_PER_UNIT_Label | Amt/Unit Net |  |  |  | 4.35, 0.40, 0.63, 0.35 |
| Label | AMT_PER_UNIT_INV_GROSS_Label | Amt/Unit Gross |  |  |  | 3.64, 0.40, 0.63, 0.35 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.17, 0.06, 0.75, 0.00 |
| Label | Label52 | Transactions  |  |  |  | 3.50, 0.04, 1.13, 0.24 |
| Line | Line12 |  |  |  |  | 0.04, 0.33, 7.47, 0.00 |
| Label | Label13 | Contract Item |  |  |  | 5.03, 0.40, 0.65, 0.35 |
| Label | Label14 | Charge/Amt Override |  |  |  | 6.64, 0.40, 0.85, 0.35 |
| Label | Label15 | Charge/Unit Override |  |  |  | 5.73, 0.40, 0.85, 0.35 |
| Label | Label17 | Sublot |  |  |  | 2.38, 0.40, 0.50, 0.35 |
| CommandButton | Update_Tranasctions | Click to Update ALL Transactions |  |  | Click | 0.12, 0.04, 2.25, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.04, 0.03, 0.77, 0.20 |
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 2.92, 0.03, 0.67, 0.20 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 4.36, 0.03, 0.62, 0.20 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 3.64, 0.03, 0.66, 0.20 |
| ComboBox | ID_LOCATION_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf((IsNull([Sublot_No]) Or [Sublot_No]=" "),"","(" & [sublot_no] & ")") & " " & [BEGIN_INDEX] & IIf(IsNull([END_INDEX]),""," - " & [END_INDEX]) AS [Location(s)], NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.BEGIN_INDEX AS [End], NMIS_ID_LOCATIONS.END_INDEX AS [Begin], NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN WHERE (((NMIS_AGREEMENT_LOTS.CN)=[Forms]![NMIS_PRODUCT_INVENTORIES]![CN])); | Enter | 0.85, 0.03, 1.51, 0.20 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 5.03, 0.03, 0.63, 0.20 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 6.64, 0.03, 0.85, 0.20 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 5.73, 0.03, 0.85, 0.20 |
| ComboBox | Combo16 |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_AGREEMENT_LOTS.ID, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_AGREEMENT_LOTS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN=NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="Field" Or (NMIS_LOCATIONS.LOCATION_TYPE)="Greenhouse" Or (NMIS_LOCATIONS.LOCATION_TYPE)="Shadehouse" Or (NMIS_LOCATIONS.LOCATION_TYPE)="Pad"));  |  | 2.38, 0.03, 0.49, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
 
End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
    
End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
    
End Sub

Private Sub Form_Current()

    If Not IsNull(ID_LOCATION_CN) Then
        [ID_LOCATION_CN].Requery
    End If
    
End Sub

Private Sub ID_LOCATION_CN_Enter()

    'ID_LOCATION_CN.Requery

End Sub
Private Sub Update_Tranasctions_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE1", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE", acNormal, acEdit
    DoCmd.SetWarnings True
    DoCmd.Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
   
End Sub
```
