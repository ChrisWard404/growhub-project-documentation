# Report: NMIS_Non-WCF_Storage_Billing_Report_P

**Caption:** Non-WCF Storage Billing Report  
**Grouping/sorting:** `Billing_Associate`, `CLIENT_ASSOCIATE`, `PLNTMSTR_SYMBOL`, `ID_Sublot`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Non_WCF_Storage_Billing_Report`, `Form_Propagule_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.85, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.64, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.64, 0.00, 3.24, 0.16 |
| Label | ID_Label | Lot ID |  |  |  | 0.34, 1.31, 0.39, 0.18 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.69, 1.29, 0.97, 0.18 |
| Label | Sum Of ACTIVITY_UNITS_Label | Units |  |  |  | 5.29, 1.30, 0.35, 0.17 |
| Line | Line47 |  |  |  |  | 0.00, 1.27, 7.93, 0.00 |
| Line | Line21 |  |  |  |  | 0.00, 1.51, 7.93, 0.00 |
| ComboBox | Text43 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 1.33, 0.77, 6.04, 0.26 |
| Label | Label35 | Charge/Unit |  |  |  | 6.13, 1.30, 0.74, 0.17 |
| Label | Label36 | Charge |  |  |  | 7.30, 1.31, 0.47, 0.17 |
| TextBox | Text44 |  | ="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date] |  |  | 2.64, 1.06, 3.25, 0.19 |
| TextBox | Text55 |  | ="Product Non-WCF Storage Billing Report" |  |  | 1.84, 0.56, 4.96, 0.00 |
| TextBox | Text46 |  | ="Balance as of " & [Forms]![Non_WCF_Storage_Billing_Report]![Storage_bill_Date] |  |  | 6.79, 0.46, 1.12, 0.32 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.50, 0.04, 3.17, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Sublot |  |  | 0.33, 0.00, 1.00, 0.19 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 4.98, 0.00, 0.69, 0.19 |
| TextBox | Unit_Price |  | Unit_Price |  |  | 5.82, 0.00, 0.00, 0.19 |
| TextBox | Charge |  | bill_amt |  |  | 7.06, 0.00, 0.71, 0.19 |
| TextBox | PLNTMSTR_SYMBOL |  | SOURCE |  |  | 1.39, 0.00, 2.71, 0.19 |
| TextBox | Min_Chg_Used |  | Min_Chg_Used |  |  | 6.80, 0.00, 0.17, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text47 |  | PLNTMSTR_SYMBOL |  |  | 1.44, 0.04, 0.80, 0.19 |
| ComboBox | Combo49 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query; |  | 2.30, 0.04, 2.59, 0.19 |
| TextBox | Text52 |  | =Sum(Round([bill_amt],4)) |  |  | 7.07, 0.04, 0.71, 0.19 |
| TextBox | Text53 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 4.97, 0.04, 0.69, 0.19 |
| Line | Line54 |  |  |  |  | 4.96, 0.01, 0.71, 0.00 |
| Line | Line55 |  |  |  |  | 7.07, 0.01, 0.71, 0.00 |
| Label | Label56 | Totals |  |  |  | 0.94, 0.06, 0.41, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo58 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.54, 0.02, 3.17, 0.21 |
| TextBox | Text61 |  | =Sum(Round([bill_amt],4)) |  |  | 7.07, 0.03, 0.71, 0.19 |
| TextBox | Text62 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 4.97, 0.03, 0.69, 0.19 |
| Line | Line63 |  |  |  |  | 4.96, 0.00, 0.71, 0.00 |
| Line | Line64 |  |  |  |  | 7.07, 0.00, 0.71, 0.00 |
| Line | Line66 |  |  |  |  | 0.54, 0.25, 7.25, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text38 |  | =Sum(Round([bill_amt],4)) |  |  | 7.07, 0.07, 0.71, 0.19 |
| TextBox | Text39 |  | =Sum([Sum Of ACTIVITY_UNITS]) |  |  | 4.97, 0.07, 0.69, 0.19 |
| Line | Line41 |  |  |  |  | 4.96, 0.04, 0.71, 0.00 |
| Line | Line42 |  |  |  |  | 7.07, 0.04, 0.71, 0.00 |
| ComboBox | Combo59 |  | Billing_Associate | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.54, 0.04, 3.17, 0.21 |
| Label | Label74 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.32, 7.92, 0.19 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.24, 0.69, 3.70, 0.19 |
| TextBox | Text76 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line] |  |  | 4.31, 0.93, 3.61, 0.21 |
| Label | Label108 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 1.04, 7.92, 0.19 |
| TextBox | Text117 |  | =[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line] |  |  | 4.31, 0.57, 3.61, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.47, 0.30, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.32, 0.30, 3.47, 0.18 |
| Line | Line22 |  |  |  |  | 0.56, 0.01, 7.23, 0.00 |
| Label | Label68 | Mimimum Lot Charge Used |  |  |  | 5.95, 0.04, 1.84, 0.18 |
| Label | Label69 | j |  |  |  | 5.70, 0.04, 0.25, 0.18 |
