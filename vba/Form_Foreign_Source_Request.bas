Option Compare Database

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Preview_Offsite_Source_Order_Form_Click()
On Error GoTo Err_Preview_Offsite_Source_Order_Form_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE"
    
    If IsNull([BEGIN_DATE]) Then
        MsgBox "Must have an Begin and End Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If

Exit_Preview_Offsite_Source_Order_Form_C:
    Exit Sub

Err_Preview_Offsite_Source_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Offsite_Source_Order_Form_C
    
End Sub

Private Sub Preview_Offsite_Source_Order_Summary_by_Associate_Click()

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub PRODUCT_CLASS_Enter()

    PRODUCT_CLASS.Requery
    
End Sub