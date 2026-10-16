# Form: Lifting_Locations_Form

**Caption:** Lifting Locations  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_LOCATIONS`, `NMIS_SPECIES`  
**Opens:** `Form:Lifting_Priorties`, `Report:Field_Location_Index`, `Report:TOLIFT`, `Report:TOLIFT_Condensed`, `Report:TOLIFT_Condensed2`, `Report:TOLIFT_Condensed2_Sum`, `Report:TOLIFT_Condensed3`, `Report:TOLIFT_Condensed_By_Major_Client`, `Report:TOLIFT_Condensed_by_major_client_Field_Form`, `Report:TOLIFT_Condensed_by_major_client_w_Detail`, `Report:TOLIFT_Holdover`, `Report:TOLIFT_Lift_Priorities_at`, `Report:TOLIFT_Remaining`, `Report:TOLIFT_Remaining_w_notes`, `Report:TOLIFT_by_age_class_species`  
**Opened from (VBA):** `Form_Lifting_Priorties_Data_Subform`, `Form_Reports_Menu_Processing Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Lifting Locations |  |  |  | 1.94, 0.12, 1.68, 0.28 |
| CommandButton | Preview_Lift_Locations_w_Detail |  Lift Locations  with Detail |  |  | Click | 0.26, 2.83, 1.01, 0.62 |
| CommandButton | Preview_Lift_Locations_wo_Detail1 |  Lift Locations without Detail |  |  | Click | 1.44, 2.83, 1.01, 0.62 |
| ComboBox | Like_Age_Class | Age Class Like: |  | SELECT Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.Age_Class_String FROM Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class INNER JOIN NMIS_AGREEMENT_LOTS ON Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "br*") AND ((Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.NUMBER_OF_FY_MIN) Is Not Null)) GROUP BY Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.Age_Class_String, Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.UNIT HAVING (((Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.UNIT) In ("SB","TB","TB9"))) ORDER BY Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.Age_Class_String; |  | 2.51, 1.35, 2.00, 0.23 |
| ComboBox | Like_Plntmstr_Symbol | Species Like: |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name; |  | 2.51, 1.73, 1.02, 0.23 |
| ComboBox | Begin_Location | Begin Location: |  | SELECT NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="field")) ORDER BY NMIS_LOCATIONS.LOCATION; |  | 2.51, 0.63, 1.02, 0.23 |
| ComboBox | End_Location | End Location: |  | SELECT NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="field")) ORDER BY NMIS_LOCATIONS.LOCATION DESC; |  | 2.51, 0.99, 1.02, 0.23 |
| TextBox | Order_Mod_Date | Order Mod Date Later Than: |  |  |  | 2.51, 2.39, 0.99, 0.23 |
| CommandButton | Preview_Lift_Locations_wo_Detail2 |  Lift Locations by Stock Type and Species |  |  | Click | 2.58, 3.55, 1.01, 0.62 |
| CommandButton | Preview_Lift_Locations_Spreadsheet | Lifting Priority Report... |  |  | Click | 3.25, 3.58, 1.01, 0.62 |
| CommandButton | Preview_Lift_Locations_By_Age_Class_w_Detail |  Lift Locations by Stock Type  with Detail |  |  | Click | 0.26, 3.55, 1.01, 0.62 |
| CommandButton | Preview_Lift_Locations_by_Age_Class_wo_Detail1 |  Lift Locations by Stock Type without Detail |  |  | Click | 1.44, 3.55, 1.01, 0.62 |
| TextBox | Like_Associate | Client Like: |  |  |  | 2.51, 2.06, 1.02, 0.23 |
| CommandButton | Command28 |  Lift Locations with Stock Type |  |  | Click | 3.96, 2.83, 1.01, 0.62 |
| CommandButton | Preview_Lift_Locations_wo_Detail2_By_Major_Client |  Lift Locations with Stock Type with Detail |  |  | Click | 3.96, 3.54, 1.01, 0.62 |
| Label | Label30 | By Client Reports Only |  |  |  | 3.58, 2.08, 1.54, 0.21 |
| CommandButton | Preview_Lift_Locations_By_Age_Class_Remaining |   Left to Lift by Stock Type without  Detail |  |  | Click | 1.44, 4.25, 1.01, 0.62 |
| Label | Label32 | By Client Reports |  |  |  | 3.83, 2.58, 1.20, 0.21 |
| Rectangle | Box33 |  |  |  |  | 3.78, 2.53, 1.34, 2.39 |
| CommandButton | Preview_Lift_Locations_By_Age_Class_Remaining_w_notes |  Left to Lift by Stock Type with Detail |  |  | Click | 0.26, 4.25, 1.01, 0.62 |
| CommandButton | Preview_Lift_Locations_wo_Detail2_sum |  Lift Summary by Stock Type and Species |  |  | Click | 2.58, 4.25, 1.01, 0.62 |
| CommandButton | Lift_Locations_Field_Form_By_Client |  Lift Locations Field Form |  |  | Click | 3.96, 4.25, 1.01, 0.62 |
| CommandButton | Preview_Lift_Locations_Hold_w_Detail | Holdover Lots  with Detail |  |  | Click | 2.58, 2.83, 1.01, 0.62 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Field_Index_Click()
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Field_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Command28_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_By_Major_Client"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Lift_Locations_Field_Form_By_Client_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_by_major_client_Field_Form"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_Remaining_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Remaining"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_Remaining_w_notes_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Remaining_w_notes"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_by_age_class_species"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_by_Age_Class_wo_Detail1_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed3"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_Hold_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Holdover"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_Spreadsheet_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_at"
    Response = MsgBox("Edit Existing Priorties?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "Lifting_Priorties"
    Else
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery stDocName
        DoCmd.SetWarnings True
        DoCmd.OpenForm "Lifting_Priorties"
    End If
  
End Sub

Private Sub Preview_Lift_Locations_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail1_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail2_By_Major_Client_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_by_major_client_w_Detail"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub


Private Sub Preview_Lift_Locations_wo_Detail2_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed2"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail2_sum_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed2_Sum"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub
```
