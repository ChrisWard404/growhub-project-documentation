# Form: NMIS_ID_LOCATIONS_storage_locchg

**Caption:** NMIS ID Storage Location Change  Form  
**Record source:**

```sql
SELECT [**Husky_mpro_Xfer_Storage_Locchg_Table].* FROM [**Husky_mpro_Xfer_Storage_Locchg_Table];
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ID_ACTIVITIES`, `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_ORDERS`, `NMIS_TRANSACTIONS`  
**Opens:** `Report:Husky_Mpro_Storage_Location_Change`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | UNIT_CODE_Label | Lot Id - Loc - Unit Code |  |  |  | 0.70, 0.56, 1.85, 0.21 |
| Label | Label87 | Remarks |  |  |  | 3.44, 0.56, 4.00, 0.21 |
| Label | Label89 | Product Storage Location Changes |  |  |  | 1.96, 0.04, 3.67, 0.28 |
| Label | Label111 | To Loc |  |  |  | 2.61, 0.56, 0.78, 0.21 |
| Label | BEGIN_DATE_Label | Date |  |  |  | 0.06, 0.56, 0.58, 0.21 |
| TextBox | Default_Date |  |  |  |  | 0.08, 0.08, 0.71, 0.25 |
| TextBox | Default_To_Loc |  |  |  |  | 0.92, 0.08, 0.71, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Agreement_Lot_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN AS ID_LOCATION_CN, [id] & " " & [nmis_locations].[location] & IIf(Not IsNull([sublot_no]),"(" & [sublot_no] & ")") & " " & [nmis_id_locations].[unit_code] AS ID_LOC, "Ord: " & Left$([nmis_orders].[cn],Len([nmis_orders].[cn])-7) & " For: " & [associate] & " " & [associate_name] AS Client_Code_Name, Left$([CATEGORY_CODE],1) AS Sort, Sum(NMIS_TRANSACTIONS.NUMBER_OF_ACTIVITY_UNITS) AS SumOfNUMBER_OF_ACTIVITY_UNITS FROM NMIS_ASSOCIATES INNER JOIN (((NMIS_TRANSACTIONS INNER JOIN (NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN) INNER JOIN ((Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN) ON NMIS_TRANSACTIONS.ID_ACTIVITY_CN = NMIS_ID_ACTIVITIES.CN) INNER JOIN NMIS_ORDERS ON NMIS_ID_ACTIVITIES.ORDER_CN = NMIS_ORDERS.CN) ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE GROUP BY NMIS_ID_LOCATIONS.CN, [id] & " " & [nmis_locations].[location] & IIf(Not IsNull([sublot_no]),"(" & [sublot_no] & ")") & " " & [nmis_id_locations].[unit_code], "Ord: " & Left$([nmis_orders].[cn],Len([nmis_orders].[cn])-7) & " For: " & [associate] & " " & [associate_name], Left$([CATEGORY_CODE],1), NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_ID_LOCATIONS.UNIT_CODE, Source_Lot_ID_and_Source_string.ID_SOURCE2, NMIS_AGREEMENT_LOTS.BEGIN_FY, Left$(nz([CATEGORY_CODE]," "),1), NMIS_AGREEMENT_LOTS.ID, NMIS_LOCATIONS.LOCATION_TYPE HAVING (((Sum(NMIS_TRANSACTIONS.NUMBER_OF_ACTIVITY_UNITS))>0) AND ((NMIS_LOCATIONS.LOCATION_TYPE)="cooler")) ORDER BY [id] & " " & [nmis_locations].[location] & IIf(Not IsNull([sublot_no]),"(" & [sublot_no] & ")") & " " & [nmis_id_locations].[unit_code], NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , Left$(nz([CATEGORY_CODE]," "),1), NMIS_AGREEMENT_LOTS.ID; |  | 0.69, 0.03, 1.88, 0.21 |
| TextBox | Note |  | Note |  |  | 3.44, 0.04, 4.00, 0.21 |
| ComboBox | LOCATION_TO |  | Location_to | SELECT NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units] FROM NMIS_LOCATIONS WHERE (((NMIS_LOCATIONS.LOCATION_TYPE)="COOLER")) ORDER BY NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.LOCATION; | Enter, Exit | 2.61, 0.03, 0.78, 0.21 |
| TextBox | BEGIN_DATE |  | Date |  | Enter, Exit | 0.06, 0.04, 0.58, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Process_Into_NMIS | Process Into NMIS |  |  | Click | 3.67, 0.08, 1.35, 0.31 |
| CheckBox | Processed_Into_NMIS | Processed Into NMIS |  |  |  | 5.54, 0.15, 0.00, 0.00 |
| CommandButton | Preview_Checklist_Report | Preview Checklist |  |  | Click | 1.17, 0.08, 1.34, 0.31 |

## Code-behind (VBA)

```vb
Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE = Default_Date
    End If
    
End Sub

Private Sub BEGIN_DATE_Enter()
    
    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE = Default_Date
    End If
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)

    If Not IsNull(BEGIN_DATE) Then
        Default_Date = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub LOCATION_FROM_CN_Enter()

    Location_from_CN.Requery
    
End Sub

Private Sub LOCATION_TO_Enter()
    If IsNull(Location_to) Then
        Location_to = Default_To_Loc
    End If
End Sub

Private Sub LOCATION_TO_Exit(Cancel As Integer)
    If Not IsNull(Location_to) Then
        Default_To_Loc = Location_to
    End If
End Sub

Private Sub Process_Into_NMIS_Click()
On Error GoTo Err_Process_Into_NMIS_Click

    If Not Processed_Into_NMIS Then
        'DoCmd.Requery
        'DoCmd.SetWarnings False
        'DoCmd.OpenQuery "Husky_mpro_update_hloc_table"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Lots"
        'DoCmd.OpenQuery "Husky_mpro_Dump_CO_Lots"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Ctl_Create"
        'DoCmd.OpenQuery "Husky_mpro_ID_Activities_Insert"
        'DoCmd.OpenQuery "Husky_mpro_Dump_CO_Ctl_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_HLoc_Lots"
        'DoCmd.OpenQuery "Husky_mpro_ID_Locations_Insert"
                    
        'If the activity is Location Changes (LOCCHG) then Zero out previous location info
        'DoCmd.OpenQuery "Husky_mpro_Transactions_previous_densities_MT"
        'DoCmd.OpenQuery "Husky_mpro_Transactions_previous_zero_for_location_change"
        'DoCmd.OpenQuery "Husky_mpro_Transactions_Insert_Loc_Change"
        'DoCmd.OpenQuery "Transactions_Current_Balance_Gross_n_Net_mt"
        'DoCmd.OpenQuery "Husky_mpro_ID_Activities_locchg_Update"
        'end If

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

    stDocName = "Husky_Mpro_Storage_Location_Change"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Report_Click:
    Exit Sub

Err_Preview_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Report_Click
    
End Sub
```
