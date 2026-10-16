# Report: Seed_Extraction_Billing

**Grouping/sorting:** `Billing_Associate`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Subforms/subreports:** `Report.NMIS_CLIENT_MGMT_CODES2 subreport`, `Report.EXTRACTION_BY_MGMT_CODE subreport`, `Report.EXTRACTION_INCOME_BY_MGMT_CODE subreport`  
**Opened from (VBA):** `Form_Non_WCF_Storage_Billing_Report`, `Form_Propagule_Billing_Report`, `Form_Seed_Non_WCF_Billing_Report`  

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Lot ID |  |  |  | 0.38, 2.57, 0.39, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.06, 2.57, 0.47, 0.17 |
| Label | Hourly_Total_Charges_Label | Extract Cost |  |  |  | 4.63, 2.57, 0.91, 0.17 |
| Label | SumOfCHARGE_PER_ACTIVITY_OVERRIDE_Label | Tests |  |  |  | 5.62, 2.57, 0.69, 0.17 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 6.60, 2.57, 0.87, 0.17 |
| Label | Label34 | Lbs Extracted |  |  |  | 3.67, 2.57, 0.95, 0.17 |
| ComboBox | Billed_To_Associate |  | Billing_Associate | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.55, 0.80, 2.66, 0.19 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.52, 0.00, 3.24, 0.16 |
| Label | Label24 | Non-WCF Seed Hourly Processing Invoice |  |  |  | 2.83, 0.55, 2.79, 0.19 |
| Label | Label25 | To: |  |  |  | 0.26, 0.80, 0.27, 0.19 |
| ComboBox | Address |  | Billing_Associate | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[MAIL_ADDR] FROM NMIS_ASSOCIATES;  |  | 0.55, 0.99, 2.66, 0.19 |
| ComboBox | Street Address |  | Billing_Associate | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[STREET_ADDR] FROM NMIS_ASSOCIATES;  |  | 0.55, 1.18, 2.66, 0.19 |
| ComboBox | City |  | Billing_Associate | SELECT [Associate_City_State_Zip].[ASSOCIATE], [Associate_City_State_Zip].[City_State_Zip_Mail] FROM Associate_City_State_Zip;  |  | 0.55, 1.38, 2.65, 0.19 |
| ComboBox | Billing_Extractory |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.55, 1.59, 2.66, 0.19 |
| Label | Label48 | From: |  |  |  | 0.09, 1.59, 0.43, 0.19 |
| ComboBox | Combo49 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[MAIL_ADDR] FROM NMIS_ASSOCIATES;  |  | 0.55, 1.78, 2.66, 0.19 |
| ComboBox | Combo50 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[STREET_ADDR] FROM NMIS_ASSOCIATES;  |  | 0.55, 1.98, 2.66, 0.19 |
| ComboBox | Combo51 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code | SELECT [Associate_City_State_Zip].[ASSOCIATE], [Associate_City_State_Zip].[City_State_Zip_Mail] FROM Associate_City_State_Zip;  |  | 0.55, 2.17, 2.66, 0.20 |
| ComboBox | Bill_Number | Invoice Number: | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 5.58, 1.08, 2.21, 0.19 |
| TextBox | Bill_Date | Invoice Date: | =Date() |  |  | 5.58, 1.50, 1.42, 0.19 |
| TextBox | Bill Period | Invoice Period: | =[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date] |  |  | 5.58, 1.29, 1.43, 0.19 |
| Label | Label61 | _______________________________________________________________________________________________________ |  |  |  | 0.12, 2.37, 7.57, 0.19 |
| Label | Label84 | PRODUCTION COSTS FOR EXTRACTING NON-WCF SEED Formula is based on actual hours needed to process seed times actual cost per hour to run each machine used plus overhead. |  |  |  | 4.46, 1.96, 3.46, 0.41 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCE2B |  |  | 0.26, 0.00, 3.37, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 3.77, 0.01, 0.72, 0.19 |
| TextBox | Hourly_Charges |  | Hourly_Charges |  |  | 2.30, 0.00, 0.00, 0.00 |
| TextBox | SumOfCHARGE_USED_FOR_ACTIVITY |  | SumOfCHARGE_USED_FOR_ACTIVITY |  |  | 3.33, 0.00, 0.58, 0.00 |
| Subform | NMIS_CLIENT_MGMT_CODES2 subreport |  | Report.NMIS_CLIENT_MGMT_CODES2 subreport (master: CN → child: SOURCE_LOT_CN) |  |  | 4.65, 0.00, 3.24, 0.22 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text20 |  | =Sum([Hourly_Charges]) |  |  | 4.73, 0.19, 0.72, 0.19 |
| TextBox | Text21 |  | =Sum([SumOfCHARGE_USED_FOR_ACTIVITY]) |  |  | 5.62, 0.19, 0.66, 0.19 |
| TextBox | Text35 |  | =Sum([ACTIVITY_UNITS]) |  |  | 3.78, 0.20, 0.72, 0.19 |
| Label | Label23 | _________ |  |  |  | 5.53, 0.02, 0.68, 0.17 |
| Label | Label62 | _________ |  |  |  | 4.72, 0.02, 0.68, 0.17 |
| Label | Label63 | _________ |  |  |  | 3.76, 0.02, 0.74, 0.17 |
| Label | Label73 | _______________________________________________________________________________________________________ |  |  |  | 0.10, 1.15, 7.58, 0.19 |
| Label | Label74 | _______________________________________________________________________________________________________ |  |  |  | 0.12, 0.38, 7.57, 0.19 |
| Label | Label75 | By: __________________________________________________ |  |  |  | 3.43, 0.81, 4.06, 0.19 |
| TextBox | Text76 |  | =[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line] |  |  | 3.96, 1.00, 3.83, 0.21 |
| Subform | EXTRACTION_BY_MGMT_CODE subreport |  | Report.EXTRACTION_BY_MGMT_CODE subreport (master: Billing_Associate → child: BILLING_ASSOCIATE) |  |  | 0.29, 1.35, 2.22, 0.25 |
| Subform | EXTRACTION_INCOME_BY_MGMT_CODE subreport |  | Report.EXTRACTION_INCOME_BY_MGMT_CODE subreport (master: Billing_Associate → child: BILLING_ASSOCIATE) |  |  | 2.96, 1.35, 3.00, 0.25 |
