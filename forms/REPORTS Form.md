# Form: REPORTS Form

**Subforms/subreports:** `Form.Reports_Menu_Source Subform`, `Form.Reports_Menu_Production Subform`, `Form.Reports_Menu_Processing Subform`, `Form.Reports_Menu_Shipping Subform`, `Form.Reports_Menu_Maintenance Subform`, `Form.Reports_Menu_Misc Subform`  
**Opens:** `Form:SOW_REQUEST_REPORTS`  
**Form events with code:** Close  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Reports and Forms |  |  |  | 3.43, 0.03, 2.19, 0.31 |
| Line | Line1 |  |  |  |  | 0.08, 0.37, 8.71, 0.00 |
| TabControl | TabCtl2 |  |  |  |  | 0.08, 0.36, 8.89, 6.17 |
| Page | Source Tab | Source |  |  |  | 0.17, 0.66, 8.70, 5.78 |
| Subform | Reports_Menu_Source Subform |  | Form.Reports_Menu_Source Subform |  |  | 0.17, 0.93, 8.70, 5.50 |
| Label | Label40 | Source |  |  |  | 3.89, 0.66, 1.30, 0.24 |
| Page | Production Tab | Production |  |  |  | 0.17, 0.66, 8.70, 5.79 |
| Subform | Reports_Menu_Production Subform |  | Form.Reports_Menu_Production Subform |  |  | 0.17, 0.93, 8.70, 5.51 |
| Label | Label44 | Production |  |  |  | 3.67, 0.66, 1.72, 0.24 |
| Page | Processing Tab | Processing |  |  |  | 0.17, 0.66, 8.70, 5.79 |
| Subform | Reports_Menu_Processing Subform |  | Form.Reports_Menu_Processing Subform |  |  | 0.17, 0.93, 8.70, 5.51 |
| Label | Label46 | Processing  |  |  |  | 3.72, 0.66, 1.62, 0.24 |
| Page | Shipping Tab | Shipping |  |  |  | 0.17, 0.66, 8.70, 5.79 |
| Subform | Reports_Menu_Labels Subform |  | Form.Reports_Menu_Shipping Subform |  |  | 0.17, 0.93, 8.70, 5.51 |
| Label | Label48 | Shipping |  |  |  | 3.81, 0.66, 1.43, 0.24 |
| Page | Maintenance Tab | Maintenance |  |  |  | 0.17, 0.66, 8.70, 5.79 |
| Subform | Reports_Menu_Maintenance Subform |  | Form.Reports_Menu_Maintenance Subform |  |  | 0.17, 0.93, 8.70, 5.51 |
| Label | Label52 | Maintenance |  |  |  | 3.66, 0.66, 1.73, 0.24 |
| Page | Misc Tab | Misc |  |  |  | 0.17, 0.66, 8.70, 5.79 |
| Subform | Reports_Menu_Misc Subform |  | Form.Reports_Menu_Misc Subform |  |  | 0.17, 0.93, 8.70, 5.51 |
| Label | Label54 | Misc |  |  |  | 3.95, 0.66, 1.10, 0.24 |
| TextBox | FY_For_Reports |  |  |  | Change, Exit | 1.21, 0.10, 0.46, 0.21 |
| Label | Label56 | FY for Reports: |  |  |  | 0.09, 0.10, 1.06, 0.20 |

## Code-behind (VBA)

```vb
Private Sub Form_Close()

    'Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_NUMBER]
    
End Sub

Private Sub FY_For_Reports_Change()

    Forms![Switchboard]![FY_For_Reports] = [FY_For_Reports]
    [Reports_Menu_Processing Subform].Form![Client_Bill_Data_Processed] = False
    
End Sub

Private Sub FY_For_Reports_Exit(Cancel As Integer)

    Forms![Switchboard]![FY_For_Reports] = [FY_For_Reports]
    
End Sub

Private Sub Sowing_Request_Reports2_Click()
On Error GoTo Err_Sowing_Request_Reports2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "SOW_REQUEST_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Sowing_Request_Reports2_Click:
    Exit Sub

Err_Sowing_Request_Reports2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sowing_Request_Reports2_Click
    
End Sub
```
