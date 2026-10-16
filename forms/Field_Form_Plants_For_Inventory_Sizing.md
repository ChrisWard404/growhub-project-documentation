# Form: Field_Form_Plants_For_Inventory_Sizing

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_UNIT_DRILL_ROWS subform`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`, `Report:Container_Location_Index`, `Report:Container_Location_Proofsheet`, `Report:Field_Form_Plants_Inv_Count_Checklist`, `Report:Field_Form_Plants_Inv_Count_Checklist_pagebreak`, `Report:Field_Form_Plants_Inv_Size_Checklist`, `Report:Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak`, `Report:Field_Form_Plants_Inv_Size_Checklist_pagebreak`, `Report:Field_Location_Index`, `Report:Field_Location_Proofsheet`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Field Checklist for Inventory |  |  |  | 1.12, 0.12, 2.77, 0.28 |
| TextBox | Like_Begin_Location | Begin Location Like: |  |  |  | 2.62, 0.55, 0.99, 0.23 |
| ComboBox | Like_Associate | Associate Like: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 2.62, 0.83, 1.02, 0.23 |
| ComboBox | Like_Plntmstr_Symbol | Species Like: |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR; |  | 2.62, 1.11, 1.02, 0.23 |
| CheckBox | Split_Lots_Only | Split Lots Only: |  |  |  | 2.66, 2.92, 0.00, 0.00 |
| Subform | NMIS_UNIT_DRILL_ROWS subform | Unit Drill Rows for Sizing | Form.NMIS_UNIT_DRILL_ROWS subform |  |  | 0.45, 3.76, 2.00, 1.45 |
| CommandButton | Preview_Field_Plants_For_Inv_Sizing | Sizing Report Bareroot |  |  | Click | 3.28, 4.45, 1.70, 0.31 |
| CommandButton | Preview_Field_Plants_For_Inv_Counting | Counting Report |  |  | Click | 3.46, 3.39, 1.24, 0.31 |
| ComboBox | Like_Age_Class | Age Class Like: |  | SELECT Agreement_Lot_Current_Age_Class.Age_Class FROM Agreement_Lot_Current_Age_Class INNER JOIN (Agreement_Lots_Currently_Active_in_Grow_Containers INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON Agreement_Lots_Currently_Active_in_Grow_Containers.CN = NMIS_AGREEMENT_LOTS.CN) ON Agreement_Lot_Current_Age_Class.CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "*") AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Like_Associate] & "*") AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Like_Plntmstr_Symbol] & "*")) GROUP BY Agreement_Lot_Current_Age_Class.Age_Class, Left$([CATEGORY_CODE],1), Agreement_Lot_Current_Age_Class.Age_Class ORDER BY Left$([CATEGORY_CODE],1), Agreement_Lot_Current_Age_Class.Age_Class; | Enter | 2.63, 1.40, 2.00, 0.23 |
| ComboBox | Like_Agreement_Lot_ID | Lot ID Like: |  | SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL FROM (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN WHERE (((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "b*")) GROUP BY NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL HAVING (((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Like_Associate] & "*") AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Like_Plntmstr_Symbol] & "*")) ORDER BY NMIS_AGREEMENT_LOTS.ID; | Enter | 2.63, 1.69, 2.00, 0.23 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | DblClick | 2.63, 2.27, 0.68, 0.24 |
| CheckBox | field_pagebreak | Page Break on Field: |  |  |  | 2.66, 3.23, 0.00, 0.00 |
| CheckBox | Not_Counted_Only | Not Counted Only  |  |  |  | 4.78, 3.14, 0.00, 0.00 |
| CheckBox | Not_Sized_Only | Not Sized Only  |  |  |  | 4.77, 4.18, 0.00, 0.00 |
| Rectangle | Box49 |  |  |  |  | 2.92, 2.94, 2.31, 0.81 |
| Rectangle | Box50 |  |  |  |  | 2.92, 3.79, 2.31, 1.42 |
| ComboBox | Diverse | Traditional/Non-Traditonal: |  | 0;Traditional;-1;Non-Traditional;*;All |  | 2.63, 2.56, 1.40, 0.24 |
| CheckBox | Location_Processed | Location Processed |  |  |  | 0.17, 0.15, 0.83, 0.33 |
| TextBox | Reduce_Prev_Yr_Counts | Reduce Prev Yr Counts by: |  |  |  | 4.66, 3.88, 0.27, 0.19 |
| Label | Label54 | % |  |  |  | 5.00, 3.88, 0.17, 0.19 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 2.63, 1.98, 0.68, 0.24 |
| CommandButton | Preview_Container_Plants_For_Inv_Sizing | Sizing Report Container |  |  | Click | 3.28, 4.80, 1.70, 0.31 |

## Code-behind (VBA)

```vb
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
```
