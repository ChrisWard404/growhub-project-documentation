# Report: NMIS_SPLUS_LIST_FS

**Grouping/sorting:** `REGFOR`, `SPECIES_AGE`, `SOURCE_CODE`, `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Item No. |  |  |  | 0.04, 1.10, 0.36, 0.34 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.38, 1.25, 2.00, 0.20 |
| Label | ZONE_Label | Seed Source Zone |  |  |  | 5.50, 0.94, 0.53, 0.51 |
| Label | ORIGIN_ELEVATION_Label | Seed Elev. |  |  |  | 6.12, 1.08, 0.50, 0.36 |
| Label | SURPLUS_AMT_Label | Quantity Available (M) |  |  |  | 6.83, 0.96, 0.62, 0.49 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.00, 0.38, 3.54, 0.21 |
| Label | Label34 | Seedling Surplus List |  |  |  | 2.71, 0.58, 2.00, 0.20 |
| TextBox | FISCAL_YEAR | Fiscal Year: | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 4.00, 0.79, 0.38, 0.00 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.54, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.42, 0.17, 2.78, 0.20 |
| Line | Line42 |  |  |  |  | 0.04, 1.45, 7.46, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | REGFOR |  | REGFOR |  |  | 0.00, 0.04, 2.96, 0.21 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_AGE |  | SPECIES_AGE |  |  | 0.04, 0.00, 3.92, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.04, 0.00, 1.26, 0.00 |
| TextBox | SOURCE_CODE |  | ID_SOURCE2 |  |  | 1.34, 0.00, 3.92, 0.00 |
| TextBox | ZONE |  | ZONE |  |  | 5.41, 0.00, 0.66, 0.00 |
| TextBox | ORIGIN_ELEVATION |  | ELEV |  |  | 6.12, 0.00, 0.50, 0.00 |
| TextBox | SURPLUS_AMT |  | SURPLUS_AMT |  |  | 6.67, 0.00, 0.79, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Sum([SURPLUS_AMT]) |  |  | 6.38, 0.04, 1.08, 0.19 |
| Line | Line40 |  |  |  |  | 6.67, 0.04, 0.79, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label37 | Lots with Surplus of 0.025M or more |  |  |  | 2.88, 0.02, 2.41, 0.18 |
| Line | Line41 |  |  |  |  | 0.00, 0.00, 7.50, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.50, 0.02, 0.00, 0.21 |
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.02, 0.00, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text37 |  | =Sum([SURPLUS_AMT]) |  |  | 6.38, 0.03, 1.08, 0.19 |
| Line | Line38 |  |  |  |  | 6.67, 0.03, 0.79, 0.00 |
