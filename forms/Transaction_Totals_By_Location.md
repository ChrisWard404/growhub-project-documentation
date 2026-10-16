# Form: Transaction_Totals_By_Location

**Backend tables referenced:** `NMIS_LOCATION_TYPES`  
**Opens:** `Report:transaction_Totals_by_location_Type_Agreement_Lot`, `Report:transaction_Totals_by_location_Type_Agreement_Lot2`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Transaction Totals by Location |  |  |  | 1.50, 0.25, 1.99, 0.50 |
| CommandButton | Preview_Product_Transaction_Total_by_Loc | Click to Preview/Print Report |  |  | Click | 1.10, 2.21, 1.21, 0.58 |
| ComboBox | Like_Location | Like Location Type: |  | SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES ORDER BY NMIS_LOCATION_TYPES.LOCATION_TYPE; |  | 2.28, 1.46, 1.51, 0.24 |
| CommandButton | Preview_Product_Transaction_Total_by_Loc_Detailed | Click to Preview/Print  Detailed Report |  |  | Click | 2.77, 2.21, 1.21, 0.58 |
| ComboBox | Product_Type | Product Type: |  | "Plant";"Plant";"Propagule";"Propagule";"*";"All Types" |  | 2.28, 1.14, 1.51, 0.24 |
| TextBox | LikeLocation | Like Location: |  |  |  | 2.28, 1.78, 1.51, 0.24 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Product_Transaction_Total_by_Loc_Click()

On Error GoTo Err_Preview_Product_Transaction_Total_by_Loc_Click

    Dim stDocName As String

    stDocName = "transaction_Totals_by_location_Type_Agreement_Lot"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Product_Transaction_Total_by_Loc_Click:
    Exit Sub

Err_Preview_Product_Transaction_Total_by_Loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Transaction_Total_by_Loc_Click
    
End Sub

Private Sub Preview_Product_Transaction_Total_by_Loc_Detailed_Click()
On Error GoTo Err_Preview_Product_Transaction_Total_by_Loc_Detailed_Click

     Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type_Agreement_Lot2"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Product_Transaction_Total_by_Loc_Detailed_Click:
    Exit Sub

Err_Preview_Product_Transaction_Total_by_Loc_Detailed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Transaction_Total_by_Loc_Detailed_Click
    
End Sub
```
