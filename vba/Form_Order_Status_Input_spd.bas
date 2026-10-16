Option Compare Database

Private Sub Like_Client_Change()

    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_Exit(Cancel As Integer)

    CONTACT_CN.Requery
    
End Sub

Private Sub Order_Mod_Date_DblClick(Cancel As Integer)

    Order_Mod_Date = Date
   
End Sub

Private Sub Preview_spd_Click()
On Error GoTo Err_Preview_spd_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_Click:
    Exit Sub

Err_Preview_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_Click
    
End Sub

Private Sub Preview_spd_detalied_Click()
On Error GoTo Err_Preview_spd_detalied_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd_detailed Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_detalied_Click:
    Exit Sub

Err_Preview_spd_detalied_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_detalied_Click
    
End Sub

Private Sub Preview_spd_JC_Compare_Click()
On Error GoTo Err_Preview_spd_JC_Compare_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_W_JCs_spd Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_JC_Compare_Click:
    Exit Sub

Err_Preview_spd_JC_Compare_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_JC_Compare_Click
    
End Sub

Private Sub Preview_spd_propagule_Click()
On Error GoTo Err_Preview_spd_propagule_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Prop_spd Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_propagule_Click:
    Exit Sub

Err_Preview_spd_propagule_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_propagule_Click
    
End Sub

Private Sub Preview_spd2_Click()
On Error GoTo Err_Preview_spd2_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd2 Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd2_Click:
    Exit Sub

Err_Preview_spd2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd2_Click
    
End Sub

Private Sub Preview_spd2_detailed_Click()
On Error GoTo Err_Preview_spd2_detailed_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd2_detailed Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd2_detailed_Click:
    Exit Sub

Err_Preview_spd2_detailed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd2_detailed_Click
    
End Sub