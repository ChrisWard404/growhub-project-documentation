# Report: Agreement_Lot_Sow_Order_Report

**Grouping/sorting:** `Cost_Center`, `SOWING_ORDER`, `SowGroup`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE`  
**Backend tables referenced:** `NMIS_SOWING_ORDER`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`, `Form_NMIS_AGREEMENT_LOTS_Request_Summary`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Total Request |  |  |  | 6.22, 1.06, 0.62, 0.32 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.62, 1.37, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 1.08, 1.24, 0.88, 0.30 |
| Line | Line31 |  |  |  |  | 0.00, 1.58, 10.38, 0.00 |
| Label | Label87 | Specs |  |  |  | 5.46, 1.38, 0.41, 0.17 |
| Label | Label89 | Calc to  Sow |  |  |  | 6.95, 1.05, 0.49, 0.32 |
| Label | Label91 | Source Amt |  |  |  | 8.61, 1.22, 0.50, 0.33 |
| Label | Label94 | % of Total Req |  |  |  | 7.60, 1.05, 0.43, 0.49 |
| TextBox | Text106 |  | ="(" & [UNIT_CODE] & ")" |  |  | 6.22, 1.38, 0.62, 0.00 |
| TextBox | Text108 |  | ="(" & [UNIT_CODE] & ")" |  |  | 7.03, 1.38, 0.47, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.63, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.42, 0.00, 3.24, 0.16 |
| TextBox | Text102 |  | PageHeader |  |  | 1.04, 0.78, 8.12, 0.24 |
| Label | Label143 | * = Agreement < 100% of Total Request |  |  |  | 0.17, 0.27, 2.65, 0.23 |
| Label | Label144 | # = Calculated Shortage > 5% |  |  |  | 0.17, 0.48, 2.12, 0.23 |
| Label | Label145 | Source  ID |  |  |  | 9.53, 1.21, 0.54, 0.33 |
| TextBox | Text147 |  | =IIf([Cost_Center]="B","Est. Bed Feet","Est.  Cont.") |  |  | 8.04, 1.21, 0.47, 0.34 |
| TextBox | Cost_Center |  | CCHeader |  |  | 2.62, 0.55, 4.83, 0.23 |
| Label | Label151 | Seed per Cell |  |  |  | 9.12, 1.05, 0.36, 0.49 |
| ComboBox | Text179 |  | =[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;" " |  | 0.17, 0.08, 2.66, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.00, 0.00, 5.25, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | =[Vernacular_With_Code] & " " & [SPECIES_PRODUCT_DESC] |  |  | 0.00, 0.00, 6.50, 0.20 |
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 7.42, 0.04, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | AGREEMENT_LOT_ID_AND_SOURCE2 |  |  | 1.24, 0.00, 4.07, 0.18 |
| TextBox | TOTAL_REQUEST |  | AMOUNT_REQUESTED |  |  | 6.19, 0.00, 0.60, 0.18 |
| TextBox | EST_CONTAINERS_REQUIRED |  | Agreement_Est_Containers |  |  | 8.06, 0.00, 0.48, 0.18 |
| TextBox | SIZE_SPEC_STRING |  | SIZE_SPEC_STRING |  |  | 5.33, 0.00, 0.87, 0.18 |
| TextBox | SOURCE_REQUIRED |  | SR |  |  | 8.54, 0.00, 0.58, 0.18 |
| TextBox | Actual_Sow_Calculated |  | ASC |  |  | 6.94, 0.00, 0.59, 0.18 |
| TextBox | PCT_of_Total |  | PCT_of_Total |  |  | 7.50, 0.00, 0.53, 0.18 |
| TextBox | Text99 |  | =IIf([PCT_of_Total]<100,"*","") |  |  | 1.12, 0.00, 0.11, 0.18 |
| TextBox | Source_ID |  | Source_ID |  |  | 9.51, 0.00, 0.86, 0.17 |
| TextBox | Shortage |  | =IIf([ASC]<([AMOUNT_REQUESTED]-(0.05*[AMOUNT_REQUESTED])),"#","") |  |  | 6.82, 0.00, 0.11, 0.18 |
| TextBox | NURSERY_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.50, 0.00, 0.63, 0.18 |
| TextBox | BEGIN_FY |  | BegFYSeason |  |  | 0.00, 0.00, 0.46, 0.18 |
| TextBox | Seed_Per_Cell |  | Seed_Per_Cell |  |  | 9.07, 0.00, 0.41, 0.18 |
| TextBox | Prev_Agr_Lot |  | Prev_Agr_Lot |  |  | 1.27, 0.18, 3.55, 0.02 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 6.00, 0.10, 0.79, 0.20 |
| Label | Label58 | Total For:  |  |  |  | 0.08, 0.10, 0.86, 0.19 |
| TextBox | Text62 |  | SPECIES_PRODUCT_DESC |  |  | 1.59, 0.10, 3.62, 0.20 |
| TextBox | Text63 |  | PLNTMSTR_SYMBOL |  |  | 0.98, 0.10, 0.57, 0.20 |
| Label | Label83 | ----------- |  |  |  | 6.23, 0.00, 0.56, 0.13 |
| TextBox | Text95 |  | =Sum([Agreement_Est_Containers]) |  |  | 7.71, 0.10, 0.83, 0.20 |
| Label | Label96 | ----------- |  |  |  | 7.99, 0.00, 0.56, 0.13 |
| TextBox | Text115 |  | =Sum([ASC]) |  |  | 6.89, 0.10, 0.65, 0.19 |
| Label | Label116 | ----------- |  |  |  | 6.98, 0.00, 0.56, 0.13 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 5.85, 0.11, 0.94, 0.19 |
| Label | Label55 | Total For:  |  |  |  | 0.08, 0.10, 0.82, 0.19 |
| TextBox | Combo37 |  | PRODUCT_DESC |  |  | 0.93, 0.10, 4.24, 0.19 |
| Label | Label82 | ----------- |  |  |  | 6.23, 0.00, 0.56, 0.13 |
| TextBox | Text97 |  | =Sum([Agreement_Est_Containers]) |  |  | 7.54, 0.10, 1.01, 0.20 |
| Label | Label98 | ----------- |  |  |  | 7.99, 0.00, 0.56, 0.13 |
| TextBox | Text117 |  | =Sum([ASC]) |  |  | 6.89, 0.10, 0.65, 0.19 |
| Label | Label118 | ----------- |  |  |  | 6.98, 0.00, 0.56, 0.13 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label123 | Total For:  |  |  |  | 0.08, 0.11, 0.80, 0.18 |
| ComboBox | Combo130 |  | SOWING_ORDER | SELECT NMIS_SOWING_ORDER.SOWING_ORDER, "Sowing Group " & [SOWING_ORDER_CODE] AS SG FROM NMIS_SOWING_ORDER; |  | 0.90, 0.10, 2.42, 0.19 |
| TextBox | Text131 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 5.85, 0.11, 0.94, 0.19 |
| Label | Label132 | ----------- |  |  |  | 6.23, 0.00, 0.56, 0.13 |
| TextBox | Text133 |  | =Sum([Agreement_Est_Containers]) |  |  | 7.54, 0.10, 1.01, 0.20 |
| Label | Label134 | ----------- |  |  |  | 7.99, 0.00, 0.56, 0.13 |
| TextBox | Text135 |  | =Sum([ASC]) |  |  | 6.89, 0.10, 0.65, 0.19 |
| Label | Label136 | ----------- |  |  |  | 6.98, 0.00, 0.56, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.08, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.51, 0.08, 3.28, 0.18 |
| Line | Line30 |  |  |  |  | 0.00, 0.00, 10.30, 0.00 |
| TextBox | SowGroup |  | Pagefooter |  |  | 7.89, 0.00, 2.50, 0.26 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text109 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 5.73, 0.11, 1.06, 0.20 |
| Label | Label110 | Grand Total :  |  |  |  | 0.00, 0.10, 1.35, 0.20 |
| Label | Label112 | ----------- |  |  |  | 6.23, 0.00, 0.56, 0.13 |
| TextBox | Text113 |  | =Sum([Agreement_Est_Containers]) |  |  | 7.54, 0.10, 1.01, 0.20 |
| Label | Label114 | ----------- |  |  |  | 7.99, 0.00, 0.56, 0.13 |
| TextBox | Text119 |  | =Sum([ASC]) |  |  | 6.82, 0.11, 0.72, 0.20 |
| Label | Label120 | ----------- |  |  |  | 6.98, 0.01, 0.56, 0.13 |
