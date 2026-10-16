Option Compare Database

Private Sub Combo66_Enter()

    [ID_ACTIVITY_CN].Requery

End Sub

Private Sub Combo46_AfterUpdate()

    Combo46.Requery
    
End Sub

Private Sub Combo46_Enter()

    Combo46.Requery
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)

    MsgBox "There Is No Test Data For This Lot"
    Response = acDataErrContinue
    
End Sub

Private Sub ID_ACTIVITY_CN_Enter()

    ID_ACTIVITY_CN.Requery
    
End Sub

Private Sub ID_ACTIVITY_CN_GotFocus()

    ID_ACTIVITY_CN.Requery
 
End Sub

Private Sub NMIS_SOURCE_TEST_RESULTS_Subform1_Enter()

    Last_Day = 0
    
End Sub
Private Sub Open_SPP_Calculator_Click()
On Error GoTo Err_Open_SPP_Calculator_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_SPP_WORKSHEET_NEW"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_SPP_Calculator_Click:
    Exit Sub

Err_Open_SPP_Calculator_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_SPP_Calculator_Click
    
End Sub