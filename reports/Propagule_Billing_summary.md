# Report: Propagule_Billing_summary

**Grouping/sorting:** `Reporting_Parent`, `CLIENT_ASSOCIATE`, `Jobcode`, `SOURCE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Propagule_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 0.08, 0.98, 0.33, 0.21 |
| Line | Line21 |  |  |  |  | 0.00, 1.22, 7.97, 0.00 |
| Line | Line28 |  |  |  |  | 0.00, 0.77, 7.97, 0.00 |
| Label | Label50 | Acres |  |  |  | 5.20, 0.97, 0.49, 0.22 |
| Label | Label54 | Total Charge |  |  |  | 7.38, 0.81, 0.41, 0.38 |
| Label | Label63 | Nursery Management Information System |  |  |  | 2.79, 0.16, 2.81, 0.19 |
| TextBox | Text64 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.57, 0.35, 3.24, 0.20 |
| Label | Label65 | USDA Forest Service |  |  |  | 2.57, 0.00, 3.24, 0.16 |
| TextBox | Text83 |  | ="Propagule Invoice Summary FY " & [fiscal_year] |  |  | 2.58, 0.54, 3.25, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line42 |  |  |  |  | 0.00, 0.25, 7.98, 0.00 |
| TextBox | Text48 |  | =Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre]) |  |  | 5.00, 0.01, 0.58, 0.18 |
| ComboBox | Text44 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " - " & [ASSOCIATE_NAME] & " Sub Totals" AS Assoc FROM NMIS_ASSOCIATES; |  | 0.00, 0.01, 4.75, 0.18 |
| TextBox | Text56 |  | =Sum([Total_Charge]) |  |  | 6.96, 0.01, 0.00, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text59 |  | =Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre]) |  |  | 5.00, 0.00, 0.58, 0.18 |
| ComboBox | Combo60 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " - " & [ASSOCIATE_NAME] & " Totals" AS Assoc FROM NMIS_ASSOCIATES; |  | 0.11, 0.00, 4.88, 0.18 |
| TextBox | Text61 |  | =Sum([Total_Charge]) |  |  | 6.96, 0.00, 0.00, 0.18 |
| Line | Line43 |  |  |  |  | 0.01, 0.21, 7.96, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.16, 0.20, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.10, 0.20, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.04, 0.03, 7.81, 0.00 |
| Label | Label77 | No Harvest Charge |  |  |  | 3.75, 0.06, 1.23, 0.19 |
| Label | Label78 | j |  |  |  | 3.53, 0.06, 0.18, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text79 |  | =Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre]) |  |  | 5.01, 0.00, 0.58, 0.18 |
| TextBox | Text80 |  | =Sum([Total_Charge]) |  |  | 6.97, 0.00, 0.00, 0.18 |
| Label | Label81 | Totals |  |  |  | 3.78, 0.00, 0.80, 0.21 |
