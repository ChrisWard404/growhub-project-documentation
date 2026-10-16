# Report: Packed_for_Outplant_Summary_by_region

**Caption:** Packed for Outplanting  
**Grouping/sorting:** `Reporting_Region`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.69, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.69, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.56, 0.17, 2.78, 0.20 |
| TextBox | FY |  | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 2.00, 0.80, 4.17, 0.23 |
| Label | Label36 | Packed (M) |  |  |  | 5.86, 1.08, 0.78, 0.18 |
| Label | Label50 | Packed for Outplanting |  |  |  | 2.38, 0.58, 3.16, 0.22 |
| Label | Label53 | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |  |  |  | 0.00, 1.23, 7.83, 0.20 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Reporting_Region |  | Reporting_Region |  |  | 0.08, 0.04, 1.83, 0.20 |
| TextBox | Text52 |  | =Sum([PACKED]) |  |  | 5.79, 0.03, 0.71, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.02, 2.33, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.54, 0.02, 1.33, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text43 |  | =Sum([PACKED]) |  |  | 5.78, 0.04, 0.71, 0.21 |
| Line | Line44 |  |  |  |  | 5.78, 0.00, 0.71, 0.00 |
| TextBox | Text45 |  | ="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER] |  |  | 0.04, 0.04, 5.58, 0.21 |
