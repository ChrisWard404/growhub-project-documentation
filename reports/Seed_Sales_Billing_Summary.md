# Report: Seed_Sales_Billing_Summary

**Caption:** Extraction_Non_WCF_Billing  
**Record source:**

```sql
SEED_BILLING QUERY
```

**Grouping/sorting:** `Billing_Associate`, `PLNTMSTR_SYMBOL`, `ID_SOURCE2B`, `ACTIVITY_CODE`, `MGMT_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.52, 0.00, 3.24, 0.16 |
| Label | Label24 | WCF Seed Billing Summary |  |  |  | 3.28, 0.56, 1.89, 0.19 |
| ComboBox | Billed_To_Associate |  | Billing_Associate | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES; |  | 1.83, 0.79, 4.71, 0.26 |
| TextBox | Bill Period |  | =[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date] |  |  | 3.21, 1.07, 2.04, 0.23 |
| Label | ID_Label | Lot ID |  |  |  | 0.08, 1.48, 0.49, 0.17 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.12, 1.48, 0.47, 0.17 |
| Label | Hourly_Total_Charges_Label | Cost/Unit |  |  |  | 4.80, 1.48, 0.68, 0.17 |
| Label | SumOfCHARGE_PER_ACTIVITY_OVERRIDE_Label | Charge |  |  |  | 5.89, 1.48, 0.47, 0.18 |
| Label | MGMT_CODE_Label |    Client Job Code & %   |  |  |  | 6.50, 1.48, 1.51, 0.18 |
| Label | Label34 | Units |  |  |  | 4.16, 1.48, 0.40, 0.17 |
| Label | Label88 | Transaction |  |  |  | 3.01, 1.46, 0.87, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_SOURCE2B |  |  | 0.04, 0.00, 3.05, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS_PER_MGMT_CODE |  |  | 3.86, 0.00, 0.67, 0.19 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 4.77, 0.00, 0.58, 0.19 |
| TextBox | MGMT_CODE_N_PCT |  | MC |  |  | 6.46, 0.00, 1.54, 0.19 |
| TextBox | Combo97 |  | UNIT_CODE |  |  | 4.53, 0.00, 0.23, 0.19 |
| TextBox | Combo99 |  | =IIf([Charge_Per_Unit]<>0,"/" & [UNIT_CODE],"****") |  |  | 5.32, 0.00, 0.42, 0.19 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 3.10, 0.00, 0.74, 0.19 |
| TextBox | CHARGE |  | [CHARGE] |  |  | 5.73, 0.00, 0.72, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text21 |  | =Sum([CHARGE]) |  |  | 5.41, 0.23, 1.03, 0.19 |
| TextBox | Text35 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.65, 0.23, 0.89, 0.19 |
| Label | Label23 | _________ |  |  |  | 5.41, 0.02, 1.02, 0.20 |
| Label | Label63 | _________ |  |  |  | 3.65, 0.02, 0.89, 0.20 |
| Label | Label114 | Associate Total |  |  |  | 0.20, 0.23, 2.84, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text109 |  | =Sum([CHARGE]) |  |  | 5.45, 0.21, 1.01, 0.19 |
| TextBox | Text110 |  | =Sum([ACTIVITY_UNITS_PER_MGMT_CODE]) |  |  | 3.60, 0.21, 0.96, 0.19 |
| Label | Label111 | _________ |  |  |  | 5.71, 0.00, 0.74, 0.20 |
| Label | Label112 | _________ |  |  |  | 3.81, 0.00, 0.74, 0.20 |
| Label | Label113 | Grand Total |  |  |  | 0.21, 0.21, 2.82, 0.19 |
