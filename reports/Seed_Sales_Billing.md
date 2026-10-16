# Report: Seed_Sales_Billing

**Caption:** Extraction_Non_WCF_Billing  
**Record source:**

```sql
SELECT [**Seed_Billing_Table].*, [**Seed_Billing_Table].Billing_Subunit FROM [**Seed_Billing_Table] WHERE ((([**Seed_Billing_Table].Billing_Subunit) Like [Forms]![Seed_Non_WCF_Billing_Report]![Like_Client] & "*"));
```

**Grouping/sorting:** `Billing_Associate`, `PLNTMSTR_SYMBOL`, `ID_SOURCE2B`, `ACTIVITY_CODE`, `MGMT_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Subforms/subreports:** `Report.SEED_SALES_BILLING_BY_MGMT_CODE subreport`, `Report.SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport`  
**Opened from (VBA):** `Form_Non_WCF_Storage_Billing_Report`, `Form_Propagule_Billing_Report`, `Form_Seed_Non_WCF_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.80, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.58, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.58, 0.00, 3.24, 0.16 |
| Label | Label24 | WCF Seed Invoice |  |  |  | 3.66, 0.55, 1.24, 0.19 |
| Label | Label105 | __________________________________________________________________________________________________________ |  |  |  | 0.09, 0.67, 7.86, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Lot ID |  |  |  | 0.09, 1.89, 0.49, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.18, 1.90, 0.47, 0.17 |
| Label | Hourly_Total_Charges_Label | Cost/Unit |  |  |  | 4.71, 1.89, 0.68, 0.17 |
| Label | SumOfCHARGE_PER_ACTIVITY_OVERRIDE_Label | Charge |  |  |  | 5.83, 1.90, 0.47, 0.18 |
| Label | Label34 | Units |  |  |  | 4.11, 1.89, 0.40, 0.17 |
| ComboBox | Billed_To_Associate |  | Billing_Associate | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.86, 0.00, 2.67, 0.20 |
| Label | Label25 | To: |  |  |  | 0.56, 0.00, 0.27, 0.19 |
| ComboBox | Address |  | Billing_Associate | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE1 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.86, 0.21, 2.67, 0.20 |
| ComboBox | Street Address |  | Billing_Associate | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE2 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.86, 0.42, 2.67, 0.20 |
| ComboBox | City |  | Billing_Associate | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE3 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.86, 0.62, 2.66, 0.20 |
| ComboBox | Billing_Extractory |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.86, 0.88, 2.66, 0.20 |
| Label | Label48 | From: |  |  |  | 0.40, 0.88, 0.43, 0.19 |
| ComboBox | Combo49 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE1 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.86, 1.08, 2.66, 0.20 |
| ComboBox | Combo50 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE2 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.86, 1.29, 2.66, 0.20 |
| ComboBox | Nursery_City |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.MAIL_ADDRESS_LINE3 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 0.86, 1.50, 2.65, 0.20 |
| ComboBox | Bill_Number | Bill Number: | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 6.13, 0.48, 1.80, 0.20 |
| TextBox | Bill_Date | Billing Date: | =Date() |  |  | 6.13, 0.90, 1.42, 0.20 |
| TextBox | Bill Period | Billing Period: | =[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date] |  |  | 6.13, 0.69, 1.43, 0.20 |
| Label | Label61 | __________________________________________________________________________________________________________ |  |  |  | 0.12, 1.65, 7.84, 0.19 |
| Label | Label88 | Tkt/Transaction |  |  |  | 2.90, 1.88, 0.97, 0.18 |
| Label | MGMT_CODE_Label |    Client Job Code & %   |  |  |  | 6.47, 1.88, 1.51, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCE2B |  |  | 0.09, 0.00, 2.85, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS_PER_MGMT_CODE |  |  | 3.88, 0.00, 0.60, 0.19 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 4.72, 0.00, 0.58, 0.19 |
| TextBox | CHARGE |  | [CHARGE] |  |  | 5.66, 0.00, 0.72, 0.19 |
| TextBox | Combo97 |  | UNIT_CODE |  |  | 4.48, 0.00, 0.23, 0.19 |
| TextBox | Combo99 |  | =IIf([Charge_Per_Unit]<>0,"/" & [UNIT_CODE],"****") |  |  | 5.27, 0.00, 0.51, 0.19 |
| TextBox | ACTIVITY_CODE |  | TKT_Activity |  |  | 2.95, 0.00, 0.93, 0.19 |
| TextBox | MGMT_CODE_N_PCT |  | MC |  |  | 6.44, 0.00, 1.54, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Sum([CHARGE]) |  |  | 5.63, 0.19, 0.76, 0.19 |
| TextBox | Text35 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.78, 0.20, 0.72, 0.19 |
| Label | Label23 | _________ |  |  |  | 5.71, 0.02, 0.68, 0.17 |
| Label | Label63 | _________ |  |  |  | 3.75, 0.02, 0.74, 0.17 |
| Label | Label74 | ________________________________________________________________________________________________________ |  |  |  | 0.20, 0.32, 7.70, 0.19 |
| Subform | EXTRACTION_BY_MGMT_CODE subreport |  | Report.SEED_SALES_BILLING_BY_MGMT_CODE subreport (master: Billing_Associate → child: BILLING_ASSOCIATE) |  |  | 0.25, 1.31, 2.43, 0.25 |
| Subform | Child91 |  | Report.SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport (master: Billing_Associate → child: BILLING_ASSOCIATE) |  |  | 3.83, 1.31, 2.22, 0.25 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.19, 0.72, 3.64, 0.19 |
| TextBox | Text76 |  | =[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line] |  |  | 4.23, 0.91, 3.60, 0.21 |
| Label | Label108 | __________________________________________________________________________________________________________ |  |  |  | 0.12, 1.11, 7.87, 0.19 |
