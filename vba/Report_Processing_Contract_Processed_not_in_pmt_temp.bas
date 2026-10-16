Option Compare Database


Private Sub Report_Close()
    
    If Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = False Then
        Response = MsgBox("Is The Data OK?", vbYesNo)
        If Response = vbYes Then
            'Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
            DoCmd.OpenReport "Processing_Contract_No_Quality_Samples", acViewPreview
        Else
            MsgBox "Correct the Data and try again"
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Data Processed] = False
        End If
    End If
    
End Sub

Private Sub Report_NoData(Cancel As Integer)

        'Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
        DoCmd.OpenReport "Processing_Contract_No_Quality_Samples_no_data", acViewPreview
        
End Sub