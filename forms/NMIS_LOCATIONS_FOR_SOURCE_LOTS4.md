# Form: NMIS_LOCATIONS_FOR_SOURCE_LOTS4

**Caption:** NMIS LOCATIONS FOR SOURCE LOTS  
**Record source:**

```sql
SELECT [NMIS_LOCATION_TYPES].[LOCATION_TYPE], [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC] FROM NMIS_LOCATION_TYPES WHERE ((([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="FREEZER" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="THAWBOX" Or ([NMIS_LOCATION_TYPES].[LOCATION_TYPE])="Cooler")) ORDER BY [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC];
```

**Backend tables referenced:** `NMIS_LOCATION_TYPES`  
**Subforms/subreports:** `Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform`  
**Opened from (VBA):** `Form_NMIS_ID_LOCATIONS_SOURCE_LOTS`  
**Form events with code:** Close  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label4 | NMIS Locations for Source Lots |  |  |  | 1.77, 0.08, 3.90, 0.29 |
| CommandButton | Refresh_and_Close | Close |  |  | Click | 6.88, 0.04, 0.47, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION_TYPE | Type: | LOCATION_TYPE |  |  | 1.00, 0.49, 1.82, 0.20 |
| TextBox | LOCATION_TYPE_DESC |  Descripton: | LOCATION_TYPE_DESC |  |  | 3.83, 0.49, 1.83, 0.20 |
| Subform | NMIS_LOCATIONS Subform |  | Form.NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform (master: LOCATION_TYPE → child: LOCATION_TYPE) |  |  | 0.17, 0.79, 7.18, 5.00 |
| TextBox | Text11 |  | Lo |  |  | 2.29, 0.21, 0.04, 0.00 |
| TextBox | Nursery_Assoc | Nursery Associate: | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code |  |  | 1.50, 0.21, 1.46, 0.20 |

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

Private Sub Form_Close()

    'If IsNull(Forms![NMIS_SOURCE_LOTS]![Storage].Form![LOCATION]) Then
        'Forms![NMIS_SOURCE_LOTS]![Storage].Form![LOCATION] = [NMIS_LOCATIONS Subform].Form![CN]
    'End If
    
    Forms![NMIS_ID_LOCATIONS_SOURCE_LOTS]![LOCATION_CN].Requery
    
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
```
