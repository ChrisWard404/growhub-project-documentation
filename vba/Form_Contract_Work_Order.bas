Option Compare Database

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub FY_DblClick(Cancel As Integer)
    [FY].Locked = False
    MsgBox "FY is now UNLOCKED for Editing."
End Sub

Private Sub FY_Exit(Cancel As Integer)
        [FY].Locked = True
End Sub

Private Sub Select_CONTRACT_NO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CONTRACT_NO] = '" & Me![Select_CONTRACT_NO] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Select_CONTRACT_NO_Change()

    If Select_CONTRACT_NO = "New Contract" Then
    
        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        
        [Forms]![Contract_Work_Order]![Select_CONTRACT_NO] = Null
        DoCmd.OpenForm stDocName ', , , , acFormAdd
        DoCmd.GoToRecord , , acNewRec
        Contract_No.Locked = False
        Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
        Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        
        
    End If
    
End Sub

Private Sub Select_CONTRACT_NO_DblClick(Cancel As Integer)

        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        stLinkCriteria = "[CONTRACT_NO]=" & "'" & _
                            Forms![Contract_Payment_Estimate_Invoice]![Select_CONTRACT_NO] & "'"
        If Not IsNull(Select_CONTRACT_NO) Then
            DoCmd.OpenForm stDocName, , , stLinkCriteria
            Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
            Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        Else
            [Forms]![Contract_Payment_Estimate_Invoice]![Select_CONTRACT_NO] = Null
            DoCmd.OpenForm stDocName ', , , , acFormAdd
            DoCmd.GoToRecord , , acNewRec
            Contract_No.Locked = False
            Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
            Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        End If
    
End Sub

Private Sub CONTRACT_NO_Enter()

    If Not IsNull(Contract_No) Then
        Contract_No.Locked = True
    Else
        Contract_No.Locked = False
    End If
    
End Sub

Private Sub CONTRACT_NO_Exit(Cancel As Integer)

    Contract_No.Locked = True
    
    If IsNull(Project_Name) Then
        Project_Name = PROJECT
    End If
    
End Sub

Private Sub ESTIMATE_NO_DblClick(Cancel As Integer)

    ESTIMATE_NO.Locked = False
    
End Sub

Private Sub ESTIMATE_NO_Enter()

    If Not IsNull(ESTIMATE_NO) Then
        ESTIMATE_NO.Locked = True
    Else
        ESTIMATE_NO.Locked = False
    End If
    
End Sub

Private Sub ESTIMATE_NO_Exit(Cancel As Integer)

    ESTIMATE_NO.Locked = True
    
End Sub

Private Sub Select_CONTRACT_NO_GotFocus()

    Select_CONTRACT_NO.Requery
    
End Sub

Private Sub Contract_Payment_Estimate_Invoice_Main_subform_Enter()

    If IsNull(Contract_No) Then
        MsgBox "Must Select a Contract No. First."
        [Contract_No].SetFocus
    End If
      
End Sub

Private Sub Contract_Payment_Estimate_Invoice_subform1_Enter()

    If [Just_Opened] = True Then
        [Just_Opened] = False
    Else
        If IsNull(Contract_No) Then
            MsgBox "Must Select a Contract No. First"
            [Contract_No].SetFocus
        End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Select_CONTRACT_NO"

End Sub

Private Sub Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Click()

    Dim stDocName As String

    stDocName = "CONTRACT_WORK_ORDER_FS-6300-12"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub View_Contract_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CONTRACT_NO] = '" & Me![View_Contract] & "'"
    Me.Bookmark = rs.Bookmark
     
End Sub

Private Sub Processing_Calcs_Click()
    
    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenForm stDocName
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![Contract_No]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![BEGIN_DATE] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![BEGIN_DATE]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![END_DATE] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![END_DATE]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No].Locked = True
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![BEGIN_DATE].Locked = True
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![END_DATE].Locked = True
    DoCmd.GoToControl "Preview_Process_Pay_Calculations_Report"
  
End Sub

Private Sub Update_Lift_Items_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Lift_CItems1_mt"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Lift_CItems"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Totals"
    DoCmd.SetWarnings True
    [Contract_Payment_Estimate_Invoice subform1].Form![Total_Earned_to_Date].Requery
    
End Sub

Private Sub Update_Pack_Items_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_MT"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Deduct_At"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Reduction_AT"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_incremental_AT"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Pack_CItems"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Totals"
    DoCmd.SetWarnings True
    [Contract_Payment_Estimate_Invoice subform1].Form![Total_Earned_to_Date].Requery

End Sub


Private Sub VIEW_FY_Change()

    Contract_No = Null
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    Contract_No = Null
    Contract_No.Requery
    
End Sub
