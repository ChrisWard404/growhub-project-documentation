# Form: Field_Location_Worksheet

**Caption:** Stock Location Worksheet  
**Backend tables referenced:** `NMIS_LOCATIONS`  
**Subforms/subreports:** `Form.NMIS_ACCESS_USER_NURSERY subform1`  
**Opens:** `Report:Field_Location_Worksheet`, `Report:Field_Location_Worksheet_SPD`, `Report:Field_Location_Worksheet_condensed`, `Report:Field_Location_Worksheet_condensed_spd`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Field Stock Location Worksheet |  |  |  | 1.78, 0.11, 1.56, 0.74 |
| ComboBox | Begin_Location | Begin Location: |  | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX, NMIS_LOCATIONS.LOCATION_TYPE, IIf([location_type]="field","b","c") AS Loctype, NMIS_LOCATIONS.NOTE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION) Not Like "*000") AND ((NMIS_LOCATIONS.LOCATION_TYPE) Not In ("cooler","freezer","walkin","NONREF","PRECOOLER")) AND ((IIf([location_type]="field","b","c"))=[Forms]![Field_Location_Worksheet]![Cost_Center]) AND ((NMIS_LOCATIONS.NOTE) Is Null Or (NMIS_LOCATIONS.NOTE) Not Like "*Hist*")) ORDER BY NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.LOCATION; |  | 2.03, 1.75, 2.17, 0.25 |
| ComboBox | End_Location | End Location: |  | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX, IIf([location_type]="field","b","c") AS Loctype FROM NMIS_LOCATIONS WHERE (((IIf([location_type]="field","b","c"))=[Forms]![Field_Location_Worksheet]![Cost_Center]) AND ((NMIS_LOCATIONS.LOCATION) Not Like "*000") AND ((NMIS_LOCATIONS.NOTE) Not Like "*Historical*") AND ((NMIS_LOCATIONS.LOCATION_TYPE) Not In ("cooler","freezer","walkin","NONREF","PRECOOLER"))) OR (((IIf([location_type]="field","b","c"))=[Forms]![Field_Location_Worksheet]![Cost_Center]) AND ((NMIS_LOCATIONS.LOCATION) Not Like "*000") AND ((NMIS_LOCATIONS.NOTE) Is Null) AND ((NMIS_LOCATIONS.LOCATION_TYPE) Not In ("cooler","freezer","walkin","NONREF","PRECOOLER"))) ORDER BY IIf([location_type]="field","b","c"), NMIS_LOCATIONS.LOCATION DESC; |  | 2.03, 2.09, 2.17, 0.25 |
| Line | Line14 |  |  |  |  | 0.08, 0.88, 4.79, 0.00 |
| CommandButton | Print Work Orders | Click to Preview/Print Worksheets |  |  | Click | 0.86, 2.75, 1.59, 0.58 |
| ComboBox | Cost_Center | Stock Type: |  | B;Bareroot;C;Container |  | 2.03, 1.21, 2.36, 0.24 |
| CheckBox | data_processed | data processed |  |  |  | 0.21, 0.19, 0.00, 0.00 |
| CheckBox | In_Use | Beds in use only |  |  |  | 2.04, 2.46, 0.00, 0.00 |
| Subform | NMIS_ACCESS_USER_NURSERY subform1 |  | Form.NMIS_ACCESS_USER_NURSERY subform1 |  |  | 3.21, 0.08, 1.75, 1.08 |
| CommandButton | Print Work Orders Condensed | Click to   Preview/Print Worksheets Condensed |  |  | Click | 2.58, 2.75, 1.61, 0.58 |
| CommandButton | Print Work Orders Condensed spd | Spreadsheet Version |  |  | Click | 2.59, 3.38, 1.61, 0.00 |
| CommandButton | Print_Field_Stock_Location_Spd | Spreadsheet Version |  |  | Click | 0.84, 3.38, 1.61, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Print_Field_Stock_Location_Spd_Click()
On Error GoTo Err_Print_Field_Stock_Location_Spd_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_SPD"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenQuery stDocName
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Field_Stock_Location_Spd_Click:
    Exit Sub

Err_Print_Field_Stock_Location_Spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Field_Stock_Location_Spd_Click
    
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub

Private Sub Print_Work_Orders_Condensed_Click()
On Error GoTo Err_Print_Work_Orders_Condensed_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_condensed"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Condensed_Click:
    Exit Sub

Err_Print_Work_Orders_Condensed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Condensed_Click
End Sub

Private Sub Print_Work_Orders_Condensed_spd_Click()
On Error GoTo Err_Print_Work_Orders_Condensed_spd_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_condensed_spd"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
        DoCmd.OpenQuery stDocName ', acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Condensed_spd_Click:
    Exit Sub

Err_Print_Work_Orders_Condensed_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Condensed_spd_Click
End Sub
```
