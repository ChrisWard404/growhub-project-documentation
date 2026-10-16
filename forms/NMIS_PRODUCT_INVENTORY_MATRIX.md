# Form: NMIS_PRODUCT_INVENTORY_MATRIX

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`, `Report:Plant_inventory_Rpt_Size_Matrix_Group`, `Report:Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Size Distribution Report  |  |  |  | 1.39, 0.08, 2.44, 0.27 |
| TextBox | Like_Client | Like Associate: |  |  | AfterUpdate, DblClick | 2.92, 1.59, 0.79, 0.20 |
| CommandButton | Preview_Report | Click to Preview Count and Percent Report |  |  | Click | 1.06, 3.04, 1.33, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.58 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 0.91, 1.59, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 0.92, 1.86, 0.68, 0.20 |
| TextBox | Parent_Associate | Parent Associate: |  |  |  | 3.66, 0.72, 0.79, 0.20 |
| TextBox | COLLECT_METHOD | Collection Code: |  |  |  | 1.30, 2.21, 0.46, 0.20 |
| ComboBox | Plntmstr_Symbol | Like Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 2.92, 2.12, 0.80, 0.21 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 0.07, 0.06, 0.00, 0.00 |
| ComboBox | Cost_Center | Stock Type: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 1.96, 1.25, 2.36, 0.24 |
| ComboBox | Contact_CN |  Like Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([historical]," (Historical)") AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![like_client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([historical]," (Historical)") ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([historical]," (Historical)"); | DblClick, Enter | 2.92, 1.85, 1.99, 0.21 |
| CommandButton | Preview_PCT_Only_Report | Click to Preview Percent Only Report |  |  | Click | 3.15, 3.04, 1.33, 0.75 |
| ComboBox | Like_Lot_ID | Like Lot ID (Blank for All): |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS WHERE (((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![Cost_Center]) AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null) AND ((NMIS_AGREEMENT_LOTS.NURSERY_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID ORDER BY NMIS_AGREEMENT_LOTS.ID; |  | 2.92, 2.40, 1.50, 0.21 |

## Code-behind (VBA)

```vb
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
```
