# Report: SowTrans_act_tot_vs_trans_total_checklist

**Grouping/sorting:** `ID`, `CN`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ID_ACTIVITIES`  
**Subforms/subreports:** `Report.NMIS_TRANSACTIONS_SowXplt_check subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Date |  |  |  | 1.70, 0.97, 0.31, 0.17 |
| Label | Label129 | Activity |  |  |  | 2.67, 0.97, 0.55, 0.17 |
| Label | Label130 | Activity Total |  |  |  | 5.08, 0.97, 0.95, 0.18 |
| Label | Label171 | Transaction Total |  |  |  | 6.40, 0.97, 1.09, 0.19 |
| Label | Label172 | Agreement Lot |  |  |  | 0.00, 0.97, 0.93, 0.18 |
| Label | Label155 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| Label | Label156 | Agreement Lot Sow/Transplant Activities Total Not Equal to Transactions Totals |  |  |  | 0.84, 0.61, 6.34, 0.22 |
| TextBox | Text157 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.40, 0.35, 3.24, 0.20 |
| Label | Label158 | USDA Forest Service |  |  |  | 2.40, 0.00, 3.24, 0.16 |
| Label | Label178 | FY |  |  |  | 1.06, 0.97, 0.31, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 1.53, 0.03, 0.59, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, "(" & [activity_code] & ") " & [ACTIVITY_NAME] AS Code_Name FROM NMIS_ACTIVITY_CODES; |  | 2.18, 0.03, 2.11, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 5.16, 0.03, 0.58, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.75, 0.03, 0.76, 0.19 |
| TextBox | CN |  | CN |  |  | 2.02, 0.04, 0.00, 0.00 |
| TextBox | CONTRACT_ITEM |  | Transaction Total |  |  | 6.55, 0.03, 0.64, 0.19 |
| TextBox | ACTIVITY_HOURS |  | ID |  |  | 0.02, 0.03, 0.80, 0.19 |
| TextBox | Text176 |  | UNIT_CODE |  |  | 7.20, 0.03, 0.76, 0.19 |
| TextBox | NOTE |  | LastOfNOTE |  |  | 0.74, 0.24, 7.14, 0.01 |
| TextBox | Text179 |  | NMIS_ID_ACTIVITIES.FISCAL_YEAR |  |  | 0.90, 0.03, 0.59, 0.19 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_TRANSACTIONS subreport |  | Report.NMIS_TRANSACTIONS_SowXplt_check subreport (master: cn → child: ID_ACTIVITY_CN) |  |  | 0.44, 0.02, 7.44, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.02, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.01, 0.04, 7.84, 0.00 |
