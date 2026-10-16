# Form: Contract_Payment_Estimate_Invoice

**Caption:** Contract_Payment_Estimate_Invoice  
**Record source:**

```sql
SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_CONTRACTS.ASSOCIATE, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACTS.FISCAL_YEAR, NMIS_CONTRACTS.INDEFINITE_QUANTITY FROM NMIS_CONTRACTS;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTRACTS`, `NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform`, `Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2`, `Form.Contract_Payment_Estimate_Invoice subform1`, `Form.Contract_Payment_Estimate_Invoice_Main_subform`  
**Opens:** `Form:CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `Form:Close_Form`, `Form:NMIS_CONTRACTS`, `Form:PROCESS_PAYMENT_ESTIMATE_INVOICE`, `Report:CONTRACT_PAYMENT_ESTIMATE_INVOICE`, `Report:Close_Form`, `Report:NMIS_CONTRACTS`, `Report:PROCESS_PAYMENT_ESTIMATE_INVOICE`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`, `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PROJECT |  | =[Contract_Payment_Estimate_Invoice_Main_subform].[Form]![CONTRACT_NO] |  |  | 8.21, 0.02, 1.17, 0.21 |
| TextBox | ASSOCIATE |  | =[Contract_Payment_Estimate_Invoice_Main_subform].[Form]![ESTIMATE_NO] |  |  | 8.21, 0.27, 1.17, 0.21 |
| Subform | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform |  | Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform (master: CONTRACT_NO;FISCAL_YEAR → child: CONTRACT_NO;FISCAL_YEAR) |  |  | 5.67, 0.07, 2.33, 0.54 |
| Subform | NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2 |  | Form.NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2 (master: PROJECT → child: CONTRACT_NO) |  |  | 3.30, 0.07, 2.33, 0.54 |
| TextBox | ORIGINAL_CONTRACT_AMT |  | =[Contract_Payment_Estimate_Invoice_Main_subform].[Form]![ESTIMATE_NO_PREVIOUS] |  |  | 9.50, 0.06, 1.17, 0.21 |
| ComboBox | CONTRACT_NO | View Contract: |  | SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE) RIGHT JOIN NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE ON (NMIS_CONTRACTS.CONTRACT_NO = NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO) AND (NMIS_CONTRACTS.FISCAL_YEAR = NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.FISCAL_YEAR) GROUP BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.FISCAL_YEAR HAVING (((NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.FISCAL_YEAR)=[View_FY])) OR (((NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE.CONTRACT_NO)="new contract")); | Change, DblClick, Enter, Exit, GotFocus | 1.36, 0.34, 1.90, 0.23 |
| ComboBox | View_FY |  View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC; | Exit | 0.78, 0.05, 0.58, 0.20 |
| CommandButton | Close | Close |  |  | Click | 11.00, 0.12, 0.47, 0.28 |
| CheckBox | Just_Opened |  |  |  |  | 1.71, 0.06, 0.25, 0.00 |
| Label | Label18 | Contract Payment Estimate Invoice |  |  |  | 4.20, 0.04, 3.42, 0.28 |
| TextBox | FISCAL_YEAR |  | =[View_FY] |  |  | 9.59, 0.31, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Contract_Payment_Estimate_Invoice subform1 |  | Form.Contract_Payment_Estimate_Invoice subform1 (master: CONTRACT_NO;FISCAL_YEAR;ASSOCIATE → child: CONTRACT_NO;FISCAL_YEAR;ESTIMATE_NO) |  | Enter | 0.04, 1.49, 11.53, 3.93 |
| CommandButton | Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE | Click to View FS-6300-30 |  |  | Click | 0.07, 5.46, 1.70, 0.00 |
| TextBox | Text50 | Text50: | TKT_NO |  |  | 5.71, 2.35, 0.00, 0.00 |
| Subform | Contract_Payment_Estimate_Invoice_Main_subform |  | Form.Contract_Payment_Estimate_Invoice_Main_subform (master: CONTRACT_NO;FISCAL_YEAR → child: CONTRACT_NO;FISCAL_YEAR) |  | Enter | 0.05, 0.02, 11.49, 1.41 |
| CommandButton | Update_Pack_Items | Click to Update Pack Items |  |  | Click | 9.88, 5.46, 1.70, 0.00 |
| CommandButton | Update_Lift_Items | Click to Update Lift Items |  |  | Click | 8.09, 5.46, 1.70, 0.00 |
| CommandButton | Processing_Calcs | Click for Processing Payment Estimate... |  |  | Click | 5.21, 5.46, 2.44, 0.24 |

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

Private Sub CONTRACT_NO_Change()

    If Contract_No = "New Contract" Then
    
        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        
        [Forms]![Contract_Payment_Estimate_Invoice]![Contract_No] = Null
        DoCmd.OpenForm stDocName ', , , , acFormAdd
        DoCmd.GoToRecord , , acNewRec
        Contract_No.Locked = False
        Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
        Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        
        
    End If
    
End Sub

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)

        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        stLinkCriteria = "[CONTRACT_NO]=" & "'" & _
                            Forms![Contract_Payment_Estimate_Invoice]![Contract_No] & "'"
        If Not IsNull(Contract_No) Then
            DoCmd.OpenForm stDocName, , , stLinkCriteria
            Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
            Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        Else
            [Forms]![Contract_Payment_Estimate_Invoice]![Contract_No] = Null
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

Private Sub CONTRACT_NO_GotFocus()

    Contract_No.Requery
    
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

    DoCmd.GoToControl "Contract_no"

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
    'DoCmd.GoToControl "Preview_Process_Pay_Calculations_Report"
  
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
    'DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Deduct_At"
    'DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Reduction_AT"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Cull_Adjust_At"
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
```
