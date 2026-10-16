# Form: Contract_Payment_Estimate_Invoice_bu

**Caption:** Contract_Payment_Estimate_Invoice  
**Record source:**

```sql
SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO_PREVIOUS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.BEGIN_DATE, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.END_DATE, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.RETENTION_PCT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.PREVIOUS_PAYMENTS, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DISCOUNT_PCT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.DEDUCTION, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.INCREASES_DECREASES, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.NET_CONTRACT_AMOUNT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.REMARKS, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.PROJECT_NAME, NMIS_CONTRACTS.PROJECT FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE LEFT JOIN NMIS_CONTRACTS ON NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO = NMIS_CONTRACTS.CONTRACT_NO ORDER BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.ESTIMATE_NO;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTRACTS`, `NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Form.Contract_Payment_Estimate_Invoice subform1`  
**Opens:** `Report:CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `Report:Close_Form`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | View_Contract | View Contract: |  | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_CONTRACTS INNER JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE GROUP BY NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.FISCAL_YEAR HAVING (((NMIS_CONTRACTS.FISCAL_YEAR)=[View_FY])); | AfterUpdate | 1.39, 0.47, 1.82, 0.23 |
| ComboBox | View_FY |  View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;  | Exit | 0.78, 0.11, 0.58, 0.20 |
| Label | Label18 | Contract Payment Estimate Invoice |  |  |  | 3.83, 0.10, 3.42, 0.28 |
| CommandButton | Close | Close |  |  | Click | 10.62, 0.12, 0.47, 0.28 |
| Line | Line49 |  |  |  |  | 0.04, 0.73, 11.17, 0.01 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ESTIMATE_NO_PREVIOUS | Previous Estimate No.: | ESTIMATE_NO_PREVIOUS |  |  | 6.04, 0.03, 0.41, 0.21 |
| TextBox | DEDUCTION | Deductions: | DEDUCTION |  |  | 6.31, 0.53, 0.71, 0.20 |
| TextBox | INCREASES_DECREASES | Increases or Decreases: | INCREASES_DECREASES |  |  | 7.39, 0.27, 0.80, 0.22 |
| Subform | Contract_Payment_Estimate_Invoice subform1 |  | Form.Contract_Payment_Estimate_Invoice subform1 (master: CONTRACT_NO;ESTIMATE_NO → child: CONTRACT_NO;ESTIMATE_NO) |  |  | 0.05, 1.20, 11.17, 4.57 |
| TextBox | ESTIMATE_NO | Estimate No. | ESTIMATE_NO |  | DblClick, Enter, Exit | 3.82, 0.04, 0.50, 0.20 |
| TextBox | BEGIN_DATE | Begin Date: | BEGIN_DATE |  |  | 7.46, 0.04, 0.62, 0.20 |
| CommandButton | Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE | Click to View FS-6300-30 |  |  | Click | 0.06, 5.95, 1.70, 0.00 |
| TextBox | Text50 | Text50: | TKT_NO |  |  | 5.71, 2.29, 0.00, 0.00 |
| TextBox | END_DATE | End Date: | END_DATE |  |  | 8.96, 0.04, 0.62, 0.20 |
| TextBox | RETENTION_PCT | Retention %: | RETENTION_PCT |  |  | 1.08, 0.53, 0.47, 0.20 |
| TextBox | PREVIOUS_PAYMENTS | Previous Payments: | PREVIOUS_PAYMENTS |  |  | 3.03, 0.53, 0.85, 0.20 |
| TextBox | DISCOUNT_PCT | Discount %: | DISCOUNT_PCT |  |  | 4.88, 0.53, 0.39, 0.20 |
| TextBox | NET_CONTRACT_AMOUNT | Net Contract Amount: | NET_CONTRACT_AMOUNT |  |  | 4.77, 0.27, 0.88, 0.22 |
| ComboBox | CONTRACT_NO | Contract No.: | CONTRACT_NO | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT FROM NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE; | DblClick, Enter, Exit | 1.12, 0.03, 1.67, 0.21 |
| TextBox | Remarks | Remarks: | REMARKS |  |  | 0.83, 0.76, 10.29, 0.40 |
| TextBox | ORIGINAL_CONTRACT_AMT | Original Contract Amount: | ORIGINAL_CONTRACT_AMT |  |  | 1.95, 0.27, 0.88, 0.22 |
| TextBox | Project_Name | Project: | PROJECT_NAME |  |  | 8.06, 0.53, 3.06, 0.20 |
| TextBox | PROJECT |  | PROJECT |  |  | 9.88, 0.04, 1.17, 0.21 |

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

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)
    
    Contract_No.Locked = False
    
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
```
