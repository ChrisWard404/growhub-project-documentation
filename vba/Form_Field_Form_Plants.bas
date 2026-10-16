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

Private Sub Preview_Field_Plants_For_Inv_Sizing_Click()
On Error GoTo Err_Preview_Field_Plants_For_Inv_Sizing_Click

    Dim stDocName As String

    stDocName = "Field_Form_Plants_Inv_Size_Checklist"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_For_Inv_Sizing:
    Exit Sub

Err_Preview_Field_Plants_For_Inv_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_For_Inv_Sizing
    
End Sub

Private Sub Like_Age_Class_Enter()

    Like_Age_Class.Requery
    
End Sub

Private Sub Like_Agreement_Lot_ID_Enter()

    Like_Agreement_Lot_ID.Requery
    
End Sub

Private Sub MaxSowDate_DblClick(Cancel As Integer)

    MaxSowDate = Date
    
End Sub

Private Sub MinSowDate_DblClick(Cancel As Integer)

    MinSowDate = "01/01/70"

End Sub

Private Sub Preview_Field_Plants_Click()

On Error GoTo Err_Preview_Field_Plants_Click

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
    
    stDocName = "Field_Form_Plants"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_Click:
    Exit Sub

Err_Preview_Field_Plants_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_Click
    
End Sub

Private Sub Preview_Field_Plants_w_specs_ByLotID_Click()
On Error GoTo Err_Field_Plants_w_specs_ByLotID_Click

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
    
    stDocName = "Field_Form_Plants_w_specs_ByLotID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Plants_w_specs_ByLotID_Click:
    Exit Sub

Err_Field_Plants_w_specs_ByLotID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Plants_w_specs_ByLotID_Click
End Sub

Private Sub Preview_Field_Plants_w_specs_Click()
On Error GoTo Err_Field_Plants_w_specs_Click

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
    
    stDocName = "Field_Form_Plants_w_specs"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Plants_w_specs_Click:
    Exit Sub

Err_Field_Plants_w_specs_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Plants_w_specs_Click
End Sub