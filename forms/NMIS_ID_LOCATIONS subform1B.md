# Form: NMIS_ID_LOCATIONS subform1B

**Caption:** NMIS ID Locations Form  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.*, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.SOW_DIRECTION FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN WHERE (((NMIS_LOCATIONS.LOCATION) Like IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![ACTIVITY_CODE]="FAHVP","Cool*","*"))) ORDER BY NMIS_LOCATIONS.LOCATION, [BEGIN_INDEX]*[sow_direction]*IIf([Forms]![NMIS_ID_LOCATIONS subform1B]![SOW_DIRECTION]=True,1,-1);
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_UNITS`  
**Opened from (VBA):** `Form_NMIS_ID_ACTIVITIES_TRANSACTIONS_subform`  
**Form events with code:** Close, Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_CN_Label | Location |  |  |  | 0.04, 0.52, 1.10, 0.37 |
| Label | BEGIN_DATE_Label | Begin Date |  |  |  | 2.43, 0.52, 0.58, 0.37 |
| Label | BEGIN_INDEX_Label | Begin Index |  |  |  | 3.67, 0.52, 0.47, 0.37 |
| Label | END_INDEX_Label | End Index |  |  |  | 4.68, 0.52, 0.47, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 1.18, 0.52, 0.71, 0.37 |
| TextBox | Index |  | Index |  |  | 0.54, 0.52, 0.00, 0.00 |
| Label | Label25 | Comments |  |  |  | 7.19, 0.52, 3.60, 0.37 |
| Label | Label27 | Sublot# |  |  |  | 1.92, 0.52, 0.47, 0.37 |
| Label | Label35 | End Date |  |  |  | 3.04, 0.52, 0.58, 0.37 |
| Label | Label38 | Index Mult. |  |  |  | 5.69, 0.52, 0.47, 0.37 |
| ComboBox | AGREEMENT_LOT_CN | AGREEMENT LOT: | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;  |  | 1.57, 0.08, 2.27, 0.23 |
| TextBox | CN |  | CN |  |  | 2.34, 0.52, 0.00, 0.00 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 4.50, 0.17, 0.00, 0.00 |
| Label | Label44 | Est. Units |  |  |  | 6.19, 0.52, 0.47, 0.37 |
| TextBox | Last_ID_Location_CN |  |  |  |  | 6.17, 0.12, 0.00, 0.00 |
| Label | Label48 | Sown Rev |  |  |  | 6.69, 0.52, 0.47, 0.37 |
| TextBox | Last_Est_Units |  |  |  |  | 7.21, 0.12, 0.00, 0.00 |
| CommandButton | Refresh_Close | Close |  |  |  | 10.19, 0.08, 0.49, 0.28 |
| TextBox | Default_Unit_Code |  |  |  |  | 5.54, 0.29, 0.00, 0.00 |
| Label | BEGIN_COUNTER label | Begin Count |  |  |  | 4.18, 0.52, 0.47, 0.37 |
| Label | END_COUNTER Label | End Count |  |  |  | 5.19, 0.52, 0.47, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LOCATION_CN |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units] FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION) Like IIf([Forms]![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].[Form]![ACTIVITY_CODE]="FAHVP","Cool*","*"))) ORDER BY NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.LOCATION; | DblClick, Enter, Exit | 0.04, 0.02, 1.10, 0.21 |
| TextBox | BEGIN_DATE |  | BEGIN_DATE |  |  | 2.43, 0.03, 0.58, 0.20 |
| TextBox | BEGIN_INDEX |  | BEGIN_INDEX |  | Exit | 3.67, 0.03, 0.47, 0.20 |
| TextBox | END_INDEX |  | END_INDEX |  | Exit | 4.68, 0.03, 0.47, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="G" Or (NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC")) Or (((NMIS_UNITS.UNIT_CODE)="FT" Or (NMIS_UNITS.UNIT_CODE)="SB" Or (NMIS_UNITS.UNIT_CODE)="TB" Or (NMIS_UNITS.UNIT_CODE)="LB")) Or (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE;  | Enter, Exit | 1.18, 0.03, 0.71, 0.20 |
| TextBox | DIST_FROM_BED_BEG |  | DIST_FROM_BED_BEG |  |  | 7.48, 0.04, 0.62, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 7.19, 0.03, 3.59, 0.20 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.92, 0.03, 0.47, 0.19 |
| TextBox | END_DATE |  | END_DATE |  |  | 3.04, 0.03, 0.58, 0.20 |
| TextBox | INDEX_INCREMENT |  | INDEX_INCREMENT |  | Enter | 5.69, 0.03, 0.47, 0.20 |
| TextBox | Est_Units |  | =IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGIN_COUNTER])) |  |  | 6.19, 0.03, 0.46, 0.20 |
| CheckBox | SOWN_BACKWARDS |  | SOWN_BACKWARDS |  |  | 6.84, 0.07, 0.00, 0.00 |
| TextBox | SOW_DIRECTION |  | SOW_DIRECTION |  |  | 6.97, 0.04, 0.00, 0.00 |
| TextBox | BEGIN_COUNTER |  | BEGIN_COUNTER |  |  | 4.18, 0.03, 0.47, 0.20 |
| TextBox | END_COUNTER |  | END_COUNTER |  |  | 5.19, 0.03, 0.47, 0.20 |

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

Private Sub Form_Close()

    If Not IsNull(Last_ID_Location_CN) And _
        IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN]) Then
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] = Last_ID_Location_CN
        If Not IsNull(Last_Est_Units) Then
            If Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = 0 Then
                Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = Last_Est_Units
            End If
        End If
    End If
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
    DoCmd.GoToControl "[NUMBER_OF_ACTIVITY_UNITS]"
    
End Sub

Private Sub Form_Current()

    Last_ID_Location_CN = CN
    'Last_Est_Units = Est_Units
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN]) Then
        DoCmd.GoToRecord , , acNewRec
        If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Container]) Then
            DoCmd.GoToControl "UNIT_CODE"
            DoCmd.Close
        End If
    End If
    
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

    If Not IsNull(LOCATION_CN) Then
        LOCATION_CN.Locked = True
    Else
        LOCATION_CN.Locked = False
        If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Location]) Then
            If IsNull(LOCATION_CN) Then
                LOCATION_CN = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Location]
                DoCmd.GoToControl "UNIT_CODE"
            End If
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    Last_Est_Units = Est_Units
    
End Sub

Private Sub UNIT_CODE_Enter()

    If IsNull(UNIT_CODE) And Not IsNull(DEFAULT_UNIT_CODE) Then
        UNIT_CODE = DEFAULT_UNIT_CODE
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    DEFAULT_UNIT_CODE = UNIT_CODE
    
End Sub
```
