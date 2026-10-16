# Report: Native_Seed_Harvest_Summary

**Caption:** Packaging Summary  
**Grouping/sorting:** `Client`, `Contact`, `Plntmstr_symbol`, `Sort`, `Source_Location`, `Bed_Start`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Native_Seed_Harvest_Summary`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label26 | Native Propagule Harvest Summary |  |  |  | 2.69, 0.55, 3.24, 0.23 |
| Label | Plntmstr_symbol_Label | Lot ID |  |  |  | 1.31, 1.16, 0.53, 0.18 |
| Label | Source_Location_Label | Source |  |  |  | 3.15, 1.16, 0.48, 0.18 |
| Label | Bed_Start_Label | Start Bed |  |  |  | 4.90, 1.16, 0.60, 0.18 |
| Label | Bed_End_Label | End Bed |  |  |  | 5.57, 1.16, 0.55, 0.18 |
| Label | Weight_Label | Weight |  |  |  | 6.24, 1.16, 0.47, 0.18 |
| Label | No_of_Boxes_Label | Units    Code |  |  |  | 7.02, 1.16, 0.78, 0.18 |
| Line | Line31 |  |  |  |  | 0.39, 1.34, 7.54, 0.00 |
| TextBox | year |  | [year2] |  |  | 2.47, 0.78, 3.62, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.68, 0.16, 3.25, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.68, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.68, 0.00, 3.25, 0.16 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text28 |  | ClientName | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.04, 0.08, 7.43, 0.26 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Plntmstr_symbol |  | ID |  |  | 1.30, 0.00, 0.55, 0.21 |
| TextBox | Source_Location |  | Source_Location |  |  | 1.86, 0.00, 3.12, 0.21 |
| TextBox | Bed_Start |  | Bed_Start |  |  | 4.98, 0.01, 0.53, 0.20 |
| TextBox | Bed_End |  | Bed_End |  |  | 5.54, 0.00, 0.52, 0.21 |
| TextBox | Text29 |  | =Sum([Weight]) |  |  | 6.08, 0.00, 0.62, 0.21 |
| TextBox | Text30 |  | =Sum([No_Of_Boxes]) |  |  | 6.82, 0.00, 0.53, 0.21 |
| TextBox | Unit_Code |  | UNIT_CODE |  |  | 7.40, 0.00, 0.56, 0.21 |
| TextBox | Contact |  | Contact |  |  | 0.00, 0.00, 1.30, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([Weight]) |  |  | 5.88, 0.05, 0.83, 0.21 |
| TextBox | Text39 |  | =Sum([No_of_Boxes]) |  |  | 6.82, 0.05, 0.53, 0.21 |
| Line | Line40 |  |  |  |  | 6.15, 0.02, 0.54, 0.00 |
| Line | Line41 |  |  |  |  | 6.81, 0.02, 0.54, 0.00 |
| Line | Line47 |  |  |  |  | 0.39, 0.29, 7.54, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.07, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.37, 0.17, 3.55, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text42 |  | =Sum([Weight]) |  |  | 5.88, 0.03, 0.83, 0.21 |
| TextBox | Text43 |  | =Sum([No_of_Boxes]) |  |  | 6.82, 0.03, 0.53, 0.21 |
| Line | Line44 |  |  |  |  | 6.16, 0.00, 0.54, 0.00 |
| Line | Line45 |  |  |  |  | 6.81, 0.00, 0.54, 0.00 |
| Label | Label46 | Grand Total: |  |  |  | 4.29, 0.03, 1.12, 0.21 |
