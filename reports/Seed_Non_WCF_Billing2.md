# Report: Seed_Non_WCF_Billing2

**Grouping/sorting:** `Billing_Associate`, `Billing_Subunit`, `GROUP`, `DIVERSE`, `PLNTMSTR_SYMBOL`, `Min_Chg_Used`, `CHG`, `UC`, `ACTIVITY_CODE`, `MGMT_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Subforms/subreports:** `Report.SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport`, `Report.SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport`  
**Opened from (VBA):** `Form_Seed_Non_WCF_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.52, 0.00, 3.24, 0.16 |
| Label | Label24 | Seed Invoice |  |  |  | 3.34, 0.55, 1.59, 0.19 |
| Label | Label105 | _______________________________________________________________________________________________________ |  |  |  | 0.11, 0.67, 7.70, 0.19 |
| TextBox | Text154 |  | =IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode]),"Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode]) |  |  | 0.12, 0.24, 2.04, 0.21 |
| TextBox | Text143 |  | =IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC]),"Not Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC]) |  |  | 0.12, 0.46, 2.04, 0.21 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Billed_To_Associate |  | Billing_Associate | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.80, 0.00, 2.67, 0.20 |
| Label | Label25 | To: |  |  |  | 0.51, 0.00, 0.27, 0.19 |
| ComboBox | Address |  | Billing_Associate | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE1 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.80, 0.21, 2.67, 0.20 |
| ComboBox | Street Address |  | Billing_Associate | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE2 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.80, 0.42, 2.67, 0.20 |
| ComboBox | City |  | Billing_Associate | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE3 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.80, 0.62, 2.66, 0.20 |
| ComboBox | Billing_Extractory |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.80, 0.88, 2.66, 0.20 |
| Label | Label48 | From: |  |  |  | 0.34, 0.88, 0.43, 0.19 |
| ComboBox | Combo49 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE1 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.80, 1.08, 2.66, 0.20 |
| ComboBox | Combo50 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE2 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.80, 1.29, 2.66, 0.20 |
| ComboBox | Nursery_City |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE3 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.80, 1.50, 2.65, 0.20 |
| ComboBox | Bill_Number |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES; |  | 6.08, 0.48, 1.80, 0.20 |
| TextBox | Bill_Date | Invoice Date: | =Date() |  |  | 6.08, 0.90, 1.42, 0.20 |
| TextBox | Bill Period | Invoice Period: | =[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date] |  |  | 6.08, 0.69, 1.43, 0.20 |
| Label | Label61 | _______________________________________________________________________________________________________ |  |  |  | 0.14, 1.64, 7.70, 0.19 |
| Label | Label141 | Invoice Number: |  |  |  | 4.80, 0.50, 1.14, 0.19 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text43 |  | Billing_Subunit | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS assoc FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 3.83, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box137 |  |  |  |  | 0.00, 0.00, 8.00, 0.23 |
| ComboBox | GROUP |  | GROUP | 0;WCF Seed;1;Extraction/Processing;2;Non-WCF Billable Transactions;3;Non-WCF Storage |  | 0.02, 0.00, 2.94, 0.23 |
| Label | Hourly_Total_Charges_Label | _Cost Per_ |  |  |  | 4.42, 0.26, 0.82, 0.18 |
| Label | SumOfCHARGE_PER_ACTIVITY_OVERRIDE_Label | Charge |  |  |  | 5.69, 0.26, 0.47, 0.18 |
| Label | Label34 | Units |  |  |  | 3.80, 0.26, 0.40, 0.17 |
| Label | MGMT_CODE_Label | Client Job Code |  |  |  | 6.50, 0.26, 1.42, 0.18 |
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
| TextBox | Text118 |  | =Sum([CHARGE]) |  |  | 5.47, 0.00, 0.76, 0.20 |
| TextBox | Text119 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.44, 0.00, 0.72, 0.20 |
| TextBox | CHG |  | CHG |  |  | 4.40, 0.00, 0.55, 0.20 |
| TextBox | ACTIVITY_CODE |  | =IIf(Not IsNull([Min_Chg_Used]),Count([activity_code])) |  |  | 2.90, 0.00, 0.52, 0.20 |
| TextBox | Combo97 |  | UNIT_CODE |  |  | 4.17, 0.00, 0.23, 0.20 |
| TextBox | Combo99 |  | =IIf(Not IsNull([Min_Chg_Used]),"/Lot",[CPU_Used]) |  |  | 4.95, 0.00, 0.51, 0.20 |
| TextBox | MC |  | MC |  |  | 6.48, 0.00, 1.48, 0.20 |
| TextBox | Min_Chg_Used |  | Min_Chg_Used |  |  | 6.20, 0.01, 0.24, 0.19 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text122 |  | =Sum([CHARGE]) |  |  | 5.38, 0.17, 0.86, 0.21 |
| TextBox | Text123 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.45, 0.18, 0.72, 0.21 |
| Label | Label124 | _________ |  |  |  | 5.56, 0.00, 0.68, 0.20 |
| Label | Label125 | _________ |  |  |  | 3.43, 0.00, 0.74, 0.20 |
| ComboBox | Combo126 |  | DIVERSE | 0;Traditional Species Totals;-1;Non-Traditional Species Totals |  | 0.12, 0.17, 3.08, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Sum([CHARGE]) |  |  | 5.39, 0.17, 0.86, 0.21 |
| TextBox | Text35 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.46, 0.18, 0.72, 0.21 |
| Label | Label23 | _________ |  |  |  | 5.57, 0.00, 0.68, 0.20 |
| Label | Label63 | _________ |  |  |  | 3.44, 0.00, 0.74, 0.20 |
| ComboBox | Combo134 |  | GROUP | 0;WCF Seed Totals;1;Extraction/Processing Totals;2;Non-WCF Billable Transactions Totals;3;Non-WCF Storage Totals |  | 0.17, 0.17, 3.08, 0.23 |
| Label | Label135 | __________________________________________________________________________________________________________ |  |  |  | 0.15, 0.41, 7.78, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label74 | ________________________________________________________________________________________________________ |  |  |  | 0.14, 0.32, 7.70, 0.19 |
| Subform | EXTRACTION_BY_MGMT_CODE subreport |  | Report.SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport (master: Billing_Associate → child: BILLING_ASSOCIATE) |  |  | 0.20, 1.51, 2.38, 0.25 |
| Subform | Child91 |  | Report.SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport (master: Billing_Associate → child: BILLING_ASSOCIATE) |  |  | 3.78, 1.51, 2.22, 0.25 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.14, 0.72, 3.64, 0.19 |
| TextBox | Text76 |  | =[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line] |  |  | 4.18, 0.91, 3.60, 0.21 |
| Label | Label108 | ________________________________________________________________________________________________________ |  |  |  | 0.15, 1.32, 7.70, 0.19 |
| TextBox | Text110 |  | =Sum([CHARGE]) |  |  | 5.39, 0.18, 0.86, 0.21 |
| Label | Label111 | _________ |  |  |  | 5.57, 0.00, 0.68, 0.20 |
| TextBox | Text147 |  | =[Forms]![Seed_Non_WCF_Billing_Report]![Title_Line] |  |  | 4.18, 1.11, 3.60, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.43, 0.43, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.22, 0.43, 3.50, 0.18 |
| Label | Label96 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.01, 7.92, 0.19 |
| Label | Label68 | Mimimum Lot Charge Used |  |  |  | 6.07, 0.22, 1.84, 0.18 |
| Label | Label69 | j |  |  |  | 5.82, 0.22, 0.25, 0.18 |
