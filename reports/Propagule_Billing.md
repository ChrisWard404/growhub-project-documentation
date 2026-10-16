# Report: Propagule_Billing

**Grouping/sorting:** `Reporting_Parent`, `CLIENT_ASSOCIATE`, `Jobcode`, `PRODUCT_DESC`, `ACTIVITY_CODE`, `SOURCE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Propagule_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 0.08, 1.26, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 1.83, 1.26, 0.41, 0.21 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 4.13, 1.09, 0.44, 0.38 |
| Line | Line21 |  |  |  |  | 0.01, 1.50, 7.97, 0.00 |
| Label | Label29 | Lot ID |  |  |  | 0.62, 1.26, 0.36, 0.21 |
| Line | Line28 |  |  |  |  | 0.01, 1.05, 7.97, 0.00 |
| Label | Label50 | Jobcode Acres |  |  |  | 5.11, 1.09, 0.49, 0.38 |
| Label | Label52 | Charge$/Ac |  |  |  | 5.69, 1.09, 0.41, 0.38 |
| Label | Label54 | Total Charge |  |  |  | 7.21, 1.09, 0.45, 0.38 |
| Label | Label63 | Nursery Management Information System |  |  |  | 2.79, 0.16, 2.81, 0.19 |
| TextBox | Text64 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.57, 0.35, 3.24, 0.20 |
| Label | Label65 | USDA Forest Service |  |  |  | 2.57, 0.00, 3.24, 0.16 |
| Label | Label66 | Propagule Invoice |  |  |  | 3.64, 0.55, 1.26, 0.19 |
| ComboBox | Combo67 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " - " & [ASSOCIATE_NAME]  AS Assoc FROM NMIS_ASSOCIATES; |  | 1.04, 0.75, 6.38, 0.23 |
| Label | Label68 | Setup $/Ac |  |  |  | 6.45, 1.09, 0.41, 0.38 |
| Label | Label72 | Jobcode % |  |  |  | 4.57, 1.09, 0.52, 0.38 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE | Job  Code: | Jobcode |  |  | 0.74, 0.04, 1.92, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.04, 0.04, 2.71, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | CLIENT_ASSOCIATE |  |  | 0.00, 0.00, 0.54, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.17, 0.00, 2.87, 0.18 |
| TextBox | Bed_Feet |  | ORDER_AMT |  |  | 4.06, 0.00, 0.47, 0.18 |
| TextBox | CN |  | ID |  |  | 0.56, 0.00, 0.61, 0.18 |
| TextBox | Jobcode_Acres |  | =Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre] |  |  | 5.00, 0.00, 0.50, 0.18 |
| TextBox | Chg_Per_Ac |  | Chg_Per_AC |  |  | 5.50, 0.00, 0.70, 0.18 |
| TextBox | Total_Charge |  | Total_Charge |  |  | 7.13, 0.00, 0.70, 0.18 |
| TextBox | Text69 |  | Setup_Charge |  |  | 6.39, 0.00, 0.72, 0.18 |
| TextBox | MGMT_CODE_PCT_Rounded |  | =Round([MGMT_CODE_PCT],2) |  |  | 4.54, 0.00, 0.47, 0.18 |
| TextBox | No_Harvest |  | No_Harvest |  |  | 6.16, 0.01, 0.19, 0.00 |
| TextBox | Text82 |  | Min_Chg_Used |  |  | 7.78, 0.01, 0.19, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line42 |  |  |  |  | 0.01, 0.25, 7.98, 0.00 |
| Line | Line43 |  |  |  |  | 0.01, 0.27, 7.98, 0.00 |
| TextBox | Text48 |  | =Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre]) |  |  | 4.92, 0.01, 0.58, 0.18 |
| ComboBox | Text44 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " - " & [ASSOCIATE_NAME] & " Totals" AS Assoc FROM NMIS_ASSOCIATES; |  | 0.00, 0.01, 4.75, 0.18 |
| TextBox | Text56 |  | =Sum([Total_Charge]) |  |  | 6.83, 0.01, 0.00, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text59 |  | =Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre]) |  |  | 4.92, 0.00, 0.58, 0.18 |
| ComboBox | Combo60 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " - " & [ASSOCIATE_NAME] & " Totals" AS Assoc FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 4.88, 0.18 |
| TextBox | Text61 |  | =Sum([Total_Charge]) |  |  | 6.83, 0.00, 0.00, 0.18 |
| Label | Label74 | ___________________________________________________________________________________________________________ |  |  |  | 0.06, 0.19, 7.92, 0.19 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.30, 0.55, 3.70, 0.19 |
| TextBox | Text76 |  | =[Forms]![Propagule_Billing_Report]![Title_Line] |  |  | 4.38, 0.79, 3.61, 0.21 |
| Label | Label108 | ___________________________________________________________________________________________________________ |  |  |  | 0.06, 0.91, 7.92, 0.19 |
| TextBox | Text117 |  | =[Forms]![Propagule_billing_Report]![Signature_Line] |  |  | 4.38, 0.44, 3.61, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.16, 0.20, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.11, 0.20, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.05, 0.03, 7.81, 0.00 |
| Label | Label77 | No Harvest Charge |  |  |  | 2.31, 0.06, 1.23, 0.19 |
| Label | Label78 | j |  |  |  | 2.09, 0.06, 0.18, 0.18 |
| Label | Label79 | Minimum Charge Used |  |  |  | 4.52, 0.06, 1.52, 0.19 |
| Label | Label80 | k |  |  |  | 4.30, 0.07, 0.18, 0.18 |
