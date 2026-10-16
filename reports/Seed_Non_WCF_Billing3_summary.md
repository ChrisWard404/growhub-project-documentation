# Report: Seed_Non_WCF_Billing3_summary

**Grouping/sorting:** `Billing_Associate`, `Billing_Subunit`, `GROUP`, `DIVERSE`, `CHG`, `Min_Chg_Used`, `UC`, `ACTIVITY_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Seed_Non_WCF_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.52, 0.00, 3.24, 0.16 |
| Label | Label24 | Seed Invoice Summary |  |  |  | 3.32, 0.55, 1.66, 0.19 |
| Label | Label105 | _______________________________________________________________________________________________________ |  |  |  | 0.11, 0.96, 7.70, 0.19 |
| TextBox | Text49 |  | ="Selected for Like Job Code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode] & "  AND NOT Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC] |  |  | 1.41, 0.74, 5.17, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo149 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 3.83, 0.21 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text43 |  | Billing_Subunit | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 3.83, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box137 |  |  |  |  | 0.00, 0.00, 7.83, 0.23 |
| ComboBox | GROUP |  | GROUP | 0;WCF Seed;1;Extraction/Processing;2;Non-WCF Billable Transactions;3;Non-WCF Storage |  | 0.02, 0.02, 2.90, 0.23 |
| Label | Hourly_Total_Charges_Label | _Cost Per_ |  |  |  | 4.42, 0.27, 0.82, 0.18 |
| Label | SumOfCHARGE_PER_ACTIVITY_OVERRIDE_Label | Charge |  |  |  | 5.69, 0.27, 0.47, 0.18 |
| Label | Label34 | Units |  |  |  | 3.80, 0.27, 0.40, 0.17 |
| ComboBox | Combo140 |  | GROUP | 0;# of Lots;1;Transactions;2;Transactions;3;"# of Lots" |  | 2.93, 0.27, 0.84, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text118 |  | =Sum([CHARGE]) |  |  | 5.41, 0.00, 0.82, 0.20 |
| TextBox | Text119 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.44, 0.00, 0.78, 0.20 |
| TextBox | CHG |  | CHG |  |  | 4.40, 0.00, 0.55, 0.20 |
| TextBox | ACTIVITY_CODE |  | =IIf(IsNull([Min_Chg_Used]),Count([activity_code])) |  |  | 2.90, 0.00, 0.52, 0.20 |
| TextBox | Combo97 |  | UNIT_CODE |  |  | 4.22, 0.00, 0.23, 0.19 |
| TextBox | Combo99 |  | =IIf(Not IsNull([Min_Chg_Used]),"/Lot",[CPU_Used]) |  |  | 4.95, 0.00, 0.51, 0.20 |
| ComboBox | Combo126 |  | DIVERSE | 0;Traditional Species;-1;Non-Traditional Species |  | 0.08, 0.00, 2.75, 0.20 |
| TextBox | Min_Chg_Used |  | Min_Chg_Used |  |  | 6.23, 0.00, 0.25, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Sum([CHARGE]) |  |  | 5.39, 0.17, 0.86, 0.21 |
| TextBox | Text35 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.46, 0.18, 0.78, 0.21 |
| Label | Label23 | _________ |  |  |  | 5.57, 0.00, 0.68, 0.20 |
| Label | Label63 | _________ |  |  |  | 3.44, 0.00, 0.80, 0.20 |
| ComboBox | Combo134 |  | GROUP | 0;WCF Seed Totals;1;Extraction/Processing Totals;2;Non-WCF Billable Transactions Totals;3;Non-WCF Storage Totals |  | 0.17, 0.17, 3.08, 0.23 |
| Label | Label135 | ________________________________________________________________________________________________________ |  |  |  | 0.15, 0.41, 7.69, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label74 | ______________________________________________________________________________________________________ |  |  |  | 0.14, 0.32, 7.70, 0.19 |
| TextBox | Text110 |  | =Sum([CHARGE]) |  |  | 5.39, 0.18, 0.86, 0.21 |
| Label | Label111 | _________ |  |  |  | 5.57, 0.00, 0.68, 0.20 |
| ComboBox | Combo153 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] & " Total" AS assoc FROM NMIS_ASSOCIATES; |  | 0.14, 0.18, 3.83, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.45, 0.42, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.24, 0.42, 3.50, 0.18 |
| Label | Label96 | _________________________________________________________________________________________________________ |  |  |  | 0.02, 0.00, 7.81, 0.20 |
| Label | Label68 | Mimimum Lot Charge Used |  |  |  | 5.95, 0.21, 1.84, 0.18 |
| Label | Label69 | j |  |  |  | 5.70, 0.21, 0.25, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text150 |  | =Sum([CHARGE]) |  |  | 5.39, 0.18, 0.86, 0.21 |
| Label | Label151 | _________ |  |  |  | 5.57, 0.00, 0.68, 0.20 |
| Label | Label152 | Grand Total |  |  |  | 3.86, 0.17, 1.26, 0.21 |
