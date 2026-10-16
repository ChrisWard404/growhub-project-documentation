# Report: Packed_for_Outplant_Summary_by_Class

**Caption:** Packed for Outplanting  
**Grouping/sorting:** `Cost_Center`, `Age_Class_String`, `DIVERSE`, `PLNTMSTR_SYMBOL`, `ORDER_CODE`, `LOT_ID`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.69, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.69, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.56, 0.17, 2.78, 0.20 |
| TextBox | FY |  | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 2.00, 0.80, 4.17, 0.23 |
| Label | OWNER_Label | Stock Type |  |  |  | 0.04, 1.36, 1.04, 0.18 |
| Label | Label36 | Packed |  |  |  | 6.71, 1.36, 0.62, 0.18 |
| Label | Label48 | Species |  |  |  | 1.45, 1.36, 1.04, 0.18 |
| TextBox | Cost_Center |  | Cost_Center |  |  | 2.16, 1.05, 3.79, 0.26 |
| Label | Label50 | Packed for Outplanting |  |  |  | 2.38, 0.58, 3.16, 0.22 |
| Label | Label53 | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |  |  |  | 0.00, 1.51, 7.83, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text47 |  | [Age_Class_String] |  |  | 0.17, 0.04, 5.21, 0.26 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text52 |  | =IIf([diverse],"Non-Traditional","Traditional") & " Species" |  |  | 0.23, 0.00, 3.42, 0.24 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum([PACKED]) |  |  | 6.62, 0.00, 0.71, 0.21 |
| TextBox | Text40 |  | [Species] |  |  | 0.48, 0.00, 4.33, 0.21 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text49 |  | =Sum([PACKED]) |  |  | 6.62, 0.00, 0.71, 0.20 |
| TextBox | Text50 |  | ="Total For " & IIf([diverse],"Non-Traditional","Traditional") & " Species" |  |  | 0.58, 0.00, 5.36, 0.20 |
| Line | Line52 |  |  |  |  | 6.62, 0.00, 0.71, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Sum([PACKED]) |  |  | 6.62, 0.00, 0.71, 0.21 |
| Line | Line33 |  |  |  |  | 6.62, 0.00, 0.71, 0.00 |
| TextBox | Text37 |  | ="Total for " & [Age_Class_String] |  |  | 0.58, 0.00, 5.38, 0.21 |
| Line | Line51 |  |  |  |  | 6.62, 0.00, 0.71, 0.00 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([PACKED]) |  |  | 6.62, 0.04, 0.71, 0.21 |
| Line | Line47 |  |  |  |  | 6.62, 0.00, 0.71, 0.00 |
| TextBox | Text48 |  | ="Total for " & [Cost_Center] |  |  | 0.58, 0.04, 5.38, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.02, 2.33, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.54, 0.02, 1.33, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text43 |  | =Sum([PACKED]) |  |  | 6.62, 0.04, 0.71, 0.21 |
| Line | Line44 |  |  |  |  | 6.62, 0.00, 0.71, 0.00 |
| TextBox | Text45 |  | ="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER] |  |  | 0.04, 0.04, 5.38, 0.21 |
