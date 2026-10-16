# Form: Contract_Payment_Estimate_Invoice subform1

**Caption:** Contract_Payment_Estimate_Invoice subform  
**Record source:**

```sql
SELECT NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Level, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.sort, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Item_No, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Item, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Contract, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.This_Est, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Unit_Price, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Changes, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Rev_Tot, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Prev_Est, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Total_To_Date, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Total_Earned_to_Date, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Unit, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.FISCAL_YEAR, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.ESTIMATE_NO, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.ESTIMATE_NO_PREVIOUS FROM NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL WHERE (((NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.CONTRACT_NO)<>"New Contract")) ORDER BY NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.Level, NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL.sort;
```

**Backend tables referenced:** `NMIS_CONTRACT_ITEMS`, `NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE_DETAIL`, `NMIS_UNITS`  
**Embedded in:** `Form:Contract_Payment_Estimate_Invoice`, `Form:Contract_Payment_Estimate_Invoice_Main`, `Form:Contract_Payment_Estimate_Invoice_bu`  
**Form events with code:** Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | FY |  |  |  | 0.96, 0.04, 0.37, 0.34 |
| Label | ACTIVITY_CODE_Label | Changes |  |  |  | 5.86, 0.04, 0.73, 0.35 |
| Label | ACTIVITY_UNITS_Label | Rev. Tot. |  |  |  | 6.62, 0.04, 0.73, 0.35 |
| Label | ACTIVITY_DATE_Label | Contract |  |  |  | 5.12, 0.04, 0.71, 0.35 |
| Label | UNIT_CODE_Label | Unit |  |  |  | 4.51, 0.04, 0.57, 0.37 |
| Label | DESTINATION_ASSOCIATE_Label | This Est |  |  |  | 8.16, 0.04, 0.72, 0.35 |
| Label | SOURCE_LOT_CN_Label | Item No. |  |  |  | 1.36, 0.04, 0.71, 0.35 |
| Label | Label20 | Item |  |  |  | 2.11, 0.04, 2.37, 0.35 |
| Label | Label23 | Prev. Est |  |  |  | 7.39, 0.04, 0.74, 0.35 |
| Label | Label38 | Total to Date |  |  |  | 8.91, 0.04, 0.73, 0.35 |
| Label | Label40 | Unit Price |  |  |  | 9.66, 0.04, 0.62, 0.35 |
| Label | Label42 | Total Earned to Date |  |  |  | 10.31, 0.04, 0.83, 0.35 |
| Label | Label47 | Level 1 |  |  |  | 0.02, 0.04, 0.38, 0.35 |
| Label | Label49 |  Level 2  |  |  |  | 0.43, 0.04, 0.49, 0.35 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Rev_Tot |  | Rev_Tot |  |  | 6.62, 0.02, 0.72, 0.22 |
| TextBox | Contract |  | Contract |  |  | 5.12, 0.02, 0.71, 0.22 |
| ComboBox | Unit |  | Unit | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS; |  | 4.51, 0.02, 0.57, 0.22 |
| ComboBox | Item_No |  | Item_No | SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC, NMIS_CONTRACT_ITEMS.PAYMENT_PER_UNIT, NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_NO FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Contract_Payment_Estimate_Invoice]![FISCAL_YEAR]) AND ((NMIS_CONTRACT_ITEMS.CONTRACT_NO)=[Forms]![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].[Form]![CONTRACT_NO])) ORDER BY NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC; | Enter | 1.37, 0.02, 0.69, 0.20 |
| ComboBox | Item |  | Item | SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.FISCAL_YEAR FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.CONTRACT_NO)=[Forms]![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].[Form]![CONTRACT_NO]) AND ((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Contract_Payment_Estimate_Invoice]![FISCAL_YEAR])) ORDER BY NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM; | Enter | 2.11, 0.02, 2.38, 0.22 |
| TextBox | Prev_Est |  | Prev_Est |  |  | 7.36, 0.02, 0.78, 0.22 |
| TextBox | Changes |  | Changes |  |  | 5.86, 0.02, 0.74, 0.22 |
| TextBox | This_Est |  | This_Est |  | DblClick, Exit, LostFocus | 8.16, 0.02, 0.72, 0.20 |
| TextBox | Total_To_Date |  | Total_To_Date |  | DblClick, Exit | 8.89, 0.02, 0.76, 0.20 |
| TextBox | Unit_Price |  | Unit_Price |  |  | 9.66, 0.02, 0.64, 0.22 |
| TextBox | Total_Earned_to_Date |  | Total_Earned_to_Date |  | DblClick | 10.31, 0.02, 0.81, 0.20 |
| TextBox | Level |  | Level |  |  | 0.02, 0.02, 0.38, 0.20 |
| TextBox | sort |  | sort |  |  | 0.43, 0.02, 0.49, 0.20 |
| TextBox | Total_To_Date_Calc |  | =Round(NZ([Prev_Est],0),3)+Round(NZ([This_Est],0),3) |  |  | 8.97, 0.03, 0.51, 0.19 |
| TextBox | Total_Earned_to_Date_Calc |  | =Round((Nz([This_Est],0)+Nz([Prev_Est],0))*Nz([Unit_Price],1)+0.0001,2) |  |  | 10.37, 0.03, 0.65, 0.19 |
| TextBox | ESTIMATE_NO_PREVIOUS |  | ESTIMATE_NO_PREVIOUS |  |  | 11.69, 0.05, 0.42, 0.00 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 11.13, 0.05, 0.42, 0.00 |
| TextBox | ESTIMATE_NO |  | ESTIMATE_NO |  |  | 11.27, 0.05, 0.38, 0.00 |
| TextBox | DATE_SIGNED |  | =[Forms]![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].[Form]![DATE_SIGNED] |  |  | 12.19, 0.02, 1.17, 0.21 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.96, 0.02, 0.37, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Current()
    If IsNull([DATE_SIGNED]) Then
        Changes.Locked = False
        Contract.Locked = False
        Contract_No.Locked = False
        ESTIMATE_NO.Locked = False
        ESTIMATE_NO_PREVIOUS.Locked = False
        FISCAL_YEAR.Locked = False
        Item.Locked = False
        Item_No.Locked = False
        Level.Locked = False
        Prev_Est.Locked = False
        Rev_Tot.Locked = False
        sort.Locked = False
        This_Est.Locked = False
        Total_Earned_to_Date.Locked = False
        Total_To_Date.Locked = False
        UNIT.Locked = False
        Unit_Price.Locked = False
        
    Else
        Changes.Locked = True
        Contract.Locked = True
        Contract_No.Locked = True
        ESTIMATE_NO.Locked = True
        ESTIMATE_NO_PREVIOUS.Locked = True
        FISCAL_YEAR.Locked = True
        Item.Locked = True
        Item_No.Locked = True
        Level.Locked = True
        Prev_Est.Locked = True
        Rev_Tot.Locked = True
        sort.Locked = True
        This_Est.Locked = True
        Total_Earned_to_Date.Locked = True
        Total_To_Date.Locked = True
        UNIT.Locked = True
        Unit_Price.Locked = True
    End If
    
End Sub

Private Sub Item_Enter()

    Item.Requery
    
End Sub

Private Sub Item_No_Enter()

    Item_No.Requery
    
End Sub

Private Sub This_Est_DblClick(Cancel As Integer)

End Sub

Private Sub This_Est_Exit(Cancel As Integer)

    If Not IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![END_DATE]) Then
        If (IsNull(Prev_Est) And IsNull(This_Est)) Then
            'do nothing
        Else
            'If IsNull(Total_To_Date) Then
            If Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![INDEFINITE_QUANTITY] = False Then
                Total_To_Date = Round(Nz(Prev_Est, 0), 3) + Round(Nz(This_Est, 0), 3)
            End If
            'End If
            'If Not IsNull(Total_To_Date) And IsNull(Total_Earned_to_Date) Then
            Total_Earned_to_Date = Round((Nz(This_Est, 0) + Nz(Prev_Est, 0)) * Nz(Unit_Price, 1) + 0.00001, 2)
            'End If
            DoCmd.GoToRecord , , acNext
        End If
    End If
    
End Sub

Private Sub This_Est_LostFocus()

    If Not IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![END_DATE]) Then
        If (IsNull(Prev_Est) And IsNull(This_Est)) Then
            'do nothing
        Else
            'If IsNull(Total_To_Date) Then
            If Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![INDEFINITE_QUANTITY] = False Then
                Total_To_Date = Round(Nz(Prev_Est, 0), 3) + Round(Nz(This_Est, 0), 3)
            End If
            'End If
            'If Not IsNull(Total_To_Date) And IsNull(Total_Earned_to_Date) Then
            Total_Earned_to_Date = Round((Nz(This_Est, 0) + Nz(Prev_Est, 0)) * Nz(Unit_Price, 1) + 0.001, 2)
            'End If
            'DoCmd.GoToRecord , , acNext
        End If
    End If
    
End Sub

Private Sub Total_Earned_to_Date_DblClick(Cancel As Integer)
    
    Total_Earned_to_Date = Nz(Total_Earned_to_Date_Calc, 0)
   
End Sub

Private Sub Total_To_Date_DblClick(Cancel As Integer)
    
    Total_To_Date = Nz(Total_To_Date_Calc, 0)
    
End Sub

Private Sub Total_To_Date_Exit(Cancel As Integer)

    If Not IsNull(Total_To_Date) And IsNull(Total_Earned_to_Date) Then
        Total_Earned_to_Date = Round(Total_To_Date * Nz(Unit_Price, 1) + 0.001, 2)
    End If
    
End Sub
```
