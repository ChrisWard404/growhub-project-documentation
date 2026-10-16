Option Compare Database


Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
  
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
   
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

   Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open

End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
   
End Sub

Private Sub Preview_PCT_Only_Report_Click()
On Error GoTo Err_Preview_PCT_Only_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group"
    
    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group2_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab2_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update2_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_Count_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab2_mt"
        DoCmd.OpenQuery "Agreement_Lots_Currently_Active_in_Grow_Containers2"
        DoCmd.OpenQuery "Plant_Inventory_Rpt_Size_Matrix_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
   
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Preview_PCT_Only_Report_Click:
    Exit Sub

Err_Preview_PCT_Only_Report_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_PCT_Only_Report_Click
End Sub

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_inventory_Rpt_Size_Matrix_Group"
    
    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group2_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab2_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update2_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_Count_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab2_mt"
        DoCmd.OpenQuery "Agreement_Lots_Currently_Active_in_Grow_Containers2"
        DoCmd.OpenQuery "Plant_Inventory_Rpt_Size_Matrix_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
   
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
End Sub