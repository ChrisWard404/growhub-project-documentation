# Report: NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST

**Grouping/sorting:** `ACTIVITY_DATE`, `BorC`, `AGE_STRING`, `END_FY`, `PLNTMSTR_SYMBOL`, `ID`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport`  
**Opened from (VBA):** `Form_Product_Inventory_Daily_Checklist`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Client   Nursery ID |  |  |  | 0.74, 1.17, 1.14, 0.19 |
| Label | TOTAL_REQUEST_Label | Req Amt |  |  |  | 2.52, 1.17, 0.59, 0.19 |
| Label | GROSS_INV_Label | Gross |  |  |  | 3.83, 1.17, 0.41, 0.19 |
| Label | NET_INV_Label | Est. Net |  |  |  | 4.22, 1.17, 0.53, 0.19 |
| Label | SAMPLES_Label | Plots |  |  |  | 6.05, 1.17, 0.35, 0.19 |
| Label | Label23 | Species |  |  |  | 0.04, 1.17, 0.49, 0.19 |
| Label | Label26 | Req Calc |  |  |  | 3.12, 1.17, 0.60, 0.19 |
| Label | Label27 | Containers |  |  |  | 4.77, 1.17, 0.71, 0.19 |
| Label | Label35 | Density |  |  |  | 5.56, 1.17, 0.50, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.76, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.54, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.54, 0.00, 3.24, 0.16 |
| Label | Label24 | Product Inventory Daily Checklist |  |  |  | 4.05, 0.55, 2.25, 0.19 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 4.06, 0.76, 2.24, 0.19 |
| Label | Label49 | Cell Gross |  |  |  | 5.48, 1.00, 0.68, 0.19 |
| Label | Label55 | Type |  |  |  | 6.43, 1.17, 0.35, 0.19 |
| Label | Label57 | Inv |  |  |  | 6.44, 1.00, 0.34, 0.19 |
| Label | Label58 | Grow |  |  |  | 4.76, 1.00, 0.76, 0.19 |
| Line | Line62 |  |  |  |  | 0.00, 1.35, 10.38, 0.00 |
| Label | Label63 | Notes |  |  |  | 7.19, 1.17, 0.39, 0.19 |
| Label | Label65 | Location(s) |  |  |  | 9.33, 1.17, 0.73, 0.19 |
| Label | CV Label | CV |  |  |  | 6.79, 1.17, 0.35, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | BorC | B;Bareroot Plant;C;Container Plant |  | 0.00, 0.00, 2.25, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGE_STRING |  | AGE_STRING |  |  | 0.00, 0.00, 4.38, 0.23 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | END_FY | End FY: | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.62, 0.00, 1.62, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GROSS_INV |  | GROSS_INV |  |  | 3.73, 0.02, 0.54, 0.18 |
| TextBox | NET_INV |  | NET_INV |  |  | 4.28, 0.02, 0.60, 0.18 |
| TextBox | SAMPLES |  | Total_Samples |  |  | 6.17, 0.02, 0.25, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 7.19, 0.02, 2.02, 0.17 |
| ComboBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 0.02, 0.02, 0.67, 0.18 |
| TextBox | Actual_Sow_Calculated Query.TOTAL_REQUEST |  | Actual_Sow_Calculated |  |  | 3.11, 0.02, 0.60, 0.18 |
| TextBox | Lot_Total_Ft |  | Lot_Total_Ft |  |  | 5.05, 0.02, 0.40, 0.18 |
| TextBox | Major_Client |  | Major_Client |  |  | 0.70, 0.02, 0.52, 0.18 |
| TextBox | ID |  | ID |  |  | 1.23, 0.02, 1.25, 0.18 |
| TextBox | Lot_Total_Request |  | Lot_Total_Request |  |  | 2.49, 0.02, 0.60, 0.18 |
| TextBox | Density |  | Density |  |  | 5.49, 0.02, 0.48, 0.00 |
| TextBox | Shortage |  | Shortage |  |  | 4.85, 0.02, 0.20, 0.00 |
| TextBox | Thin |  | Thin |  |  | 5.98, 0.02, 0.19, 0.00 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 6.47, 0.02, 0.34, 0.00 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 9.23, 0.00, 1.13, 0.20 |
| TextBox | CV |  | CV |  |  | 6.78, 0.02, 0.40, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text37 |  | =Sum([Total_Samples]) |  |  | 5.96, 0.02, 0.48, 0.19 |
| TextBox | Text40 | Total Plots for : | AGE_STRING |  |  | 4.10, 0.02, 1.88, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text51 |  | =Sum([Total_Samples]) |  |  | 5.96, 0.02, 0.48, 0.19 |
| ComboBox | Text52 | Total Plots for : | BorC | B;Bareroot Plant;C;Container Plant |  | 4.09, 0.02, 1.88, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Sum([Total_Samples]) |  |  | 5.96, 0.02, 0.48, 0.19 |
| TextBox | Text42 | Total Plots for : | ACTIVITY_DATE |  |  | 4.10, 0.02, 1.88, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.04, 0.02, 2.00, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 8.81, 0.02, 1.53, 0.00 |
| Line | Line16 |  |  |  |  | 0.04, 0.02, 10.31, 0.00 |
| Label | Label48 |  Est. Net Shortage |  |  |  | 2.23, 0.02, 1.01, 0.18 |
| Label | Label56 | Inv Type: C = Count Only    S = Count and Size |  |  |  | 4.39, 0.02, 2.71, 0.17 |
| Label | Label60 | k |  |  |  | 3.35, 0.02, 0.20, 0.21 |
| Label | Label61 |  High Density |  |  |  | 3.53, 0.02, 0.78, 0.18 |
| Label | Label59 | j |  |  |  | 2.00, 0.02, 0.20, 0.21 |
| Label | Label68 |  CV = Coefficent of Variation |  |  |  | 7.12, 0.02, 1.66, 0.18 |
