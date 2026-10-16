# Form: NMIS_ID_LOCATIONS_SOURCE_LOTS

**Caption:** NMIS ID Locations Form  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.* FROM NMIS_ID_LOCATIONS WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![NMIS_ID_LOCATIONS_SOURCE_LOTS]![Source_LOT_CN] And (NMIS_ID_LOCATIONS.SOURCE_LOT_CN) Is Not Null));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_SOURCE_LOTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.Seed_Balance2 Query subform`  
**Opens:** `Form:NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM`, `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS4`  
**Form events with code:** Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box60 |  |  |  |  | 0.08, 0.47, 3.50, 0.46 |
| Label | LOCATION_CN_Label | Location |  |  |  | 0.08, 0.95, 0.85, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 0.97, 0.95, 0.71, 0.37 |
| TextBox | Index |  | Index |  |  | 4.60, 0.22, 0.00, 0.00 |
| Label | Label25 | Comments |  |  |  | 2.22, 0.96, 3.80, 0.37 |
| Label | Label27 | Sublot# |  |  |  | 1.71, 0.95, 0.47, 0.37 |
| ComboBox | Source_LOT_CN | SOURCE LOT: |  | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, "(" & [associate] & ")  " & [associate_name] AS [for] FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE ORDER BY NMIS_SOURCE_LOTS.ID; | AfterUpdate, DblClick | 1.20, 0.58, 2.27, 0.23 |
| TextBox | CN |  | CN |  |  | 4.58, 0.04, 0.00, 0.00 |
| TextBox | New_CN |  | =[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code] |  |  | 4.67, 0.41, 0.00, 0.00 |
| Label | Label54 | Source Lot ID Locations Entry/Edit |  |  |  | 1.58, 0.05, 3.39, 0.28 |
| TextBox | Text51 |  | SOURCE_LOT_CN |  |  | 4.66, 0.57, 0.00, 0.21 |
| Subform | Seed_Balance2_ subform |  | Form.Seed_Balance2 Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 3.75, 0.39, 2.33, 0.53 |
| CommandButton | View_Activities | View Activities |  |  | Click | 0.08, 0.10, 0.96, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LOCATION_CN |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.NOTE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) Not In ("Field","Greenhouse","Shadehouse","pad","Bales","PRECOOLER"))) ORDER BY NMIS_LOCATIONS.LOCATION_TYPE DESC , NMIS_LOCATIONS.LOCATION; | DblClick, Enter, Exit, NotInList | 0.08, 0.02, 0.85, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE")) OR (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE; |  | 0.97, 0.03, 0.71, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 2.21, 0.02, 3.79, 0.20 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.71, 0.03, 0.47, 0.19 |

## Code-behind (VBA)

```vb
Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        End If
    End If
        
End Sub


Private Sub Form_Current()

    'Last_ID_Location_CN = CN
    'Last_Est_Units = Est_Units
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Source_LOT_CN"
    
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()
    If IsNull(LOCATION_CN) Then
        LOCATION_CN.Locked = False
    Else
        LOCATION_CN.Locked = True
    End If
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    'Last_ID_Location_CN = CN
    
End Sub

Private Sub LOCATION_CN_NotInList(NewData As String, Response As Integer)

   [LOCATION_CN].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS4", acNormal, , , acFormEdit
    End If

End Sub

Private Sub Source_LOT_CN_AfterUpdate()
    DoCmd.Requery
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Source_LOT_CN_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_LOT_CN_DblClick:
    Exit Sub

Err_Source_LOT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_LOT_CN_DblClick
    
End Sub

Private Sub View_Activities_Click()
On Error GoTo Err_View_Activities_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_View_Activities_Click:
    Exit Sub

Err_View_Activities_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_Activities_Click
    
End Sub
```
