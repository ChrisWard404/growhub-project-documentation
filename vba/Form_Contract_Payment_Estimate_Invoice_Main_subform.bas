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

Private Sub BEGIN_DATE_DblClick(Cancel As Integer)
    
    BEGIN_DATE.Locked = False

End Sub

Private Sub BEGIN_DATE_Enter()

    If Not IsNull(BEGIN_DATE) Then
        BEGIN_DATE.Locked = True
    End If
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)
    
    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    Else
                        PREVIOUS_PAYMENTS = 0
                    End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
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
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub CONTRACT_NO_LostFocus()

    Contract_No.Locked = True
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub DATE_SIGNED_Enter()

    If Not IsNull(DATE_SIGNED) Then
        DATE_SIGNED.Locked = True
    Else
        DATE_SIGNED.Locked = False
    End If
    
End Sub

Private Sub END_DATE_Enter()
    
    If ESTIMATE_NO > 0 Then
        If Not IsNull(BEGIN_DATE) Then
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    PREVIOUS_PAYMENTS = PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    'If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    'Else
                        'PREVIOUS_PAYMENTS = 0
                    'End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub END_DATE_GotFocus()

    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    Else
                        PREVIOUS_PAYMENTS = 0
                    End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub END_DATE_LostFocus()

    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    Else
                        PREVIOUS_PAYMENTS = 0
                    End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
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
    
    If ESTIMATE_NO > 0 Then
            ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
    End If
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Click()

    Dim stDocName As String

    stDocName = "CONTRACT_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub View_Contract_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CONTRACT_NO] = '" & Me![View_Contract] & "'"
    Me.Bookmark = rs.Bookmark
     
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    View_Contract.Requery
    
End Sub

Private Sub ESTIMATE_NO_LostFocus()

    ESTIMATE_NO.Locked = True
    
    If ESTIMATE_NO > 0 Then
            ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
    End If
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub Form_Current()

    If IsNull(DATE_SIGNED) Then
        BEGIN_DATE.Locked = False
        Contract_No.Locked = False
        DATE_SIGNED.Locked = False
        DEDUCTION.Locked = False
        DISCOUNT_PCT.Locked = False
        END_DATE.Locked = False
        ESTIMATE_NO.Locked = False
        ESTIMATE_NO_PREVIOUS.Locked = False
        INCREASES_DECREASES.Locked = False
        Net_Contract_Amount.Locked = False
        PREVIOUS_PAYMENTS.Locked = False
        PROJECT.Locked = False
        Project_Name.Locked = False
        REMARKS.Locked = False
        
    Else
        BEGIN_DATE.Locked = True
        Contract_No.Locked = True
        DATE_SIGNED.Locked = True
        DEDUCTION.Locked = True
        DISCOUNT_PCT.Locked = True
        END_DATE.Locked = True
        ESTIMATE_NO.Locked = True
        ESTIMATE_NO_PREVIOUS.Locked = True
        INCREASES_DECREASES.Locked = True
        Net_Contract_Amount.Locked = True
        PREVIOUS_PAYMENTS.Locked = True
        PROJECT.Locked = True
        Project_Name.Locked = True
        REMARKS.Locked = True
        RETENTION_PCT.Locked = True
    End If
 
End Sub

Private Sub New_Estimate_Click()

    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "BEGIN_DATE"
    
    
End Sub