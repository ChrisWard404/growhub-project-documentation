# Report: NMIS_PRODUCT_INVENTORY_CHECKLIST_by_Stocktype

**Grouping/sorting:** `BorC`, `AGE_STRING`, `END_FY`, `TorN`, `PLNTMSTR_SYMBOL`, `ID`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Client   Nursery ID |  |  |  | 0.64, 1.35, 1.14, 0.19 |
| Label | TOTAL_REQUEST_Label | Req Amt |  |  |  | 2.39, 1.35, 0.59, 0.19 |
| Label | GROSS_INV_Label | Gross |  |  |  | 3.66, 1.35, 0.44, 0.19 |
| Label | NET_INV_Label | Est. Net |  |  |  | 4.12, 1.35, 0.56, 0.19 |
| Label | SAMPLES_Label | Plots |  |  |  | 6.35, 1.35, 0.33, 0.19 |
| Label | Label23 | Species |  |  |  | 0.04, 1.35, 0.49, 0.19 |
| Label | Label26 | Req Calc |  |  |  | 3.01, 1.35, 0.57, 0.19 |
| Label | Label27 | Cont. |  |  |  | 5.36, 1.35, 0.45, 0.19 |
| Label | Label35 | Density |  |  |  | 5.81, 1.35, 0.50, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.76, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.54, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.54, 0.00, 3.24, 0.16 |
| Label | Label24 | Product Inventory Daily Checklist by Stocktype |  |  |  | 3.61, 0.55, 3.11, 0.19 |
| Label | Label49 | Cell Gross |  |  |  | 5.81, 1.01, 0.50, 0.34 |
| Label | Label55 | Type |  |  |  | 6.71, 1.35, 0.30, 0.19 |
| Label | Label57 | Inv |  |  |  | 6.74, 1.17, 0.26, 0.19 |
| Label | Label58 | Grow |  |  |  | 5.36, 1.17, 0.45, 0.19 |
| Line | Line62 |  |  |  |  | 0.00, 1.55, 10.35, 0.00 |
| Label | Label63 | Date |  |  |  | 7.50, 1.35, 0.33, 0.17 |
| Label | Label64 | Inv |  |  |  | 7.57, 1.17, 0.26, 0.19 |
| Label | Label65 | Notes |  |  |  | 7.96, 1.35, 0.39, 0.17 |
| ComboBox | CATEGORY_CODE |  | BorC | B;Bareroot Plant;C;Container Plant |  | 3.54, 0.73, 3.29, 0.26 |
| Label | Label66 | Location(s) |  |  |  | 9.30, 1.35, 0.73, 0.18 |
| Label | Label69 | Spec |  |  |  | 4.97, 1.35, 0.33, 0.19 |
| Label | Label70 | % at |  |  |  | 4.99, 1.03, 0.29, 0.32 |
| Label | CV Label | CV |  |  |  | 7.03, 1.35, 0.35, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGE_STRING |  | AGE_STRING |  |  | 0.00, 0.00, 3.50, 0.23 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | END_FY | End FY: | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.62, 0.01, 1.62, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TorN |  | TorN |  |  | 0.00, 0.00, 2.42, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TARGET_FACTOR |  | TARGET_FACTOR |  |  | 4.94, 0.01, 0.39, 0.18 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 9.24, 0.00, 1.14, 0.19 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 7.43, 0.01, 0.55, 0.18 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 6.70, 0.01, 0.34, 0.18 |
| TextBox | Thin |  | Thin |  |  | 6.22, 0.01, 0.19, 0.00 |
| TextBox | Shortage |  | Shortage |  |  | 4.72, 0.01, 0.20, 0.00 |
| TextBox | Density |  | Density |  |  | 5.79, 0.01, 0.42, 0.18 |
| TextBox | Lot_Total_Request |  | Lot_Total_Request |  |  | 2.44, 0.01, 0.53, 0.18 |
| TextBox | ID |  | ID |  |  | 1.23, 0.01, 1.20, 0.18 |
| TextBox | Major_Client |  | Major_Client |  |  | 0.68, 0.01, 0.52, 0.16 |
| TextBox | Lot_Total_Ft |  | Lot_Total_Ft |  |  | 5.36, 0.01, 0.42, 0.18 |
| TextBox | Actual_Sow_Calculated Query.TOTAL_REQUEST |  | Actual_Sow_Calculated |  |  | 3.00, 0.01, 0.56, 0.18 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 0.00, 0.01, 0.67, 0.16 |
| TextBox | NOTE |  | NOTE |  |  | 7.96, 0.01, 1.26, 0.17 |
| TextBox | SAMPLES |  | Total_Samples |  |  | 6.42, 0.01, 0.26, 0.18 |
| TextBox | NET_INV |  | NET_INV |  |  | 4.16, 0.01, 0.54, 0.18 |
| TextBox | GROSS_INV |  | GROSS_INV |  |  | 3.58, 0.01, 0.55, 0.18 |
| TextBox | CV |  | CV |  |  | 7.03, 0.02, 0.40, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text37 |  | =Sum([Total_Samples]) |  |  | 6.23, 0.00, 0.46, 0.19 |
| TextBox | Text40 | Total Plots for : | AGE_STRING |  |  | 4.23, 0.00, 1.88, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text52 | Total Plots for : | BorC | B;Bareroot Plant;C;Container Plant |  | 4.22, 0.00, 1.88, 0.19 |
| TextBox | Text51 |  | =Sum([Total_Samples]) |  |  | 6.23, 0.00, 0.46, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.04, 0.02, 2.00, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 8.84, 0.02, 1.51, 0.00 |
| Line | Line16 |  |  |  |  | 0.01, 0.02, 10.35, 0.00 |
| Label | Label48 |  Est. Net Shortage |  |  |  | 2.27, 0.01, 1.01, 0.18 |
| Label | Label56 | Inv Type: C = Count Only    S = Count and Size |  |  |  | 4.43, 0.01, 2.71, 0.17 |
| Label | Label60 | k |  |  |  | 3.40, 0.01, 0.20, 0.21 |
| Label | Label61 |  High Density |  |  |  | 3.57, 0.01, 0.78, 0.18 |
| Label | Label59 | j |  |  |  | 2.04, 0.01, 0.20, 0.21 |
| Label | Label68 |  CV = Coefficent of Variation |  |  |  | 7.17, 0.01, 1.66, 0.18 |
