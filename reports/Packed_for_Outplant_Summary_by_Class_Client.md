# Report: Packed_for_Outplant_Summary_by_Class_Client

**Caption:** Packed for Outplanting  
**Grouping/sorting:** `Cost_Center`, `Age_Class_String`, `Reporting_Parent`, `LOT_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.69, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.69, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.56, 0.17, 2.78, 0.20 |
| TextBox | FY |  | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 2.00, 0.80, 4.17, 0.23 |
| Label | Label36 | Packed |  |  |  | 5.86, 1.36, 0.62, 0.18 |
| TextBox | Cost_Center |  | Cost_Center |  |  | 2.21, 1.05, 3.79, 0.26 |
| Label | Label50 | Packed for Outplanting |  |  |  | 2.38, 0.58, 3.16, 0.22 |
| Label | Label53 | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |  |  |  | 0.00, 1.51, 7.83, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text47 |  | [Age_Class_String] |  |  | 0.17, 0.04, 5.21, 0.26 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([PACKED]) |  |  | 5.78, 0.00, 0.71, 0.20 |
| ComboBox | Reporting_Parent |  | Reporting_Parent | SELECT NMIS_ASSOCIATE_REPORTING_PARENT.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATE_REPORTING_PARENT INNER JOIN NMIS_ASSOCIATES ON NMIS_ASSOCIATE_REPORTING_PARENT.Reporting_Parent = NMIS_ASSOCIATES.ASSOCIATE; |  | 0.12, 0.00, 3.58, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Sum([PACKED]) |  |  | 5.78, 0.00, 0.71, 0.21 |
| Line | Line33 |  |  |  |  | 5.78, 0.00, 0.71, 0.00 |
| TextBox | Text37 |  | ="Total for " & [Age_Class_String] |  |  | 0.04, 0.00, 5.56, 0.20 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([PACKED]) |  |  | 5.78, 0.04, 0.71, 0.21 |
| Line | Line47 |  |  |  |  | 5.78, 0.00, 0.71, 0.00 |
| TextBox | Text48 |  | ="Total for " & [Cost_Center] |  |  | 0.04, 0.04, 5.57, 0.21 |

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
