# Report: OutYears_Report_Summary_Grand_by_Region

**Caption:** NMIS Sowing Request Summary  
**Grouping/sorting:** `Reporting_Region`, `END_FY`, `TreeYN`, `Cost_Center`  
**Backend tables referenced:** `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_PLANT_INVENTORY_REPORTS`, `Form_SOW_REQUEST_REPORTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Sowing Request Summary |  |  |  | 2.46, 0.55, 3.23, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.02, 1.32, 7.93, 0.20 |
| Label | TOTAL_REQUEST_Label | AdjustedRequest (M) |  |  |  | 4.89, 0.90, 0.63, 0.47 |
| Label | Label149 | Original Request (M) |  |  |  | 3.85, 0.90, 0.62, 0.47 |
| TextBox | Text197 |  | =[Forms]![SOW_REQUEST_REPORTS]![Comment] |  |  | 5.79, 0.12, 2.17, 0.71 |
| ComboBox | Combo178 |  | =[Forms]![SOW_REQUEST_REPORTS]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.62, 2.34, 0.20 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY] |  |  | 0.00, 0.00, 1.92, 0.20 |
| TextBox | Text200 |  | ="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client] |  |  | 0.00, 0.42, 2.34, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol] |  |  | 0.00, 0.21, 2.34, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Reporting_Region |  | Reporting_Region |  |  | 0.04, 0.00, 3.24, 0.26 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | TreeYN |  | TreeYN | T;Tree;N;Non-Tree |  | 0.00, 0.00, 1.95, 0.23 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text219 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.75, 0.02, 0.82, 0.20 |
| TextBox | Text221 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.64, 0.02, 0.84, 0.20 |
| ComboBox | Combo227 |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 0.28, 0.04, 2.08, 0.18 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text186 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.75, 0.02, 0.82, 0.20 |
| TextBox | Text193 |  | ="Requested for FY " & [END_FY] |  |  | 0.27, 0.03, 3.16, 0.18 |
| TextBox | Text194 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.64, 0.02, 0.84, 0.20 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text211 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.75, 0.14, 0.82, 0.20 |
| TextBox | Text214 |  | ="Total Requested by " & [Reporting_Region] |  |  | 0.27, 0.15, 3.16, 0.18 |
| TextBox | Text215 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.64, 0.14, 0.84, 0.20 |
| Line | Line217 |  |  |  |  | 3.62, 0.12, 0.88, 0.00 |
| Line | Line218 |  |  |  |  | 4.75, 0.12, 0.83, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.19, 2.13, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.93, 0.19 |
