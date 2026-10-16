Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "FY_Input"
    
End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "FY_Input", , , , , acDialog
    If Not IsLoaded("FY_Input") Then
        Cancel = True
    End If

End Sub