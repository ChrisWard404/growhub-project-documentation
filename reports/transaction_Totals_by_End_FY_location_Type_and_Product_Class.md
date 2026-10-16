# Report: transaction_Totals_by_End_FY_location_Type_and_Product_Class

**Grouping/sorting:** `End_fy_and_season`, `LOCATION_TYPE`, `Age_Class`, `AG_ID_SOURCE`, `UNIT_CODE`  
**Backend tables referenced:** `NMIS_LOCATION_TYPES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.86, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.65, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.65, 0.00, 3.24, 0.16 |
| Label | Label24 | Totals By End FY, Location Type and Product |  |  |  | 2.12, 0.58, 4.25, 0.23 |
| TextBox | End_fy_and_season | End FY and Season: | End_fy_and_season |  |  | 4.74, 0.83, 0.78, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Net_Density_Label | Est. Net (M) |  |  |  | 5.14, 0.35, 0.82, 0.19 |
| Label | Gross_Density_Label | Gross (M) |  |  |  | 4.42, 0.34, 0.65, 0.19 |
| Line | Line26 |  |  |  |  | 0.21, 0.05, 7.74, 0.00 |
| Label | Label44 | Req (M) |  |  |  | 6.01, 0.34, 0.66, 0.19 |
| Label | Label49 | Dif (M) |  |  |  | 6.83, 0.34, 0.55, 0.19 |
| Label | Label83 | Units |  |  |  | 3.27, 0.33, 0.66, 0.19 |
| ComboBox | LOCATION_TYPE |  | LT2 | SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES; |  | 0.24, 0.08, 6.81, 0.26 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text66 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 2.77, 0.04, 0.76, 0.19 |
| TextBox | Text67 |  | =Sum([Net]) |  |  | 5.09, 0.04, 0.76, 0.19 |
| TextBox | Text68 |  | =Sum([Gross]) |  |  | 4.31, 0.04, 0.75, 0.19 |
| TextBox | Text73 |  | =Sum([FirstOfTOTAL_REQUEST]) |  |  | 5.89, 0.04, 0.77, 0.19 |
| TextBox | Text75 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 6.69, 0.04, 0.72, 0.19 |
| TextBox | Age_Class_Condensed |  | Age_Class |  |  | 0.26, 0.00, 2.17, 0.23 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.53, 0.04, 0.67, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text28 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 2.77, 0.06, 0.76, 0.19 |
| TextBox | Text29 |  | =Sum([Net]) |  |  | 5.09, 0.06, 0.76, 0.19 |
| TextBox | Text30 |  | =Sum([Gross]) |  |  | 4.31, 0.06, 0.75, 0.19 |
| Line | Line32 |  |  |  |  | 3.08, 0.04, 0.54, 0.00 |
| Line | Line33 |  |  |  |  | 5.16, 0.04, 0.69, 0.00 |
| Line | Line34 |  |  |  |  | 4.35, 0.04, 0.71, 0.00 |
| TextBox | Text46 |  | =Sum([FirstOfTOTAL_REQUEST]) |  |  | 5.89, 0.06, 0.77, 0.19 |
| Line | Line47 |  |  |  |  | 5.96, 0.04, 0.70, 0.00 |
| TextBox | Text51 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 6.69, 0.06, 0.72, 0.19 |
| Line | Line52 |  |  |  |  | 6.76, 0.04, 0.65, 0.00 |
| TextBox | Text81 |  | ="Total For " & [LT2] |  |  | 0.35, 0.02, 2.32, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Now() |  |  | 0.21, 0.03, 3.50, 0.00 |
| TextBox | Text24 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.03, 3.50, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text37 |  | =Sum([Net]) |  |  | 5.09, 0.08, 0.76, 0.19 |
| TextBox | Text38 |  | =Sum([Gross]) |  |  | 4.31, 0.08, 0.75, 0.19 |
| TextBox | Text48 |  | =Sum([firstOfTOTAL_REQUEST]) |  |  | 5.89, 0.08, 0.77, 0.19 |
| TextBox | Text53 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 6.74, 0.08, 0.67, 0.19 |
| Line | Line62 |  |  |  |  | 5.16, 0.03, 0.69, 0.00 |
| Line | Line63 |  |  |  |  | 4.35, 0.03, 0.71, 0.00 |
| Line | Line64 |  |  |  |  | 5.96, 0.03, 0.70, 0.00 |
| Line | Line65 |  |  |  |  | 6.76, 0.03, 0.65, 0.00 |
