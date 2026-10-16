# Report: Seed_Non_WCF_Billing2_Summary

**Grouping/sorting:** `GROUP`, `DIVERSE`, `PLNTMSTR_SYMBOL`, `Min_Chg_Used`, `CHG`, `UC`, `ACTIVITY_CODE`, `MGMT_CODE`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.28, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.06, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.06, 0.00, 3.24, 0.16 |
| Label | Label24 | Seed Invoice Summary by Species |  |  |  | 2.51, 0.55, 2.34, 0.19 |
| Label | Label105 | _____________________________________________________________________________________________________ |  |  |  | 0.01, 0.94, 7.40, 0.19 |
| TextBox | Text49 |  | ="Selected for Like Job Code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode] & "  AND NOT Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC] |  |  | 1.17, 0.75, 5.17, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box137 |  |  |  |  | 0.00, 0.00, 7.41, 0.23 |
| ComboBox | GROUP |  | GROUP | 0;WCF Seed;1;Extraction/Processing;2;Non-WCF Billable Transactions;3;Non-WCF Storage |  | 0.02, 0.00, 2.94, 0.23 |
| Label | Hourly_Total_Charges_Label | _Cost Per_ |  |  |  | 4.42, 0.26, 0.82, 0.18 |
| Label | SumOfCHARGE_PER_ACTIVITY_OVERRIDE_Label | Charge |  |  |  | 5.69, 0.26, 0.47, 0.18 |
| Label | Label34 | Units |  |  |  | 3.80, 0.26, 0.40, 0.17 |
| TextBox | Combo115 |  | =IIf([GROUP]=3,"(Balance as of " & [Forms]![Seed_Non_WCF_Billing_Report]![Storage_bill_Date] & ")") |  |  | 2.97, 0.00, 2.58, 0.23 |
| ComboBox | Combo140 |  | GROUP | 0;"# of Lots";1;Transactions;2;Transactions;3;"# of Lots" |  | 2.93, 0.25, 0.84, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | DIVERSE |  | DIVERSE | 0;Traditional Species;-1;Non-Traditional Species |  | 0.04, 0.00, 3.08, 0.23 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text59 |  | PLNTMSTR_SYMBOL |  |  | 0.08, 0.00, 0.70, 0.20 |
| ComboBox | Combo61 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 0.79, 0.00, 2.00, 0.20 |
| TextBox | Text118 |  | =Sum([CHARGE]) |  |  | 5.47, 0.00, 0.84, 0.20 |
| TextBox | Text119 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.44, 0.00, 0.72, 0.20 |
| TextBox | CHG |  | CHG |  |  | 4.40, 0.00, 0.55, 0.20 |
| TextBox | ACTIVITY_CODE |  | =IIf(IsNull([Min_Chg_Used]),Count([activity_code])) |  |  | 2.90, 0.00, 0.52, 0.20 |
| TextBox | Combo97 |  | UNIT_CODE |  |  | 4.17, 0.00, 0.23, 0.20 |
| TextBox | Combo99 |  | =IIf(Not IsNull([Min_Chg_Used]),"/Lot",[CPU_Used]) |  |  | 4.95, 0.00, 0.51, 0.20 |
| TextBox | Min_Chg_Used |  | Min_Chg_Used |  |  | 6.20, 0.01, 0.32, 0.19 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text122 |  | =Sum([CHARGE]) |  |  | 5.38, 0.17, 0.95, 0.21 |
| TextBox | Text123 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.45, 0.18, 0.72, 0.21 |
| Label | Label124 | _________ |  |  |  | 5.56, 0.00, 0.76, 0.20 |
| Label | Label125 | _________ |  |  |  | 3.43, 0.00, 0.74, 0.20 |
| ComboBox | Combo126 |  | DIVERSE | 0;Traditional Species Totals;-1;Non-Traditional Species Totals |  | 0.12, 0.17, 3.08, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Sum([CHARGE]) |  |  | 5.39, 0.17, 0.95, 0.21 |
| TextBox | Text35 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.46, 0.18, 0.72, 0.21 |
| Label | Label23 | _________ |  |  |  | 5.57, 0.00, 0.76, 0.20 |
| Label | Label63 | _________ |  |  |  | 3.44, 0.00, 0.74, 0.20 |
| ComboBox | Combo134 |  | GROUP | 0;WCF Seed Totals;1;Extraction/Processing Totals;2;Non-WCF Billable Transactions Totals;3;Non-WCF Storage Totals |  | 0.17, 0.17, 3.08, 0.23 |
| Label | Label135 | ___________________________________________________________________________________________________ |  |  |  | 0.15, 0.41, 7.29, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.43, 0.43, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.95, 0.43, 3.50, 0.18 |
| Label | Label96 | _____________________________________________________________________________________________________ |  |  |  | 0.00, 0.01, 7.44, 0.19 |
| Label | Label68 | Mimimum Lot Charge Used |  |  |  | 5.58, 0.22, 1.84, 0.18 |
| Label | Label69 | j |  |  |  | 5.29, 0.21, 0.25, 0.18 |
