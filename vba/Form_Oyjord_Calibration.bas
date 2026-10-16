Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    CN = Null
    CN.Requery
    
End Sub

Private Sub Begin_fy_Change()

    DoCmd.RunMacro "Refresh"
    
End Sub

Private Sub Calibration_Checklist_Blank_Click()
    
    Report_name = "oyjord_calibration_checklist_Blank"
    DoCmd.OpenReport Report_name, acViewPreview
    
End Sub

Private Sub Calibration_Checklist_Click()
    
    Report_name = "oyjord_calibration_checklist"
    DoCmd.OpenReport Report_name, acViewPreview
    
End Sub

Private Sub CN_Enter()

    If Not IsNull(CN) Then
        CN.Requery
        '[Ojyord_Calibration subform].Form![Calibration_Sublots] = 0
        [Ojyord_Calibration subform].Form![Sublot_Units] = Null
    End If
    
End Sub

Private Sub Form_Load()
        
    'not sure why this works but it keeps the form from crashing when selecting the first lot
    'for calibration after opening. ???? dbd 04/27/12
    DoCmd.OpenReport "oyjord_calibration_checklist", acViewPreview
    DoCmd.Close
    
End Sub

Private Sub Sowing_Group_AfterUpdate()

    CN = Null
    CN.Requery
    
End Sub

Private Sub Sowing_Group_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_SOWING_ORDER"
    
End Sub

Private Sub Sowing_Group_Exit(Cancel As Integer)

    DoCmd.RunMacro "refresh"

End Sub

Private Sub View_by_AfterUpdate()

    [CN].Requery
    
End Sub