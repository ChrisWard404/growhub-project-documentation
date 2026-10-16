# Form: NMIS_CONTRACT_ROLL_OVER

**Caption:** Contract Rollover  
**Record source:**

```sql
NMIS_CONTRACT_ITEMS_ROLLED_OVER
```

**Backend tables referenced:** `NMIS_CONTRACTS`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Close_Form | exit |  |  | Click | 1.54, 1.58, 0.78, 0.28 |
| TextBox | MaxOfFISCAL_YEAR | MaxOfFISCAL_YEAR: | MaxOfFISCAL_YEAR |  |  | 1.26, 0.51, 0.00, 0.00 |
| TextBox | NMIS_Contract_Items_Current | Contract Items Current: | Contract_Items_Current |  |  | 1.46, 0.33, 0.71, 0.00 |
| TextBox | New_Contract | New Contract No: |  |  |  | 1.45, 1.02, 1.70, 0.25 |
| ComboBox | From_Contract | Old Contract No: |  | SELECT NMIS_CONTRACTS.CONTRACT_NO, NMIS_CONTRACTS.PROJECT FROM NMIS_CONTRACTS WHERE (((NMIS_CONTRACTS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]-1)) ORDER BY NMIS_CONTRACTS.CONTRACT_NO; |  | 1.45, 0.73, 1.85, 0.25 |
| Label | Label6 | Contract Rollover |  |  |  | 0.98, 0.12, 1.78, 0.27 |
| CommandButton | Rollover_Contracts | Rollover |  |  | Click | 1.50, 1.58, 0.78, 0.28 |
| TextBox | warning |  | =IIf([NMIS_Contract_Items_Current]="yes","Contract appears to already have been rolled over!") |  |  | 0.12, 1.34, 3.58, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Close_Form_Click()

    DoCmd.Close
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If NMIS_Contract_Items_Current = "no" Then
        Rollover_Contracts.Visible = True
        Close_form.Visible = False
    Else
        Rollover_Contracts.Visible = False
        Close_form.Visible = True
    End If
    
End Sub

Private Sub Rollover_Contracts_Click()
On Error GoTo Err_Rollover_Contracts_Click

    Dim stDocName As String

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "CONTRACT_ROLLOVER", acNormal, acEdit
    DoCmd.OpenQuery "Rollover_CONTRACT_ITEMS", acNormal, acEdit
    DoCmd.OpenQuery "CONTRACT_ITEM_DETAIL_ROLLOVER", acNormal, acEdit
    DoCmd.OpenQuery "CONTRACT_PAYMENT_ESTIMATE_INVOICE_ROLLOVER", acNormal, acEdit
    DoCmd.SetWarnings True
    MsgBox "Rollover Complete"
    DoCmd.Close

Exit_Rollover_Contracts_Click:
    Exit Sub

Err_Rollover_Contracts_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Rollover_Contracts_Click
    
End Sub
```
