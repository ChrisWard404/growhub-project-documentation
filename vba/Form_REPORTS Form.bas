
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