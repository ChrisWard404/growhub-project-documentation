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



Private Sub Like_Client_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub


Private Sub Product_Group_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
 
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub