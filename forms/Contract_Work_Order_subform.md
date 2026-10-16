# Form: Contract_Work_Order_subform

**Caption:** Contract_Payment_Estimate_Invoice  
**Record source:**

```sql
SELECT NMIS_CONTRACT_WORK_ORDERS.* FROM NMIS_CONTRACT_WORK_ORDERS ORDER BY NMIS_CONTRACT_WORK_ORDERS.CONTRACT_NO, NMIS_CONTRACT_WORK_ORDERS.ESTIMATE_NO, NMIS_CONTRACT_WORK_ORDERS.AMENDMENT;
```

**Backend tables referenced:** `NMIS_CONTRACT_WORK_ORDERS`  
**Embedded in:** `Form:Contract_Work_Order`  
**Form events with code:** Current  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ESTIMATE_NO | Order No.: | ESTIMATE_NO |  | DblClick, Enter | 4.28, 0.08, 0.50, 0.20 |
| TextBox | BEGIN_DATE | Date: | DATE |  | DblClick, Enter | 5.66, 0.08, 0.62, 0.20 |
| TextBox | Remarks | Work Ordered: | WORK_ORDERED |  | DblClick, Enter | 0.12, 0.71, 9.38, 2.05 |
| CommandButton | New_Estimate | New Order |  |  | Click | 0.04, 0.04, 0.84, 0.31 |
| TextBox | CONTRACT_NO | Contract No.: | CONTRACT_NO |  | DblClick, Enter | 2.12, 0.07, 1.27, 0.21 |
| CheckBox | NON_COMPLIANCE | Notice of Non-Compliance: | NON_COMPLIANCE |  |  | 9.33, 0.11, 0.00, 0.00 |
| CheckBox | WORK_ORDER | Work Order: | WORK_ORDER |  |  | 7.28, 0.11, 0.00, 0.00 |
| TextBox | REFERENCE | REFERENCE: | REFERENCE |  | DblClick, Enter | 0.12, 3.12, 9.42, 1.25 |
| TextBox | AMENDMENT |  | AMENDMENT |  | DblClick, Enter | 4.83, 0.08, 0.29, 0.21 |
| TextBox | WORK_ORDER_KEY |  | =[CONTRACT_NO] & [ESTIMATE_NO] & [AMENDMENT] |  |  | 3.08, 0.46, 1.08, 0.21 |
| TextBox | SIGNATURE_TITLE | Signature Title: | SIGNATURE_TITLE |  |  | 6.00, 0.42, 3.46, 0.21 |

## Code-behind (VBA)

```vb
Private Sub AMENDMENT_DblClick(Cancel As Integer)

    AMENDMENT.Locked = False
    
End Sub

Private Sub AMENDMENT_Enter()

    If IsNull(AMENDMENT) Then
        AMENDMENT.Locked = False
    Else
        AMENDMENT.Locked = True
    End If
   
End Sub

Private Sub BEGIN_DATE_DblClick(Cancel As Integer)

    BEGIN_DATE.Locked = False
    
End Sub

Private Sub BEGIN_DATE_Enter()

    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE.Locked = False
    Else
        BEGIN_DATE.Locked = True
    End If
   
End Sub

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)
    
    Contract_No.Locked = False
    
End Sub

Private Sub CONTRACT_NO_Enter()

    If IsNull(Contract_No) Then
        Contract_No.Locked = False
    Else
        Contract_No.Locked = True
    End If
    
End Sub

Private Sub ESTIMATE_NO_DblClick(Cancel As Integer)

    ESTIMATE_NO.Locked = False
    
End Sub

Private Sub ESTIMATE_NO_Enter()

    If IsNull(ESTIMATE_NO) Then
        ESTIMATE_NO.Locked = False
    Else
        ESTIMATE_NO.Locked = True
    End If
 
End Sub

Private Sub Form_Current()

    'Forms![Contract_Work_Order]![NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER].Requery

End Sub

Private Sub New_Estimate_Click()

    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "BEGIN_DATE"

End Sub

Private Sub REFERENCE_DblClick(Cancel As Integer)

    REFERENCE.Locked = False
    
End Sub

Private Sub REFERENCE_Enter()

    If ESTIMATE_NO = 0 Then
        If IsNull(REFERENCE) Then
            REFERENCE.Locked = False
        Else
            REFERENCE.Locked = True
        End If
    End If
 
End Sub

Private Sub Remarks_DblClick(Cancel As Integer)

    REMARKS.Locked = False
    
End Sub

Private Sub Remarks_Enter()
    
    If ESTIMATE_NO = 0 Then
        If IsNull(REMARKS) Then
            REMARKS.Locked = False
        Else
            REMARKS.Locked = True
        End If
    End If
 
End Sub
```
