# Form: NMIS_ID_LOCATIONS_FORM_Husky

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_LOCATIONS`  
**Subforms/subreports:** `Form.Agreement_Lot_Grow_Containers`  
**Opens:** `Form:Agreement_Lot_ID_Change_Form`, `Report:Husky_Mpro_Dump_Report_by_Location2`  
**Opened from (VBA):** `Forms_Open Module`  
**Form events with code:** AfterInsert, Close, Delete, Error, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_DATE_Label |       Date |  |  |  | 3.57, 0.92, 0.58, 0.37 |
| Label | BEGIN_INDEX_Label | Begin Index |  |  |  | 4.19, 0.92, 0.47, 0.37 |
| Label | END_INDEX_Label | End Index |  |  |  | 5.19, 0.92, 0.47, 0.37 |
| Label | UNIT_CODE_Label | Lot Id  |  |  |  | 0.04, 0.92, 1.33, 0.37 |
| Label | Label27 | SublotID |  |  |  | 2.21, 0.92, 0.48, 0.37 |
| Label | Label35 | Blank |  |  |  | 6.19, 0.92, 0.58, 0.37 |
| Label | Label67 | Begin Count |  |  |  | 4.69, 0.92, 0.47, 0.37 |
| Label | Label69 | End Count |  |  |  | 5.69, 0.92, 0.47, 0.37 |
| Label | LOCATION_CN_Label | Location |  |  |  | 1.42, 0.92, 0.76, 0.37 |
| TextBox | Default_Agreement_Lot_CN |  |  |  | Exit | 2.59, 0.40, 0.92, 0.00 |
| CheckBox | Map_Backwards |  |  |  |  | 4.40, 0.64, 0.00, 0.00 |
| TextBox | Last_ID_Location |  |  |  |  | 6.46, 0.21, 0.67, 0.00 |
| TextBox | FY | FY: |  |  |  | 0.40, 0.30, 0.54, 0.21 |
| CheckBox | Fall_TP_Prior_to_OCT1 | Fall Transplant prior to October 1: |  |  |  | 6.96, 0.64, 0.00, 0.00 |
| Label | Label86 | Sown From High Bed to Low Bed: |  |  |  | 2.02, 0.59, 2.30, 0.21 |
| Label | Label87 | Remarks |  |  |  | 6.80, 0.92, 2.73, 0.37 |
| Label | Label89 | Sowing/Transplanting Mapping |  |  |  | 2.76, 0.08, 3.62, 0.28 |
| TextBox | LOCATION_NEXT_Index |  |  |  |  | 7.29, 0.04, 0.88, 0.00 |
| TextBox | LOCATION_PREVIOUS_Index |  |  |  |  | 6.62, 0.04, 0.62, 0.00 |
| TextBox | Unit_Code_Default |  |  |  |  | 6.03, 0.65, 0.75, 0.00 |
| TextBox | Location_Type_Default |  |  |  |  | 4.77, 0.04, 0.79, 0.00 |
| CheckBox | SOWN_BACKWARDS |  |  |  | AfterUpdate | 5.21, 0.44, 0.00, 0.00 |
| TextBox | Location_Last_CN |  |  |  |  | 8.25, 0.25, 0.75, 0.00 |
| TextBox | LOCATION_NEXT |  |  |  |  | 6.62, 0.44, 0.67, 0.00 |
| TextBox | LOCATION_PREVIOUS |  |  |  |  | 7.33, 0.44, 0.75, 0.00 |
| TextBox | Begin_Date_Default |  |  |  |  | 2.21, 0.17, 0.58, 0.17 |
| TextBox | Last_Est_Units |  |  |  |  | 1.39, 0.21, 0.51, 0.00 |
| TextBox | Beg_Index_Last |  |  |  |  | 2.62, 0.72, 0.50, 0.00 |
| TextBox | End_Index_Last |  |  |  |  | 3.85, 0.72, 0.46, 0.00 |
| TextBox | End_Counter_Last |  |  |  |  | 4.31, 0.72, 0.54, 0.00 |
| TextBox | Beg_Counter_Last |  |  |  |  | 3.31, 0.72, 0.54, 0.00 |
| CheckBox | Est_Counter | Est Counter: |  |  |  | 8.12, 0.64, 0.00, 0.00 |
| Subform | grow_containers |  | Form.Agreement_Lot_Grow_Containers (master: Agr_Lot_CN → child: Agreement_Lot_CN) |  |  | 7.50, 0.04, 1.75, 0.75 |
| Label | Label101 | Activity Code |  |  |  | 2.72, 0.92, 0.82, 0.37 |
| CheckBox | Sublot_Tabstop |  Enter Sublots: |  |  | AfterUpdate | 9.34, 0.64, 0.00, 0.00 |
| TextBox | Agr_Lot_CN |  | =[CN_In] |  |  | 0.46, 0.04, 0.62, 0.00 |
| ComboBox | DEFAULT_ACTIVITY_CODE | Activity Code: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="sow" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE) Like "xplt*" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="locchg" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="xferfm" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="CTSTRK")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 1.08, 0.59, 0.86, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LOCATION_CN |  | Locmod | SELECT [LOCATION] & IIf([note] Like "*HISTORICAL*"," HIST") AS Location2, NMIS_LOCATIONS.LOCATION_DESC, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units], IIf([note] Like "*Historical*",-1,0) AS Expr1 FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE) Not Like IIf([Forms]![NMIS_ID_LOCATIONS_FORM_Husky]![Filter_for_Product_Type]="C","FIELD","XXXXX") And (NMIS_LOCATIONS.LOCATION_TYPE) Not Like "FREEZER" And (NMIS_LOCATIONS.LOCATION_TYPE) Not Like "COOLER" And (NMIS_LOCATIONS.LOCATION_TYPE) Not Like "Thawbox") AND ((IIf([note] Like "*Historical*",-1,0)) Like IIf(IsNull([Forms]![NMIS_ID_LOCATIONS_FORM_Husky]![Locmod]),0,"*"))) ORDER BY NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.LOCATION; | DblClick, Enter, Exit | 1.42, 0.03, 0.76, 0.21 |
| TextBox | BEGIN_DATE |  | Date |  | Exit | 3.57, 0.04, 0.58, 0.21 |
| TextBox | BEGIN_INDEX |  | Riser_Begin |  | DblClick, Enter, Exit | 4.19, 0.04, 0.47, 0.21 |
| TextBox | END_INDEX |  | Riser_End |  | DblClick, Enter, Exit | 5.19, 0.04, 0.47, 0.21 |
| ComboBox | Agreement_Lot_CN |  | CN_In | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Source_Lot_ID_and_Source_string.ID_SOURCE2, Left$([CATEGORY_CODE],1) AS Sort FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , Left$(nz([CATEGORY_CODE]," "),1), NMIS_AGREEMENT_LOTS.ID; | AfterUpdate, Change, Exit | 0.04, 0.04, 1.34, 0.21 |
| TextBox | SUBLOT_NO |  | Sublot |  |  | 2.21, 0.04, 0.47, 0.21 |
| TextBox | Blank |  | Blank |  |  | 6.19, 0.04, 0.58, 0.21 |
| TextBox | END_COUNTER |  | Counter_End |  | DblClick, Enter, Exit | 5.69, 0.04, 0.47, 0.21 |
| TextBox | BEGIN_COUNTER |  | Counter_Begin |  | DblClick, Enter, Exit | 4.69, 0.04, 0.47, 0.21 |
| TextBox | Note |  | Note |  | Enter | 6.80, 0.04, 2.73, 0.21 |
| TextBox | DIST_FROM_BED_BEG |  | Location |  |  | 7.67, 0.04, 0.31, 0.19 |
| TextBox | SOW_DIRECTION |  | SOW_DIRECTION |  |  | 8.05, 0.04, 0.25, 0.21 |
| TextBox | Location_Key2 |  | Location_Key2 |  |  | 6.84, 0.06, 0.79, 0.19 |
| TextBox | INDEX_INCREMENT |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default] |  | Enter | 8.40, 0.04, 0.00, 0.21 |
| ComboBox | Activity_Code |  | Activity_Code | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="sow" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE) Like "xplt*" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="locchg" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="xferfm" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="CTSTRK")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; | Exit | 2.72, 0.03, 0.82, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Process_Into_NMIS | Process Into NMIS |  |  | Click | 5.38, 0.08, 1.35, 0.31 |
| CheckBox | Processed_Into_NMIS | Processed Into NMIS |  |  |  | 6.92, 0.19, 0.00, 0.00 |
| Label | Label94 | Double-Click Lot ID Field to Edit |  |  |  | 0.08, 0.08, 1.02, 0.32 |
| CommandButton | Preview_Checklist_Report | Preview Checklist |  |  | Click | 2.88, 0.08, 1.34, 0.31 |

## Code-behind (VBA)

```vb
Private Sub Activity_Code_Exit(Cancel As Integer)

    Default_Activity_Code = Activity_Code
    
End Sub

Private Sub Agreement_Lot_CN_AfterUpdate()

    End_Counter_Last = 0
    LOCATION_NEXT = Location_Last_CN
    LOCATION_PREVIOUS = Location_Last_CN
   '[grow_containers].Form![Lot_Total_Ft].Requery
    
End Sub

Private Sub Agreement_Lot_CN_Change()

    End_Counter_Last = 0
    LOCATION_NEXT = Location_Last_CN
    LOCATION_PREVIOUS = Location_Last_CN
    '[grow_containers].Form.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_greement_Lot_CN_DblClick

    DoCmd.GoToControl "LOCATION_CN"
    DoCmd.GoToControl "Agreement_lot_Cn"
    If Not IsNull(Default_Agreement_Lot_CN) Then
        AGREEMENT_LOT_CN.Locked = False
        DoCmd.OpenForm "Agreement_Lot_ID_Change_Form"
    End If
    
Exit_greement_Lot_CN_DblClick:
    Exit Sub

Err_greement_Lot_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_greement_Lot_CN_DblClick
           
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = False
    Else
        'AGREEMENT_LOT_CN.Locked = True
    End If
    If IsNull(AGREEMENT_LOT_CN) And Not IsNull(Default_Agreement_Lot_CN) Then
        AGREEMENT_LOT_CN = Default_Agreement_Lot_CN
    End If
    AGREEMENT_LOT_CN.Locked = False
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    Default_Agreement_Lot_CN = AGREEMENT_LOT_CN
    '[grow_containers].Form.Requery
    If IsNull(Activity_Code) And Not IsNull(AGREEMENT_LOT_CN) Then
        Activity_Code = Default_Activity_Code
    End If
    
End Sub

Private Sub BEGIN_COUNTER_DblClick(Cancel As Integer)
    
    BEGIN_COUNTER.Locked = False
    
End Sub

Private Sub BEGIN_COUNTER_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_COUNTER) Then
            If Not Est_Counter Then
                BEGIN_COUNTER = End_Counter_Last
            End If
            BEGIN_COUNTER.Locked = False
        Else
            BEGIN_COUNTER.Locked = True
        End If
    End If

End Sub

Private Sub BEGIN_COUNTER_Exit(Cancel As Integer)
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_COUNTER) Then
            If Est_Counter Then
                BEGIN_COUNTER = BEGIN_INDEX * [INDEX_INCREMENT]
            End If
        End If
    End If
    Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)

    Begin_Date_Default = BEGIN_DATE
    
End Sub

Private Sub BEGIN_INDEX_DblClick(Cancel As Integer)

    BEGIN_INDEX.Locked = False
    
End Sub

Private Sub BEGIN_INDEX_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_INDEX) Then
            BEGIN_INDEX = End_Index_Last
            BEGIN_INDEX.Locked = False
        Else
            BEGIN_INDEX.Locked = True
        End If
    End If

End Sub

Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    If Not IsNull(AGREEMENT_LOT_CN) Then
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
        'If VarX <> "FIELD" Then
            'BEGIN_COUNTER = 0
            'DoCmd.GoToControl "END_INDEX"
        'End If
        If Not IsNull(BEGIN_INDEX) Then
            END_INDEX.TabStop = True
            If Est_Counter Then
                BEGIN_COUNTER = BEGIN_INDEX * [INDEX_INCREMENT]
            End If
            'DoCmd.GoToControl "begin_counter"
        End If
        Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    End If
    
End Sub

Private Sub Default_Agreement_Lot_CN_Exit(Cancel As Integer)

    Default_Agreement_Lot_CN = AGREEMENT_LOT_CN
    
End Sub

Private Sub END_COUNTER_DblClick(Cancel As Integer)

    END_COUNTER.Locked = False
    
End Sub

Private Sub END_COUNTER_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(END_COUNTER) Then
            END_COUNTER.Locked = False
            If Activity_Code = "LOCCHG" Then
                BEGIN_COUNTER = 0
                END_COUNTER = [grow_containers].Form![Lot_Total_Ft]
            End If
            'END_COUNTER = Beg_Counter_Last
        Else
            END_COUNTER.Locked = True
        End If
        If IsNull(BEGIN_INDEX) And IsNull(END_INDEX) Then
            BEGIN_INDEX.TabStop = False
            END_INDEX.TabStop = False
        Else
            BEGIN_INDEX.TabStop = True
            END_INDEX.TabStop = True
        End If
    End If
    
End Sub

Private Sub END_COUNTER_Exit(Cancel As Integer)

    End_Counter_Last = END_COUNTER
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "location = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "location = [LOCMOD]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "location = LOCMOD")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(BEGIN_DATE) Then
            Begin_Date_Default = BEGIN_DATE
        End If
        
        If IsNull(END_COUNTER) Then
            If Est_Counter Then
                END_COUNTER = END_INDEX * [INDEX_INCREMENT]
            End If
        End If
    End If
    
    Default_Activity_Code = Activity_Code
    Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    
End Sub

Private Sub END_INDEX_DblClick(Cancel As Integer)

    END_INDEX.Locked = False
    
End Sub

Private Sub END_INDEX_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(END_INDEX) Then
            END_INDEX.Locked = False
            END_INDEX = Beg_Index_Last
        Else
            END_INDEX.Locked = True
        End If
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "LOCATION = [LOCMOD]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "LOCATION = [LOCMOD]")
    
    Last_Est_Units = Est_Units
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(END_INDEX) Then
            If IsNull(INDEX_INCREMENT) Then
                If VarX = "FIELD" Then
                    INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
                Else
                    INDEX_INCREMENT = 1
                End If
            End If
            Beg_Counter_Last = BEGIN_COUNTER
            Beg_Index_Last = BEGIN_INDEX
            End_Index_Last = END_INDEX
            If Nz(SOW_DIRECTION, 1) = 1 Then
                If Val(Nz(BEGIN_INDEX, 0)) > Val(Nz(END_INDEX, 0)) Then
                    temp = BEGIN_INDEX
                    BEGIN_INDEX = END_INDEX
                    END_INDEX = temp
                    'SOWN_BACKWARDS = True
                    'Map_Backwards = True
                Else
                    'SOWN_BACKWARDS = False
                    'Map_Backwards = False
                End If
            Else
                If Val(Nz(END_INDEX, 0)) > Val(Nz(BEGIN_INDEX, 0)) Then
                    temp = BEGIN_INDEX
                    BEGIN_INDEX = END_INDEX
                    END_INDEX = temp
                    'SOWN_BACKWARDS = True
                    'Map_Backwards = True
                Else
                    'SOWN_BACKWARDS = False
                    'Map_Backwards = False
                End If
            End If
            If END_INDEX = 999 Then
                END_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
            End If
            If Est_Counter Then
                END_COUNTER = END_INDEX * [INDEX_INCREMENT]
                BEGIN_COUNTER = BEGIN_INDEX * INDEX_INCREMENT
            End If
            'Beg_Index_Last = BEGIN_INDEX
            'End_Index_Last = END_INDEX
        
        End If
        Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
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
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "LOCATION = LOCMOD")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Close()

    If [Processed_Into_NMIS] Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_mpro_Xfer_Table_Delete"
        DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE_MT"
        DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE"
        DoCmd.SetWarnings True
    End If
        
End Sub

Private Sub Form_Delete(Cancel As Integer)
    
    Default_Agreement_Lot_CN = Null
    
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

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True
    
    BEGIN_INDEX.TabStop = True
    END_INDEX.TabStop = True
    BEGIN_COUNTER.TabStop = True
    END_COUNTER.TabStop = True
    SUBLOT_NO.TabStop = False

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant

    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [LOCMOD]")

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
    [grow_containers].Form.Requery
    
        If Not IsNull(AGREEMENT_LOT_CN) Then
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
                    Else
                        LOCATION_CN = Location_Last_CN
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
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(LOCATION_CN) Then
            If IsNull(BEGIN_DATE) Then
                BEGIN_DATE = Begin_Date_Default
            End If
            'If IsNull(CN) Then
                'DoCmd.RunMacro "Set_CN2"
            'End If
        End If
        Last_ID_Location_CN = CN
        If Not IsNull(LOCATION_CN) Then
            Location_Last_CN = LOCATION_CN
        End If
        If VarX <> "FIELD" Then
            BEGIN_COUNTER = 0
            BEGIN_COUNTER.TabStop = False
        Else
            BEGIN_COUNTER.TabStop = True
        End If
    End If
    
End Sub

Private Sub Note_Enter()
    NOTE = [grow_containers].Form![NOTE_CONTAINER]
End Sub

Private Sub SOWN_BACKWARDS_AfterUpdate()
    
    'Map_Backwards = SOWN_BACKWARDS
    
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
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    
End Sub
Private Sub Process_Into_NMIS_Click()
On Error GoTo Err_Process_Into_NMIS_Click

    If Not Processed_Into_NMIS Then
        DoCmd.Requery
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_mpro_update_hloc_table"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Lots"
        DoCmd.OpenQuery "Husky_mpro_Dump_CO_Lots"
        DoCmd.OpenQuery "Husky_mpro_Dump_Ctl_Create"
        DoCmd.OpenQuery "Husky_mpro_ID_Activities_Insert"
        DoCmd.OpenQuery "Husky_mpro_Dump_CO_Ctl_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_HLoc_Lots"
        DoCmd.OpenQuery "Husky_mpro_ID_Locations_Insert"
                    
        If Activity_Code = "LOCCHG" Then
            'If the activity is Location Changes (LOCCHG) then Zero out previous location info
            DoCmd.OpenQuery "Husky_mpro_Transactions_previous_densities_MT"
            DoCmd.OpenQuery "Husky_mpro_Transactions_previous_zero_for_location_change"
            DoCmd.OpenQuery "Husky_mpro_Transactions_Insert_Loc_Change"
            DoCmd.OpenQuery "Transactions_Current_Balance_Gross_n_Net_mt"
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_locchg_Update"
        Else
            'If Nursery Owned packed for transplant, Zero out packing balances
            DoCmd.OpenQuery "Husky_mpro_transactions_prev_zero"
            DoCmd.OpenQuery "Husky_mpro_Transactions_Insert"
            'If Client Owned from a previous agreement zero out the previous agreement balances
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_CO_zero_Insert"
            DoCmd.OpenQuery "Husky_mpro_transactions_xplt_prev_zero"
            'If Holdover from a previous agreement zero out the previous agreement balances
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_Holdover_zero_Insert"
            DoCmd.OpenQuery "Husky_mpro_transactions_Holdover_prev_zero"
        End If

        DoCmd.SetWarnings True
        Processed_Into_NMIS = True
        MsgBox "Processing Complete"
    
    Else
        MsgBox "Already Processed Into NMIS"
    End If
    
Exit_Process_Into_NMIS_Click:
    Exit Sub

Err_Process_Into_NMIS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Process_Into_NMIS_Click
    
    
End Sub
Private Sub Preview_Checklist_Report_Click()
On Error GoTo Err_Preview_Checklist_Report_Click

    Dim stDocName As String

    stDocName = "Husky_Mpro_Dump_Report_by_Location2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Report_Click:
    Exit Sub

Err_Preview_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Report_Click
    
End Sub

Private Sub Sublot_Tabstop_AfterUpdate()

    If Sublot_Tabstop Then
        SUBLOT_NO.TabStop = True
    Else
        SUBLOT_NO.TabStop = False
    End If
End Sub
```
