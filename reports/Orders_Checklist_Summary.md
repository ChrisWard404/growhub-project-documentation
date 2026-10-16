# Report: Orders_Checklist_Summary

**Caption:** Orders_Summary_Checklist  
**Record source:**

```sql
Orders_Summary1c
```

**Grouping/sorting:** `CATEGORY_CODE`, `Product_Class_for_Cycle`, `ID`  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_NMIS_ORDERS_Generic_Scheduled_Transplant`, `Form_NMIS_ORDERS_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Label | Label41 | Request (M) |  |  |  | 2.54, 1.15, 0.67, 0.43 |
| Label | Label42 | Inv Net (M) |  |  |  | 3.31, 1.15, 0.62, 0.43 |
| Label | Label43 | Req Firm Orders  (M)  |  |  |  | 3.99, 0.93, 0.84, 0.65 |
| Line | Line45 |  |  |  |  | 0.12, 1.57, 7.83, 0.00 |
| TextBox | Text64 |  | ="Orders Summary Checklist for FY " & [END_FY] |  |  | 2.25, 0.60, 3.67, 0.23 |
| Label | Label44 | Client Orders (M) |  |  |  | 4.88, 0.92, 0.68, 0.66 |
| Label | Label66 | Overrun (M) |  |  |  | 6.41, 1.12, 0.77, 0.45 |
| Label | Label72 | Total (M) |  |  |  | 7.29, 1.15, 0.47, 0.43 |
| Label | Label101 | Surplus Orders (M) |  |  |  | 5.70, 0.92, 0.68, 0.66 |
| TextBox | Text111 |  | ="Selected for Activity Code: " & nz([Forms]![NMIS_ORDERS_Reports]![Like_Activity_Code],"*") |  |  | 0.00, 0.15, 2.50, 0.20 |
| TextBox | Text115 |  | ="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*") |  |  | 0.00, 0.39, 2.50, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.29, 0.03, 3.17, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([TOTAL_REQUEST]) |  |  | 2.38, 0.04, 0.76, 0.19 |
| TextBox | Text47 |  | =Sum([LastOfNET_INV]) |  |  | 3.19, 0.04, 0.67, 0.19 |
| TextBox | Text48 |  | =Sum([Firm_Order]) |  |  | 3.93, 0.04, 0.78, 0.19 |
| TextBox | Age_Class |  | Product_Class_for_Cycle |  |  | 0.29, 0.00, 2.04, 0.23 |
| TextBox | Text49 |  | =Sum([SumOfClient_Orders]) |  |  | 4.72, 0.04, 0.85, 0.18 |
| TextBox | Text68 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 6.33, 0.04, 0.71, 0.18 |
| TextBox | Text74 |  | =Sum([Total_Order]) |  |  | 7.07, 0.04, 0.81, 0.18 |
| TextBox | Text103 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.60, 0.04, 0.69, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([TOTAL_REQUEST]) |  |  | 2.38, 0.03, 0.76, 0.00 |
| TextBox | Text55 |  | =Sum([LastOfNET_INV]) |  |  | 3.19, 0.03, 0.67, 0.00 |
| TextBox | Text56 |  | =Sum([Firm_Order]) |  |  | 3.93, 0.03, 0.78, 0.18 |
| Line | Line58 |  |  |  |  | 2.38, 0.03, 0.76, 0.00 |
| Line | Line59 |  |  |  |  | 3.19, 0.03, 0.67, 0.00 |
| Line | Line60 |  |  |  |  | 3.93, 0.03, 0.78, 0.00 |
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & " Totals" AS CD FROM NMIS_CATEGORIES; |  | 0.38, 0.03, 1.96, 0.18 |
| TextBox | Text57 |  | =Sum([SumOfClient_Orders]) |  |  | 4.72, 0.03, 0.85, 0.18 |
| Line | Line61 |  |  |  |  | 4.77, 0.03, 0.71, 0.00 |
| TextBox | Text70 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 6.33, 0.03, 0.71, 0.18 |
| Line | Line71 |  |  |  |  | 6.34, 0.03, 0.71, 0.00 |
| TextBox | Text76 |  | =Sum([Total_Order]) |  |  | 7.07, 0.03, 0.81, 0.18 |
| Line | Line77 |  |  |  |  | 7.08, 0.03, 0.71, 0.00 |
| TextBox | Text105 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.58, 0.03, 0.71, 0.18 |
| Line | Line106 |  |  |  |  | 5.59, 0.03, 0.71, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.79, 0.05, 2.16, 0.16 |
| Line | Line22 |  |  |  |  | 0.12, 0.03, 7.85, 0.00 |
| Label | Label100 | Note: Total Orders includes Surplus Orders |  |  |  | 2.67, 0.02, 2.96, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label86 | Grand Total: |  |  |  | 1.48, 0.03, 0.83, 0.19 |
| TextBox | Text87 |  | =Sum([TOTAL_REQUEST]) |  |  | 2.39, 0.03, 0.76, 0.00 |
| TextBox | Text88 |  | =Sum([LastOfNET_INV]) |  |  | 3.20, 0.03, 0.67, 0.00 |
| TextBox | Text89 |  | =Sum([Firm_Order]) |  |  | 3.94, 0.03, 0.78, 0.18 |
| Line | Line91 |  |  |  |  | 2.39, 0.03, 0.76, 0.00 |
| Line | Line92 |  |  |  |  | 3.20, 0.03, 0.67, 0.00 |
| Line | Line93 |  |  |  |  | 3.94, 0.03, 0.78, 0.00 |
| TextBox | Text90 |  | =Sum([SumOfClient_Orders]) |  |  | 4.73, 0.03, 0.85, 0.18 |
| Line | Line94 |  |  |  |  | 4.78, 0.03, 0.71, 0.00 |
| TextBox | Text95 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 6.34, 0.03, 0.71, 0.18 |
| Line | Line96 |  |  |  |  | 6.35, 0.03, 0.71, 0.00 |
| TextBox | Text97 |  | =Sum([Total_Order]) |  |  | 7.08, 0.03, 0.81, 0.18 |
| Line | Line98 |  |  |  |  | 7.09, 0.03, 0.71, 0.00 |
| TextBox | Text107 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.58, 0.03, 0.71, 0.18 |
| Line | Line108 |  |  |  |  | 5.59, 0.03, 0.71, 0.00 |
