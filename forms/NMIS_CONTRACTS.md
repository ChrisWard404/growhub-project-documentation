# Form: NMIS_CONTRACTS

**Caption:** NMIS CONTRACTS  
**Record source:**

```sql
SELECT NMIS_CONTRACTS.* FROM NMIS_CONTRACTS WHERE (((NMIS_CONTRACTS.CONTRACT_NO)=[Forms]![NMIS_CONTRACTS]![View_Contract])) ORDER BY NMIS_CONTRACTS.FISCAL_YEAR DESC , NMIS_CONTRACTS.CONTRACT_NO;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTRACTS`  
**Subforms/subreports:** `Form.NMIS_CONTRACT_ITEMS`  
**Opens:** `Form:Close_Form`, `Form:NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Contract_Payment_Estimate_Invoice`, `Form_Contract_Payment_Estimate_Invoice_Main`, `Form_Contract_Work_Order`, `Form_xLookup_Tables_Menu`  
**Form events with code:** Close, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box88 |  |  |  |  | 0.03, 0.04, 3.70, 0.67 |
| ComboBox | View_Contract | View Contract: |  | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.FISCAL_YEAR FROM NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE GROUP BY NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.FISCAL_YEAR, NMIS_CONTRACTS.CONTRACT_NO HAVING (((NMIS_CONTRACTS.FISCAL_YEAR) Like [View_FY])) ORDER BY NMIS_CONTRACTS.FISCAL_YEAR, NMIS_CONTRACTS.CONTRACT_NO; | AfterUpdate, Enter | 1.41, 0.40, 2.19, 0.23 |
| Label | Label18 | NMIS Contracts |  |  |  | 4.20, 0.10, 1.56, 0.28 |
| CommandButton | Close | Close |  |  | Click | 9.66, 0.09, 0.47, 0.28 |
| Line | Line49 |  |  |  |  | 0.04, 0.73, 10.01, 0.02 |
| TextBox | View_FY |  View Like FY: |  |  | Exit | 1.17, 0.12, 0.58, 0.20 |
| CheckBox | show_all_contract_items | Show All Contract Items: |  |  | AfterUpdate | 9.68, 0.54, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_CONTRACT_ITEMS |  | Form.NMIS_CONTRACT_ITEMS |  |  | 0.04, 0.96, 10.18, 4.57 |
| TextBox | ORIGINAL_CONTRACT_AMT | Original Contract Amt: | ORIGINAL_CONTRACT_AMT |  |  | 6.19, 0.27, 1.01, 0.21 |
| TextBox | FISCAL_YEAR | Fiscal Year: | FISCAL_YEAR |  |  | 0.92, 0.05, 0.58, 0.20 |
| TextBox | PROJECT | Project: | PROJECT |  |  | 0.92, 0.29, 2.92, 0.20 |
| ComboBox | CONTRACT_NO | Contract No.: | CONTRACT_NO | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTRACTS.ORIGINAL_CONTRACT_AMT, NMIS_CONTRACTS.FISCAL_YEAR FROM NMIS_CONTRACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTRACTS.ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_CONTRACTS.CONTRACT_NO)<>"New Contract")) ORDER BY NMIS_CONTRACTS.FISCAL_YEAR DESC , NMIS_CONTRACTS.CONTRACT_NO; | DblClick, Enter, Exit, LostFocus | 2.66, 0.04, 1.67, 0.21 |
| TextBox | NOTE | Remarks: | NOTE |  |  | 0.83, 0.53, 9.38, 0.40 |
| ComboBox | ASSOCIATE | Contractor: | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | DblClick, Enter | 5.35, 0.04, 2.51, 0.21 |
| TextBox | Last_Contract_No_Viewed |  |  |  |  | 8.38, 0.08, 0.00, 0.21 |
| TextBox | Last_Project_Viewed |  |  |  |  | 8.45, 0.19, 0.00, 0.21 |
| CheckBox | INDEFINITE_QUANTITY | Indefinite Quantity: | INDEFINITE_QUANTITY |  |  | 9.68, 0.31, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

    Dim stDocName As String

    If IsNull(Associate) Then
        stDocName = "NMIS_ASSOCIATES"
        DoCmd.OpenForm stDocName
        DoCmd.GoToRecord , , acNewRec
    Else
        Associate.Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_Enter()

    Associate.Requery
    
    If IsNull(Associate) Then
        Associate.Locked = False
    Else
        Associate.Locked = True
    End If
    
End Sub

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

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


Private Sub CONTRACT_NO_LostFocus()

    Last_Contract_No_Viewed = Contract_No
    Last_Project_Viewed = PROJECT
    
End Sub

Private Sub Form_Close()

    If IsLoaded("Contract_Payment_Estimate_Invoice") Then
        If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_No]) Then
        If Not IsNull(Last_Contract_No_Viewed) Then
            'MsgBox "lookup contract no"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_No] = Last_Contract_No_Viewed
            'MsgBox "project name"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![Project_Name] = Last_Project_Viewed
            'MsgBox "main contract no"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![Contract_No] = Last_Contract_No_Viewed
            'MsgBox "make Est 0"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![ESTIMATE_NO] = 0
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![ESTIMATE_NO_PREVIOUS]) Then
                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_CONTRACT"
                DoCmd.SetWarnings True
                Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![ESTIMATE_NO_PREVIOUS] = 0
            End If
            Forms![Contract_Payment_Estimate_Invoice]![Contract_No].Requery
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![Contract_No].Requery
            'MsgBox Last_Contract_No_Viewed
        End If
        End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Last_Contract_No_Viewed = Null
    Last_Project_Viewed = Null
    DoCmd.GoToControl "View_Contract"
    
End Sub

Private Sub show_all_contract_items_AfterUpdate()

    [NMIS_CONTRACT_ITEMS].Requery
    
End Sub

Private Sub View_Contract_AfterUpdate()

    DoCmd.Requery
    ' Find the record that matches the control.
     Dim rs As Object

       Set rs = Me.Recordset.Clone
        rs.FindFirst "[CONTRACT_NO] = '" & Me![View_Contract] & "'"
        Me.Bookmark = rs.Bookmark
     
End Sub

Private Sub View_Contract_Enter()
    
    View_Contract.Requery
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    View_Contract.Requery
    
End Sub
```
