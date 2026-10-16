# Report: Seed_Sown_for_Other_Than_Storage_Parent

**Grouping/sorting:** `TKT_NO`, `Source ID`, `Sown For`  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_CLIENT_MGMT_CODES`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`, `Form_Seed_Non_WCF_Billing_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Activity Code |  |  |  | 2.62, 1.16, 0.58, 0.33 |
| Label | TOTAL_REQUEST_Label | Units |  |  |  | 3.44, 1.31, 0.36, 0.18 |
| Label | AMOUNT_REQUESTED_Label | Agreement Lot ID |  |  |  | 1.62, 1.16, 0.79, 0.33 |
| Label | PCT_of_Total_Label | Source Lot ID |  |  |  | 0.65, 1.16, 0.51, 0.33 |
| Label | NET_INV_Label | Stored For |  |  |  | 3.90, 1.16, 0.50, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.83, 0.16, 2.81, 0.19 |
| Label | Label33 | Client Invoicing Checklist |  |  |  | 1.78, 0.55, 4.91, 0.22 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.61, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.61, 0.00, 3.24, 0.16 |
| Label | Label22 | Sown For |  |  |  | 4.68, 1.16, 0.56, 0.33 |
| Label | Label27 | Ticket |  |  |  | 0.00, 1.16, 0.58, 0.33 |
| Label | Label30 | The following Source Lots were  Sown for Clients other than the Stored for Client |  |  |  | 1.58, 0.88, 5.46, 0.21 |
| Label | Label37 | Billing Client |  |  |  | 5.45, 1.16, 0.47, 0.33 |
| Label | Label39 | Job Code |  |  |  | 6.06, 1.31, 0.62, 0.18 |
| Label | Label41 | % |  |  |  | 7.07, 1.31, 0.16, 0.18 |
| Label | Label43 | Cat Code |  |  |  | 7.43, 1.16, 0.36, 0.33 |
| Line | Line19 |  |  |  |  | 0.00, 1.54, 7.91, 0.00 |
| TextBox | Text154 |  | =IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode]),"Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode]) |  |  | 0.00, 0.35, 2.04, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Bags/Boxes |  | ACTIVITY_UNITS |  |  | 3.21, 0.00, 0.62, 0.21 |
| TextBox | PCT_of_Total |  | Source ID |  |  | 0.58, 0.00, 1.01, 0.21 |
| TextBox | Order |  | STORED_FOR_ASSOCIATE |  |  | 3.92, 0.00, 0.72, 0.21 |
| TextBox | DELIVERED_TO_ASSOCIATE |  | NMIS_AGREEMENTS.CLIENT_ASSOCIATE |  |  | 4.66, 0.00, 0.67, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | ACTIVITY_CODE |  |  | 2.59, 0.00, 0.59, 0.21 |
| TextBox | TKT_NO |  | TKT_NO |  |  | 0.00, 0.00, 0.55, 0.21 |
| TextBox | Text36 |  | Nursery ID |  |  | 1.60, 0.00, 0.97, 0.21 |
| TextBox | Bill_To_Client |  | NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE |  |  | 5.35, 0.00, 0.62, 0.21 |
| TextBox | Text40 |  | MGMT_CODE |  |  | 6.00, 0.00, 0.83, 0.21 |
| TextBox | Text42 |  | MGMT_CODE_PCT |  |  | 6.85, 0.00, 0.52, 0.21 |
| TextBox | Text44 |  | CATEGORY_CODE |  |  | 7.43, 0.00, 0.48, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line45 |  |  |  |  | 0.04, 0.02, 7.88, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.25, 0.17, 3.50, 0.20 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.39, 0.17, 3.50, 0.20 |
