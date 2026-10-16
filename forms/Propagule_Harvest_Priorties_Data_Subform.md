# Form: Propagule_Harvest_Priorties_Data_Subform

**Caption:** Lifting_Priorties  
**Record source:**

```sql
SELECT NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST, IIf(IsNull([harvest_date]),-1,1) AS Harvested, IIf(IsNull([HARVEST_PRIORITY]),99,[HARVEST_PRIORITY]) AS Harvest_Priority_Sort, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_DATE, NMIS_PROPAGULE_HARVEST_PRIORITIES.NOTE, NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_METHOD FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN NMIS_PROPAGULE_HARVEST_PRIORITIES ON NMIS_AGREEMENT_LOTS.CN = NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN WHERE (((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY) Like [Forms]![Propagule_Harvest_Priorties]![Like_Harvest_FY]) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![Propagule_Harvest_Priorties]![like_species] & "*")) ORDER BY NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY DESC , NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST, IIf(IsNull([harvest_date]),-1,1), IIf(IsNull([HARVEST_PRIORITY]),99,[HARVEST_PRIORITY]), NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID;
```

**Order by:** `[Propagule_Harvest_Priorties_Data_Subform].[ID], [Propagule_Harvest_Priorties_Data_Subform].[HARVEST_DATE]`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_PRODUCTS`, `NMIS_PROPAGULE_HARVEST_PRIORITIES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Embedded in:** `Form:Propagule_Harvest_Priorties`  
**Opens:** `Report:Lifting_Priorities`, `Report:Processing_Client_Heads_Up`, `Report:TOLIFT_BY_PRIORITY`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Lot ID_Label | Lot ID |  |  |  | 1.19, 0.04, 1.10, 0.19 |
| Label | Feet To Lift_Label | Harvest FY |  |  |  | 9.25, 0.04, 0.67, 0.19 |
| Label | Ft Notet_Label | Harvest Note |  |  |  | 5.22, 0.04, 4.00, 0.20 |
| Label | Partial_Lift_Label | harvest |  |  |  | 0.05, 0.04, 0.50, 0.19 |
| Label | Priority_Label | Priority |  |  |  | 0.58, 0.04, 0.55, 0.19 |
| Label | Label55 | Harvest Date |  |  |  | 3.58, 0.04, 0.78, 0.19 |
| Label | Label57 | Species |  |  |  | 4.41, 0.04, 0.77, 0.19 |
| Label | Label60 | Method |  |  |  | 2.33, 0.04, 1.21, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | HARVEST_FY |  | HARVEST_FY |  |  | 9.25, 0.03, 0.67, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 5.22, 0.03, 4.00, 0.21 |
| TextBox | HARVEST_PRIORITY |  | HARVEST_PRIORITY |  | AfterUpdate, Change, Exit | 0.58, 0.03, 0.53, 0.21 |
| CheckBox | Partial_Lift |  | HARVEST |  |  | 0.26, 0.07, 0.00, 0.00 |
| TextBox | HARVEST_DATE |  | HARVEST_DATE |  | AfterUpdate | 3.58, 0.03, 0.78, 0.21 |
| ComboBox | Species_Code |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.VERNACULAR FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL; |  | 4.41, 0.03, 0.78, 0.21 |
| ComboBox | HARVEST_METHOD |  | HARVEST_METHOD | DC;"Direct Combine";PC;"Pickup Combine";SW;"Swather";SC;"Swath & Catch";HD;"Hand";ST;"Stripper";BA;Bale;MO;"Mow";SP;"Spray";TI;"Till";OT;"Other" |  | 2.34, 0.03, 1.22, 0.21 |
| ComboBox | ID |  | ID | SELECT NMIS_AGREEMENT_LOTS.ID, [*agreement_lot_min_field_location_table].MinOfLOCATION, NMIS_PRODUCTS.CATEGORY_CODE FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN [*agreement_lot_min_field_location_table] ON NMIS_AGREEMENT_LOTS.CN = [*agreement_lot_min_field_location_table].AGREEMENT_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_PRODUCTS.CATEGORY_CODE)="nsp")); |  | 1.19, 0.03, 1.10, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Update | Update Priorities |  |  | Click | 0.01, 0.06, 1.23, 0.29 |
| CommandButton | Add_Current_FY_Lots | Add Current FY Lots |  |  | Click | 8.56, 0.06, 1.33, 0.29 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_BY_PRIORITY"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
    
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Add_Current_FY_Lots_Click()

    If Val([Forms]![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].[Form]![Max_FY]) < _
        Val([Forms]![Switchboard]![FY_For_Reports]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Append"
        DoCmd.SetWarnings True
        DoCmd.Requery
        Forms![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].Requery
    Else
        MsgBox "The current FY's Lots have already been added", vbCritical
    End If
    
End Sub



Private Sub HARVEST_DATE_AfterUpdate()

    If Not IsNull(HARVEST_DATE) Then
        HARVEST_PRIORITY = ""
    End If
      
End Sub

Private Sub HARVEST_PRIORITY_AfterUpdate()

    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
    If Not IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = ""
    End If
    End If
   
End Sub

Private Sub HARVEST_PRIORITY_Change()

    HARVEST_METHOD.Requery
    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
        HARVEST_METHOD = Null
    End If
    
End Sub

Private Sub HARVEST_PRIORITY_Exit(Cancel As Integer)

    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
        HARVEST_METHOD = ""
    End If
   
End Sub

Private Sub Update_Click()
    
        DoCmd.Requery

End Sub
```
