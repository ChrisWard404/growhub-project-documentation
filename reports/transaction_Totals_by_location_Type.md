# Report: transaction_Totals_by_location_Type

**Grouping/sorting:** `LOCATION_TYPE`, `UNIT_CODE`  
**Backend tables referenced:** `NMIS_LOCATION_TYPES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.69, 0.20, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.48, 0.39, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.48, 0.04, 3.24, 0.16 |
| Label | Label24 | Plant Production Transaction Totals by Location Type |  |  |  | 1.92, 0.60, 4.34, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_TYPE_Label | Location Type |  |  |  | 0.59, 0.04, 1.23, 0.19 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 2.81, 0.04, 0.96, 0.19 |
| Label | Total_Activity_Units_Label | Units |  |  |  | 4.38, 0.04, 0.36, 0.19 |
| Label | Net_Density_Label | Est. Net (M) |  |  |  | 5.69, 0.04, 0.72, 0.19 |
| Label | Gross_Density_Label | Gross (M) |  |  |  | 4.89, 0.04, 0.65, 0.19 |
| Line | Line26 |  |  |  |  | 0.58, 0.00, 7.19, 0.00 |
| Line | Line27 |  |  |  |  | 0.58, 0.28, 7.19, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 2.95, 0.00, 0.93, 0.19 |
| TextBox | Total_Activity_Units |  | SumOfTotal_Activity_Units |  |  | 3.92, 0.00, 0.80, 0.19 |
| TextBox | Net_Density |  | Net |  |  | 5.66, 0.00, 0.66, 0.19 |
| ComboBox | Combo54 |  | LOCATION_TYPE | SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES; |  | 0.58, 0.00, 2.34, 0.23 |
| TextBox | Gross_Density |  | Gross |  |  | 4.81, 0.00, 0.73, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text28 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 3.83, 0.12, 0.88, 0.19 |
| TextBox | Text29 |  | =Sum([Net]) |  |  | 5.66, 0.12, 0.66, 0.19 |
| TextBox | Text30 |  | =Sum([Gross]) |  |  | 4.79, 0.12, 0.75, 0.19 |
| Line | Line31 |  |  |  |  | 0.80, 0.36, 6.97, 0.00 |
| Line | Line32 |  |  |  |  | 4.17, 0.04, 0.54, 0.00 |
| Line | Line33 |  |  |  |  | 5.73, 0.04, 0.58, 0.00 |
| Line | Line34 |  |  |  |  | 4.83, 0.04, 0.71, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Now() |  |  | 0.53, 0.17, 3.50, 0.00 |
| TextBox | Text24 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.18, 0.17, 3.50, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text37 |  | =Sum([Net]) |  |  | 5.66, 0.08, 0.66, 0.19 |
| TextBox | Text38 |  | =Sum([Gross]) |  |  | 4.77, 0.08, 0.75, 0.19 |
| Line | Line39 |  |  |  |  | 4.06, 0.00, 0.54, 0.00 |
| Line | Line40 |  |  |  |  | 4.77, 0.00, 0.58, 0.00 |
| Line | Line41 |  |  |  |  | 5.60, 0.00, 0.71, 0.00 |
