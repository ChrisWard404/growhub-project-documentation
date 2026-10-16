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