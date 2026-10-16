# Report: Orders_Checklist

**Caption:** Orders_Summary_Checklist  
**Record source:**

```sql
Orders_Summary1
```

**Grouping/sorting:** `CATEGORY_CODE`, `Product_Class_for_Cycle`, `ID`  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_NMIS_ORDERS_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Label | Label36 | Lot ID |  |  |  | 0.42, 1.33, 0.53, 0.23 |
| Label | Label41 | Request (M) |  |  |  | 2.07, 1.14, 0.67, 0.43 |
| Label | Label42 | Inv Net (M) |  |  |  | 2.84, 1.14, 0.62, 0.43 |
| Label | Label43 | Req Firm Orders  (M)  |  |  |  | 3.46, 0.92, 0.84, 0.65 |
| Label | Label44 | Client Orders (M) |  |  |  | 4.34, 0.91, 0.78, 0.66 |
| Line | Line45 |  |  |  |  | 0.00, 1.57, 7.94, 0.00 |
| TextBox | Text64 |  | ="Orders Summary Checklist for FY " & [END_FY] |  |  | 2.25, 0.60, 3.67, 0.23 |
| Label | Label66 | Overrun (M) |  |  |  | 5.95, 1.11, 0.77, 0.45 |
| Label | Label72 | Total (M) |  |  |  | 6.81, 1.14, 0.55, 0.43 |
| Label | Label79 | All |  |  |  | 7.38, 1.33, 0.26, 0.23 |
| Label | Label101 | Surplus Orders (M) |  |  |  | 5.24, 0.91, 0.68, 0.66 |
| Label | Label110 | End Season |  |  |  | 1.44, 1.14, 0.55, 0.43 |
| TextBox | Text111 |  | ="Selected for Activity Code: " & nz([Forms]![NMIS_ORDERS_Reports]![Like_Activity_Code],"*") |  |  | 0.04, 0.15, 2.50, 0.20 |
| Label | BE_AT_PACK label | Be at Pk |  |  |  | 7.67, 0.92, 0.26, 0.65 |
| TextBox | Text115 |  | ="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*") |  |  | 0.04, 0.43, 2.50, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.00, 0.00, 3.12, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class |  | Product_Class_for_Cycle |  |  | 0.00, 0.00, 2.75, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Plntmstr_Symbol |  |  | 0.00, 0.00, 1.50, 0.00 |
| TextBox | SumOfTOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.91, 0.00, 0.76, 0.00 |
| TextBox | SumOfLastOfNET_INV |  | LastOfNET_INV |  |  | 2.72, 0.00, 0.67, 0.00 |
| TextBox | Firm_Order |  | Firm_Order |  |  | 3.40, 0.00, 0.78, 0.00 |
| TextBox | SumOfORDER_AMT |  | SumOfClient_Orders |  |  | 4.24, 0.00, 0.90, 0.00 |
| TextBox | Overrun |  | SumOfOVERRUN_AMT |  |  | 5.88, 0.00, 0.71, 0.00 |
| TextBox | Text73 |  | Total_Order |  |  | 6.59, 0.00, 0.89, 0.00 |
| CheckBox | OVERRUN_ALL |  | Over_All |  |  | 7.51, 0.03, 0.00, 0.15 |
| TextBox | Text102 |  | SumOfSurplus_Orders |  |  | 5.12, 0.00, 0.71, 0.00 |
| TextBox | END_SEASON_CODE |  | END_SEASON_CODE |  |  | 1.52, 0.00, 0.38, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 0.36, 0.17, 6.83, 0.01 |
| CheckBox | BE_AT_PACK |  | BE_AT_PACK |  |  | 7.75, 0.03, 0.00, 0.09 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([TOTAL_REQUEST]) |  |  | 1.91, 0.04, 0.76, 0.00 |
| TextBox | Text47 |  | =Sum([LastOfNET_INV]) |  |  | 2.72, 0.04, 0.67, 0.00 |
| TextBox | Text48 |  | =Sum([Firm_Order]) |  |  | 3.40, 0.04, 0.78, 0.18 |
| TextBox | Text49 |  | =Sum([SumOfClient_Orders]) |  |  | 4.24, 0.04, 0.90, 0.18 |
| Line | Line50 |  |  |  |  | 1.91, 0.04, 0.76, 0.00 |
| Line | Line51 |  |  |  |  | 2.72, 0.04, 0.67, 0.00 |
| Line | Line52 |  |  |  |  | 3.46, 0.04, 0.78, 0.00 |
| Line | Line53 |  |  |  |  | 4.23, 0.04, 0.81, 0.00 |
| TextBox | Text62 |  | =[Age_Class] & " Totals" |  |  | 0.06, 0.02, 1.85, 0.21 |
| TextBox | Text68 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 5.88, 0.04, 0.71, 0.18 |
| Line | Line69 |  |  |  |  | 5.89, 0.04, 0.71, 0.00 |
| TextBox | Text74 |  | =Sum([Total_Order]) |  |  | 6.59, 0.04, 0.88, 0.18 |
| Line | Line75 |  |  |  |  | 6.54, 0.04, 0.80, 0.00 |
| TextBox | Text103 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.12, 0.04, 0.71, 0.18 |
| Line | Line104 |  |  |  |  | 5.14, 0.04, 0.71, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([TOTAL_REQUEST]) |  |  | 1.91, 0.03, 0.76, 0.00 |
| TextBox | Text55 |  | =Sum([LastOfNET_INV]) |  |  | 2.72, 0.03, 0.67, 0.00 |
| TextBox | Text56 |  | =Sum([Firm_Order]) |  |  | 3.40, 0.03, 0.78, 0.18 |
| TextBox | Text57 |  | =Sum([SumOfClient_Orders]) |  |  | 4.24, 0.03, 0.90, 0.18 |
| Line | Line58 |  |  |  |  | 1.91, 0.03, 0.76, 0.00 |
| Line | Line59 |  |  |  |  | 2.72, 0.03, 0.67, 0.00 |
| Line | Line60 |  |  |  |  | 3.46, 0.03, 0.78, 0.00 |
| Line | Line61 |  |  |  |  | 4.23, 0.03, 0.81, 0.00 |
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & " Totals" AS CD FROM NMIS_CATEGORIES; |  | 0.10, 0.03, 1.67, 0.18 |
| TextBox | Text70 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 5.88, 0.03, 0.71, 0.18 |
| Line | Line71 |  |  |  |  | 5.89, 0.03, 0.71, 0.00 |
| TextBox | Text76 |  | =Sum([Total_Order]) |  |  | 6.59, 0.03, 0.89, 0.18 |
| Line | Line77 |  |  |  |  | 6.54, 0.03, 0.71, 0.00 |
| TextBox | Text105 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.12, 0.03, 0.71, 0.18 |
| Line | Line106 |  |  |  |  | 5.14, 0.03, 0.71, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.09, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.02, 0.05, 1.91, 0.16 |
| Line | Line22 |  |  |  |  | 0.00, 0.03, 7.95, 0.00 |
| Label | Label100 | Note: Total Orders includes Surplus Orders |  |  |  | 2.21, 0.02, 2.96, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label86 | Grand Total: |  |  |  | 0.93, 0.03, 0.83, 0.19 |
| TextBox | Text87 |  | =Sum([TOTAL_REQUEST]) |  |  | 1.92, 0.03, 0.76, 0.00 |
| TextBox | Text88 |  | =Sum([LastOfNET_INV]) |  |  | 2.73, 0.03, 0.67, 0.00 |
| TextBox | Text89 |  | =Sum([Firm_Order]) |  |  | 3.41, 0.03, 0.78, 0.18 |
| TextBox | Text90 |  | =Sum([SumOfClient_Orders]) |  |  | 4.25, 0.03, 0.90, 0.18 |
| Line | Line91 |  |  |  |  | 1.92, 0.03, 0.76, 0.00 |
| Line | Line92 |  |  |  |  | 2.73, 0.03, 0.67, 0.00 |
| Line | Line93 |  |  |  |  | 3.47, 0.03, 0.78, 0.00 |
| Line | Line94 |  |  |  |  | 4.24, 0.03, 0.81, 0.00 |
| TextBox | Text95 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 5.89, 0.03, 0.71, 0.18 |
| Line | Line96 |  |  |  |  | 5.90, 0.03, 0.71, 0.00 |
| TextBox | Text97 |  | =Sum([Total_Order]) |  |  | 6.60, 0.03, 0.89, 0.18 |
| Line | Line98 |  |  |  |  | 6.55, 0.03, 0.71, 0.00 |
| TextBox | Text107 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.14, 0.03, 0.71, 0.18 |
| Line | Line108 |  |  |  |  | 5.14, 0.03, 0.71, 0.00 |
