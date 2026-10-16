Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Order_Status_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    
    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "Order_Status_Input", , , , , acDialog, ""
    If Not IsLoaded("Order_Status_Input") Then
        Cancel = True
    End If
    
End Sub