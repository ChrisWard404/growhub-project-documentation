# Report: transaction_Totals_by_location_Type_Agreement_Lot_TP

**Caption:** transaction_Totals_by_location_Type  
**Grouping/sorting:** `ACTIVITY_CODE`, `Age_Class`, `End_fy_and_season`, `SOURCE`, `AG_ID_SOURCE`, `UNIT_CODE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Total_Activity_Units_Label | Units |  |  |  | 5.49, 1.35, 0.36, 0.19 |
| Label | Net_Density_Label | Est. Net (M) |  |  |  | 7.31, 1.35, 0.72, 0.19 |
| Label | Gross_Density_Label | Gross (M) |  |  |  | 6.61, 1.35, 0.65, 0.19 |
| Line | Line26 |  |  |  |  | 0.58, 1.17, 9.36, 0.00 |
| Line | Line27 |  |  |  |  | 0.58, 1.55, 9.39, 0.00 |
| Label | Label42 | Agreement Lot ID and Source |  |  |  | 0.67, 1.38, 2.09, 0.19 |
| Label | Label44 | Req (M) |  |  |  | 8.10, 1.35, 0.54, 0.19 |
| Label | Label49 | Dif (M) |  |  |  | 8.82, 1.35, 0.49, 0.19 |
| Label | Label55 | Ending Season |  |  |  | 4.65, 1.21, 0.51, 0.35 |
| Label | Label56 | Dif (%) |  |  |  | 9.38, 1.35, 0.50, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.97, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.75, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.75, 0.00, 3.24, 0.16 |
| Label | Label24 | Bareroot Transplant Transaction Totals By Location Type, Age Class and Agreement Lot |  |  |  | 1.67, 0.56, 7.42, 0.23 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, [Activity_Name] & " FY " & Forms!Switchboard!FY_For_Reports AS an FROM NMIS_ACTIVITY_CODES;  |  | 1.67, 0.83, 7.42, 0.29 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class_Condensed |  | Age_Class |  |  | 0.57, 0.02, 2.17, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.87, 0.00, 0.54, 0.19 |
| TextBox | Total_Activity_Units |  | SumOfTotal_Activity_Units |  |  | 5.20, 0.00, 0.62, 0.19 |
| TextBox | Net_Density |  | Net |  |  | 7.29, 0.00, 0.66, 0.19 |
| TextBox | Gross_Density |  | Gross |  |  | 6.53, 0.00, 0.73, 0.19 |
| TextBox | Text43 |  | AG_ID_SOURCE |  |  | 0.67, 0.00, 3.85, 0.19 |
| TextBox | Text45 |  | FirstOfTOTAL_REQUEST |  |  | 7.98, 0.00, 0.66, 0.19 |
| TextBox | Text50 |  | =[Net]-[FirstOfTOTAL_REQUEST] |  |  | 8.68, 0.00, 0.66, 0.19 |
| TextBox | End_fy_and_season |  | End_fy_and_season |  |  | 4.66, 0.00, 0.50, 0.19 |
| TextBox | Text57 |  | =(([Net]-[FirstOfTOTAL_REQUEST])/[FirstOfTOTAL_REQUEST])*100 |  |  | 9.36, 0.00, 0.52, 0.19 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 0.08, 0.03, 0.54, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text66 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 5.06, 0.10, 0.76, 0.19 |
| TextBox | Text67 |  | =Sum([Net]) |  |  | 7.29, 0.10, 0.66, 0.19 |
| TextBox | Text68 |  | =Sum([Gross]) |  |  | 6.51, 0.10, 0.75, 0.19 |
| Line | Line69 |  |  |  |  | 0.80, 0.32, 9.17, 0.00 |
| Line | Line70 |  |  |  |  | 5.28, 0.02, 0.54, 0.00 |
| Line | Line71 |  |  |  |  | 7.36, 0.02, 0.58, 0.00 |
| Line | Line72 |  |  |  |  | 6.55, 0.02, 0.71, 0.00 |
| TextBox | Text73 |  | =Sum([FirstOfTOTAL_REQUEST]) |  |  | 7.98, 0.10, 0.66, 0.19 |
| Line | Line74 |  |  |  |  | 8.05, 0.02, 0.58, 0.00 |
| TextBox | Text75 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 8.68, 0.10, 0.66, 0.19 |
| Line | Line76 |  |  |  |  | 8.75, 0.02, 0.58, 0.00 |
| TextBox | Text92 |  | Age_Class |  |  | 1.38, 0.10, 3.29, 0.19 |
| Label | Label93 | Totals For  |  |  |  | 0.75, 0.12, 0.62, 0.18 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text78 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 5.05, 0.10, 0.76, 0.19 |
| TextBox | Text79 |  | =Sum([Net]) |  |  | 7.28, 0.10, 0.66, 0.19 |
| TextBox | Text80 |  | =Sum([Gross]) |  |  | 6.50, 0.10, 0.75, 0.19 |
| Line | Line81 |  |  |  |  | 5.27, 0.02, 0.54, 0.00 |
| Line | Line82 |  |  |  |  | 7.35, 0.02, 0.58, 0.00 |
| Line | Line83 |  |  |  |  | 6.54, 0.02, 0.71, 0.00 |
| TextBox | Text84 |  | =Sum([FirstOfTOTAL_REQUEST]) |  |  | 7.97, 0.10, 0.66, 0.19 |
| Line | Line85 |  |  |  |  | 8.04, 0.02, 0.58, 0.00 |
| TextBox | Text86 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 8.67, 0.10, 0.66, 0.19 |
| Line | Line87 |  |  |  |  | 8.74, 0.02, 0.58, 0.00 |
| ComboBox | Combo89 |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, "Totals For " & [ACTIVITY_NAME] AS AN FROM NMIS_ACTIVITY_CODES;  |  | 0.75, 0.10, 4.21, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Now() |  |  | 0.53, 0.17, 3.50, 0.00 |
| TextBox | Text24 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.47, 0.17, 3.50, 0.00 |
| Line | Line96 |  |  |  |  | 0.80, 0.06, 9.17, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text36 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 5.06, 0.08, 0.76, 0.19 |
| TextBox | Text37 |  | =Sum([Net]) |  |  | 7.29, 0.08, 0.66, 0.19 |
| TextBox | Text38 |  | =Sum([Gross]) |  |  | 6.51, 0.08, 0.75, 0.19 |
| TextBox | Text48 |  | =Sum([firstOfTOTAL_REQUEST]) |  |  | 7.98, 0.08, 0.66, 0.19 |
| TextBox | Text53 |  | =Sum([Net]-[FirstOfTOTAL_REQUEST]) |  |  | 8.73, 0.08, 0.61, 0.19 |
| Line | Line61 |  |  |  |  | 5.21, 0.03, 0.61, 0.00 |
| Line | Line62 |  |  |  |  | 7.36, 0.03, 0.58, 0.00 |
| Line | Line63 |  |  |  |  | 6.55, 0.03, 0.71, 0.00 |
| Line | Line64 |  |  |  |  | 8.05, 0.03, 0.58, 0.00 |
| Line | Line65 |  |  |  |  | 8.75, 0.03, 0.58, 0.00 |
| Label | Label94 | Grand Totals |  |  |  | 0.83, 0.09, 1.79, 0.18 |
