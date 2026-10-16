# Form: CLIENT_BILLING_PREVIEW_BILLING2

**Caption:** Client Billing Preview Billing  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Report:CLIENT_BILL_PREVIEW_LOTS2`, `Report:CLIENT_BILL_PREVIEW_LOTS_SVCS2`, `Report:CLIENT_BILL_PREVIEW_TICKETS2`  
**Opened from (VBA):** `Form_Client_Bill_Menu`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Select a Client |  |  |  | 1.55, 0.08, 2.04, 0.28 |
| CommandButton | Preview_Report | Click to Preview Lots Processed |  |  | Click | 0.62, 3.08, 1.21, 0.46 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Like_Client | Like Client (Leave Blank for All): |  | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME]; |  | 2.50, 1.58, 1.08, 0.23 |
| CommandButton | Preview_Special_Services_Report | Click to Preview Special Services |  |  | Click | 2.00, 3.08, 1.21, 0.46 |
| CommandButton | Preview_Ticket_Activity_Report | Click to Preview Ticket Activity |  |  | Click | 3.42, 3.08, 1.21, 0.46 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    DoCmd.SetWarnings True

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS2"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click



End Sub

Private Sub Preview_Special_Services_Report_Click()
On Error GoTo Err_Preview_Special_Services_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_1_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_2_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_SVCS_CODES_APPEND"
    
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS_SVCS2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Special_Services_Report_Click:
    Exit Sub

Err_Preview_Special_Services_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Special_Services_Report_Click


End Sub

Private Sub Preview_Ticket_Activity_Report_Click()

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_TICKETS2"
    DoCmd.OpenReport stDocName, acPreview

End Sub
```
