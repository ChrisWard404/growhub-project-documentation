# Report: NMIS_Non-WCF_Storage_Billing_summary_Report

**Grouping/sorting:** `STORED_FOR_ASSOCIATE`, `DIVERSE`, `Unit_Price`  
**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`, `NMIS_ASSOCIATES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.81, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.59, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.59, 0.00, 3.24, 0.16 |
| Label | Sum Of ACTIVITY_UNITS_Label | Units |  |  |  | 4.48, 1.23, 0.35, 0.17 |
| Line | Line47 |  |  |  |  | 0.00, 1.03, 7.97, 0.00 |
| Line | Line21 |  |  |  |  | 0.00, 1.45, 7.97, 0.00 |
| Label | Label35 | Unit Charge |  |  |  | 5.32, 1.23, 0.74, 0.17 |
| Label | Label36 | Charge |  |  |  | 6.50, 1.25, 0.47, 0.17 |
| Label | Label46 | LocationCode |  |  |  | 7.15, 1.08, 0.57, 0.33 |
| Label | Label47 | Location Key |  |  |  | 6.88, 0.08, 0.83, 0.19 |
| Label | Label48 | S =Seed Bank |  |  |  | 6.88, 0.26, 1.10, 0.18 |
| Label | Label49 | P = Product Bank |  |  |  | 6.88, 0.44, 1.10, 0.18 |
| TextBox | Text55 |  | ="Non-WCF Storage Invoice Report: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date] |  |  | 2.49, 0.56, 3.46, 0.00 |
| TextBox | Text57 |  |  |  |  | 0.54, 0.17, 0.00, 0.00 |
| Label | Label71 | F = Freezer |  |  |  | 6.88, 0.61, 1.10, 0.18 |
| Label | Label72 | C = Cooler |  |  |  | 6.88, 0.79, 1.10, 0.18 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text43 |  | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.17, 0.00, 3.83, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Traditional_Category |  | Traditional_Category |  |  | 0.16, 0.00, 2.46, 0.23 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text77 |  | =[Traditional_Category] & " Totals" |  |  | 0.19, 0.00, 2.90, 0.23 |
| TextBox | Text78 |  | =Sum([bill_amt]) |  |  | 6.29, 0.03, 0.71, 0.19 |
| TextBox | Text79 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 4.04, 0.03, 0.83, 0.19 |
| Line | Line80 |  |  |  |  | 4.16, 0.00, 0.71, 0.00 |
| Line | Line81 |  |  |  |  | 6.29, 0.00, 0.71, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | Client_bill_amt2 |  |  | 6.30, 0.07, 0.71, 0.19 |
| TextBox | Text39 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 4.04, 0.07, 0.84, 0.19 |
| Line | Line41 |  |  |  |  | 4.17, 0.04, 0.71, 0.00 |
| Line | Line42 |  |  |  |  | 6.30, 0.04, 0.71, 0.00 |
| ComboBox | Combo93 |  | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] & " Totals" AS assoc FROM NMIS_ASSOCIATES; |  | 0.20, 0.05, 3.72, 0.21 |
| Line | Line95 |  |  |  |  | 0.12, 0.29, 7.79, 0.00 |
| TextBox | Text97 |  | =IIf(Sum([bill_amt])<[Forms]![Non_WCF_Storage_Billing_Report]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Client_min_bill_amt],"*Min Bill Amt*","") |  |  | 7.01, 0.07, 0.98, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.43, 0.25, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.22, 0.25, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.43, 0.02, 7.31, 0.00 |
| Label | Label68 | Minimum Lot Charge Used |  |  |  | 5.86, 0.04, 1.84, 0.18 |
| Label | Label69 | j |  |  |  | 5.61, 0.04, 0.25, 0.18 |
