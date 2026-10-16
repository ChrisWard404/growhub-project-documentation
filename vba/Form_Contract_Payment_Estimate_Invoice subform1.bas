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