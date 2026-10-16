# Report: NMIS_Non-WCF_Storage_Billing_w_lots_Report

**Grouping/sorting:** `Billing_Associate`, `STORED_FOR_ASSOCIATE`, `DIVERSE`, `SPECIES_GROUP`, `PLNTMSTR_SYMBOL`, `ID_Sublot`, `key`  
**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`, `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Non_WCF_Storage_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.69, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.47, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.47, 0.00, 3.24, 0.16 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.52, 1.23, 0.97, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Units |  |  |  | 4.36, 1.23, 0.35, 0.17 |
| Line | Line47 |  |  |  |  | 0.08, 1.03, 7.80, 0.00 |
| Line | Line21 |  |  |  |  | 0.08, 1.45, 7.80, 0.00 |
| Label | Label35 | Unit Charge |  |  |  | 5.20, 1.23, 0.74, 0.17 |
| Label | Label36 | Charge |  |  |  | 6.37, 1.25, 0.47, 0.17 |
| Label | Label45 |  Lot ID |  |  |  | 0.12, 1.25, 0.43, 0.18 |
| Label | Label46 | LocationCode |  |  |  | 7.02, 1.08, 0.57, 0.33 |
| Label | Label47 | Location Key |  |  |  | 6.71, 0.08, 0.92, 0.19 |
| Label | Label48 | S =Seed Bank |  |  |  | 6.71, 0.26, 1.15, 0.18 |
| Label | Label49 | P = Product Bank |  |  |  | 6.71, 0.44, 1.15, 0.18 |
| TextBox | Text55 |  | ="Non-WCF Storage Invoice Report: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date] |  |  | 2.36, 0.56, 3.46, 0.00 |
| TextBox | Text57 |  |  |  |  | 0.42, 0.17, 0.00, 0.00 |
| Label | Label71 | F = Freezer |  |  |  | 6.71, 0.61, 1.15, 0.18 |
| Label | Label72 | C = Cooler |  |  |  | 6.71, 0.79, 1.15, 0.18 |
| ComboBox | Combo82 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 1.50, 0.74, 5.19, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text43 |  | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.04, 0.02, 3.83, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Traditional_Category |  | Traditional_Category |  |  | 0.03, 0.02, 2.46, 0.23 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_GROUP |  | SPECIES_GROUP |  |  | 0.10, 0.00, 1.62, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum Of ACTIVITY_UNITS |  | SumOfSum Of ACTIVITY_UNITS |  |  | 4.05, 0.01, 0.69, 0.18 |
| TextBox | Charge_per_Unit |  | =Val([Unit_Price]) |  |  | 4.91, 0.01, 0.00, 0.18 |
| TextBox | Charge |  | SumOfbill_amt |  |  | 6.16, 0.01, 0.71, 0.18 |
| TextBox | key |  | Loc_Key |  |  | 7.14, 0.01, 0.33, 0.18 |
| TextBox | ID_Sublot |  | ID_Sublot |  |  | 0.12, 0.01, 0.00, 0.18 |
| TextBox | SOURCE |  | SOURCE |  |  | 1.15, 0.01, 2.89, 0.18 |
| TextBox | Min_Chg_Used |  | Min_Chg_Used |  |  | 6.86, 0.00, 0.25, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text59 |  | PLNTMSTR_SYMBOL |  |  | 1.31, 0.05, 0.70, 0.20 |
| ComboBox | Combo61 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 2.02, 0.05, 2.00, 0.20 |
| TextBox | Text66 |  | =Sum([SumOfbill_amt]) |  |  | 6.16, 0.06, 0.71, 0.19 |
| TextBox | Text67 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 4.05, 0.06, 0.69, 0.19 |
| Line | Line68 |  |  |  |  | 4.03, 0.03, 0.71, 0.00 |
| Line | Line69 |  |  |  |  | 6.16, 0.03, 0.71, 0.00 |
| Label | Label70 | Total for |  |  |  | 0.72, 0.06, 0.58, 0.19 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text77 |  | =[Traditional_Category] & " Totals" |  |  | 0.06, 0.00, 2.90, 0.23 |
| TextBox | Text78 |  | =Sum([SumOfbill_amt]) |  |  | 6.16, 0.03, 0.71, 0.19 |
| TextBox | Text79 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 3.91, 0.03, 0.83, 0.19 |
| Line | Line80 |  |  |  |  | 4.03, 0.01, 0.71, 0.00 |
| Line | Line81 |  |  |  |  | 6.16, 0.00, 0.71, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client_Total |  | Client_bill_amt2 |  |  | 6.18, 0.07, 0.71, 0.19 |
| TextBox | Text39 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 3.92, 0.07, 0.84, 0.19 |
| Line | Line41 |  |  |  |  | 4.05, 0.04, 0.71, 0.00 |
| Line | Line42 |  |  |  |  | 6.18, 0.04, 0.71, 0.00 |
| ComboBox | Combo93 |  | STORED_FOR_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] & " Totals" AS assoc FROM NMIS_ASSOCIATES; |  | 0.07, 0.05, 3.72, 0.21 |
| Line | Line95 |  |  |  |  | 0.00, 0.29, 7.88, 0.01 |
| TextBox | Text97 |  | =IIf(Sum([SumOfbill_amt])<[Forms]![Non_WCF_Storage_Billing_Report]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Client_min_bill_amt],"*Min Bill Amt*","") |  |  | 6.88, 0.07, 0.96, 0.19 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Billing_Associate_Total |  | SumOfClient_bill_amt |  |  | 6.18, 0.04, 0.71, 0.19 |
| TextBox | Text84 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 3.96, 0.04, 0.80, 0.19 |
| Line | Line86 |  |  |  |  | 4.05, 0.01, 0.71, 0.00 |
| Line | Line87 |  |  |  |  | 6.18, 0.01, 0.71, 0.00 |
| Label | Label88 | ____________________________________________________________________________________________________________ |  |  |  | 0.04, 0.25, 7.83, 0.21 |
| Label | Label89 | __________________________________________________ |  |  |  | 4.11, 0.61, 3.70, 0.19 |
| TextBox | Text90 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line] |  |  | 4.19, 0.85, 3.61, 0.21 |
| Label | Label91 | ______________________________________________________________________________________________________________ |  |  |  | 0.00, 0.97, 7.88, 0.20 |
| TextBox | Text92 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line] |  |  | 4.19, 0.50, 3.61, 0.21 |
| ComboBox | Combo94 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] & " Totals" AS assoc FROM NMIS_ASSOCIATES; |  | 0.08, 0.04, 3.75, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.30, 0.46, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.26, 0.46, 3.50, 0.18 |
| Label | Label96 | _____________________________________________________________________________________________________________ |  |  |  | 0.00, 0.00, 7.86, 0.21 |
| Label | Label68 | Minimum Lot Charge Used |  |  |  | 5.92, 0.25, 1.84, 0.18 |
| Label | Label69 | j |  |  |  | 5.67, 0.25, 0.25, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([SumOfbill_amt]) |  |  | 6.06, 0.03, 0.82, 0.19 |
| TextBox | Text51 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 3.75, 0.03, 1.00, 0.19 |
| Label | Label52 | Grand Totals |  |  |  | 0.15, 0.04, 0.80, 0.18 |
| Line | Line53 |  |  |  |  | 4.05, 0.00, 0.71, 0.00 |
| Line | Line54 |  |  |  |  | 6.18, 0.00, 0.71, 0.00 |
