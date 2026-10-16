# Report: ship_act_tot_vs_trans_total_checklist

**Caption:** NMIS_AGREEMENT_LOT_Activities_and Transactions  
**Record source:**

```sql
ship_act_tot_vs_trans_total
```

**Grouping/sorting:** `TKT_NO`, `ID`, `CN`, `ACTIVITY_DATE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ID_ACTIVITIES`  
**Subforms/subreports:** `Report.NMIS_TRANSACTIONS_packcheck subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Date |  |  |  | 1.66, 0.97, 0.31, 0.17 |
| Label | Label129 | Activity |  |  |  | 2.36, 0.97, 0.57, 0.18 |
| Label | Label130 | Activity Total |  |  |  | 5.07, 0.97, 0.95, 0.18 |
| Label | Label131 | Order/FY |  |  |  | 4.03, 0.97, 0.55, 0.18 |
| Label | Label171 | Transaction Total |  |  |  | 6.39, 0.97, 1.09, 0.19 |
| Label | Label172 | Agreement Lot |  |  |  | 0.00, 0.97, 0.93, 0.18 |
| Label | Label155 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| Label | Label156 | Agreement Lot Ship Activities Total Not Equal to Transactions Totals |  |  |  | 1.21, 0.61, 5.61, 0.22 |
| TextBox | Text157 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.40, 0.35, 3.24, 0.20 |
| Label | Label158 | USDA Forest Service |  |  |  | 2.40, 0.00, 3.24, 0.16 |
| Label | Label178 | Tkt ID |  |  |  | 4.67, 0.97, 0.41, 0.18 |
| Label | Label180 | FY |  |  |  | 1.04, 0.97, 0.31, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 1.49, 0.03, 0.59, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, "(" & [activity_code] & ") " & [ACTIVITY_NAME] AS Code_Name FROM NMIS_ACTIVITY_CODES; |  | 2.13, 0.03, 1.80, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 5.15, 0.03, 0.58, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.74, 0.03, 0.76, 0.19 |
| TextBox | CN |  | CN |  |  | 1.96, 0.04, 0.00, 0.00 |
| TextBox | CONTRACT_ITEM |  | Transaction Total |  |  | 6.54, 0.03, 0.64, 0.19 |
| TextBox | ACTIVITY_HOURS |  | ID |  |  | 0.02, 0.03, 0.80, 0.19 |
| TextBox | Order_No |  | Order/FY |  |  | 3.96, 0.05, 0.57, 0.00 |
| TextBox | Text176 |  | UNIT_CODE |  |  | 7.19, 0.03, 0.76, 0.19 |
| TextBox | NOTE |  | LastOfNOTE |  |  | 0.74, 0.24, 7.14, 0.01 |
| TextBox | Check_Order_FY |  | Check_Order_FY |  |  | 3.80, 0.23, 1.33, 0.00 |
| TextBox | TKT_NO Label |  | TKT_NO |  |  | 4.57, 0.05, 0.53, 0.00 |
| TextBox | Text181 |  | NMIS_ID_ACTIVITIES.FISCAL_YEAR |  |  | 0.88, 0.03, 0.59, 0.19 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_TRANSACTIONS subreport |  | Report.NMIS_TRANSACTIONS_packcheck subreport (master: cn → child: ID_ACTIVITY_CN) |  |  | 0.44, 0.02, 7.44, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.02, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.01, 0.04, 7.84, 0.00 |
