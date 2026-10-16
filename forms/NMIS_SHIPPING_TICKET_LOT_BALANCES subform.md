# Form: NMIS_SHIPPING_TICKET_LOT_BALANCES subform

**Caption:** nmis_shipping_ticket_lot_balances subform  
**Record source:**

```sql
NMIS_SHIP_TKT_LOT_BALANCES query
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_SHIPPING_TICKET subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Sum_of_Activity_Units_Label | Units |  |  |  | 3.88, 0.24, 0.60, 0.17 |
| Label | Net_Density_Label | Net Density |  |  |  | 4.53, 0.24, 0.68, 0.17 |
| Label | Label14 | Net |  |  |  | 5.26, 0.24, 0.62, 0.17 |
| Label | Label18 | Unit |  |  |  | 2.19, 0.24, 1.64, 0.17 |
| Label | ORDER_ID_Label | Order ID |  |  |  | 0.46, 0.24, 0.51, 0.17 |
| Label | Label25 | Current Storage Info |  |  |  | 2.23, 0.04, 1.52, 0.17 |
| Label | Label35 | Location |  |  |  | 1.02, 0.24, 1.13, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NO_CONTAINERS |  | NO_CONTAINERS |  |  | 3.88, 0.02, 0.60, 0.20 |
| TextBox | DENSITY |  | DENSITY |  |  | 4.53, 0.02, 0.69, 0.20 |
| TextBox | Net_M |  | =Round([NO_CONTAINERS]*[DENSITY]/[UNIT_MULTIPLIER],3) |  |  | 5.27, 0.02, 0.60, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 2.18, 0.02, 1.65, 0.20 |
| TextBox | ORDER_ID |  | ORDER_ID |  |  | 0.46, 0.02, 0.51, 0.20 |
| TextBox | Net_M_Errorkey |  | =IIf([NO_CONTAINERS]<0,-1,0) |  |  | 5.04, 0.05, 0.21, 0.00 |
| ComboBox | ID_LOCATION_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, [LOCATION] & IIf(Not IsNull([SUBLOT_NO]) Or [Sublot_No]<>" ","(" & [SUBLOT_NO] & ")") AS LOCATION2 FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN; |  | 1.02, 0.02, 1.12, 0.20 |
| CommandButton | Ship | Ship |  |  | Click | 0.02, 0.03, 0.42, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Balance |  | =Sum(Round([NO_CONTAINERS]*[DENSITY]/[UNIT_MULTIPLIER],3)) |  |  | 5.19, 0.02, 0.68, 0.20 |
| Label | Label16 | Total on Inventory: |  |  |  | 3.98, 0.03, 1.12, 0.19 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 2.48, 0.00, 0.00, 0.00 |
| TextBox | Balance_Error |  | =IIf([Net_M_Errorkey_Sum]<0,"CHECK AMOUNTS!",IIf([Balance]<0,"BALANCE ERROR!","")) |  |  | 0.57, 0.01, 1.71, 0.21 |
| TextBox | Net_M_Errorkey_Sum |  | =Sum(IIf([NO_CONTAINERS]<0,-1,0)) |  |  | 3.60, 0.03, 0.33, 0.00 |
| CommandButton | Ship_All | Ship All |  |  | Click | 0.03, 0.03, 0.53, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Like_Sublot_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Ship_All_Click()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SHIP_TKT_LOT_BALANCES_Ship_all query"
    DoCmd.SetWarnings True
    DoCmd.Requery
    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
    
    
End Sub

Private Sub Ship_Click()
On Error GoTo Err_Ship_Click

    If NO_CONTAINERS <= 0 Then
        MsgBox "NO BALANCE"
    Else
        If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
                = ID_LOCATION_CN
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
                = NO_CONTAINERS * -1
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
        Else
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
                = ID_LOCATION_CN
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
                = NO_CONTAINERS * -1
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Requery
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
        End If
        Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    End If
    
Exit_Ship_Click:
    Exit Sub

Err_Ship_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Click
    
End Sub
```
