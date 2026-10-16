Option Compare Database

Private Sub Begin_Date_Change()

    [Data Processed] = False
    Pack_Data_OK = False
    
End Sub

Private Sub Edit_Quality_Monitoring_Click()

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub End_Date_Change()

    [Data Processed] = False
    Pack_Data_OK = False
    
End Sub

Private Sub FY_Exit(Cancel As Integer)

    [Contract_No].Requery
    
End Sub

Private Sub Missing_Quality_Monitoring_Click()

    Dim stDocName As String
    
    stDocName = "Processing_Contract_No_Quality_Samples"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        DoCmd.OpenReport stDocName, acViewPreview
    End If


End Sub

Private Sub Preview_Process_Pay_Calculations_Report_Click()

    Dim stDocName As String
    
    stDocName = "PROCESS_PAYMENT"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Calculations_Summary_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_Summary"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Calculations_w_Incremental_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_w_Incremental"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Calculations_wo_Detail_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_CONDENSED"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If
End Sub

Private Sub Preview_Process_Pay_Incremental_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_INCREMENTAL"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Lift_Calculations_Summary_Report_Click()

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_ESTIMATE_INVOICE"
        
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        DoCmd.OpenReport stDocName, acPreview
    End If

End Sub