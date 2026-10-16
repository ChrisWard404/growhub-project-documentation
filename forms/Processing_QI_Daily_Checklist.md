# Form: Processing_QI_Daily_Checklist

**Opens:** `Report:Processing_QI_Samples_Lot_Samples_Review`, `Report:Processing_QI_Summary_By_Lot_and_Date_Range`, `Report:Processing_QI_Summary_By_Table_and_Date_Range`  
**Opened from (VBA):** `Form_NMIS_PROCESS_QUALITY_SAMPLES`, `Form_Reports_Menu_Processing Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Processing Quality Daily Checklist |  |  |  | 1.45, 0.23, 1.95, 0.52 |
| TextBox | Begin_Date | Begin Date: |  |  |  | 2.47, 1.20, 0.78, 0.23 |
| TextBox | End_Date | End Date (blank if same): |  |  |  | 2.47, 1.52, 0.78, 0.23 |
| CommandButton | Preview_Processing_QI_Lot_Checklist | Click to Preview/Print Report by Lot |  |  | Click | 1.71, 2.38, 1.21, 0.58 |
| CommandButton | Preview_Processing_QI_Table_Checklist | Click to Preview/Print Report byTable |  |  | Click | 3.08, 2.38, 1.21, 0.58 |
| CommandButton | Preview_Processing_QI_Lot_Samples_Checklist | Click to Preview/Print Samples by Lot |  |  | Click | 0.33, 2.38, 1.21, 0.58 |
| TextBox | Like_Lot_ID | Like Lot ID: |  |  | AfterUpdate | 2.47, 1.85, 1.16, 0.23 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Like_Lot_ID_AfterUpdate()

    BEGIN_DATE = "10/01/" & Right$(Forms![Switchboard]![FY_For_Reports] - 1, 2)
    END_DATE = "09/30/" & Right$(Forms![Switchboard]![FY_For_Reports], 2)
    
End Sub

Private Sub Preview_Processing_QI_Lot_Checklist_Click()
On Error GoTo Err_Preview_Processing_QI_Lot_Checklist_Click

    Dim stDocName As String

    stDocName = "Processing_QI_Summary_By_Lot_and_Date_Range"
    
    If IsNull(END_DATE) Then
        END_DATE = BEGIN_DATE
    End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Processing_QI_Lot_Checklist_Click:
    Exit Sub

Err_Preview_Processing_QI_Lot_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_QI_Lot_Checklist_Click
    
End Sub

Private Sub Preview_Processing_QI_Lot_Samples_Checklist_Click()
On Error GoTo Err_Preview_Processing_QI_Lot_Samples_Checklist_Click

    Dim stDocName As String

    stDocName = "Processing_QI_Samples_Lot_Samples_Review"
    
    If IsNull(END_DATE) Then
        END_DATE = BEGIN_DATE
    End If
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Preview_Processing_QI_Lot_Samples_Checklist_Click:
    Exit Sub

Err_Preview_Processing_QI_Lot_Samples_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_QI_Lot_Samples_Checklist_Click
    
End Sub

Private Sub Preview_Processing_QI_Table_Checklist_Click()
On Error GoTo Err_Preview_Processing_QI_Table_Checklist_Click

    Dim stDocName As String

    stDocName = "Processing_QI_Summary_By_Table_and_Date_Range"
    
    If IsNull(END_DATE) Then
        END_DATE = BEGIN_DATE
    End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Processing_QI_Table_Checklist_Click:
    Exit Sub

Err_Preview_Processing_QI_Table_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_QI_Table_Checklist_Click
    
    
End Sub
```
