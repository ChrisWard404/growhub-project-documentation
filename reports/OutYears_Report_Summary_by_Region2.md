# Report: OutYears_Report_Summary_by_Region2

**Grouping/sorting:** `Reporting_Region`, `END_FY`, `BEGIN_FY`, `TreeYN`, `Cost_Center`, `Age_Class`, `Reporting_Parent`  
**Backend tables referenced:** `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_PLANT_INVENTORY_REPORTS`, `Form_SOW_REQUEST_REPORTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Sowing Request Summary |  |  |  | 2.46, 0.55, 3.23, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.02, 1.53, 7.93, 0.20 |
| Label | TOTAL_REQUEST_Label | AdjustedRequest (M) |  |  |  | 4.32, 1.11, 0.63, 0.47 |
| Label | Label149 | Original Request (M) |  |  |  | 3.74, 1.10, 0.62, 0.47 |
| TextBox | Reporting_Region |  | Reporting_Region |  |  | 2.46, 0.77, 3.24, 0.26 |
| TextBox | Text197 |  | =[Forms]![SOW_REQUEST_REPORTS]![Comment] |  |  | 5.79, 0.12, 2.17, 0.71 |
| ComboBox | Combo178 |  | =[Forms]![SOW_REQUEST_REPORTS]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.62, 2.34, 0.20 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY] |  |  | 0.00, 0.00, 1.92, 0.20 |
| TextBox | Text200 |  | ="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client] |  |  | 0.00, 0.42, 2.34, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol] |  |  | 0.00, 0.21, 2.34, 0.20 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Combo123 |  | ="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*" |  |  | 0.00, 0.02, 4.88, 0.20 |

## Section: GroupHeader6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | TreeYN |  | TreeYN | T;Tree;N;Non-Tree |  | 0.00, 0.00, 1.95, 0.23 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo218 |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 0.00, 0.00, 2.33, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.00, 0.61, 0.20 |
| TextBox | Text141 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.64, 0.00, 0.57, 0.20 |
| TextBox | Combo135 |  | Age_Class |  |  | 0.08, 0.02, 3.56, 0.18 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text163 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label164 | Total For:  |  |  |  | 0.00, 0.09, 0.64, 0.18 |
| Label | Label165 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text170 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.63, 0.10, 0.57, 0.20 |
| Label | Label171 | ----------- |  |  |  | 3.54, 0.00, 0.66, 0.13 |
| ComboBox | Combo173 |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 0.62, 0.09, 1.83, 0.18 |

## Section: GroupFooter8

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo225 |  | TreeYN | T;Tree;N;Non-Tree |  | 0.62, 0.11, 1.95, 0.18 |
| TextBox | Text226 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label227 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text228 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.62, 0.10, 0.57, 0.20 |
| Label | Label229 | ----------- |  |  |  | 3.53, 0.00, 0.66, 0.13 |
| Label | Label230 | Total For:  |  |  |  | 0.00, 0.11, 0.64, 0.18 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text125 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.22, 0.10, 0.61, 0.20 |
| Label | Label126 | Total:  |  |  |  | 0.03, 0.11, 0.41, 0.18 |
| Label | Label128 | ----------- |  |  |  | 4.27, 0.00, 0.56, 0.13 |
| TextBox | Text133 |  | ="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*" |  |  | 0.45, 0.11, 3.16, 0.18 |
| TextBox | Text143 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.64, 0.10, 0.57, 0.20 |
| Label | Label144 | ----------- |  |  |  | 3.55, 0.00, 0.66, 0.13 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text186 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.21, 0.10, 0.61, 0.20 |
| Label | Label187 | Total:  |  |  |  | 0.02, 0.11, 0.41, 0.18 |
| Label | Label188 | ----------- |  |  |  | 4.26, 0.00, 0.56, 0.13 |
| TextBox | Text193 |  | ="*Requested for FY " & [END_FY] & "*" |  |  | 0.44, 0.11, 3.16, 0.18 |
| TextBox | Text194 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.63, 0.10, 0.57, 0.20 |
| Label | Label195 | ----------- |  |  |  | 3.54, 0.00, 0.66, 0.13 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text211 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.19, 0.10, 0.61, 0.20 |
| Label | Label212 | Total:  |  |  |  | 0.00, 0.11, 0.41, 0.18 |
| Label | Label213 | ----------- |  |  |  | 4.24, 0.00, 0.56, 0.13 |
| TextBox | Text214 |  | ="*Requested by " & [Reporting_Region] & "*" |  |  | 0.42, 0.11, 3.16, 0.18 |
| TextBox | Text215 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.61, 0.10, 0.57, 0.20 |
| Label | Label216 | ----------- |  |  |  | 3.52, 0.00, 0.66, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.21, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.21, 2.13, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.02, 7.93, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text219 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.19, 0.10, 0.61, 0.20 |
| Label | Label220 | Grand Total:  |  |  |  | 45.50, 0.10, 0.93, 0.18 |
| Label | Label221 | ----------- |  |  |  | 4.24, 0.00, 0.56, 0.13 |
| TextBox | Text223 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.61, 0.10, 0.57, 0.20 |
| Label | Label224 | ----------- |  |  |  | 3.52, 0.00, 0.66, 0.13 |
