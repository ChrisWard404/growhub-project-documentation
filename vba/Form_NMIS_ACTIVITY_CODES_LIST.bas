Option Compare Database

Private Sub ACTIVITY_CODE_Label_Click()
On Error GoTo Err_ACTIVITY_CODE_Label_Click


    Sort_By = "Activity Code"
    DoCmd.Requery

Exit_ACTIVITY_CODE_Label_Click:
    Exit Sub

Err_ACTIVITY_CODE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_Label_Click
    
End Sub

Private Sub ACTIVITY_CODE_NO_Label_Click()
On Error GoTo Err_ACTIVITY_CODE_NO_Label_Click


    Sort_By = "Activity No"
    DoCmd.Requery

Exit_ACTIVITY_CODE_NO_Label_Click:
    Exit Sub

Err_ACTIVITY_CODE_NO_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_NO_Label_Click
    
End Sub

Private Sub ACTIVITY_NAME_Label_Click()
On Error GoTo Err_ACTIVITY_NAME_Label_Click


    Sort_By = "Activity Name"
    DoCmd.Requery

Exit_ACTIVITY_NAME_Label_Click:
    Exit Sub

Err_ACTIVITY_NAME_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_NAME_Label_Click
    
End Sub

Private Sub BALANCE_EFFECT_Label_Click()
On Error GoTo Err_BALANCE_EFFECT_Label_Click


    Sort_By = "Balance Effect"
    DoCmd.Requery

Exit_BALANCE_EFFECT_Label_Click:
    Exit Sub

Err_BALANCE_EFFECT_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BALANCE_EFFECT_Label_Click
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_Label_Click()
On Error GoTo Err_PARENT_ACTIVITY_CODE_Label_Click


    Sort_By = "Parent Activity"
    DoCmd.Requery

Exit_PARENT_ACTIVITY_CODE_Label_Click:
    Exit Sub

Err_PARENT_ACTIVITY_CODE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PARENT_ACTIVITY_CODE_Label_Click
    
End Sub

Private Sub PROPERTIES_MODULE_Label_Click()
On Error GoTo Err_PROPERTIES_MODULE_Label_Click


    Sort_By = "Properties Module"
    DoCmd.Requery

Exit_PROPERTIES_MODULE_Label_Click:
    Exit Sub

Err_PROPERTIES_MODULE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PROPERTIES_MODULE_Label_Click
    
End Sub

Private Sub Select_Balance_Effect_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_Balance_Effect_Enter()

    Select_For_Activity_Code = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Activity_Code_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Activity_Code_Enter()

    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Parent_Activity_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Parent_Activity_Enter()

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Properties_Module_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Properties_Module_Enter()

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null

End Sub

Private Sub Tip_on_Sorting_Click()

        MsgBox "Click on one of the following Column Headings to sort by that Column." _
        & vbCrLf & "" _
        & vbCrLf & "Activity Code" _
        & vbCrLf & "Activity No." _
        & vbCrLf & "Activity Name" _
        & vbCrLf & "Ballance Effect" _
        & vbCrLf & "Parent Activity" _
        & vbCrLf & "Properties Module", vbInformation
        
End Sub

Private Sub View_All_Click()
On Error GoTo Err_View_All_Click

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    DoCmd.Requery

Exit_View_All_Click:
    Exit Sub

Err_View_All_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_All_Click
    
End Sub