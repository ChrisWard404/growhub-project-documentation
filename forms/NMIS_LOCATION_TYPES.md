# Form: NMIS_LOCATION_TYPES

**Caption:** NMIS LOCATIONS  
**Record source:**

```sql
NMIS_LOCATION_TYPES
```

**Backend tables referenced:** `NMIS_LOCATION_TYPES`  
**Subforms/subreports:** `Form.NMIS_LOCATION_TYPES subform`, `Form.NMIS_LOCATIONS Subform`  
**Opens:** `Report:NMIS_LOCATIONS_CHECKLIST`, `Report:Refresh_Close`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`, `Form_xLookup_Tables_Menu`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label4 | NMIS Locations |  |  |  | 3.97, 0.07, 1.75, 0.29 |
| CommandButton | Refresh_and_Close | Close |  |  | Click | 8.92, 0.04, 0.47, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box20 |  |  |  |  | 0.07, 0.02, 4.24, 1.25 |
| Subform | NMIS_LOCATION_TYPES subform |  | Form.NMIS_LOCATION_TYPES subform |  |  | 0.20, 0.06, 4.00, 1.17 |
| TextBox | LOCATION_TYPE | Type: | =[NMIS_LOCATION_TYPES subform].Form!Selected_Location |  |  | 7.04, 0.47, 1.82, 0.20 |
| TextBox | LOCATION_TYPE_DESC |  Descripton: | LOCATION_TYPE_DESC |  |  | 7.04, 0.72, 1.83, 0.20 |
| Subform | NMIS_LOCATIONS Subform |  | Form.NMIS_LOCATIONS Subform (master: LOCATION_TYPE → child: LOCATION_TYPE) |  |  | 0.06, 1.29, 9.35, 4.79 |
| TextBox | Text11 |  | Lo |  |  | 5.40, 0.21, 0.04, 0.00 |
| TextBox | Nursery_Assoc | Nursery Associate: | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code |  |  | 7.54, 0.21, 1.46, 0.20 |
| CommandButton | Preview_Locations_Checklist | Click to Preview Locations Checklist |  |  | Click | 7.41, 0.30, 1.13, 0.38 |
| CheckBox | Hide_Historical | Hide Historical |  |  | AfterUpdate | 8.52, 0.82, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Command9_Click()
On Error GoTo Err_Command9_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command9_Click:
    Exit Sub

Err_Command9_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command9_Click
    
End Sub

Private Sub Hide_Historical_AfterUpdate()

    [NMIS_LOCATIONS Subform].Form.Requery
    
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
Private Sub Preview_Locations_Checklist_Click()
On Error GoTo Err_Preview_Locations_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_LOCATIONS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Locations_Checklist_Click:
    Exit Sub

Err_Preview_Locations_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Locations_Checklist_Click
    
End Sub
```
