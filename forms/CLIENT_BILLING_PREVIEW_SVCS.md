# Form: CLIENT_BILLING_PREVIEW_SVCS

**Caption:** Client Billing Preview Special Services  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Report:CLIENT_BILL_PREVIEW_LOTS_SVCS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Select a Client |  |  |  | 1.58, 0.08, 2.04, 0.28 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.75, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Like_Client | Like Client: |  | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME]; |  | 2.50, 1.58, 1.08, 0.23 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Report_Click()

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_1"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_SVCS_CODES_APPEND"
    
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS_SVCS"
    DoCmd.OpenReport stDocName, acPreview


End Sub
```
