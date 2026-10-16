Option Compare Database

Private Sub Open_SPP_Calculator_Click()

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET_New_Lot"
   
End Sub

Private Sub SaveAndClose_Click()
On Error GoTo Err_SaveAndClose_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    If [TYPE_OF_TEST] >= "" Or IsNull(Index) Then
        DoCmd.Close
        Else
            MsgBox "Type of Test Must Be Entered"
    End If
    End
    
    
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