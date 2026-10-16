# Report: transaction_Totals_by_location_Type_Agreement_Lot

**Grouping/sorting:** `LOCATION_TYPE`, `Cost_Center`, `End_fy_and_season`, `ID`, `UNIT_CODE`  
**Opened from (VBA):** `Form_Transaction_Totals_By_Location`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 3.49, 1.22, 0.35, 0.35 |
| Label | Total_Activity_Units_Label | Units |  |  |  | 3.08, 1.36, 0.36, 0.19 |
| Label | Net_Density_Label | Est. Net (M) |  |  |  | 4.75, 1.22, 0.58, 0.33 |
| Label | Gross_Density_Label | Gross (M) |  |  |  | 4.10, 1.22, 0.51, 0.34 |
| Line | Line26 |  |  |  |  | 0.06, 1.18, 7.89, 0.00 |
| Line | Line27 |  |  |  |  | 0.06, 1.56, 7.89, 0.00 |
| Label | Label42 | Agreement Lot ID |  |  |  | 0.09, 1.22, 0.70, 0.33 |
| Label | Label44 | Req (M) |  |  |  | 5.51, 1.22, 0.47, 0.34 |
| Label | Label49 | Dif (M) |  |  |  | 6.35, 1.22, 0.39, 0.34 |
| Label | Label55 | Ending Season |  |  |  | 1.48, 1.22, 0.51, 0.35 |
| Label | Label56 | Dif (%) |  |  |  | 6.88, 1.22, 0.43, 0.34 |
| Label | Label66 | Firm Order (M) |  |  |  | 7.34, 1.22, 0.64, 0.34 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.42, 0.00, 3.24, 0.16 |
| Label | Label24 | Plant Production Transaction Totals by Location Type and Agreement Lot |  |  |  | 1.08, 0.56, 5.91, 0.23 |
| TextBox | LOCATION_TYPE |  | LT2 |  |  | 1.85, 0.85, 4.33, 0.26 |
| Label | Label88 | Location |  |  |  | 2.06, 1.36, 0.59, 0.19 |
| TextBox | Text130 |  | ="Selected for Begin Location Like: " & [Forms]![Transaction_Totals_By_Location]![LikeLocation] |  |  | 0.00, 0.16, 3.00, 0.20 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Cost_Center |  | Cost_Center | B;Bareroot;C;Container;N;Native Propagule |  | 0.07, 0.00, 2.03, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.50, 0.00, 0.49, 0.19 |
| TextBox | Total_Activity_Units |  | SumOfTotal_Activity_Units |  |  | 2.91, 0.00, 0.58, 0.19 |
| TextBox | Net_Density |  | Net |  |  | 4.61, 0.00, 0.66, 0.19 |
| TextBox | Gross_Density |  | Gross |  |  | 4.00, 0.00, 0.62, 0.19 |
| TextBox | Text43 |  | ID |  |  | 0.08, 0.00, 1.44, 0.19 |
| TextBox | Text45 |  | FirstOfTOTAL_REQUEST |  |  | 5.25, 0.00, 0.74, 0.19 |
| TextBox | Text50 |  | =[Net]-[FirstOfTOTAL_REQUEST] |  |  | 6.08, 0.00, 0.77, 0.19 |
| TextBox | End_fy_and_season |  | End_fy_and_season |  |  | 1.55, 0.00, 0.44, 0.19 |
| TextBox | Text57 |  | =(([Net]-[FirstOfTOTAL_REQUEST])/[FirstOfTOTAL_REQUEST])*100 |  |  | 6.88, 0.00, 0.44, 0.19 |
| TextBox | Text67 |  | Firm_Order |  |  | 7.30, 0.00, 0.66, 0.19 |
| TextBox | LOCATION |  | LOCATION |  |  | 2.00, 0.00, 0.91, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text28 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 2.73, 0.12, 0.76, 0.19 |
| TextBox | Text29 |  | =Sum([Net]) |  |  | 4.61, 0.12, 0.66, 0.19 |
| TextBox | Text30 |  | =Sum([Gross]) |  |  | 3.86, 0.12, 0.75, 0.19 |
| Line | Line32 |  |  |  |  | 2.95, 0.04, 0.54, 0.00 |
| Line | Line33 |  |  |  |  | 4.69, 0.04, 0.58, 0.00 |
| Line | Line34 |  |  |  |  | 3.91, 0.04, 0.71, 0.00 |
| TextBox | Text46 |  | =Sum([FirstOfTOTAL_REQUEST]) |  |  | 5.25, 0.12, 0.74, 0.19 |
| Line | Line47 |  |  |  |  | 5.33, 0.04, 0.67, 0.00 |
| TextBox | Text51 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 6.04, 0.12, 0.81, 0.19 |
| Line | Line52 |  |  |  |  | 6.20, 0.04, 0.66, 0.00 |
| TextBox | Text68 |  | =Sum([Firm_Order]) |  |  | 7.04, 0.12, 0.92, 0.19 |
| Line | Line69 |  |  |  |  | 7.38, 0.04, 0.58, 0.00 |
| Line | Line72 |  |  |  |  | 0.62, 0.33, 7.33, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Now() |  |  | 0.45, 0.17, 3.50, 0.00 |
| TextBox | Text24 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.45, 0.17, 3.50, 0.00 |
