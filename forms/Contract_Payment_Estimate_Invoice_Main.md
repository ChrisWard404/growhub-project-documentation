# Form: Contract_Payment_Estimate_Invoice_Main

**Caption:** Contract_Payment_Estimate_Invoice  
**Record source:**

```sql
SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO_PREVIOUS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.BEGIN_DATE, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.END_DATE, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.RETENTION_PCT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.PREVIOUS_PAYMENTS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DISCOUNT_PCT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DEDUCTION, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.INCREASES_DECREASES, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.NET_CONTRACT_AMOUNT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.REMARKS, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.PROJECT_NAME, NMIS_CONTRACTS.PROJECT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DATE_SIGNED, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DATE_PMT_RECOMMENDED FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE LEFT JOIN NMIS_CONTRACTS ON NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO = NMIS_CONTRACTS.CONTRACT_NO ORDER BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTRACTS`, `NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Max_Info_Subform`, `Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Previous_Payment_Subform`, `Form.Contract_Payment_Estimate_Invoice subform1`  
**Opens:** `Form:CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `Form:Close_Form`, `Form:NMIS_CONTRACTS`, `Report:CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `Report:Close_Form`, `Report:NMIS_CONTRACTS`  
**Form events with code:** Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text88 |  | =[Contract_Payment_Estimate_Invoice_Main].[Form]![CONTRACT_NO] |  |  | 8.30, 0.10, 1.17, 0.21 |
| TextBox | ASSOCIATE |  | =[Contract_Payment_Estimate_Invoice_Main].[Form]![ESTIMATE_NO] |  |  | 8.30, 0.40, 1.17, 0.21 |
| Subform | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform |  | Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Max_Info_Subform (master: CONTRACT_NO → child: CONTRACT_NO) |  |  | 5.76, 0.17, 2.33, 0.54 |
| Subform | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Previous_Payment_Subform |  | Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Previous_Payment_Subform (master: CONTRACT_NO → child: CONTRACT_NO) |  |  | 3.39, 0.17, 2.33, 0.54 |
| TextBox | Text89 |  | =[Contract_Payment_Estimate_Invoice_Main].[Form]![ESTIMATE_NO_PREVIOUS] |  |  | 9.59, 0.10, 1.17, 0.21 |
| ComboBox | View_Contract | View Contract: |  | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE GROUP BY NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.FISCAL_YEAR HAVING (((NMIS_CONTRACTS.FISCAL_YEAR)=[View_FY] Or (NMIS_CONTRACTS.FISCAL_YEAR)=9999)); | AfterUpdate | 1.45, 0.43, 1.82, 0.23 |
| ComboBox | View_FY |  View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;  | Exit | 0.87, 0.09, 0.58, 0.20 |
| CommandButton | Close | Close |  |  | Click | 11.09, 0.10, 0.47, 0.28 |
| Line | Line49 |  |  |  |  | 0.14, 0.71, 11.45, 0.01 |
| CheckBox | Just_Opened |  |  |  |  | 1.80, 0.10, 0.25, 0.00 |
| Label | Label18 | Contract Payment Estimate Invoice |  |  |  | 4.29, 0.08, 3.42, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ESTIMATE_NO_PREVIOUS | Prev. Est. No.: | ESTIMATE_NO_PREVIOUS |  |  | 9.00, 0.31, 0.35, 0.21 |
| TextBox | DEDUCTION | Deductions: | DEDUCTION |  |  | 6.28, 0.57, 0.71, 0.20 |
| TextBox | INCREASES_DECREASES | Increases or Decreases: | INCREASES_DECREASES |  |  | 7.04, 0.31, 0.80, 0.22 |
| TextBox | ESTIMATE_NO | Estimate No. | ESTIMATE_NO |  | DblClick, Enter, Exit | 4.42, 0.07, 0.50, 0.20 |
| TextBox | BEGIN_DATE | Begin Date: | BEGIN_DATE |  | Exit | 5.97, 0.07, 0.62, 0.20 |
| TextBox | END_DATE | End Date: | END_DATE |  | Enter | 7.47, 0.07, 0.62, 0.20 |
| TextBox | RETENTION_PCT | Retention %: | RETENTION_PCT |  |  | 1.05, 0.57, 0.47, 0.20 |
| TextBox | PREVIOUS_PAYMENTS | Previous Payments: | PREVIOUS_PAYMENTS |  |  | 3.00, 0.57, 0.85, 0.20 |
| TextBox | DISCOUNT_PCT | Discount %: | DISCOUNT_PCT |  |  | 4.84, 0.57, 0.39, 0.20 |
| TextBox | NET_CONTRACT_AMOUNT | Net Contract Amount: | NET_CONTRACT_AMOUNT |  |  | 4.43, 0.31, 0.88, 0.22 |
| ComboBox | CONTRACT_NO | Contract No.: | CONTRACT_NO | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACTS.FISCAL_YEAR FROM NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_CONTRACTS.FISCAL_YEAR)=[Forms]![Contract_Payment_Estimate_Invoice_Main]![View_FY])); | DblClick, Enter, Exit | 1.94, 0.06, 1.45, 0.21 |
| TextBox | Remarks | Remarks: | REMARKS |  |  | 0.80, 0.81, 10.29, 0.40 |
| TextBox | ORIGINAL_CONTRACT_AMT | Original Contract Amount: | ORIGINAL_CONTRACT_AMT |  |  | 1.92, 0.31, 0.88, 0.22 |
| TextBox | Project_Name | Project: | PROJECT_NAME |  |  | 8.03, 0.57, 3.06, 0.20 |
| TextBox | PROJECT |  | PROJECT |  |  | 9.78, 0.32, 1.17, 0.21 |
| TextBox | DATE_SIGNED | Date Signed: | DATE_SIGNED |  | Enter | 10.68, 0.28, 0.78, 0.25 |
| TextBox | DATE_PMT_RECOMMENDED | Date Recomended: | DATE_PMT_RECOMMENDED |  |  | 9.57, 0.06, 0.82, 0.21 |
| CommandButton | New_Estimate | New Est. |  |  | Click | 0.10, 0.04, 0.70, 0.00 |
| Subform | Contract_Payment_Estimate_Invoice subform1 |  | Form.Contract_Payment_Estimate_Invoice subform1 (master: CONTRACT_NO;ESTIMATE_NO → child: CONTRACT_NO;ESTIMATE_NO) |  |  | 0.08, 1.33, 11.57, 4.52 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE | Click to View FS-6300-30 |  |  | Click | 0.06, 0.04, 1.70, 0.00 |
| CommandButton | Update_Pack_Items | Click to Update Pack Items |  |  |  | 9.88, 0.04, 1.70, 0.00 |
| CommandButton | Update_Lift_Items | Click to Update Lift Items |  |  |  | 8.08, 0.04, 1.70, 0.00 |
| CommandButton | Processing_Calcs | Click for Process Calcs... |  |  |  | 6.29, 0.04, 1.70, 0.00 |

## Code-behind (VBA)

```vb
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

Private Sub BEGIN_DATE_Exit(Cancel As Integer)
    
    If Not IsNull(BEGIN_DATE) Then
    
        If IsNull(PREVIOUS_PAYMENTS) Then
            PREVIOUS_PAYMENTS = [NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Previous_Payment_Subform].Form![PREVIOUS_PAYMENTS]
        End If
        If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
            Project_Name = PROJECT
        End If
    
        If IsNull([Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
        If ESTIMATE_NO >= 1 Then
            If IsNull(ESTIMATE_NO_PREVIOUS) Then
                ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
            End If
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
            DoCmd.SetWarnings True
            Forms![Contract_Payment_Estimate_Invoice_Main]![Contract_Payment_Estimate_Invoice subform1].Requery
        End If
        End If
    End If
   
End Sub

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)
    
    If IsNull(Contract_No) Then
    
        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    Else
        Contract_No.Locked = False
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
        Project_Name = PROJECT
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
    
    If Not IsNull(BEGIN_DATE) Then
    
        If IsNull(PREVIOUS_PAYMENTS) Then
            PREVIOUS_PAYMENTS = [NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Previous_Payment_Subform].Form![PREVIOUS_PAYMENTS]
        End If
        If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
            Project_Name = PROJECT
        End If
    
        If IsNull([Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
        If ESTIMATE_NO >= 1 Then
            If IsNull(ESTIMATE_NO_PREVIOUS) Then
                ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
            End If
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
            DoCmd.SetWarnings True
            Forms![Contract_Payment_Estimate_Invoice_Main]![Contract_Payment_Estimate_Invoice subform1].Requery
        End If
        End If
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
    
    If Not IsNull(ESTIMATE_NO) Then
        If ESTIMATE_NO = 0 Then
            If IsNull(ESTIMATE_NO_PREVIOUS) Then
                ESTIMATE_NO_PREVIOUS = 0
                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_CONTRACT"
                DoCmd.SetWarnings True
                DoCmd.Requery
            End If
        Else
            ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
        End If
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
```
