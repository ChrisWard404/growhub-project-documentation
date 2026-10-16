# Form: NMIS_ID_LOCATIONS_FORM_SUBFORM

**Caption:** NMIS ID Locations Form  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.*, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.SOW_DIRECTION, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.CN AS AGREEMENT_LOT__CN FROM NMIS_AGREEMENT_LOTS LEFT JOIN (NMIS_LOCATIONS RIGHT JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_LOCATIONS.AGREEMENT_LOT_CN ORDER BY NMIS_ID_LOCATIONS.BEGIN_DATE, NMIS_LOCATIONS.LOCATION, [BEGIN_INDEX]*[sow_direction]*IIf([Forms]![NMIS_ID_LOCATIONS_FORM]![SOW_DIRECTION]=True,1,-1);
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_ID_LOCATIONS_FORM`  
**Form events with code:** AfterInsert, Error  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_DATE_Label | Begin Date |  |  |  | 2.32, 0.36, 0.58, 0.37 |
| Label | BEGIN_INDEX_Label | Begin Index |  |  |  | 3.56, 0.36, 0.47, 0.37 |
| Label | END_INDEX_Label | End Index |  |  |  | 4.56, 0.36, 0.47, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 1.08, 0.36, 0.70, 0.37 |
| Label | Label25 | Comments |  |  |  | 7.07, 0.36, 2.83, 0.37 |
| Label | Label27 | SublotID |  |  |  | 1.81, 0.36, 0.48, 0.37 |
| Label | Label35 | End Date |  |  |  | 2.94, 0.36, 0.58, 0.37 |
| Label | Label38 | Index Mult. |  |  |  | 5.57, 0.36, 0.47, 0.37 |
| Label | Label44 | Est. Units |  |  |  | 6.07, 0.36, 0.47, 0.37 |
| Label | Label48 | SownBkwd |  |  |  | 6.57, 0.36, 0.47, 0.37 |
| Label | Label67 | Begin Count |  |  |  | 4.06, 0.36, 0.47, 0.37 |
| Label | Label69 | End Count |  |  |  | 5.06, 0.36, 0.47, 0.37 |
| TextBox | ID | Lot ID: | ID |  |  | 0.62, 0.08, 1.42, 0.21 |
| Label | LOCATION_CN_Label | Location |  |  |  | 0.04, 0.36, 0.99, 0.37 |
| TextBox | Index |  | Index |  |  | 2.25, 0.04, 0.00, 0.00 |
| TextBox | CN |  | CN |  |  | 1.21, 0.04, 0.00, 0.00 |
| TextBox | New_CN |  | =[index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code] |  |  | 4.15, 0.42, 1.25, 0.00 |
| TextBox | Last_Est_Units |  |  |  |  | 8.02, 0.50, 0.51, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 8.25, 0.03, 0.00, 0.00 |
| TextBox | LOCATION_NEXT_Index |  |  |  |  | 2.10, 0.38, 0.88, 0.00 |
| TextBox | LOCATION_PREVIOUS_Index |  |  |  |  | 3.31, 0.38, 0.62, 0.00 |
| TextBox | Unit_Code_Default |  |  |  |  | 5.54, 0.04, 0.75, 0.00 |
| CheckBox | Map_Backwards |  |  |  |  | 6.42, 0.12, 0.00, 0.00 |
| TextBox | Beg_Index_Last |  |  |  |  | 5.52, 0.50, 0.50, 0.00 |
| TextBox | End_Index_Last |  |  |  |  | 6.65, 0.50, 0.46, 0.00 |
| TextBox | Begin_Date_Default |  |  |  |  | 3.33, 0.04, 0.58, 0.20 |
| TextBox | Location_Type_Default |  |  |  |  | 8.90, 0.50, 0.79, 0.00 |
| TextBox | End_Counter_Last |  |  |  |  | 7.15, 0.50, 0.54, 0.00 |
| TextBox | Beg_Counter_Last |  |  |  |  | 6.06, 0.50, 0.54, 0.00 |
| ComboBox | LOCATION_PREVIOUS |  |  | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS; |  | 0.21, 0.42, 0.75, 0.00 |
| ComboBox | LOCATION_NEXT |  |  | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS; |  | 1.31, 0.38, 0.67, 0.00 |
| ComboBox | Last_ID_Location_CN |  |  | SELECT NMIS_ID_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN; |  | 6.83, 0.04, 1.25, 0.00 |
| ComboBox | Location_Last_CN |  |  | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS; |  | 4.12, 0.04, 0.96, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LOCATION_CN |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, [LOCATION] & IIf([note] Like "*HISTORICAL*"," HIST") AS Location2, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units], NMIS_LOCATIONS.SOW_DIRECTION AS [Sow Dir] FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) Not Like IIf([Forms]![NMIS_ID_LOCATIONS_FORM]![Filter_for_Product_Type]="C","FIELD","XXXXX") And (NMIS_LOCATIONS.LOCATION_TYPE) Not Like "FREEZER") AND ((IIf([note] Like "*Historical*",-1,0)) Like IIf(IsNull([Forms]![NMIS_ID_LOCATIONS_FORM]![NMIS_ID_LOCATIONS_FORM_SUBFORM].[Form]![LOCATION_CN]),0,"*"))) ORDER BY NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.LOCATION; | DblClick, Enter, Exit | 0.04, 0.02, 0.99, 0.21 |
| TextBox | BEGIN_DATE |  | BEGIN_DATE |  |  | 2.32, 0.03, 0.58, 0.20 |
| TextBox | BEGIN_INDEX |  | BEGIN_INDEX |  | DblClick, Enter, Exit | 3.56, 0.03, 0.47, 0.20 |
| TextBox | END_INDEX |  | END_INDEX |  | DblClick, Enter, Exit | 4.56, 0.03, 0.47, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="G" Or (NMIS_UNITS.UNIT_TYPE)="STORE" Or (NMIS_UNITS.UNIT_TYPE)="LC")) Or (((NMIS_UNITS.UNIT_CODE)="FT" Or (NMIS_UNITS.UNIT_CODE)="SB" Or (NMIS_UNITS.UNIT_CODE)="TB" Or (NMIS_UNITS.UNIT_CODE)="LB")) Or (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE;  | DblClick, Enter, Exit | 1.08, 0.03, 0.70, 0.20 |
| TextBox | DIST_FROM_BED_BEG |  | DIST_FROM_BED_BEG |  |  | 6.33, 0.04, 0.62, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 7.07, 0.03, 2.82, 0.20 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.81, 0.03, 0.47, 0.19 |
| TextBox | END_DATE |  | END_DATE |  |  | 2.94, 0.03, 0.58, 0.20 |
| TextBox | INDEX_INCREMENT |  | INDEX_INCREMENT |  | Enter | 5.57, 0.03, 0.47, 0.20 |
| TextBox | Est_Units |  | =IIf(IsNull([BEGIN_COUNTER]) Or IsNull([END_COUNTER]),Round(Abs(([BEGIN_INDEX]-[END_INDEX])*[INDEX_INCREMENT]),0),Abs([END_COUNTER]-[BEGIN_COUNTER])) |  |  | 6.07, 0.03, 0.46, 0.20 |
| CheckBox | SOWN_BACKWARDS |  | SOWN_BACKWARDS |  | AfterUpdate | 6.73, 0.07, 0.00, 0.00 |
| TextBox | SOW_DIRECTION |  | SOW_DIRECTION |  |  | 6.41, 0.04, 0.00, 0.00 |
| TextBox | END_COUNTER |  | END_COUNTER |  | DblClick, Enter, Exit | 5.06, 0.03, 0.47, 0.20 |
| TextBox | BEGIN_COUNTER |  | BEGIN_COUNTER |  | DblClick, Enter | 4.06, 0.03, 0.47, 0.20 |

## Code-behind (VBA)

```vb
Private Sub BEGIN_COUNTER_DblClick(Cancel As Integer)
    
    BEGIN_COUNTER.Locked = False
    
End Sub

Private Sub BEGIN_COUNTER_Enter()

    If IsNull(BEGIN_COUNTER) Then
        BEGIN_COUNTER = End_Counter_Last
        BEGIN_COUNTER.Locked = False
    Else
        BEGIN_COUNTER.Locked = True
    End If

End Sub

Private Sub BEGIN_INDEX_DblClick(Cancel As Integer)

    BEGIN_INDEX.Locked = False
    
End Sub

Private Sub BEGIN_INDEX_Enter()

    If IsNull(BEGIN_INDEX) Then
        BEGIN_INDEX = End_Index_Last
        BEGIN_INDEX.Locked = False
    Else
        BEGIN_INDEX.Locked = True
    End If

End Sub

Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    If Not IsNull(BEGIN_INDEX) Then
        If IsNull(INDEX_INCREMENT) Then
            If VarX = "FIELD" Then
                INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
            Else
                INDEX_INCREMENT = Null
            End If
        End If
    End If
    If BEGIN_INDEX = 999 Then
        BEGIN_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
    End If
    If VarX <> "FIELD" Then
        BEGIN_COUNTER = 0
        DoCmd.GoToControl "END_INDEX"
    End If
    
End Sub

Private Sub END_COUNTER_DblClick(Cancel As Integer)

    END_COUNTER.Locked = False
    
End Sub

Private Sub END_COUNTER_Enter()

    If IsNull(END_COUNTER) Then
        END_COUNTER.Locked = False
        'END_COUNTER = Beg_Counter_Last
    Else
        END_COUNTER.Locked = True
    End If
End Sub

Private Sub END_COUNTER_Exit(Cancel As Integer)

    End_Counter_Last = END_COUNTER
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "CN = LOCATION_CN")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub END_INDEX_DblClick(Cancel As Integer)

    END_INDEX.Locked = False
    
End Sub

Private Sub END_INDEX_Enter()

    If IsNull(END_INDEX) Then
        END_INDEX.Locked = False
        END_INDEX = Beg_Index_Last
    Else
        END_INDEX.Locked = True
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If Not IsNull(END_INDEX) Then
        If IsNull(INDEX_INCREMENT) Then
            If VarX = "FIELD" Then
                INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
            Else
                INDEX_INCREMENT = Null
            End If
        End If
        Beg_Index_Last = BEGIN_INDEX
        End_Index_Last = END_INDEX
        Beg_Counter_Last = BEGIN_COUNTER
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                temp = BEGIN_INDEX
                BEGIN_INDEX = END_INDEX
                END_INDEX = temp
                'SOWN_BACKWARDS = True
                Map_Backwards = True
            Else
                SOWN_BACKWARDS = False
                Map_Backwards = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                temp = BEGIN_INDEX
                BEGIN_INDEX = END_INDEX
                END_INDEX = temp
                'SOWN_BACKWARDS = True
                Map_Backwards = True
            Else
                SOWN_BACKWARDS = False
                Map_Backwards = False
            End If
        End If
        If END_INDEX = 999 Then
            END_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
        End If
    End If
        
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[AGREEMENT_LOT_CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_AfterInsert()

    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "CN = LOCATION_CN")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
On Error GoTo Err_Form_Error

    MsgBox "You have started to enter another record. Either Complete the record or press the ESC Key", vbCritical

Exit_Form_Error:
    Exit Sub

Err_Form_Error:
    'MsgBox Err.DESCRIPTION
    MsgBox "do not show"
    Resume Exit_Form_Error
        
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant

    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If Not IsNull(INDEX_INCREMENT) Then
        If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
            MsgBox "Begin and End Index Must Be Entered"
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()
    
    LOCATION_CN.Requery
    
    If Not IsNull(Forms![NMIS_ID_LOCATIONS_FORM]![Find_Lot]) Then
        If Not IsNull(LOCATION_CN) Then
            LOCATION_CN.Locked = True
        Else
            LOCATION_CN.Locked = False
            If Not IsNull(LOCATION_NEXT) Then
                If Location_Type_Default = "FIELD" Then
                    If Not Map_Backwards Then
                        If Not IsNull(LOCATION_NEXT) Then
                            LOCATION_CN = LOCATION_NEXT
                        End If
                    Else
                        If Not IsNull(LOCATION_PREVIOUS) Then
                            LOCATION_CN = LOCATION_PREVIOUS
                        End If
                    End If
                    If Not IsNull(Unit_Code_Default) Then
                        UNIT_CODE = Unit_Code_Default
                    End If
                    If Not IsNull(BEGIN_DATE) Then
                        BEGIN_DATE = Begin_Date_Default
                    End If
                End If
            End If
        End If
        
    Else
        Forms![NMIS_ID_LOCATIONS_FORM]![Find_Lot].SetFocus
    End If
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(BEGIN_DATE) Then
            BEGIN_DATE = Begin_Date_Default
        End If
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    If Not IsNull(LOCATION_CN) Then
        Location_Last_CN = LOCATION_CN
    End If
    
End Sub

Private Sub SOWN_BACKWARDS_AfterUpdate()
    
    Map_Backwards = SOWN_BACKWARDS
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    Unit_Code_Default = UNIT_CODE
    
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    
End Sub
```
