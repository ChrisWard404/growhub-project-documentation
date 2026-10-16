# Form: NMIS_ID_LOCATIONS_FORM

**Caption:** NMIS ID Locations Form  
**Record source:**

```sql
NMIS_AGREEMENT_LOTS
```

**Order by:** `NMIS_AGREEMENT_LOTS.Index DESC`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  
**Subforms/subreports:** `Form.NMIS_ID_LOCATIONS_FORM_SUBFORM`  
**Form events with code:** Close, Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box60 |  |  |  |  | 0.04, 0.03, 3.22, 0.95 |
| TextBox | Default_Date | Default Date: |  |  |  | 4.80, 0.46, 0.60, 0.21 |
| ComboBox | Find_Lot | Find Lot: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS AS StockType, Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY] FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![NMIS_ID_LOCATIONS_FORM]![Screen_For_Begin_FY] & "*") AND ((Left$(NZ([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"B"),1)) Like [Forms]![NMIS_ID_LOCATIONS_FORM]![Filter_for_Product_Type])) ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , Left$(NZ([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],"B"),1), NMIS_AGREEMENT_LOTS.ID, NMIS_PRODUCTS.PRODUCT_CLASS; | AfterUpdate | 1.42, 0.67, 1.57, 0.25 |
| ComboBox | Screen_For_Begin_FY | Like Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | AfterUpdate | 1.42, 0.09, 0.75, 0.25 |
| TextBox | CN |  | CN |  |  | 5.50, 0.50, 0.00, 0.00 |
| Label | Label54 | Agreement Lot ID Locations |  |  |  | 3.88, 0.08, 2.74, 0.28 |
| ComboBox | Filter_for_Product_Type |  |  | B;Bareroot Plant;C;Container Plant;N;Native Propagules;*;All Product Types | AfterUpdate | 1.42, 0.39, 1.75, 0.25 |
| Label | Filter_for_Product_Type_Label | Like: |  |  |  | 0.89, 0.39, 0.46, 0.25 |
| Label | Label55 | NOTE: Shows the Locations and Unit codes defined for a lot only. The NUMBER of CONTAINERS and AMOUNT PER CONTAINER is found under ID ACTIVITIES and TRANSACTIONS |  |  |  | 7.04, 0.21, 3.12, 0.71 |
| ComboBox | Default_Unit_Code | Default Unit Code: |  | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("g","store","lc","weigh"))) ORDER BY NMIS_UNITS.UNIT_TYPE, NMIS_UNITS.UNIT_CODE; |  | 4.80, 0.71, 0.78, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ID_LOCATIONS_FORM_SUBFORM |  | Form.NMIS_ID_LOCATIONS_FORM_SUBFORM (master: CN → child: AGREEMENT_LOT_CN) |  | Enter | 0.06, 0.08, 10.36, 5.22 |

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

Private Sub Filter_for_Product_Type_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object
    
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_NEXT_Index = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_PREVIOUS_Index = Null
    [NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_NEXT = Null
        '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Location_Last_CN]
    [NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_PREVIOUS = Null
        '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Location_Last_CN]
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!Beg_Index_Last = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!End_Index_Last = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Last_Est_Units] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Map_Backwards] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Unit_Code_Default] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Last_ID_Location_CN] = Null
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE_MT"
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Form_Current()

    Last_ID_Location_CN = CN
    Last_Est_Units = Est_Units
    
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
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True
    
    DoCmd.GoToControl "find_Lot"
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub NMIS_ID_LOCATIONS_FORM_SUBFORM_Enter()
    
    If IsNull([Find_Lot]) Then
        'MsgBox "You must select a Lot first.", vbInformation
        Forms![NMIS_ID_LOCATIONS_FORM]![Find_Lot].SetFocus
    End If
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub
```
