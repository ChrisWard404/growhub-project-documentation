# Report: Propagule_Harvest_Priorities

**Caption:** NMIS_TOLIFT  
**Grouping/sorting:** `HARVEST_METHOD`, `SORT`, `ID`  
**Subforms/subreports:** `Report.Propagule_Harvest_Priorities_Subform`  
**Opened from (VBA):** `Form_Propagule_Harvest_Priorties`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.61, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| TextBox | Text68 |  | ="Planned Harvest for  " & [Forms]![Propagule_Harvest_Priorties]![Harvest_Date] |  |  | 2.42, 0.58, 3.25, 0.21 |
| Label | Label105 | Unless approved by the nursery manager, the lots should be harvested in the order listed. These lots are confirmed for harvest. Additional lots could be added the day of harvest based on new information. |  |  |  | 0.00, 0.94, 7.41, 0.43 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text75 |  | HARVEST_METHOD | DC;"Direct Combine";PC;"Pickup Combine";SW;"Swather";SC;"Swath & Catch";HD;"Hand";ST;"Stripper";BA;Bale;MO;"Mow";SP;"Spray" |  | 0.00, 0.03, 2.95, 0.29 |
| Line | Line56 |  |  |  |  | 0.00, 0.00, 7.66, 0.00 |
| Label | Label51 | Priority |  |  |  | 0.00, 0.33, 0.68, 0.23 |
| Line | Line103 |  |  |  |  | 0.00, 0.58, 7.66, 0.00 |
| Label | Label37 | Client |  |  |  | 2.11, 0.36, 0.44, 0.20 |
| Label | Label38 | Source |  |  |  | 3.14, 0.36, 0.52, 0.20 |
| Label | Label39 | Sown |  |  |  | 4.82, 0.36, 0.42, 0.20 |
| Label | Label40 | Feet |  |  |  | 5.34, 0.36, 0.33, 0.20 |
| Label | Label42 | From... ...To |  |  |  | 5.78, 0.40, 0.69, 0.17 |
| Label | Label107 | Lot ID |  |  |  | 0.75, 0.33, 0.79, 0.23 |
| Label | Label108 | Total Feet |  |  |  | 7.26, 0.21, 0.41, 0.35 |
| Label | Label109 | No. of Beds |  |  |  | 6.58, 0.21, 0.51, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Species/Age Class |  | NOTE |  |  | 2.17, 0.17, 5.50, 0.02 |
| Subform | Propagule_Harvest_Priorities_Subform |  | Report.Propagule_Harvest_Priorities_Subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 2.12, 0.20, 4.40, 0.22 |
| TextBox | Priority |  | HARVEST_PRIORITY |  |  | 0.17, 0.10, 0.35, 0.26 |
| TextBox | Lot ID |  | ID |  |  | 0.75, 0.10, 1.33, 0.26 |
| TextBox | LOT_TOTAL_FT |  | Total_Ft |  |  | 7.18, 0.19, 0.48, 0.19 |
| TextBox | Lot_Number_Of_Beds |  | Number_Of_Beds |  |  | 6.56, 0.19, 0.46, 0.19 |
| Line | Line110 |  |  |  |  | 0.79, 0.42, 6.88, 0.00 |
| TextBox | Scientific_Name |  | [Scientific_Name] |  |  | 2.17, 0.01, 1.83, 0.18 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 4.04, 0.01, 1.83, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line71 |  |  |  |  | 0.00, 0.00, 7.67, 0.00 |
| TextBox | Subtotal_No_of_Ft |  | =Sum([Total_Ft]) |  |  | 7.04, 0.00, 0.61, 0.25 |
| Label | Label97 | Subtotals |  |  |  | 4.92, 0.02, 1.44, 0.23 |
| TextBox | Subtotal_Number_Of_Beds |  | =Sum([Number_Of_Beds]) |  |  | 6.52, 0.00, 0.52, 0.25 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.01, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.69, 0.01, 1.98, 0.20 |
| Line | Line46 |  |  |  |  | 0.00, 0.00, 7.67, 0.01 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | General_Comments |  | =[Forms]![Propagule_Harvest_Priorties]![General_Comments] |  |  | 0.00, 0.75, 7.67, 0.10 |
| TextBox | GRAND_TOTAL_FT |  | =Sum([Total_Ft]) |  |  | 7.08, 0.02, 0.58, 0.25 |
| Label | Label82 | TOTALS |  |  |  | 4.92, 0.04, 1.44, 0.23 |
| TextBox | Grand_Total_Beds |  | =Sum([Number_Of_Beds]) |  |  | 6.49, 0.02, 0.55, 0.25 |
| Line | Line102 |  |  |  |  | 0.00, 0.00, 7.67, 0.00 |
| Label | Label104 | If anyone sees any discrepancies in lot numbers, species, location, and/or numbers of beds to be harvested, PLEASE bring it to the attention of the nursery manager. |  |  |  | 0.00, 0.29, 7.18, 0.43 |
| Line | Line106 |  |  |  |  | 0.00, 0.28, 7.67, 0.00 |
