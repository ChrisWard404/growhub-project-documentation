# Form: NMIS_PROCESSING_ORDERS_BY_CLIENT

**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ORDERS.FISCAL_YEAR FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE=NMIS_ORDERS.CLIENT_ASSOCIATE;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERS_CLI subform`, `Form.NMIS_PROCESSING_ORDERS_ID_INFO subform`, `Form.NMIS_PROCESSING_ORDERS_SELECT subform`  
**Opens:** `Form:NMIS_PROCESSING_ORDERS_INPUT`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Processing Orders Form |  |  |  | 3.88, 0.08, 2.75, 0.33 |
| TextBox | ORDERS_CN |  | =[NMIS_PROCESSING_ORDERS_SELECT subform].Form!ORDER_CN |  |  | 7.83, 0.08, 0.58, 0.25 |
| Label | Select_Associate_Label | Select An Associate: |  |  |  | 0.75, 0.54, 1.55, 0.25 |
| ComboBox | ASSOCIATE |  |  | SELECT NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE=NMIS_ORDERS.CLIENT_ASSOCIATE GROUP BY NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 2.33, 0.54, 1.95, 0.25 |
| CommandButton | Open_Order_Input | Open Order Input Form |  |  | Click | 8.83, 0.46, 0.96, 0.38 |
| Subform | NMIS_PROCESSING_ORDERS_CLI subform |  | Form.NMIS_PROCESSING_ORDERS_CLI subform (master: ORDERS_CN → child: CN) |  |  | 0.00, 2.38, 9.85, 4.38 |
| Subform | NMIS_PROCESSING_ORDERS_ID_INFO subform |  | Form.NMIS_PROCESSING_ORDERS_ID_INFO subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.27, 1.00, 4.50, 1.30 |
| Subform | NMIS_PROCESSING_ORDERS_SELECT subform |  | Form.NMIS_PROCESSING_ORDERS_SELECT subform (master: ASSOCIATE;FISCAL_YEAR → child: ASSOCIATE;FISCAL_YEAR) |  |  | 5.12, 1.00, 4.72, 1.30 |
| TextBox | AGREEMENT_LOT_CN |  | =[NMIS_PROCESSING_ORDERS_SELECT subform].Form!LOT_CN |  |  | 7.00, 0.08, 0.58, 0.25 |
| ComboBox | FISCAL_YEAR | Fiscal Year to View: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 7.54, 0.54, 0.62, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database
Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)
    If (Not IsNull(CLIENT_ASSOCIATE)) Then
        DoCmd.RunMacro "GOTO_SELECT_ASSOCIATE_ORDER"
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
