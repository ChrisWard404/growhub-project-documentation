# Form: NMIS_AGREEMENTS subform1

**Caption:** NMIS_AGREEMENTS subform1  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, NMIS_AGREEMENTS.CN, NMIS_AGREEMENTS.ORIG_AMOUNT_REQUESTED FROM NMIS_SOURCE_LOTS RIGHT JOIN NMIS_AGREEMENTS ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES_PRODUCTS`  
**Embedded in:** `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOTS2`, `Form:NMIS_AGREEMENT_LOTS_Review_Only`, `Form:NMIS_AGREEMENT_LOTS_old`, `Form:NMIS_AGREEMENT_LOTS_old2`  
**Opens:** `Form:NMIS_AGREEMENTS`  
**Form events with code:** Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 0.36, 0.04, 1.01, 0.20 |
| Label | AMOUNT_REQUESTED_Label | Req |  |  |  | 2.09, 0.04, 0.60, 0.20 |
| Label | NOTE_Label | Species Product |  |  |  | 4.06, 0.04, 3.31, 0.20 |
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 2.74, 0.04, 0.64, 0.20 |
| Label | END_FY_Label | End FY |  |  |  | 3.42, 0.04, 0.62, 0.20 |
| Label | Label27 | Source Lot ID |  |  |  | 7.42, 0.04, 1.20, 0.20 |
| Label | Label36 | Orig Req |  |  |  | 1.42, 0.04, 0.64, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES; |  | 0.35, 0.03, 1.03, 0.20 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 2.10, 0.03, 0.60, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 0.31, 0.26, 8.30, 0.37 |
| ComboBox | BEGIN_FY |  | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 2.74, 0.03, 0.65, 0.20 |
| ComboBox | END_FY |  | END_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 3.42, 0.03, 0.62, 0.20 |
| ComboBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN | SELECT NMIS_SPECIES_PRODUCTS.CN, [Species_Products_String] & IIf(([NMIS_SPECIES_PRODUCTS].[historical] Or [NMIS_PRODUCTS].[historical])," *HISTORICAL*") AS [Species Product], Product_String.Product_String AS Product FROM NMIS_PRODUCTS INNER JOIN (Product_String INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_SPECIES_PRODUCTS.CN = Species_Products_with_SizeSpecString.CN) ON Product_String.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL)=[Forms]![NMIS_AGREEMENT_LOTS]![PLNTMSTR_SYMBOL])) ORDER BY Product_String.Product_String, Species_Products_with_SizeSpecString.Species_Products_String; |  | 4.05, 0.02, 3.33, 0.20 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT Source_Lot_ID_and_Source_string.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN ORDER BY NMIS_SOURCE_LOTS.ID; |  | 7.42, 0.03, 1.21, 0.20 |
| CommandButton | Open_NMIS_Agreements Form | Edit |  |  | Click | 0.00, 0.02, 0.33, 0.21 |
| TextBox | CN |  | CN |  |  | 5.91, 0.04, 0.95, 0.00 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 7.45, 0.04, 0.36, 0.00 |
| TextBox | ORIG_AMOUNT_REQUESTED |  | ORIG_AMOUNT_REQUESTED |  |  | 1.42, 0.02, 0.64, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_Amt_Requested |  | =Round(Sum([AMOUNT_REQUESTED]),3) |  |  | 1.93, 0.04, 0.78, 0.19 |
| Label | Label35 | Total Requested: |  |  |  | 0.66, 0.04, 1.11, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Current()

    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub Open_NMIS_Agreements_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENTS"
    stLinkCriteria = "[CN]=" & "'" & Me![CN] & "'"

    DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Forms![NMIS_AGREEMENTS]![Like_Like_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Species].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Species_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Client].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Client_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Product].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Product_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup].Visible = False
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![No_Agreement_lot].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Agreement_Lots].Visible = False
    Forms![NMIS_AGREEMENTS]![Open_Bend_Lots_Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Products Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Source Lot Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Wildcard_Tip].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Agreement_Lots Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Agreement Lots Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Green_Background_Box].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Species_Prod_Desc].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Species_Prod_Desc Label].Visible = False
    
End Sub
```
