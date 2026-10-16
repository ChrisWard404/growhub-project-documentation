# Form: NMIS_ID_LOCATIONS_for_Source_Withdrawal subform

**Caption:** Location for Source Lot  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.* FROM NMIS_ID_LOCATIONS WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]));
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_SOURCE_LOTS`, `NMIS_UNITS`  
**Opens:** `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS3`  
**Opened from (VBA):** `Form_Seed_Ship_Ticket_ID_ACTIVITIES subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SUBOT_NO_Label | Sublot Identifier |  |  |  | 2.30, 0.73, 0.70, 0.37 |
| Label | UNIT_CODE_Label | Unit |  |  |  | 1.57, 0.73, 0.70, 0.37 |
| Label | LOCATION_Label | Storage Location |  |  |  | 0.40, 0.73, 1.13, 0.37 |
| Label | LOCATION_TYPE_Label |       General      Location |  |  |  | 3.04, 0.73, 1.16, 0.37 |
| TextBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN |  |  | 2.12, 0.77, 0.00, 0.00 |
| TextBox | NMIS_ID_LOCATIONS.CN |  | CN |  |  | 0.00, 0.77, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 1.08, 0.77, 0.00, 0.00 |
| Label | Label74 | Locations |  |  |  | 1.61, 0.08, 1.21, 0.28 |
| ComboBox | Text75 | Lot: | =[Source_lot_CN] | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS; |  | 0.79, 0.45, 1.46, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC"));  |  | 1.57, 0.03, 0.70, 0.20 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 2.30, 0.03, 0.71, 0.20 |
| ComboBox | LOCATION |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) In ("FREEZER","THAWBOX","COOLER","REFRIDGE","SHOP","STRAT ROOM","WALKIN"))) OR (((NMIS_LOCATIONS.LOCATION)="cool2")) ORDER BY NMIS_LOCATIONS.LOCATION; | Change, GotFocus, LostFocus, NotInList | 0.40, 0.04, 1.13, 0.20 |
| ComboBox | LOCATION_TYPE |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_ID_LOCATIONS.UNIT_CODE FROM NMIS_LOCATIONS LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN ORDER BY NMIS_LOCATIONS.LOCATION_TYPE;  |  | 3.04, 0.03, 1.18, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Save_Record_Click()
On Error GoTo Err_Save_Record_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

Exit_Save_Record_Click:
    Exit Sub

Err_Save_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_Record_Click
    
End Sub

Private Sub Goto_Next_Record_Click()
On Error GoTo Err_Goto_Next_Record_Click

    DoCmd.GoToRecord , , acNext

Exit_Goto_Next_Record_Click:
    Exit Sub

Err_Goto_Next_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Goto_Next_Record_Click
    
End Sub
Private Sub Set_CN_Click()
On Error GoTo Err_Set_CN_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Set_CN_Click:
    Exit Sub

Err_Set_CN_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Set_CN_Click
    
End Sub
Private Sub Command68_Click()
On Error GoTo Err_Command68_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Command68_Click:
    Exit Sub

Err_Command68_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command68_Click
    
End Sub

Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub Location_DblClick(Cancel As Integer)
On Error GoTo Err_LOCATION_DblClick
    
    LOCATION.Locked = False
    
Exit_LOCATION_DblClick:
    Exit Sub
    
Err_LOCATION_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_LOCATION_DblClick

End Sub

Private Sub Location_Enter()
    
    If IsNull(LOCATION) Then
        LOCATION.Locked = False
    Else
        LOCATION.Locked = True
    End If
    
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
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS3", acNormal, , , acFormEdit
    End If

End Sub
```
