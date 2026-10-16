# Form: BeginFY_EndFY_Associate_Species_Input

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Report_Annual_Report_Plant_Inventory_Detailed_Summary report`, `Report_Annual_Report_Plant_Inventory_Summary report`, `Report_Annual_Report_Plant_Inventory_Summary_by_class_species report`, `Report_NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report`, `Report_NMIS_PRODUCT_INVENTORY_By_Age_Class_Report_bu`, `Report_NMIS_PRODUCT_INVENTORY_Checklist`, `Report_NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2`, `Report_NMIS_PRODUCT_INVENTORY_Checklist_w_contacts`, `Report_NMIS_PRODUCT_INVENTORY_Client_Summary_Report`, `Report_NMIS_PRODUCT_INVENTORY_No_Subtotals_Report`, `Report_NMIS_PRODUCT_INVENTORY_Report`, `Report_NMIS_PRODUCT_INVENTORY_Report2`, `Report_NMIS_PRODUCT_INVENTORY_Report2Sum`, `Report_NMIS_PRODUCT_INVENTORY_Report2SumWithSpeciesTotals`, `Report_NMIS_PRODUCT_INVENTORY_Report_OLD`, `Report_NMIS_PRODUCT_INVENTORY_SUMARY2_Report`, `Report_NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report`, `Report_NMIS_PRODUCT_INVENTORY_Summary_Report`, `Report_NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Report2`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report2`, `Report_NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_W_Parent`, `Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit`, `Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2`, `Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot`, `Report_NMIS_PRODUCT_Projected_Charges_by_StockType`, `Report_NMIS_PRODUCT_Projected_Charges_by_Unit`, `Report_NMIS_PRODUCT_Projected_Charges_by_Unit_Category`, `Report_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot`, `Report_NMIS_PRODUCT_Projected_Charges_fred`, `Report_NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot`, `Report_NMIS_PRODUCT_Projected_Income`, `Report_NMIS_PRODUCT_Projected_Income2`, `Report_NMIS_PRODUCT_Projected_Income_by_lot`, `Report_NMIS_PRODUCT_Projected_Income_by_lot2`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Report Input  |  |  |  | 1.96, 0.08, 1.30, 0.27 |
| TextBox | Like_Client | Associate: |  |  |  | 3.66, 1.41, 0.79, 0.20 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.41, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.72, 0.68, 0.20 |
| TextBox | Parent_Associate | Parent Associate: |  |  |  | 3.66, 1.12, 0.79, 0.20 |
| TextBox | COLLECT_METHOD | Collection Code: |  |  |  | 1.46, 2.04, 0.46, 0.20 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.66, 1.72, 0.80, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   'Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)

    'Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        COLLECT_METHOD.Visible = True
    Else
        COLLECT_METHOD.Visible = False
    End If
    
End Sub

Private Sub Preview_Report_Click()

    'If IsNull([BEGIN_FY]) Or IsNull([END_FY]) Then
        'MsgBox "You must enter both beginning and ending dates."
        'DoCmd.GoToControl "Begin_FY"
    'Else
        'If [END_FY] <> "*" Then
            'If ([BEGIN_FY] > [END_FY]) Then
                'MsgBox "Ending FY must be greater than Beginning FY."
                'DoCmd.GoToControl "Begin_FY"
            'End If
        'Else
            Me.Visible = False
        'End If
    'End If

End Sub
```
