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