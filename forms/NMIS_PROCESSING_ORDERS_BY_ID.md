# Form: NMIS_PROCESSING_ORDERS_BY_ID

**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_FISCAL_YEARS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERS_ID subform`, `Form.NMIS_PROCESSING_ORDERS_ID_INFO subform`, `Form.NMIS_PROCESSING_ORDERS_SELECT subform`  
**Opens:** `Form:NMIS_PROCESSING_ORDERS_INPUT`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Processing Orders Form |  |  |  | 3.88, 0.08, 2.75, 0.33 |
| Label | Select_ID_Label | Select An Agreement Lot ID: |  |  |  | 0.10, 0.54, 2.24, 0.25 |
| ComboBox | AGREEMENT_LOT_CN |  |  | SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, Agreement_Lots_Currently_Active2.ID, Agreement_Lots_Currently_Active2.SOURCE FROM NMIS_ORDERS INNER JOIN Agreement_Lots_Currently_Active2 ON NMIS_ORDERS.AGREEMENT_LOT_CN=Agreement_Lots_Currently_Active2.CN GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, Agreement_Lots_Currently_Active2.ID, Agreement_Lots_Currently_Active2.SOURCE ORDER BY Agreement_Lots_Currently_Active2.ID;  |  | 2.42, 0.54, 1.83, 0.25 |
| TextBox | ORDERS_CN |  | =[NMIS_PROCESSING_ORDERS_SELECT subform].Form!ORDER_CN |  |  | 4.75, 0.54, 0.58, 0.25 |
| TextBox | agr_lot_cn |  | =[NMIS_PROCESSING_ORDERS_SELECT subform].Form!LOT_CN |  |  | 4.08, 0.54, 0.58, 0.25 |
| CommandButton | Open_Order_Input | Open Order Input Form |  |  | Click | 8.79, 0.46, 0.96, 0.38 |
| Subform | NMIS_PROCESSING_ORDERS_ID subform |  | Form.NMIS_PROCESSING_ORDERS_ID subform (master: ORDERS_CN → child: CN) |  |  | 0.00, 2.38, 9.85, 4.38 |
| Subform | NMIS_PROCESSING_ORDERS_ID_INFO subform |  | Form.NMIS_PROCESSING_ORDERS_ID_INFO subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 1.00, 4.89, 1.30 |
| Subform | NMIS_PROCESSING_ORDERS_SELECT subform |  | Form.NMIS_PROCESSING_ORDERS_SELECT subform (master: AGREEMENT_LOT_CN;FY → child: LOT_CN;FISCAL_YEAR) |  |  | 5.00, 1.00, 4.76, 1.29 |
| ComboBox | fy |  |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER;  |  | 7.04, 0.54, 0.75, 0.25 |
| Label | Label75 | Select Fiscal Year: |  |  |  | 5.58, 0.54, 1.42, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)
    If (Not IsNull(AGREEMENT_LOT_CN)) Then
        DoCmd.RunMacro "GOTO_SELECT_ID_ORDER"
    End If
End Sub

Private Sub Open_Order_Input_Click()
On Error GoTo Err_Open_Order_Input_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESSING_ORDERS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Order_Input_Click:
    Exit Sub

Err_Open_Order_Input_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Order_Input_Click
    
End Sub
```
