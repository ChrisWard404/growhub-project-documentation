Option Compare Database


Private Sub Report_Close()
    If Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = False Then
        Response = MsgBox("Is The Data OK?", vbYesNo)
        If Response = vbYes Then
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
            MsgBox "Processing Complete. Click on any button for a report"
        Else
            MsgBox "Correct the Data and try again"
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Data Processed] = False
        End If
    End If
End Sub

Private Sub Report_NoData(Cancel As Integer)

    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
    MsgBox "No Orders without Quality. Processing Complete. Click on any button for a report"
    
End Sub