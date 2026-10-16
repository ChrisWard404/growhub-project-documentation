# Report: Copy of Field_Form_Propagule_Condensed_by_Client_species_loc

**Caption:** Field Form  
**Grouping/sorting:** `Major_Client`, `SOURCE`, `MinOfLOCATION`, `SUBLOT_NO`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Field Form for Plants Grown For Propagule Production by Client. Species and Location |  |  |  | 0.50, 0.62, 6.82, 0.23 |
| Label | Label24 | Observation Dates ________________________ |  |  |  | 4.67, 1.00, 3.12, 0.21 |
| Label | Label25 | Observers________________________________ |  |  |  | 4.68, 1.21, 3.12, 0.21 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.23, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.37, 0.00, 3.24, 0.16 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 0.16, 0.21, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 1.77, 0.21, 0.41, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 3.38, 0.04, 0.33, 0.38 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 4.58, 0.04, 0.41, 0.38 |
| Label | Bed_Start_Label | Field: |  |  |  | 4.11, 0.04, 0.30, 0.20 |
| Line | Line21 |  |  |  |  | 0.08, 0.45, 7.85, 0.00 |
| Label | Label26 | From..... .....To |  |  |  | 3.85, 0.22, 0.72, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.60, 0.21, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.12, 0.00, 7.81, 0.00 |
| Label | Label39 |     Acres |  |  |  | 5.08, 0.04, 0.35, 0.38 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 0.07, 0.00, 0.46, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.15, 0.00, 2.13, 0.18 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 3.30, 0.00, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 4.58, 0.00, 0.41, 0.18 |
| TextBox | Bed_Start |  | MinOfLOCATION |  |  | 3.84, 0.00, 0.39, 0.18 |
| TextBox | Bed_End |  | MaxOfLOCATION |  |  | 4.23, 0.00, 0.41, 0.18 |
| TextBox | CN |  | ID |  |  | 0.54, 0.00, 0.47, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.00, 0.00, 0.15, 0.18 |
| TextBox | Acres |  | =Round([SumOfTotal_Activity_Units]/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N],3) |  |  | 5.04, 0.00, 0.40, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line42 |  |  |  |  | 0.08, 0.43, 7.85, 0.00 |
| Line | Line43 |  |  |  |  | 0.08, 0.45, 7.85, 0.00 |
| TextBox | Text46 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 4.04, 0.01, 0.95, 0.18 |
| ComboBox | Text44 |  | Major_Client | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " - " & [ASSOCIATE_NAME] & " Totals" AS Assoc FROM NMIS_ASSOCIATES; |  | 0.07, 0.01, 3.22, 0.18 |
| TextBox | Text41 |  | =Sum(([SumOfTotal_Activity_Units])/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N]) |  |  | 5.00, 0.01, 0.44, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.19, 0.05, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.12, 0.03, 7.81, 0.00 |
