# Form: NMIS_ID_LOCATIONS2 subform

**Caption:** NMIS_ID_LOCATIONS subform1  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.* FROM NMIS_ID_LOCATIONS WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN) Is Not Null));
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_SOURCE_LOTS_INPUT`  
**Opens:** `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_DATE_Label | Begining Date |  |  |  | 6.17, 0.04, 0.67, 0.37 |
| Label | END_DATE_Label | Ending Date |  |  |  | 6.90, 0.04, 0.64, 0.37 |
| Label | SUBOT_NO_Label | Sublot Identifier |  |  |  | 3.67, 0.04, 0.63, 0.37 |
| Label | UNIT_CODE_Label | Unit |  |  |  | 1.73, 0.04, 0.70, 0.37 |
| Label | LOCATION_Label | Storage Location |  |  |  | 0.57, 0.04, 1.13, 0.37 |
| Label | LOCATION_TYPE_Label |       General      Location |  |  |  | 2.48, 0.04, 1.16, 0.37 |
| Label | Label42 | Beginning Index |  |  |  | 4.67, 0.04, 0.71, 0.37 |
| Label | Label43 | Ending Index |  |  |  | 5.43, 0.04, 0.68, 0.37 |
| TextBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN |  |  | 2.29, 0.08, 0.00, 0.00 |
| TextBox | NMIS_ID_LOCATIONS.CN |  | CN |  |  | 0.17, 0.08, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 1.25, 0.08, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BEGIN DATE |  | BEGIN_DATE |  |  | 6.17, 0.03, 0.67, 0.20 |
| TextBox | END DATE |  | END_DATE |  |  | 6.90, 0.03, 0.64, 0.20 |
| TextBox | BEGIN_INDEX |  | BEGIN_INDEX |  |  | 4.67, 0.03, 0.72, 0.20 |
| TextBox | END_INDEX |  | END_INDEX |  |  | 5.43, 0.03, 0.68, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC")) ORDER BY NMIS_UNITS.UNIT_CODE; |  | 1.73, 0.03, 0.70, 0.20 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 3.67, 0.03, 0.63, 0.20 |
| ComboBox | LOCATION |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) In ("FREEZER","THAWBOX","COOLER","REFRIDGE","SHOP","STRAT ROOM","WALKIN"))) ORDER BY NMIS_LOCATIONS.LOCATION; | AfterUpdate, Change, GotFocus, LostFocus, NotInList | 0.57, 0.04, 1.13, 0.20 |
| ComboBox | LOCATION_TYPE |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN ORDER BY NMIS_LOCATIONS.LOCATION_TYPE;  |  | 2.44, 0.03, 1.18, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 0.56, 0.28, 3.76, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

'Private Sub Save_Record_Click()
'On Error GoTo Err_Save_Record_Click

    'DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

'Exit_Save_Record_Click:
    'Exit Sub

'Err_Save_Record_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Save_Record_Click
    
'End Sub

'Private Sub Goto_Next_Record_Click()
'On Error GoTo Err_Goto_Next_Record_Click

    'DoCmd.GoToRecord , , acNext

'Exit_Goto_Next_Record_Click:
    'Exit Sub

'Err_Goto_Next_Record_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Goto_Next_Record_Click
    
'End Sub
'Private Sub Set_CN_Click()
'On Error GoTo Err_Set_CN_Click

    'Dim stDocName As String

    'stDocName = "Set_CN"
    'DoCmd.RunMacro stDocName

'Exit_Set_CN_Click:
    'Exit Sub

'Err_Set_CN_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Set_CN_Click
    
'End Sub
'Private Sub Command68_Click()
'On Error GoTo Err_Command68_Click

    'Dim stDocName As String

    'stDocName = "Set_CN"
    'DoCmd.RunMacro stDocName

'Exit_Command68_Click:
    'Exit Sub

'Err_Command68_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Command68_Click
    
'End Sub

Private Sub LOCATION_AfterUpdate()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_Change()

End Sub

'Private Sub LOCATION_Change()

    'Dim stDocName As String
    'stDocName = "Set_CN"

    'If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        'DoCmd.RunMacro stDocName
    'End If

'End Sub

Private Sub Location_DblClick(Cancel As Integer)
On Error GoTo Err_LOCATION_DblClick
    
    DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW", acNormal, , , acFormEdit
    
Exit_LOCATION_DblClick:
    Exit Sub
    
Err_LOCATION_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_LOCATION_DblClick

End Sub

Private Sub Location_Enter()

    LOCATION.Requery
    
End Sub

Private Sub Location_Exit(Cancel As Integer)
    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_GotFocus()

    LOCATION.Requery
    
End Sub

Private Sub LOCATION_LostFocus()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_NotInList(NewData As String, Response As Integer)

   [LOCATION].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW", acNormal, , , acFormEdit
    End If

End Sub
```
