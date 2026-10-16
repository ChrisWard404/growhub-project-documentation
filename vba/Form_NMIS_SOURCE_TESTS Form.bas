Option Compare Database

Private Sub ID_ACTIVITY_CN_DblClick(Cancel As Integer)

    ID_ACTIVITY_CN.Locked = False
    
End Sub

Private Sub ID_ACTIVITY_CN_Enter()
    
    If IsNull(ID_ACTIVITY_CN) Then
        ID_ACTIVITY_CN.Locked = False
    Else
        ID_ACTIVITY_CN.Locked = True
    End If
    
End Sub

Private Sub Open_SPP_Calculator_Click()

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET"
    
End Sub

Private Sub SaveAndClose_Click()
On Error GoTo Err_SaveAndClose_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS"
    DoCmd.RunMacro ""
    'DoCmd.Save
    DoCmd.Close
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_SaveAndClose_Click:
    Exit Sub

Err_SaveAndClose_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_SaveAndClose_Click
    
End Sub

Private Sub TYPE_OF_TEST_AfterUpdate()

    TYPE_OF_TEST.Requery
    
End Sub

Private Sub TYPE_OF_TEST_Enter()

    TYPE_OF_TEST.Requery
    
End Sub