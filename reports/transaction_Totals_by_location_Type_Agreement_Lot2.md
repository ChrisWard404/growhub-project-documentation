# Report: transaction_Totals_by_location_Type_Agreement_Lot2

**Grouping/sorting:** `LOCATION_TYPE`, `Category`, `Age_Class`, `End_fy_and_season`, `PLNTMSTR_SYMBOL`, `SOURCE`, `AG_ID_SOURCE`, `UNIT_CODE`  
**Opened from (VBA):** `Form_Transaction_Totals_By_Location`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Total_Activity_Units_Label | Units |  |  |  | 4.96, 1.38, 0.36, 0.19 |
| Label | Net_Density_Label | Est. Net (M) |  |  |  | 6.80, 1.39, 0.72, 0.19 |
| Label | Gross_Density_Label | Gross (M) |  |  |  | 6.08, 1.38, 0.65, 0.19 |
| Line | Line26 |  |  |  |  | 0.01, 1.20, 9.96, 0.00 |
| Line | Line27 |  |  |  |  | 0.00, 1.58, 9.96, 0.00 |
| Label | Label42 | Agreement Lot ID and Source |  |  |  | 0.14, 1.41, 2.09, 0.19 |
| Label | Label44 | Req (M) |  |  |  | 7.56, 1.38, 0.54, 0.19 |
| Label | Label49 | Dif (M) |  |  |  | 8.28, 1.39, 0.49, 0.19 |
| Label | Label55 | Ending Season |  |  |  | 4.12, 1.24, 0.51, 0.35 |
| Label | Label56 | Dif (%) |  |  |  | 8.85, 1.38, 0.50, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.39, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.17, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.17, 0.00, 3.24, 0.16 |
| Label | Label24 | Plant Production Transaction Totals By Location Type, Age Class and Agreement Lot |  |  |  | 1.48, 0.56, 6.78, 0.23 |
| TextBox | LOCATION_TYPE |  | LT2 |  |  | 1.47, 0.85, 6.81, 0.26 |
| Label | Label66 | Firm Order (M) |  |  |  | 9.32, 1.22, 0.64, 0.34 |
| TextBox | Text130 |  | ="Selected for Begin Location Like: " & [Forms]![Transaction_Totals_By_Location]![LikeLocation] |  |  | 0.04, 0.16, 3.00, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class_Condensed |  | Age_Class |  |  | 0.04, 0.01, 2.17, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.34, 0.00, 0.54, 0.19 |
| TextBox | Total_Activity_Units |  | SumOfTotal_Activity_Units |  |  | 4.64, 0.00, 0.70, 0.19 |
| TextBox | Net_Density |  | Net |  |  | 6.76, 0.00, 0.66, 0.19 |
| TextBox | Gross_Density |  | Gross |  |  | 6.00, 0.00, 0.73, 0.19 |
| TextBox | Text43 |  | AG_ID_SOURCE |  |  | 0.14, 0.00, 3.85, 0.19 |
| TextBox | Text45 |  | FirstOfTOTAL_REQUEST |  |  | 7.45, 0.00, 0.66, 0.19 |
| TextBox | Text50 |  | =[Net]-[FirstOfTOTAL_REQUEST] |  |  | 8.15, 0.00, 0.66, 0.19 |
| TextBox | End_fy_and_season |  | End_fy_and_season |  |  | 4.13, 0.00, 0.50, 0.19 |
| TextBox | Text57 |  | =(([Net]-[FirstOfTOTAL_REQUEST])/[FirstOfTOTAL_REQUEST])*100 |  |  | 8.83, 0.00, 0.52, 0.19 |
| TextBox | Text79 |  | Firm_Order |  |  | 9.29, 0.00, 0.66, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text66 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 4.58, 0.03, 0.76, 0.19 |
| TextBox | Text67 |  | =Sum([Net]) |  |  | 6.76, 0.03, 0.66, 0.19 |
| TextBox | Text68 |  | =Sum([Gross]) |  |  | 5.98, 0.03, 0.75, 0.19 |
| Line | Line69 |  |  |  |  | 0.00, 0.24, 9.98, 0.00 |
| Line | Line70 |  |  |  |  | 4.79, 0.00, 0.54, 0.00 |
| Line | Line71 |  |  |  |  | 6.83, 0.00, 0.58, 0.00 |
| Line | Line72 |  |  |  |  | 6.02, 0.00, 0.71, 0.00 |
| TextBox | Text73 |  | =Sum([FirstOfTOTAL_REQUEST]) |  |  | 7.45, 0.03, 0.66, 0.19 |
| Line | Line74 |  |  |  |  | 7.52, 0.00, 0.58, 0.00 |
| TextBox | Text75 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 8.10, 0.03, 0.71, 0.19 |
| Line | Line76 |  |  |  |  | 8.21, 0.00, 0.59, 0.00 |
| TextBox | Text80 |  | =Sum([Firm_Order]) |  |  | 9.03, 0.03, 0.92, 0.19 |
| Line | Line87 |  |  |  |  | 9.34, 0.00, 0.59, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text28 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 4.58, 0.05, 0.76, 0.19 |
| TextBox | Text29 |  | =Sum([Net]) |  |  | 6.76, 0.05, 0.66, 0.19 |
| TextBox | Text30 |  | =Sum([Gross]) |  |  | 5.98, 0.05, 0.75, 0.19 |
| Line | Line31 |  |  |  |  | 0.00, 0.27, 9.98, 0.00 |
| Line | Line32 |  |  |  |  | 4.79, 0.02, 0.54, 0.00 |
| Line | Line33 |  |  |  |  | 6.83, 0.02, 0.58, 0.00 |
| Line | Line34 |  |  |  |  | 6.02, 0.02, 0.71, 0.00 |
| TextBox | Text46 |  | =Sum([FirstOfTOTAL_REQUEST]) |  |  | 7.45, 0.05, 0.66, 0.19 |
| Line | Line47 |  |  |  |  | 7.52, 0.02, 0.58, 0.00 |
| TextBox | Text51 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 8.10, 0.05, 0.71, 0.19 |
| TextBox | Text81 |  | =Sum([Firm_Order]) |  |  | 9.03, 0.05, 0.92, 0.19 |
| Line | Line88 |  |  |  |  | 8.21, 0.02, 0.59, 0.00 |
| Line | Line89 |  |  |  |  | 9.36, 0.02, 0.59, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Now() |  |  | 0.00, 0.01, 3.50, 0.00 |
| TextBox | Text24 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.45, 0.01, 3.50, 0.00 |
