Option Compare Database

Private Sub Preview_Offsite_Source_Order_Form_Click()
On Error GoTo Err_Preview_Offsite_Source_Order_Form_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Offsite_Source_Order_Form_C:
    Exit Sub

Err_Preview_Offsite_Source_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Offsite_Source_Order_Form_C
    
End Sub

Private Sub Begin_ID_Change()
    
    End_ID = Null
    
End Sub

Private Sub Begin_ID_Enter()

    Begin_ID.Requery
    
End Sub

Private Sub End_ID_Enter()

    End_ID.Requery
    
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_by_ID_Range"
    
    If Not IsNull(Begin_ID) Then
    If Begin_ID > End_ID Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_ID) Then
            End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN ID", vbExclamation
    End If

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub