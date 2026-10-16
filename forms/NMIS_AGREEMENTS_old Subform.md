# Form: NMIS_AGREEMENTS_old Subform

**Caption:** NMIS_AGREEMENTS Subform  
**Record source:**

```sql
SELECT [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL], [NMIS_AGREEMENTS].[CN], [NMIS_AGREEMENTS].[AGREEMENT_LOT_CN], [NMIS_AGREEMENTS].[ASSOCIATE], [NMIS_AGREEMENTS].[AMOUNT_REQUESTED], [NMIS_AGREEMENTS].[SPECIES_PRODUCT_CN], [NMIS_AGREEMENTS].[BEGIN_FY], [NMIS_AGREEMENTS].[END_FY], [NMIS_AGREEMENTS].[SOURCE_LOT_CN], [NMIS_AGREEMENTS].[NOTE], [NMIS_AGREEMENTS].[INSERTED_BY], [NMIS_AGREEMENTS].[INSERTED_DATE], [NMIS_AGREEMENTS].[INSERTED_INSTANCE], [NMIS_AGREEMENTS].[MODIFIED_BY], [NMIS_AGREEMENTS].[MODIFIED_DATE], [NMIS_AGREEMENTS].[MODIFIED_INSTANCE], [NMIS_AGREEMENTS].[TRANSFERRED_BY], [NMIS_AGREEMENTS].[TRANSFERRED_DATE], [NMIS_AGREEMENTS].[TRANSFERRED_INSTANCE], [NMIS_AGREEMENTS].[Index], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENTS ON [NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENTS].[SPECIES_PRODUCT_CN]) ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENTS].[SOURCE_LOT_CN];
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`, `NMIS_SPECIES_GROUP`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_AGREEMENTS subform2`  
**Opens:** `Form:NMIS_PRODUCTS`, `Form:NMIS_SOURCE_LOTS`, `Form:refresh`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label8 | Nursery Agreements Form |  |  |  | 3.04, 0.17, 2.97, 0.31 |
| TextBox | CN |  | CN |  |  | 0.21, 0.08, 0.00, 0.00 |
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 1.38, 0.08, 0.00, 0.00 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 1.38, 0.28, 0.00, 0.00 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 1.33, 0.47, 0.00, 0.00 |
| TextBox | AGREEMENT_LOT_CN | AGREEMENT_LOT_CN: | AGREEMENT_LOT_CN |  |  | 6.92, 0.33, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 0.21, 0.38, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | BEGIN_FY | Begin FY | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 2.60, 0.28, 0.64, 0.21 |
| TabControl | TabCtl9 |  |  |  |  | 0.08, 1.42, 8.67, 3.95 |
| Page | Product Information |  |  |  |  | 0.16, 1.67, 8.52, 3.62 |
| Subform | NMIS_SPECIES_PRODUCTS subform3 |  | Form.NMIS_AGREEMENTS subform2 (master: SPECIES_PRODUCT_CN → child: CN) |  |  | 3.92, 1.93, 4.46, 1.84 |
| Label | Label89 | Available Products |  |  |  | 0.34, 1.92, 1.52, 0.24 |
| TextBox | NMIS_Species_Product_CN_Selected | Species_Product_CN: | SPECIES_PRODUCT_CN |  |  | 1.92, 1.75, 0.00, 0.00 |
| ListBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN | SELECT [NMIS_SPECIES_PRODUCTS].[CN], [NMIS_SPECIES_PRODUCTS].[SPECIES_PRODUCT_DESC], [NMIS_PRODUCTS].[PRODUCT_DESC], [NMIS_SPECIES_PRODUCTS].[PLNTMSTR_SYMBOL], [NMIS_AGREEMENTS].[SPECIES_PRODUCT_CN] FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON [NMIS_PRODUCTS].[CN]=[NMIS_SPECIES_PRODUCTS].[PRODUCT_CN]) INNER JOIN NMIS_AGREEMENTS ON ([NMIS_PRODUCTS].[CN]=[NMIS_AGREEMENTS].[CN]) AND ([NMIS_SPECIES_PRODUCTS].[CN]=[NMIS_AGREEMENTS].[SPECIES_PRODUCT_CN]);  |  | 0.33, 2.17, 3.30, 2.88 |
| Page | Lot Lookup |  |  |  |  | 0.16, 1.67, 8.52, 3.62 |
| ComboBox | Client_Lookup |  |  | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 2.11, 2.43, 0.86, 0.22 |
| ComboBox | Species_Lookup |  |  | SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR], [NMIS_SPECIES].[GENUS], [NMIS_SPECIES].[SPECIES], [NMIS_SPECIES].[SPECIES_GROUP] FROM NMIS_SPECIES WHERE ((([NMIS_SPECIES].[SPECIES_GROUP]) Like [Forms]![NMIS_AGREEMENTS Subform]![Species_Group]));  |  | 2.11, 3.10, 0.89, 0.22 |
| Label | Label30 | Species: |  |  |  | 1.39, 3.11, 0.60, 0.21 |
| ComboBox | Species_Group |  |  | SELECT [NMIS_SPECIES_GROUP].[SPECIES_GROUP] FROM NMIS_SPECIES_GROUP;  |  | 2.11, 2.77, 1.30, 0.22 |
| Label | Label32 | Species Group: |  |  |  | 0.93, 2.77, 1.06, 0.21 |
| Label | Label33 | Zone: |  |  |  | 1.58, 3.44, 0.41, 0.21 |
| TextBox | Zone_Lookup |  |  |  |  | 2.11, 3.43, 0.65, 0.22 |
| Rectangle | Box57 |  |  |  |  | 0.87, 1.82, 2.62, 2.89 |
| Label | Label28 | Lookup Parameters |  |  |  | 1.38, 1.94, 1.62, 0.24 |
| Label | Label58 | Client: |  |  |  | 1.52, 2.44, 0.47, 0.21 |
| ListBox | Source_Code | Source Code | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL], [NMIS_SPECIES_GROUP Query].[SPECIES_GROUP], [NMIS_SOURCE_LOTS].[SEED_ZONE], [NMIS_SOURCE_LOTS].[BREEDING_ZONE] FROM [NMIS_SPECIES_GROUP Query] INNER JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] WHERE ((([NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE]) Like [Forms]![NMIS_AGREEMENTS Subform]![Client_Lookup]) And (([NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) Like [Forms]![NMIS_AGREEMENTS Subform]![Species_Lookup]) And (([NMIS_SPECIES_GROUP Query].[SPECIES_GROUP]) Like [Forms]![NMIS_AGREEMENTS Subform]![Species_Group]) And (([NMIS_SOURCE_LOTS].[SEED_ZONE]) Like [Forms]![NMIS_AGREEMENTS Subform]![Zone_Lookup])) Or ((([NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE]) Like [Forms]![NMIS_AGREEMENTS Subform]![Client_Lookup]) And (([NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL]) Like [Forms]![NMIS_AGREEMENTS Subform]![Species_Lookup]) And (([NMIS_SPECIES_GROUP Query].[SPECIES_GROUP]) Like [Forms]![NMIS_AGREEMENTS Subform]![Species_Group]) And (([NMIS_SOURCE_LOTS].[BREEDING_ZONE]) Like [Forms]![NMIS_AGREEMENTS Subform]![Zone_Lookup])) ORDER BY [NMIS_SOURCE_LOTS].[SOURCE_CODE];  |  | 4.69, 1.98, 3.88, 3.31 |
| CommandButton | Lookup Lots | Lookup Lots |  |  | Click | 1.71, 4.10, 1.05, 0.33 |
| Page | Page85 | Calculations |  |  |  | 0.16, 1.67, 8.52, 3.62 |
| ComboBox | Associate | Client | ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.12, 0.28, 0.87, 0.21 |
| ComboBox | Source_lot_cn | Source Code | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL], [NMIS_SPECIES_GROUP Query].[SPECIES_GROUP], [NMIS_SOURCE_LOTS].[SEED_ZONE], [NMIS_SOURCE_LOTS].[BREEDING_ZONE] FROM [NMIS_SPECIES_GROUP Query] INNER JOIN NMIS_SOURCE_LOTS ON [NMIS_SPECIES_GROUP Query].[PLNTMSTR_SYMBOL]=[NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL] ORDER BY [NMIS_SOURCE_LOTS].[SOURCE_CODE];  |  | 1.33, 0.83, 2.85, 0.21 |
| ComboBox | source_id | Source Lot ID | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[SOURCE_CODE], [NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE] FROM NMIS_SOURCE_LOTS ORDER BY [NMIS_SOURCE_LOTS].[ID];  |  | 0.12, 0.83, 1.04, 0.21 |
| Line | Line72 |  |  |  |  | 0.12, 1.25, 7.92, 0.00 |
| ComboBox | PRODUCT_TYPE |  |  | SELECT [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE], [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] FROM NMIS_PRODUCT_TYPES;  |  | 1.33, 0.29, 1.02, 0.20 |
| Label | PRODUCT_TYPE_Label | Product Type |  |  |  | 1.34, 0.08, 1.00, 0.20 |
| CommandButton | Open Products Form | Open Products Form |  |  | Click | 6.96, 0.57, 0.55, 0.46 |
| CommandButton | Open Source Lot Form | Open Source Lot form |  |  | Click | 7.54, 0.57, 0.55, 0.46 |
| ComboBox | NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL | Species Symbol: | NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL | SELECT [NMIS_SPECIES].[PLNTMSTR_SYMBOL], [NMIS_SPECIES].[VERNACULAR] FROM NMIS_SPECIES;  |  | 5.58, 0.38, 0.00, 0.00 |
| TextBox | Selected PLNTMSTR_SYMBOL |  | =[NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL] |  |  | 5.25, 0.75, 0.96, 0.25 |

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

Private Sub Open_Products_Form_Click()
On Error GoTo Err_Open_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS"
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

    stDocName = "NMIS_SOURCE_LOTS"
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
```
