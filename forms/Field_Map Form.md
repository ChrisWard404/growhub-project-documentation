# Form: Field_Map Form

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_SPECIES`  
**Subforms/subreports:** `Form.NMIS_ACCESS_USER_NURSERY subform1`  
**Opens:** `Report:Container_Location_Index`, `Report:Container_Location_Index_Inv_Stat`, `Report:Container_Location_Index_fs_vs_non`, `Report:Container_Location_Proofsheet`, `Report:Container_Location_Proofsheet_Inv_Stat`, `Report:Container_Location_Proofsheet_fs_vs_non`, `Report:Field_Location_Index`, `Report:Field_Location_Index_Inv_Stat`, `Report:Field_Location_Index_fs_vs_non`, `Report:Field_Location_Proofsheet`, `Report:Field_Location_Proofsheet_Inv_Stat`, `Report:Field_Location_Proofsheet_fs_vs_non`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`, `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Growing Location Index |  |  |  | 1.33, 0.05, 2.35, 0.27 |
| TextBox | Field | Location Like: |  |  |  | 2.33, 0.98, 0.99, 0.23 |
| ComboBox | Like_Associate | Associate Like: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 2.33, 1.26, 1.02, 0.23 |
| ComboBox | Like_Plntmstr_Symbol | Species Like: |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR; |  | 2.33, 1.83, 1.02, 0.23 |
| ComboBox | PRODUCT_GROUP | Product Group: |  | Plant;Plant;Propagule;Propagule;*;All |  | 2.33, 0.70, 1.08, 0.23 |
| CheckBox | Use_Scientific_Name | Use Scientific Name on Index  |  |  |  | 3.78, 3.32, 0.00, 0.00 |
| ComboBox | Like_Age_Class | Age Class Like: |  | SELECT Agreement_Lot_Current_Age_Class.Age_Class, Left$([CATEGORY_CODE],1) AS BorC FROM NMIS_AGREEMENT_LOTS INNER JOIN (Agreement_Lot_Current_Age_Class INNER JOIN Agreement_Lots_Currently_Active ON Agreement_Lot_Current_Age_Class.CN = Agreement_Lots_Currently_Active.CN) ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN WHERE (((Left$([CATEGORY_CODE],1))=[Forms]![Field_Map Form]![Cost_Center])) GROUP BY Agreement_Lot_Current_Age_Class.Age_Class, Left$([CATEGORY_CODE],1), Agreement_Lot_Current_Age_Class.Age_Class ORDER BY Left$([CATEGORY_CODE],1), Agreement_Lot_Current_Age_Class.Age_Class; |  | 2.33, 2.11, 2.00, 0.23 |
| CommandButton | Preview_Index | Index |  |  | Click | 2.62, 4.78, 0.78, 0.56 |
| ComboBox | Like_Agreement_Lot_ID | Lot ID Like: |  | SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lots_Currently_Active ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active.CN ORDER BY NMIS_AGREEMENT_LOTS.ID; |  | 2.33, 2.99, 2.00, 0.23 |
| CommandButton | Preview_Index_Proofsheet |  Proofsheet |  |  | Click | 1.72, 4.78, 0.78, 0.56 |
| CheckBox | Split_Lots_Only | Split Lots Only  |  |  |  | 3.78, 3.61, 0.00, 0.00 |
| TextBox | Like_End_FY | End FY Like: |  |  |  | 2.33, 2.70, 0.99, 0.23 |
| ComboBox | Cost_Center | Stock Type: |  | B;Bareroot;C;Container | AfterUpdate | 2.33, 0.42, 2.36, 0.24 |
| CheckBox | Current_FY_Lift |  |  |  |  | 3.78, 4.21, 0.00, 0.00 |
| TextBox | Current_FY_Lift_Label |  | ="Highlight Lots Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports] & " " |  |  | 0.38, 4.17, 3.31, 0.24 |
| TextBox | Like_Begin_FY | Begin FY Like: |  |  |  | 2.33, 2.41, 0.99, 0.23 |
| CheckBox | Highlight_Short_Beds | Highlight Short Beds on Proofsheet   |  |  |  | 3.78, 4.49, 0.00, 0.00 |
| ComboBox | Diverse | Traditional/Non-Traditonal: |  | 0;Traditional;-1;Non-Traditional;*;All |  | 2.33, 1.54, 1.40, 0.24 |
| CommandButton | Preview_Index_fs_vs_non | Index fs vs non-fs |  |  | Click | 4.50, 4.84, 0.46, 0.50 |
| CommandButton | Preview_Index_Proofsheet_fs_vs_non |   ps   fs vs non-fs |  |  | Click | 0.04, 4.84, 0.46, 0.50 |
| Subform | NMIS_ACCESS_USER_NURSERY subform1 |  | Form.NMIS_ACCESS_USER_NURSERY subform1 |  |  | 0.00, 0.00, 1.75, 1.08 |
| CheckBox | Show_Inventory_Status | Show Inventory Status    |  |  |  | 3.78, 3.92, 0.00, 0.00 |

## Code-behind (VBA)

```vb
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
```
