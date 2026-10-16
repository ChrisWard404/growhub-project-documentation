# Report: NMIS_PRODUCT_INVENTORY_Report_OLD

**Caption:** NMIS_Plant_Inventory  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORY_Query
```

**Grouping/sorting:** `Reporting_Parent`, `CLIENT_ASSOCIATE`, `End_Season`, `Cost_Center`, `Age_Class_Condensed`, `PLNTMSTR_SYMBOL`, `Species_Products_String_Longest`, `SPECIES_PRODUCT_DESC`, `SOURCE`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ASSOCIATE |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [Associate_Name] & " (" & [Associate] & ")" AS Parent_Associate_Header FROM NMIS_ASSOCIATES; |  | 1.67, 0.85, 4.79, 0.32 |
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 3.28, 1.40, 0.37, 0.33 |
| Label | TOTAL_REQUEST_Label | AdjustedRequest (M) |  |  |  | 4.38, 1.25, 0.60, 0.47 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.57, 1.55, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.02, 1.43, 0.75, 0.30 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Report |  |  |  | 3.16, 0.55, 1.82, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross Inv (M) |  |  |  | 5.05, 1.25, 0.41, 0.47 |
| Label | Label111 | Est. Net (M) |  |  |  | 5.59, 1.25, 0.39, 0.47 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.02, 1.70, 7.93, 0.20 |
| Label | Label118 | Lots without totals will be inventoried at a later date. |  |  |  | 0.52, 0.19, 1.29, 0.28 |
| Label | Label119 | Note: |  |  |  | 0.11, 0.19, 0.40, 0.19 |
| Label | Label122 | Location |  |  |  | 7.25, 1.55, 0.71, 0.17 |
| Label | Label149 | Original Request (M) |  |  |  | 3.79, 1.25, 0.59, 0.47 |
| Label | Label150 | Gross Density |  |  |  | 6.69, 1.40, 0.54, 0.33 |
| Label | Label155 | Inv Date |  |  |  | 6.25, 1.40, 0.42, 0.33 |
| Label | Label158 | Net Inventory Type: |  |  |  | 0.52, 0.65, 1.08, 0.15 |
| Label | Label159 | C = Count Only      S = Count and Size |  |  |  | 0.58, 0.80, 1.02, 0.33 |
| Label | Label160 | * = Projected Net Shortage |  |  |  | 0.52, 0.49, 1.39, 0.16 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NURSERY_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & "  " & [ASSOCIATE_NAME] AS ASSOCIATE_CODE_AND_NAME FROM NMIS_ASSOCIATES;  |  | 0.00, 0.01, 5.00, 0.25 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Combo123 |  | ="*Requested for FY " & [END_SEASON] & "*" |  |  | 0.00, 0.08, 2.62, 0.20 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Cost_Center |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 0.04, 0.04, 1.58, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | Age_Class_Condensed |  |  | 0.04, 0.00, 2.75, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | SPECIES_PRODUCT_DESC |  | Species_Product_CN | SELECT Species_Products_with_SizeSpecString.CN, Species_Products_with_SizeSpecString.Species_Products_String_Longest FROM Species_Products_with_SizeSpecString; |  | 0.06, 0.00, 7.44, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Actual_Sown_Calculated |  | ORIG_AMOUNT_REQUESTED |  |  | 3.69, 0.00, 0.52, 0.15 |
| TextBox | TOTAL_REQUEST |  | AMOUNT_REQUESTED |  |  | 4.34, 0.00, 0.49, 0.15 |
| TextBox | GROSS |  | GROSS |  |  | 4.89, 0.00, 0.56, 0.15 |
| TextBox | NET_INV |  | Net_Inv_M |  |  | 5.45, 0.00, 0.55, 0.15 |
| TextBox | Text138 |  | AgLotID_Source |  |  | 0.09, 0.00, 3.18, 0.15 |
| TextBox | LastOfDensity |  | Density |  |  | 6.79, 0.00, 0.32, 0.15 |
| TextBox | MaxOfACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.18, 0.00, 0.47, 0.15 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 6.67, 0.00, 0.12, 0.15 |
| TextBox | Shortage |  | =IIf([Net_Inv]<[TOTAL_REQUEST],"*","") |  |  | 6.00, 0.00, 0.18, 0.15 |
| TextBox | END_FY |  | END_FY |  |  | 1.64, 0.00, 0.00, 0.15 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 3.30, 0.00, 0.45, 0.15 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 7.15, 0.00, 0.83, 0.17 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.20 |
| Label | Label58 | Total For:  |  |  |  | 0.06, 0.08, 0.66, 0.18 |
| Label | Label83 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text93 |  | =Sum([GROSS]) |  |  | 4.86, 0.10, 0.59, 0.20 |
| Label | Label94 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text95 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.10, 0.55, 0.20 |
| Label | Label96 | ----------- |  |  |  | 5.45, 0.00, 0.56, 0.13 |
| ComboBox | Combo136 |  | Species_Product_CN | SELECT Species_Products_with_SizeSpecString.CN, Species_Products_with_SizeSpecString.Species_Products_String FROM Species_Products_with_SizeSpecString;  |  | 0.72, 0.08, 2.88, 0.19 |
| TextBox | Text139 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.76, 0.10, 0.45, 0.20 |
| Label | Label140 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.20 |
| Label | Label55 | Total For:  |  |  |  | 0.01, 0.08, 0.66, 0.18 |
| Label | Label82 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text97 |  | =Sum([GROSS]) |  |  | 4.86, 0.10, 0.59, 0.20 |
| Label | Label98 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text99 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.10, 0.55, 0.20 |
| Label | Label100 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text141 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.76, 0.10, 0.45, 0.20 |
| Label | Label142 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |
| TextBox | Combo135 |  | Age_Class_Condensed |  |  | 0.66, 0.08, 2.91, 0.19 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text163 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label164 | Total For:  |  |  |  | 0.00, 0.08, 0.66, 0.18 |
| Label | Label165 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text166 |  | =Sum([GROSS]) |  |  | 4.85, 0.10, 0.59, 0.20 |
| Label | Label167 | ----------- |  |  |  | 4.82, 0.00, 0.62, 0.15 |
| TextBox | Text168 |  | =Sum([NET_INV_M]) |  |  | 5.45, 0.10, 0.55, 0.20 |
| Label | Label169 | ----------- |  |  |  | 5.40, 0.00, 0.60, 0.15 |
| TextBox | Text170 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.75, 0.10, 0.45, 0.20 |
| Label | Label171 | ----------- |  |  |  | 3.66, 0.00, 0.53, 0.13 |
| ComboBox | Combo173 |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 0.68, 0.06, 1.86, 0.21 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text125 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.20 |
| Label | Label126 | Total:  |  |  |  | 0.01, 0.11, 0.43, 0.18 |
| Label | Label128 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text129 |  | =Sum([GROSS]) |  |  | 4.86, 0.10, 0.59, 0.20 |
| Label | Label130 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text131 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.10, 0.55, 0.20 |
| Label | Label132 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text133 |  | ="*Requested for FY " & [END_FY] & "*" |  |  | 0.45, 0.11, 3.16, 0.17 |
| TextBox | Text143 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.76, 0.10, 0.45, 0.20 |
| Label | Label144 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_TOTAL_REQ |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.22 |
| Label | Label36 | Total For:  |  |  |  | 0.02, 0.10, 0.66, 0.18 |
| ComboBox | Combo56 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.69, 0.11, 2.89, 0.19 |
| Label | Label68 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text101 |  | =Sum([GROSS]) |  |  | 4.86, 0.10, 0.59, 0.22 |
| Label | Label102 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text103 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.10, 0.55, 0.22 |
| Label | Label104 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text145 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.76, 0.10, 0.45, 0.22 |
| Label | Label146 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.17, 0.11, 0.66, 0.20 |
| Label | Label51 | Total For:  |  |  |  | 0.02, 0.12, 0.66, 0.18 |
| ComboBox | Combo52 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.67, 0.12, 2.83, 0.00 |
| Label | Label69 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text105 |  | =Sum([GROSS]) |  |  | 4.85, 0.11, 0.60, 0.20 |
| Label | Label106 | ----------- |  |  |  | 4.83, 0.00, 0.62, 0.15 |
| TextBox | Text107 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.11, 0.55, 0.20 |
| Label | Label108 | ----------- |  |  |  | 5.41, 0.00, 0.60, 0.15 |
| TextBox | Text147 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.70, 0.10, 0.51, 0.20 |
| Label | Label148 | ----------- |  |  |  | 3.67, 0.00, 0.53, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.19, 2.13, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.93, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```
