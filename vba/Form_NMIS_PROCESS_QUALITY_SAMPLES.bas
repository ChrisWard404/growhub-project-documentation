Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [Sample_Input_JHSN].Requery

End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ORDER_CN"
    
End Sub

Private Sub ORDER_CN_AfterUpdate()

    '[Sample_Input_JHSN].Form![Default_Station] = Null
    '[Sample_Input_JHSN].Form![Default_Mode] = Null
    '[Sample_Input_JHSN].Form![Default_Sample_Size] = Null
    [Sample_Input_JHSN].Requery

End Sub

Private Sub Order_CN_Enter()

    [Sample_Input_JHSN].Requery
    ORDER_CN.Requery
    
End Sub

Private Sub Sample_Input_JHSN_Exit(Cancel As Integer)

    DoCmd.GoToControl "[SAMPLE_STATION]"
  
End Sub

Private Sub View_by_AfterUpdate()

    ORDER_CN.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    ORDER_CN.Requery
    
End Sub

Private Sub VIEW_FY_Change()
    
    ORDER_CN.Requery
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    
End Sub
Private Sub Open_Process_QI_Reports_Form_Click()
On Error GoTo Err_Open_Process_QI_Reports_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Processing_QI_Daily_Checklist"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Process_QI_Reports_Form_Click:
    Exit Sub

Err_Open_Process_QI_Reports_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Process_QI_Reports_Form_Click
    
End Sub