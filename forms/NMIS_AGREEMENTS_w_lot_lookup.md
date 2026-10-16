# Form: NMIS_AGREEMENTS_w_lot_lookup

**Caption:** NMIS AGREEMENTS  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.CN, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.NOTE, NMIS_AGREEMENTS.INSERTED_BY, NMIS_AGREEMENTS.INSERTED_DATE, NMIS_AGREEMENTS.INSERTED_INSTANCE, NMIS_AGREEMENTS.MODIFIED_BY, NMIS_AGREEMENTS.MODIFIED_DATE, NMIS_AGREEMENTS.MODIFIED_INSTANCE, NMIS_AGREEMENTS.TRANSFERRED_BY, NMIS_AGREEMENTS.TRANSFERRED_DATE, NMIS_AGREEMENTS.TRANSFERRED_INSTANCE, NMIS_AGREEMENTS.Index, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES_PRODUCTS.TOTAL_NUMBER_OF_FY, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_SPECIES_PRODUCTS.AGE_STRING FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SOURCE_LOTS.CN=NMIS_AGREEMENTS.SOURCE_LOT_CN) ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN ORDER BY NMIS_AGREEMENTS.Index;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_GROUP`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_CLIENT_MGMT_CODES subform1`, `Form.NMIS_AGREEMENTS subform2`  
**Opens:** `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOTS_NEW`, `Form:NMIS_SOURCE_LOTS_Bend`, `Form:NMIS_SOURCE_LOTS_INPUT`, `Form:NMIS_SPECIES`, `Form:NMIS_SPECIES_PRODUCTS Form`, `Form:Refresh_Close`, `Form:refresh`  
**Form events with code:** Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label8 | Nursery Agreements |  |  |  | 3.38, 0.20, 2.31, 0.31 |
| TextBox | CN |  | CN |  |  | 5.88, 0.17, 0.00, 0.00 |
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 2.05, 0.08, 0.00, 0.00 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 2.05, 0.28, 0.00, 0.00 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 2.05, 0.47, 0.00, 0.00 |
| CommandButton | Refresh and Close |  Close |  |  | Click | 8.38, 0.04, 0.48, 0.26 |
| CommandButton | Open Products Form | Click for Species Products Form |  |  | Click | 0.12, 0.04, 0.55, 0.58 |
| CommandButton | Open Source Lot Form | Click for Source Lot form |  |  | Click | 0.76, 0.04, 0.55, 0.58 |
| CommandButton | Open_Species_Form | Click for Species Form |  |  | Click | 1.40, 0.04, 0.55, 0.58 |
| Line | Line19 |  |  |  |  | 0.04, 0.68, 8.88, 0.00 |
| CommandButton | Open_Bend_Lots_Form | Click to Add Bend Lots |  |  | Click | 2.04, 0.04, 0.57, 0.57 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  | Exit | 3.75, 0.23, 0.66, 0.21 |
| TabControl | TabCtl9 |  |  |  |  | 0.00, 1.46, 8.87, 4.07 |
| Page | Product Information |  |  |  |  | 0.09, 1.75, 8.68, 3.68 |
| Subform | NMIS_CLIENT_MGMT_CODES subform1 |  | Form.NMIS_CLIENT_MGMT_CODES subform1 (master: CN → child: AGREEMENT_CN) |  |  | 0.33, 2.09, 3.17, 2.62 |
| Subform | NMIS_AGREEMENTS subform2 |  | Form.NMIS_AGREEMENTS subform2 (master: SPECIES_PRODUCT_CN → child: CN) |  |  | 4.06, 2.08, 4.46, 1.84 |
| Rectangle | Box24 |  |  |  |  | 0.21, 1.93, 3.46, 2.98 |
| Rectangle | Box25 |  |  |  |  | 3.89, 1.93, 4.79, 2.21 |
| Page | Source Lot Lookup |  |  |  |  | 0.09, 1.75, 8.68, 3.68 |
| ComboBox | Client_Lookup |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.98, 2.52, 0.86, 0.22 |
| ComboBox | Species_Lookup |  |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR, NMIS_SPECIES.GENUS, NMIS_SPECIES.SPECIES, NMIS_SPECIES.SPECIES_GROUP FROM NMIS_SPECIES;  |  | 1.98, 3.18, 0.89, 0.22 |
| Label | Label30 | Species: |  |  |  | 1.27, 3.19, 0.60, 0.21 |
| ComboBox | Species_Group |  |  | SELECT NMIS_SPECIES_GROUP.SPECIES_GROUP FROM NMIS_SPECIES_GROUP;  |  | 1.98, 2.85, 1.30, 0.22 |
| Label | Label32 | Species Group: |  |  |  | 0.81, 2.86, 1.06, 0.21 |
| Label | Label33 | Zone: |  |  |  | 1.46, 3.52, 0.41, 0.21 |
| TextBox | Zone_Lookup |  |  |  |  | 1.98, 3.52, 0.65, 0.22 |
| Rectangle | Box57 |  |  |  |  | 0.74, 1.90, 2.62, 2.89 |
| Label | Label28 | Lookup Parameters |  |  |  | 1.26, 2.02, 1.62, 0.24 |
| Label | Label58 | Client: |  |  |  | 1.40, 2.52, 0.47, 0.21 |
| ListBox | Source_Code | Source Information | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE AS [Stored For], [Seed_Balance Query].[Sum Of ACTIVITY_UNITS] AS Balance, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, [NMIS_SPECIES_GROUP Query].SPECIES_GROUP, NMIS_SOURCE_LOTS.SEED_ZONE, NMIS_SOURCE_LOTS.BREEDING_ZONE FROM [Seed_Balance Query] INNER JOIN ([NMIS_SPECIES_GROUP Query] INNER JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) ON [Seed_Balance Query].SOURCE_LOT_CN=NMIS_SOURCE_LOTS.CN WHERE (((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like Forms!NMIS_AGREEMENTS!Client_Lookup & "*") And (([Seed_Balance Query].[Sum Of ACTIVITY_UNITS])>0.0001) And ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like Forms!NMIS_AGREEMENTS!Species_Lookup & "*") And (([NMIS_SPECIES_GROUP Query].SPECIES_GROUP) Like Forms!NMIS_AGREEMENTS!Species_Group & "*") And ((NMIS_SOURCE_LOTS.SEED_ZONE) Like Forms!NMIS_AGREEMENTS!Zone_Lookup & "*")) Or (((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like Forms!NMIS_AGREEMENTS!Client_Lookup & "*") And (([Seed_Balance Query].[Sum Of ACTIVITY_UNITS])>0.0001) And ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like Forms!NMIS_AGREEMENTS!Species_Lookup & "*") And (([NMIS_SPECIES_GROUP Query].SPECIES_GROUP) Like Forms!NMIS_AGREEMENTS!Species_Group & "*") And ((NMIS_SOURCE_LOTS.BREEDING_ZONE) Like Forms!NMIS_AGREEMENTS!Zone_Lookup & "*")) ORDER BY NMIS_SOURCE_LOTS.SOURCE_CODE;  |  | 4.17, 2.07, 4.40, 3.31 |
| CommandButton | Lookup Lots | Lookup Lots |  |  | Click | 1.58, 4.18, 1.05, 0.33 |
| ComboBox | Associate | Client | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.12, 0.23, 0.81, 0.21 |
| ComboBox | Source_lot_cn | Source Code | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE FROM [NMIS_SPECIES_GROUP Query] INNER JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL ORDER BY NMIS_SOURCE_LOTS.SOURCE_CODE;  |  | 1.33, 0.68, 3.06, 0.21 |
| ComboBox | source_id |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID;  | DblClick, Exit, NotInList | 0.12, 0.68, 1.15, 0.21 |
| Line | Line72 |  |  |  |  | 0.12, 1.38, 8.71, 0.00 |
| Label | PRODUCT_TYPE_Label | Product Type |  |  |  | 6.90, 0.93, 1.21, 0.20 |
| ComboBox | PLNTMSTR_SYMBOL | Species | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 1.35, 1.14, 1.73, 0.20 |
| ComboBox | Species Product |  | SPECIES_PRODUCT_CN | SELECT NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE=NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN GROUP BY NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_PRODUCT_TYPES.PRODUCT_TYPE, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC;  |  | 6.90, 1.14, 1.23, 0.20 |
| ComboBox | END_FY | End FY | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 4.49, 0.23, 0.65, 0.21 |
| TextBox | AMOUNT_REQUESTED | Amt Req | AMOUNT_REQUESTED |  |  | 8.21, 0.69, 0.66, 0.20 |
| ComboBox | AGREEMENT_LOT_CN | Agreement Lot | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.ID;  | DblClick | 0.13, 1.14, 1.02, 0.20 |
| ComboBox | SPECIES_PRODUCT_CN | Select/Change Species Product | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL & " " & NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC & " " & [SIZE_SPEC_STRING] & " " & [BEGIN_SEASON_CODE] & " " & [END_SEASON_CODE] AS SPECIES_PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_DESC FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_SPECIES_PRODUCTS.CN=Species_Products_with_SizeSpecString.CN) ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL)=Forms!NMIS_AGREEMENTS!PLNTMSTR_SYMBOL)) ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL & " " & NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC & " " & [SIZE_SPEC_STRING] & " " & [BEGIN_SEASON_CODE] & " " & [END_SEASON_CODE];  | Change | 4.45, 0.69, 3.69, 0.20 |
| CommandButton | Requery | Source Lot ID |  |  | Click | 0.12, 0.48, 1.16, 0.22 |
| TextBox | Total_FY |  | TOTAL_NUMBER_OF_FY |  |  | 1.79, 1.12, 0.50, 0.00 |
| CommandButton | Open Agreement Lots New Form | Click to View or Create a New Agreement Lot |  |  | Click | 7.50, 0.04, 1.38, 0.35 |
| ComboBox | Text26 |  | =[Associate] | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.96, 0.24, 2.69, 0.20 |
| ComboBox | CATEGORY_CODE | Category | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 4.44, 1.14, 2.34, 0.20 |

## Code-behind (VBA)

```vb
Option Explicit

Private Sub refresh_Click()
On Error GoTo Err_refresh_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70

Exit_refresh_Click:
    Exit Sub

Err_refresh_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_refresh_Click
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_AGREEMENT_LOT_CN_DblClick

    [AGREEMENT_LOT_CN].Locked = False
    MsgBox "AGREEMENT LOT is now unlocked for editing"
    
Exit_AGREEMENT_LOT_CN_DblClick:
    Exit Sub

Err_AGREEMENT_LOT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_AGREEMENT_LOT_CN_DblClick
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)
    
    [AGREEMENT_LOT_CN].Locked = True
    
End Sub

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

    [Associate].Locked = False
    MsgBox "Associate is now unlocked for editing"
    
End Sub

Private Sub ASSOCIATE_Enter()

    If [Associate] <> "" Then
        [Associate].Locked = True
    Else
        [Associate].Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)

    [Associate].Locked = True
    
End Sub

Private Sub BEGIN_FY_Exit(Cancel As Integer)

    [END_FY] = [BEGIN_FY] + [Total_FY]
    
End Sub

Private Sub Form_Current()

    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If
 
End Sub

Private Sub Open_Products_Form_Click()
On Error GoTo Err_Open_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Products_Form_Click:
    Exit Sub

Err_Open_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Form_Click
    
End Sub

Private Sub Open_Source_Lot_Form_Click()
On Error GoTo Err_Open_Source_Lot_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Form_Click
    
End Sub

Private Sub Lookup_Lots_Click()
On Error GoTo Err_Lookup_Lots_Click

    Dim stDocName As String

    stDocName = "refresh"
    DoCmd.RunMacro stDocName

Exit_Lookup_Lots_Click:
    Exit Sub

Err_Lookup_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lookup_Lots_Click
    
End Sub

Private Sub Open_Agreement_Lots_New_Form_Click()
On Error GoTo Err_Open_Agreement_Lots_New_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN]", , acNormal
    Else
        If Not IsNull(source_id) Then
            DoCmd.OpenForm "NMIS_AGREEMENT_LOTS_NEW", acNormal, "", "", acAdd, acHidden
        Else
            MsgBox "Source Lot must be entered"
        End If
    End If
    
Exit_Open_Agreement_Lots_New_Form_Click:
    Exit Sub

Err_Open_Agreement_Lots_New_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Agreement_Lots_New_Form_Click
    
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

Private Sub Open_Species_Form_Click()
On Error GoTo Err_Open_Species_Form_Click
    
    DoCmd.OpenForm "NMIS_SPECIES", acNormal, , , acFormAdd

Exit_Open_Species_Form_Click:
    Exit Sub

Err_Open_Species_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Species_Form_Click
    
End Sub

Private Sub source_id_DblClick(Cancel As Integer)

    MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
    DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal, , , acFormAdd

End Sub

Private Sub source_id_Exit(Cancel As Integer)
    
    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If

End Sub

Private Sub source_id_NotInList(NewData As String, Response As Integer)
On Error GoTo Err_source_id_NotInList

'Lot not currently in Source Database, Give option to enter as new lot."
    
    [source_id].Undo
    Response = MsgBox("Lot Not Currently in Database. Do you want to Enter this Source Lot?", vbYesNo)
    
    If Response = vbYes Then
        MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
        DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal, , , acFormAdd
    End If
    
Exit_source_id_NotInList:
    Exit Sub

Err_source_id_NotInList:
    Resume Exit_source_id_NotInList
    
End Sub
Private Sub Requery_Click()
On Error GoTo Err_Requery_Click

    [source_id].Requery
    MsgBox "Source Lots Updated. You may now use any lots you added."
    
Exit_Requery_Click:
    Exit Sub

Err_Requery_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Requery_Click
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    [END_FY] = [BEGIN_FY] + [Total_FY]
    
End Sub
Private Sub Open_Bend_Lots_Form_Click()
On Error GoTo Err_Open_Bend_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_Bend"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Bend_Lots_Form_Click:
    Exit Sub

Err_Open_Bend_Lots_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Bend_Lots_Form_Click
    
End Sub
```
