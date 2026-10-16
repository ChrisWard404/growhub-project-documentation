# Form: NMIS_SHIPPING_TICKET

**Record source:**

```sql
NMIS_FISCAL_YEARS
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Form.NMIS_SHIPPING_TICKET subform`  
**Opens:** `Report:Close_Form`, `Report:PRODUCT_ticket`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_SHIPPING_TICKET Subform |  | Form.NMIS_SHIPPING_TICKET subform (master: FISCAL_YEAR → child: FY) |  |  | 0.08, 0.58, 8.20, 6.20 |
| Label | Label18 | Product Shipping Ticket |  |  |  | 3.00, 0.08, 2.49, 0.28 |
| Line | Line2 |  |  |  |  | 0.04, 0.50, 8.33, 0.00 |
| CommandButton | Refresh_Close | Close |  |  | Click | 7.54, 0.08, 0.47, 0.28 |
| ComboBox | FISCAL_YEAR |  View Fiscal Year: |  | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR_NUMBER], [NMIS_FISCAL_YEARS].[FISCAL_YEAR] FROM NMIS_FISCAL_YEARS ORDER BY [NMIS_FISCAL_YEARS].[FISCAL_YEAR_NUMBER] DESC;  | AfterUpdate, Enter | 1.88, 0.21, 0.58, 0.20 |
| CommandButton | Create Shipping Ticket | Click to Create Shipping Ticket |  |  | Click | 6.12, 0.08, 0.96, 0.34 |

## Code-behind (VBA)

```vb
Option Compare Database


Private Sub Create_Shipping_Ticket_Click()
    Dim stDocName As String

    stDocName = "PRODUCT_ticket"
    
    [Forms]![NMIS_SHIPPING_TICKET]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub FISCAL_YEAR_AfterUpdate()

[NMIS_SHIPPING_TICKET Subform].Form![Find_Ticket].Requery

End Sub

Private Sub FISCAL_YEAR_Enter()

        [Forms]![NMIS_SHIPPING_TICKET]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
        
End Sub

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub
```
