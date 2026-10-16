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

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Plntmstr_Symbol_Exit(Cancel As Integer)

    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
End Sub

Private Sub Print_Work_Orders_Checklist_Click()
On Error GoTo Err_Print_Work_Orders_Checklist_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Checklist"
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
        DoCmd.OpenReport stDocName, acViewPreview

Exit_Print_Work_Orders_Checklist_Click:
    Exit Sub

Err_Print_Work_Orders_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Checklist_Click
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_list"
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
        DoCmd.OpenReport stDocName, acViewPreview

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub

Private Sub PRODUCT_CLASS_Enter()

    PRODUCT_CLASS.Requery
    
End Sub

Private Sub Product_Class_Exit(Cancel As Integer)
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    
End Sub