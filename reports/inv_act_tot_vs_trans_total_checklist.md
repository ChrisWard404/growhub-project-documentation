# Report: inv_act_tot_vs_trans_total_checklist

**Grouping/sorting:** `borc`, `ID`, `CN`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Subforms/subreports:** `Report.NMIS_TRANSACTIONS_invcheck subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Date |  |  |  | 1.91, 1.07, 0.31, 0.17 |
| Label | Label129 | Activity |  |  |  | 2.85, 1.07, 0.55, 0.17 |
| Label | Label130 | Activity Total |  |  |  | 5.02, 1.07, 0.95, 0.18 |
| Label | Label171 | Transaction Total |  |  |  | 6.33, 1.07, 1.09, 0.19 |
| Label | Label172 | Agreement Lot |  |  |  | 0.03, 1.07, 0.93, 0.18 |
| Label | Label155 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| Label | Label156 | Agreement Lot Inventory Activity Total Not Equal to Transactions Totals |  |  |  | 1.12, 0.55, 5.78, 0.22 |
| TextBox | Text157 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.40, 0.35, 3.24, 0.20 |
| Label | Label158 | USDA Forest Service |  |  |  | 2.40, 0.00, 3.24, 0.16 |
| ComboBox | borc |  | borc | b;Bareroot;c;Container |  | 2.38, 0.77, 3.29, 0.26 |
| Label | Label179 | FY |  |  |  | 1.23, 1.07, 0.32, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 1.74, 0.03, 0.59, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, "(" & [activity_code] & ") " & [ACTIVITY_NAME] AS Code_Name FROM NMIS_ACTIVITY_CODES; |  | 2.36, 0.03, 2.20, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 5.09, 0.03, 0.58, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.68, 0.03, 0.76, 0.19 |
| TextBox | CN |  | CN |  |  | 1.96, 0.04, 0.00, 0.00 |
| TextBox | CONTRACT_ITEM |  | Transaction Total |  |  | 6.49, 0.03, 0.64, 0.19 |
| TextBox | ACTIVITY_HOURS |  | ID |  |  | 0.05, 0.03, 0.97, 0.19 |
| TextBox | Text176 |  | UNIT_CODE |  |  | 7.14, 0.03, 0.76, 0.19 |
| TextBox | NOTE |  | LastOfNOTE |  |  | 0.74, 0.24, 7.14, 0.01 |
| TextBox | Text180 |  | FISCAL_YEAR |  |  | 1.07, 0.03, 0.59, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_TRANSACTIONS subreport |  | Report.NMIS_TRANSACTIONS_invcheck subreport (master: cn → child: ID_ACTIVITY_CN) |  |  | 0.44, 0.03, 7.44, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.07, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.01, 0.04, 7.84, 0.00 |
