# Report: ORDER_CONFIRM

**Caption:** ORDER_CONFIRM  
**Record source:**

```sql
ORDER_CONFIRM MT QUERY
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `DESCRIPTION`, `ID`, `ACTIVITY_CODE`  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Report.ORDER_CONFIRM_MC`, `Report.ORDER_CONFIRM_SS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR_NUMBER], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 5.00, 0.88, 0.67, 0.18 |
| Label | FISCAL_YEAR_Label | Fiscal Year: |  |  |  | 4.17, 0.88, 0.78, 0.17 |
| Label | Label66 | ORDER CONFIRMATION |  |  |  | 3.88, 0.67, 2.00, 0.17 |
| TextBox | Text83 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.88, 0.42, 2.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.62, 0.17, 2.78, 0.20 |
| TextBox | CLIENT_ASSOCIATE | Client: | CLIENT_ASSOCIATE |  |  | 0.58, 1.21, 0.58, 0.00 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.25, 1.21, 2.71, 0.00 |
| Rectangle | Box69 |  |  |  |  | 0.00, 1.17, 4.00, 0.25 |
| Label | Label94 | Gross (M) |  |  |  | 5.56, 1.46, 0.33, 0.29 |
| Label | Label95 | Order (M) |  |  |  | 6.17, 1.46, 0.33, 0.29 |
| Label | Label96 | Net (M) |  |  |  | 5.07, 1.46, 0.33, 0.29 |
| Label | Label97 | Client Sow Req |  |  |  | 4.38, 1.46, 0.53, 0.29 |
| Label | Label98 | Order Code |  |  |  | 3.88, 1.46, 0.33, 0.29 |
| Label | Label99 | Overrun Amt (M) |  |  |  | 6.64, 1.46, 0.43, 0.29 |
| Label | Label100 | Overrun All |  |  |  | 7.55, 1.46, 0.43, 0.29 |
| Label | Label101 | Grading Specifications |  |  |  | 8.09, 1.45, 1.13, 0.15 |
| Label | Label102 | Min |  |  |  | 8.09, 1.60, 0.22, 0.15 |
| Label | Label103 | Max |  |  |  | 8.47, 1.60, 0.24, 0.15 |
| Label | Label104 | Caliper |  |  |  | 8.84, 1.60, 0.38, 0.15 |
| Label | Label105 | Root Prune |  |  |  | 9.25, 1.46, 0.33, 0.29 |
| Label | Label106 | Desired Ship Date |  |  |  | 9.59, 1.47, 0.53, 0.28 |
| Label | Label107 | Agreement Lot ID |  |  |  | 0.08, 1.46, 0.58, 0.29 |
| Label | Label108 | Source |  |  |  | 1.00, 1.60, 0.39, 0.15 |
| Label | Label109 | Total (M) |  |  |  | 7.21, 1.46, 0.33, 0.29 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text89 |  | DESCRIPTION |  |  | 0.90, 0.04, 7.29, 0.00 |
| Label | Label91 | Product: |  |  |  | 0.08, 0.04, 0.56, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PC |  | PC |  |  | 1.92, 0.21, 1.71, 0.00 |
| TextBox | SC |  | SC |  |  | 5.04, 0.21, 1.71, 0.00 |
| TextBox | CLIENT_NOTE |  | CLIENT_NOTE |  |  | 0.79, 0.42, 3.75, 0.00 |
| TextBox | NURSERY_NOTE |  | NURSERY_NOTE |  |  | 5.58, 0.42, 3.46, 0.00 |
| Label | CLIENT_NOTE_Label | Client Note: |  |  |  | 0.04, 0.42, 0.71, 0.17 |
| Label | NURSERY_NOTE_Label | Nursery Note: |  |  |  | 4.71, 0.42, 0.83, 0.17 |
| Label | PC_Label | 1st Contact: |  |  |  | 1.21, 0.21, 0.67, 0.17 |
| Label | SC_Label | 2nd Contact: |  |  |  | 3.96, 0.21, 1.04, 0.17 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 3.80, 0.00, 0.53, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 5.92, 0.00, 0.58, 0.00 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 6.53, 0.00, 0.50, 0.00 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 8.40, 0.00, 0.39, 0.00 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 8.85, 0.00, 0.33, 0.00 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 9.21, 0.00, 0.34, 0.00 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  |  | 9.65, 0.00, 0.43, 0.00 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 4.35, 0.00, 0.50, 0.00 |
| TextBox | O_NET |  | O_NET |  |  | 4.88, 0.00, 0.50, 0.00 |
| TextBox | O_GROSS |  | O_GROSS |  |  | 5.40, 0.00, 0.50, 0.00 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 7.96, 0.00, 0.36, 0.00 |
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.04, 0.00, 3.75, 0.00 |
| TextBox | ORDERS_CN |  | ORDERS_CN |  |  | 0.04, 0.21, 0.88, 0.12 |
| Subform | ORDER_CONFIRM_MC |  | Report.ORDER_CONFIRM_MC (master: ORDERS_CN → child: ORDERS_CN) |  |  | 5.54, 0.67, 3.38, 0.18 |
| Label | Label79 | Job Codes: |  |  |  | 4.79, 0.67, 0.72, 0.15 |
| Label | Label80 | Special Services: |  |  |  | 0.04, 0.67, 1.04, 0.15 |
| Subform | ORDER_CONFIRM_SS |  | Report.ORDER_CONFIRM_SS (master: ORDERS_CN → child: ORDERS_CN) |  |  | 1.12, 0.67, 2.92, 0.17 |
| TextBox | OVERRUN_ALL |  | ALL |  |  | 7.64, 0.00, 0.28, 0.00 |
| TextBox | Text90 |  | =Round([ORDER_AMT]+nz([OVERRUN_AMT],0),3) |  |  | 7.05, 0.00, 0.55, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text49 |  | =Now() |  |  | 0.00, 0.08, 3.50, 0.18 |
| TextBox | Text50 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.75, 0.08, 3.50, 0.18 |
