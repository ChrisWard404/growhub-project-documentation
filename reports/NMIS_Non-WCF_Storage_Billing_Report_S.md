# Report: NMIS_Non-WCF_Storage_Billing_Report_S

**Caption:** Non-WCF Storage Billing Report  
**Grouping/sorting:** `Billing_Associate`, `PLNTMSTR_SYMBOL`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Non_WCF_Storage_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.42, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.21, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.21, 0.00, 3.24, 0.16 |
| TextBox | Text55 |  | ="Source Non-WCF Storage Billing Report" |  |  | 1.50, 0.56, 4.75, 0.00 |
| Label | ID_Label | Lot ID |  |  |  | 0.15, 1.30, 0.39, 0.18 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.21, 1.30, 0.97, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Units |  |  |  | 4.81, 1.31, 0.35, 0.17 |
| Line | Line47 |  |  |  |  | 0.09, 1.28, 7.23, 0.00 |
| Line | Line21 |  |  |  |  | 0.08, 1.52, 7.23, 0.00 |
| ComboBox | Text43 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.85, 0.76, 6.04, 0.26 |
| Label | Label35 | Charge/Unit |  |  |  | 5.65, 1.31, 0.74, 0.17 |
| Label | Label36 | Charge |  |  |  | 6.82, 1.32, 0.47, 0.17 |
| TextBox | Text46 |  | ="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date] |  |  | 2.16, 1.05, 3.25, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.11, 0.00, 0.80, 0.19 |
| TextBox | Sum Of ACTIVITY_UNITS |  | SumOfSum Of ACTIVITY_UNITS |  |  | 4.50, 0.00, 0.69, 0.19 |
| TextBox | Unit_Price |  | Unit_Price |  |  | 5.32, 0.00, 0.00, 0.19 |
| TextBox | Charge |  | bill_amt |  |  | 6.58, 0.00, 0.71, 0.19 |
| TextBox | PLNTMSTR_SYMBOL |  | SOURCE |  |  | 0.97, 0.00, 2.71, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text47 |  | =Sum(Round([bill_amt],4)) |  |  | 6.59, 0.03, 0.71, 0.19 |
| TextBox | Text48 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 4.50, 0.03, 0.69, 0.19 |
| Label | Label49 | Totals |  |  |  | 0.53, 0.04, 0.41, 0.17 |
| Line | Line50 |  |  |  |  | 4.48, 0.00, 0.71, 0.00 |
| Line | Line51 |  |  |  |  | 6.59, 0.00, 0.71, 0.00 |
| TextBox | Text52 |  | PLNTMSTR_SYMBOL |  |  | 0.98, 0.03, 0.80, 0.19 |
| ComboBox | Combo49 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 1.84, 0.03, 2.59, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum(Round([bill_amt],4)) |  |  | 6.59, 0.07, 0.71, 0.19 |
| TextBox | Text39 |  | =Sum([SumOfSum Of ACTIVITY_UNITS]) |  |  | 4.50, 0.07, 0.69, 0.19 |
| Label | Label40 | Totals |  |  |  | 0.27, 0.08, 0.41, 0.17 |
| Line | Line41 |  |  |  |  | 4.48, 0.04, 0.71, 0.00 |
| Line | Line42 |  |  |  |  | 6.59, 0.04, 0.71, 0.00 |
| Label | Label74 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.29, 7.92, 0.19 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.24, 0.66, 3.70, 0.19 |
| TextBox | Text76 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line] |  |  | 4.31, 0.90, 3.61, 0.21 |
| Label | Label108 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 1.01, 7.92, 0.19 |
| TextBox | Text117 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line] |  |  | 4.31, 0.54, 3.61, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.89, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.13, 0.14, 7.23, 0.00 |
