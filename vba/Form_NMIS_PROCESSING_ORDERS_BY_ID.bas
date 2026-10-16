Option Compare Database

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)
    If (Not IsNull(AGREEMENT_LOT_CN)) Then
        DoCmd.RunMacro "GOTO_SELECT_ID_ORDER"
    End If
End Sub

Private Sub Open_Order_Input_Click()
On Error GoTo Err_Open_Order_Input_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESSING_ORDERS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Order_Input_Click:
    Exit Sub

Err_Open_Order_Input_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Order_Input_Click
    
End Sub