Option Compare Database

Private Sub Cost_Center_AfterUpdate()

    Like_Age_Class.Requery
    
    If Cost_Center = "B" Then
        Current_FY_Lift.Visible = True
        Current_FY_Lift_Label.Visible = True
        [Highlight_Short_Beds].Visible = True
        [Highlight_Short_Beds Label].Visible = True
    Else
        Current_FY_Lift.Visible = False
        Current_FY_Lift_Label.Visible = False
        [Highlight_Short_Beds].Visible = False
        [Highlight_Short_Beds Label].Visible = False
    End If
    
End Sub

Private Sub Preview_Index_Click()
    
On Error GoTo Err_Preview_Index_Click

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        If [Show_Inventory_Status] Then
            stDocName = "Field_Location_Index_Inv_Stat"
        Else
            stDocName = "Field_Location_Index"
        End If
    Case Is = "C"
        If [Show_Inventory_Status] Then
            stDocName = "Container_Location_Index_Inv_Stat"
        Else
            stDocName = "Container_Location_Index"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Click:
    Exit Sub

Err_Preview_Index_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Click
    
End Sub

Private Sub Preview_Index_fs_vs_non_Click()
On Error GoTo Err_Preview_Index_Click

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        stDocName = "Field_Location_Index_fs_vs_non"
    Case Is = "C"
        stDocName = "Container_Location_Index_fs_vs_non"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Click:
    Exit Sub

Err_Preview_Index_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Click
    
End Sub

Private Sub Preview_Index_Proofsheet_Click()

On Error GoTo Err_Preview_Index_Proofsheet_Click
    
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        If [Show_Inventory_Status] Then
            stDocName = "Field_Location_Proofsheet_Inv_Stat"
        Else
            stDocName = "Field_Location_Proofsheet"
        End If
    Case Is = "C"
        If [Show_Inventory_Status] Then
            stDocName = "Container_Location_Proofsheet_Inv_Stat"
        Else
            stDocName = "Container_Location_Proofsheet"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Proofsheet_Click:
    Exit Sub

Err_Preview_Index_Proofsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Proofsheet_Click
    
End Sub

Private Sub Preview_Index_Proofsheet_fs_vs_non_Click()
On Error GoTo Err_Preview_Index_Proofsheet_Click
    
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        stDocName = "Field_Location_Proofsheet_fs_vs_non"
    Case Is = "C"
        stDocName = "Container_Location_Proofsheet_fs_vs_non"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Proofsheet_Click:
    Exit Sub

Err_Preview_Index_Proofsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Proofsheet_Click
    
End Sub