# Form: PROCESS_PAYMENT_ESTIMATE_INVOICE

**Backend tables referenced:** `NMIS_CONTRACTS`  
**Opens:** `Form:LIFT_CONTRACT_ESTIMATE_INVOICE`, `Form:NMIS_PROCESS_QUALITY_SAMPLES`, `Form:PROCESS_PAYMENT`, `Form:PROCESS_PAYMENT_CONDENSED`, `Form:PROCESS_PAYMENT_INCREMENTAL`, `Form:PROCESS_PAYMENT_Summary`, `Form:PROCESS_PAYMENT_w_Incremental`, `Form:Processing_Contract_No_Quality_Samples`, `Report:LIFT_CONTRACT_ESTIMATE_INVOICE`, `Report:NMIS_PROCESS_QUALITY_SAMPLES`, `Report:PROCESS_PAYMENT`, `Report:PROCESS_PAYMENT_CONDENSED`, `Report:PROCESS_PAYMENT_INCREMENTAL`, `Report:PROCESS_PAYMENT_Summary`, `Report:PROCESS_PAYMENT_w_Incremental`, `Report:Processing_Contract_No_Quality_Samples`, `Report:Processing_Contract_Processed_not_in_pmt_temp`  
**Opened from (VBA):** `Form_Contract_Payment_Estimate_Invoice`, `Form_Contract_Work_Order`, `Form_Reports_Menu_Misc Subform`, `Form_Reports_Menu_Processing Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Processing Contract Payment Estimate  |  |  |  | 0.36, 0.08, 4.60, 0.29 |
| TextBox | Begin_Date | Begin Date: |  |  | Change | 2.66, 1.19, 0.68, 0.21 |
| TextBox | End_Date | End Date: |  |  | Change | 2.66, 1.51, 0.68, 0.21 |
| CommandButton | Preview_Process_Pay_Calculations_Report | Click to Preview Calculations |  |  | Click | 2.02, 3.72, 1.50, 0.83 |
| Line | Line12 |  |  |  |  | 0.11, 0.50, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.08, 0.70, 5.08, 1.30 |
| CheckBox | Data Processed | Data Processed |  |  |  | 1.42, 2.16, 0.29, 0.25 |
| TextBox | FY | FY: |  |  | Exit | 0.66, 0.91, 0.63, 0.20 |
| ComboBox | Contract_No | Contract No: |  | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT FROM NMIS_CONTRACTS WHERE (((NMIS_CONTRACTS.PROJECT) Like "*lift*Process*" Or (NMIS_CONTRACTS.PROJECT) Like "*PACK*") AND ((NMIS_CONTRACTS.FISCAL_YEAR)=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![FY])); |  | 2.66, 0.90, 1.54, 0.21 |
| CommandButton | Preview_Process_Pay_Calculations_w_Incremental Report | Click to Preview  Calculations with Incremental Items |  |  | Click | 2.02, 4.59, 1.50, 0.83 |
| CommandButton | Preview_Process_Pay_Incremental_Report | Click to Preview  Incremental Items |  |  | Click | 3.62, 2.84, 1.50, 0.83 |
| CommandButton | Preview_Process_Pay_Calculations_Summary Report | Click to Preview  Calculations Summary |  |  | Click | 3.60, 4.59, 1.50, 0.83 |
| CommandButton | Preview_Process_Pay_Calculations_wo_Detail Report | Click to Preview  Calculations |  |  | Click | 3.60, 3.72, 1.50, 0.83 |
| CommandButton | Preview_Process_Pay_Lift_Calculations_Summary Report | Click to Preview  Lifting Items Summary |  |  | Click | 0.21, 2.84, 1.50, 0.83 |
| Rectangle | Box21 |  |  |  |  | 1.92, 2.46, 3.27, 3.03 |
| Label | Label22 | Packing Item Reports |  |  |  | 2.85, 2.53, 1.47, 0.21 |
| Label | Label23 | Lifting Item Reports |  |  |  | 0.28, 2.53, 1.35, 0.21 |
| Rectangle | Box24 |  |  |  |  | 0.09, 2.46, 1.71, 3.03 |
| CommandButton | Missing_Quality_Monitoring | Click to Check for Orders Missing Quality Monitoring |  |  | Click | 2.02, 2.84, 1.50, 0.83 |
| CheckBox | Pack_Data_OK | Pack Data OK |  |  |  | 2.79, 2.16, 0.29, 0.25 |
| CommandButton | Edit_Quality_Monitoring | Edit Quality Monitoring... |  |  | Click | 3.47, 2.08, 1.49, 0.24 |

## Code-behind (VBA)

```vb
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
```
