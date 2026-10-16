# Report: Orders_Checklist_Scheduled_Transplant_not

**Caption:** Orders_Summary_Checklist  
**Record source:**

```sql
Orders_Summary1_Scheduled_Transplant_not
```

**Grouping/sorting:** `CATEGORY_CODE`, `Age_Class`, `ID`  
**Backend tables referenced:** `NMIS_CATEGORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Label | Label36 | Lot ID |  |  |  | 0.58, 1.34, 0.53, 0.23 |
| Label | Label41 | Request (M) |  |  |  | 2.41, 1.15, 0.67, 0.43 |
| Label | Label42 | Inv Net (M) |  |  |  | 3.18, 1.15, 0.62, 0.43 |
| Label | Label43 | Req Firm Orders  (M)  |  |  |  | 3.85, 0.93, 0.84, 0.65 |
| Label | Label44 | Client Orders (M) |  |  |  | 4.71, 0.92, 0.68, 0.66 |
| Line | Line45 |  |  |  |  | 0.12, 1.57, 7.83, 0.00 |
| TextBox | Text64 |  | ="Scheduled Transplant Orders Summary Checklist for FY " & [Forms]![Switchboard]![FY_For_Reports] & " No Orders" |  |  | 1.00, 0.60, 6.17, 0.23 |
| Label | Label66 | Overrun (M) |  |  |  | 6.16, 1.12, 0.77, 0.45 |
| Label | Label72 | Total (M) |  |  |  | 7.04, 1.15, 0.47, 0.43 |
| Label | Label79 | All |  |  |  | 7.58, 1.34, 0.26, 0.23 |
| Label | Label101 | Surplus Orders (M) |  |  |  | 5.45, 0.92, 0.68, 0.66 |
| Label | Label110 | End Season |  |  |  | 1.70, 1.15, 0.55, 0.43 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.19, 0.00, 3.12, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class |  | Age_Class |  |  | 0.19, 0.00, 2.75, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.19, 0.00, 1.50, 0.00 |
| TextBox | SumOfTOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 2.24, 0.00, 0.76, 0.00 |
| TextBox | SumOfLastOfNET_INV |  | LastOfNET_INV |  |  | 3.05, 0.00, 0.67, 0.00 |
| TextBox | Firm_Order |  | Firm_Order |  |  | 3.79, 0.00, 0.78, 0.00 |
| TextBox | SumOfORDER_AMT |  | SumOfClient_Orders |  |  | 4.59, 0.00, 0.71, 0.00 |
| TextBox | Overrun |  | SumOfOVERRUN_AMT |  |  | 6.08, 0.00, 0.71, 0.00 |
| TextBox | Text73 |  | Total_Order |  |  | 6.82, 0.00, 0.71, 0.00 |
| CheckBox | OVERRUN_ALL |  | Over_All |  |  | 7.72, 0.03, 0.00, 0.15 |
| TextBox | Text102 |  | SumOfSurplus_Orders |  |  | 5.33, 0.00, 0.71, 0.00 |
| TextBox | END_SEASON_CODE |  | END_SEASON |  |  | 1.71, 0.00, 0.52, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([TOTAL_REQUEST]) |  |  | 2.24, 0.04, 0.76, 0.00 |
| TextBox | Text47 |  | =Sum([LastOfNET_INV]) |  |  | 3.05, 0.04, 0.67, 0.00 |
| TextBox | Text48 |  | =Sum([Firm_Order]) |  |  | 3.79, 0.04, 0.78, 0.18 |
| TextBox | Text49 |  | =Sum([SumOfClient_Orders]) |  |  | 4.59, 0.04, 0.71, 0.18 |
| Line | Line50 |  |  |  |  | 2.24, 0.04, 0.76, 0.00 |
| Line | Line51 |  |  |  |  | 3.05, 0.04, 0.67, 0.00 |
| Line | Line52 |  |  |  |  | 3.79, 0.04, 0.78, 0.00 |
| Line | Line53 |  |  |  |  | 4.60, 0.04, 0.71, 0.00 |
| TextBox | Text62 |  | =[Age_Class] & " Totals" |  |  | 0.25, 0.02, 1.85, 0.21 |
| TextBox | Text68 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 6.08, 0.04, 0.71, 0.18 |
| Line | Line69 |  |  |  |  | 6.09, 0.04, 0.71, 0.00 |
| TextBox | Text74 |  | =Sum([Total_Order]) |  |  | 6.82, 0.04, 0.71, 0.18 |
| Line | Line75 |  |  |  |  | 6.83, 0.04, 0.71, 0.00 |
| TextBox | Text103 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.33, 0.04, 0.71, 0.18 |
| Line | Line104 |  |  |  |  | 5.34, 0.04, 0.71, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([TOTAL_REQUEST]) |  |  | 2.24, 0.03, 0.76, 0.00 |
| TextBox | Text55 |  | =Sum([LastOfNET_INV]) |  |  | 3.05, 0.03, 0.67, 0.00 |
| TextBox | Text56 |  | =Sum([Firm_Order]) |  |  | 3.79, 0.03, 0.78, 0.18 |
| TextBox | Text57 |  | =Sum([SumOfClient_Orders]) |  |  | 4.59, 0.03, 0.71, 0.18 |
| Line | Line58 |  |  |  |  | 2.24, 0.03, 0.76, 0.00 |
| Line | Line59 |  |  |  |  | 3.05, 0.03, 0.67, 0.00 |
| Line | Line60 |  |  |  |  | 3.79, 0.03, 0.78, 0.00 |
| Line | Line61 |  |  |  |  | 4.60, 0.03, 0.71, 0.00 |
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, [CATEGORY_DESC] & " Totals" AS CD FROM NMIS_CATEGORIES; |  | 0.29, 0.03, 1.67, 0.18 |
| TextBox | Text70 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 6.08, 0.03, 0.71, 0.18 |
| Line | Line71 |  |  |  |  | 6.09, 0.03, 0.71, 0.00 |
| TextBox | Text76 |  | =Sum([Total_Order]) |  |  | 6.82, 0.03, 0.71, 0.18 |
| Line | Line77 |  |  |  |  | 6.83, 0.03, 0.71, 0.00 |
| TextBox | Text105 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.33, 0.03, 0.71, 0.18 |
| Line | Line106 |  |  |  |  | 5.34, 0.03, 0.71, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.25, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.04, 0.05, 1.91, 0.16 |
| Line | Line22 |  |  |  |  | 0.15, 0.03, 7.85, 0.00 |
| Label | Label100 | Note: Total Orders includes Surplus Orders |  |  |  | 2.54, 0.02, 2.96, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label86 | Grand Total: |  |  |  | 1.28, 0.03, 0.83, 0.19 |
| TextBox | Text87 |  | =Sum([TOTAL_REQUEST]) |  |  | 2.25, 0.03, 0.76, 0.00 |
| TextBox | Text88 |  | =Sum([LastOfNET_INV]) |  |  | 3.06, 0.03, 0.67, 0.00 |
| TextBox | Text89 |  | =Sum([Firm_Order]) |  |  | 3.80, 0.03, 0.78, 0.18 |
| TextBox | Text90 |  | =Sum([SumOfClient_Orders]) |  |  | 4.60, 0.03, 0.71, 0.18 |
| Line | Line91 |  |  |  |  | 2.25, 0.03, 0.76, 0.00 |
| Line | Line92 |  |  |  |  | 3.06, 0.03, 0.67, 0.00 |
| Line | Line93 |  |  |  |  | 3.80, 0.03, 0.78, 0.00 |
| Line | Line94 |  |  |  |  | 4.61, 0.03, 0.71, 0.00 |
| TextBox | Text95 |  | =Sum([SumOfOVERRUN_AMT]) |  |  | 6.09, 0.03, 0.71, 0.18 |
| Line | Line96 |  |  |  |  | 6.10, 0.03, 0.71, 0.00 |
| TextBox | Text97 |  | =Sum([Total_Order]) |  |  | 6.83, 0.03, 0.71, 0.18 |
| Line | Line98 |  |  |  |  | 6.84, 0.03, 0.71, 0.00 |
| TextBox | Text107 |  | =Sum([SumOfSurplus_Orders]) |  |  | 5.34, 0.03, 0.71, 0.18 |
| Line | Line108 |  |  |  |  | 5.34, 0.03, 0.71, 0.00 |
