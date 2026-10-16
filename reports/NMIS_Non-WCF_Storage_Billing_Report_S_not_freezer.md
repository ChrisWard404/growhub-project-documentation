# Report: NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer

**Caption:** Non-WCF Storage Billing Report  
**Grouping/sorting:** `Billing_Associate`, `PLNTMSTR_SYMBOL`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Non_WCF_Storage_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.49, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.27, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.27, 0.00, 3.24, 0.16 |
| TextBox | Text55 |  | ="Source Non-WCF Storage Billing Report" |  |  | 1.56, 0.56, 4.75, 0.00 |
| Label | ID_Label | Lot ID |  |  |  | 0.08, 1.30, 0.39, 0.18 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.27, 1.30, 0.97, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Units |  |  |  | 4.87, 1.31, 0.35, 0.17 |
| Line | Line47 |  |  |  |  | 0.00, 1.28, 7.98, 0.00 |
| Line | Line21 |  |  |  |  | 0.00, 1.52, 7.98, 0.00 |
| ComboBox | Text43 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.92, 0.76, 6.04, 0.26 |
| Label | Label35 | Charge/Unit |  |  |  | 5.30, 1.31, 0.74, 0.17 |
| Label | Label36 | Charge |  |  |  | 6.48, 1.32, 0.47, 0.17 |
| TextBox | Text46 |  | ="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date] |  |  | 2.22, 1.05, 3.25, 0.19 |
| Label | Label53 | Location |  |  |  | 7.27, 1.32, 0.57, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.00, 0.00, 0.98, 0.19 |
| TextBox | Sum Of ACTIVITY_UNITS |  | LastOfSum Of ACTIVITY_UNITS |  |  | 4.56, 0.00, 0.69, 0.19 |
| TextBox | Unit_Price |  | Unit_Price |  |  | 5.34, 0.00, 0.67, 0.19 |
| TextBox | Charge |  | bill_amt |  |  | 6.24, 0.00, 0.71, 0.19 |
| TextBox | PLNTMSTR_SYMBOL |  | SOURCE |  |  | 1.04, 0.00, 2.71, 0.19 |
| TextBox | Location |  | Location |  |  | 7.08, 0.00, 0.77, 0.19 |
| TextBox | Min_Chg_Used |  | Min_Chg_Used |  |  | 6.90, 0.00, 0.17, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text47 |  | =Sum(Round([bill_amt],4)) |  |  | 6.25, 0.03, 0.71, 0.19 |
| TextBox | Text48 |  | =Sum([LastOfSum Of ACTIVITY_UNITS]) |  |  | 4.56, 0.03, 0.69, 0.19 |
| Label | Label49 | Totals |  |  |  | 0.59, 0.04, 0.41, 0.17 |
| Line | Line50 |  |  |  |  | 4.55, 0.00, 0.71, 0.00 |
| Line | Line51 |  |  |  |  | 6.25, 0.00, 0.71, 0.00 |
| TextBox | Text52 |  | PLNTMSTR_SYMBOL |  |  | 1.04, 0.03, 0.80, 0.19 |
| ComboBox | Combo49 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 1.90, 0.03, 2.59, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum(Round([bill_amt],4)) |  |  | 6.25, 0.07, 0.71, 0.19 |
| TextBox | Text39 |  | =Sum([LastOfSum Of ACTIVITY_UNITS]) |  |  | 4.56, 0.07, 0.69, 0.19 |
| Label | Label40 | Totals |  |  |  | 0.33, 0.08, 0.41, 0.17 |
| Line | Line41 |  |  |  |  | 4.55, 0.04, 0.71, 0.00 |
| Line | Line42 |  |  |  |  | 6.25, 0.04, 0.71, 0.00 |
| Label | Label74 | ___________________________________________________________________________________________________________ |  |  |  | 0.06, 0.29, 7.92, 0.19 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.30, 0.66, 3.70, 0.19 |
| TextBox | Text76 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line] |  |  | 4.38, 0.90, 3.61, 0.21 |
| Label | Label108 | ___________________________________________________________________________________________________________ |  |  |  | 0.06, 1.01, 7.92, 0.19 |
| TextBox | Text117 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line] |  |  | 4.38, 0.54, 3.61, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.14, 0.24, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.99, 0.24, 3.91, 0.18 |
| Line | Line22 |  |  |  |  | 0.23, 0.00, 7.64, 0.00 |
| Label | Label68 | Mimimum Lot Charge Used |  |  |  | 6.05, 0.04, 1.84, 0.18 |
| Label | Label69 | j |  |  |  | 5.80, 0.04, 0.25, 0.18 |
