# Report: Seed_Non_WCF_Billing_Summary_bu

**Caption:** Extraction_Non_WCF_Billing  
**Record source:**

```sql
SEED_BILLING_NON_WCF QUERY
```

**Grouping/sorting:** `Billing_Associate`, `GROUP`, `PLNTMSTR_SYMBOL`, `ID_SOURCE2B`, `ACTIVITY_DATE`, `ACTIVITY_CODE`, `MGMT_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.52, 0.00, 3.24, 0.16 |
| Label | Label24 | Non-WCF Seed Invoice |  |  |  | 3.44, 0.55, 1.57, 0.19 |
| Label | Label105 | _______________________________________________________________________________________________________ |  |  |  | 0.11, 0.67, 7.70, 0.19 |

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
| ComboBox | Bill_Number | Bill Number: | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES; |  | 6.08, 0.48, 1.80, 0.20 |
| TextBox | Bill_Date | Billing Date: | =Date() |  |  | 6.08, 0.90, 1.42, 0.20 |
| TextBox | Bill Period | Billing Period: | =[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date] |  |  | 6.08, 0.69, 1.43, 0.20 |
| Label | Label61 | _______________________________________________________________________________________________________ |  |  |  | 0.14, 1.64, 7.70, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | GROUP |  | GROUP | 1;Extraction/Processing;2;Billable Transactions |  | 0.04, 0.02, 3.58, 0.23 |
| Label | ID_Label | Lot ID |  |  |  | 0.03, 0.25, 0.49, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.12, 0.25, 0.47, 0.17 |
| Label | Hourly_Total_Charges_Label | _Cost Per_ |  |  |  | 4.67, 0.25, 0.82, 0.18 |
| Label | SumOfCHARGE_PER_ACTIVITY_OVERRIDE_Label | Charge |  |  |  | 5.76, 0.25, 0.47, 0.18 |
| Label | Label34 | Units |  |  |  | 4.05, 0.25, 0.40, 0.17 |
| Label | Label88 | Transaction |  |  |  | 2.90, 0.25, 0.87, 0.17 |
| Label | MGMT_CODE_Label |    Client Job Code & %   |  |  |  | 6.41, 0.25, 1.51, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCE2B |  |  | 0.04, 0.00, 2.96, 0.17 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS_PER_MGMT_CODE |  |  | 3.76, 0.00, 0.67, 0.17 |
| TextBox | CHARGE_PER_UNIT |  | CHG |  |  | 4.66, 0.00, 0.58, 0.17 |
| TextBox | CHARGE |  | [CHARGE] |  |  | 5.61, 0.00, 0.72, 0.17 |
| TextBox | Combo97 |  | UNIT_CODE |  |  | 4.42, 0.00, 0.23, 0.17 |
| TextBox | Combo99 |  | =IIf([Charge_Per_Unit]<>0,"/" & [UC],"****") |  |  | 5.21, 0.00, 0.51, 0.17 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 3.00, 0.00, 0.74, 0.17 |
| TextBox | MGMT_CODE_N_PCT |  | MC |  |  | 6.39, 0.00, 1.61, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Sum([CHARGE]) |  |  | 5.56, 0.17, 0.76, 0.21 |
| TextBox | Text35 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.71, 0.18, 0.72, 0.21 |
| Label | Label23 | _________ |  |  |  | 5.65, 0.00, 0.68, 0.20 |
| Label | Label63 | _________ |  |  |  | 3.69, 0.00, 0.74, 0.20 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label74 | ________________________________________________________________________________________________________ |  |  |  | 0.14, 0.32, 7.70, 0.19 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.14, 0.72, 3.64, 0.19 |
| TextBox | Text76 |  | =[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line] |  |  | 4.18, 0.91, 3.60, 0.21 |
| Label | Label108 | ________________________________________________________________________________________________________ |  |  |  | 0.14, 1.12, 7.70, 0.19 |
| TextBox | Text110 |  | =Sum([CHARGE]) |  |  | 5.56, 0.18, 0.76, 0.21 |
| Label | Label111 | _________ |  |  |  | 5.65, 0.00, 0.68, 0.20 |
