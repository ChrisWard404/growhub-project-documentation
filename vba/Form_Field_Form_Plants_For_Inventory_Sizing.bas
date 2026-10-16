Option Compare Database

Private Sub Preview_Container_Index_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Container_Index_Proofsheet_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Field_Index_Click()
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Field_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Field_Map_Click()
On Error GoTo Err_Preview_Field_Map_Click

    Dim stDocName As String

    stDocName = "Field_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Map_Click:
    Exit Sub

Err_Preview_Field_Map_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Map_Click
    
End Sub

Private Sub End_FY_DblClick(Cancel As Integer)

    END_FY = "*"
    
End Sub

Private Sub Like_Age_Class_Enter()

    Like_Age_Class.Requery
    
End Sub

Private Sub Like_Agreement_Lot_ID_Enter()

    'Like_Agreement_Lot_ID.Requery
    
End Sub

Private Sub Preview_Container_Plants_For_Inv_Sizing_Click()
On Error GoTo Err_Preview_Container_Plants_For_Inv_Sizing_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    'If [field_pagebreak] Then
        stDocName = "Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak"
    'Else
        'stDocName = "Field_Form_Plants_Inv_Size_Checklist"
    'End If
    
    'If (IsNull(END_FY) Or END_FY = "*") Then
        'END_FY = Forms![Switchboard]![FY_For_Reports]
    'End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Container_Plants_For_Inv_Sizing_Click:
    Exit Sub

Err_Preview_Container_Plants_For_Inv_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Container_Plants_For_Inv_Sizing_Click
    
End Sub

Private Sub Preview_Field_Plants_For_Inv_Counting_Click()
On Error GoTo Err_Preview_Field_Plants_For_Inv_Counting_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    If [field_pagebreak] Then
        stDocName = "Field_Form_Plants_Inv_Count_Checklist_pagebreak"
    Else
        stDocName = "Field_Form_Plants_Inv_Count_Checklist"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_For_Inv_Counting_Click:
    Exit Sub

Err_Preview_Field_Plants_For_Inv_Counting_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_For_Inv_Counting_Click
End Sub

Private Sub Preview_Field_Plants_For_Inv_Sizing_Click()
On Error GoTo Err_Preview_Field_Plants_For_Inv_Sizing_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    If [field_pagebreak] Then
        stDocName = "Field_Form_Plants_Inv_Size_Checklist_pagebreak"
    Else
        stDocName = "Field_Form_Plants_Inv_Size_Checklist"
    End If
    
    If (IsNull(END_FY) Or END_FY = "*") Then
        END_FY = Forms![Switchboard]![FY_For_Reports]
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_For_Inv_Sizing:
    Exit Sub

Err_Preview_Field_Plants_For_Inv_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_For_Inv_Sizing
    
End Sub