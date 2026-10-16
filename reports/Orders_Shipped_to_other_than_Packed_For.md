# Report: Orders_Shipped_to_other_than_Packed_For

**Caption:** Orders Shipped to Other than Packed For  
**Grouping/sorting:** `Level`, `ID`, `DELIVERED_TO_ASSOCIATE`, `CLIENT_ASSOCIATE`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Ordered By |  |  |  | 2.90, 1.31, 0.58, 0.33 |
| Label | TOTAL_REQUEST_Label | Units |  |  |  | 4.79, 1.47, 0.36, 0.18 |
| Label | AMOUNT_REQUESTED_Label | Amount Per Unit |  |  |  | 6.21, 1.31, 0.79, 0.33 |
| Label | PCT_of_Total_Label | Lot ID |  |  |  | 0.24, 1.46, 0.41, 0.18 |
| Label | NET_INV_Label | Order ID |  |  |  | 1.16, 1.31, 0.50, 0.33 |
| Label | M_from_last_inv_Label | Total (M) |  |  |  | 7.27, 1.31, 0.52, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.83, 0.16, 2.81, 0.19 |
| Label | Label33 | Client Billing Checklist |  |  |  | 1.79, 0.55, 4.89, 0.22 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.61, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.61, 0.00, 3.24, 0.16 |
| Label | Label22 | Delivered To |  |  |  | 1.85, 1.31, 0.62, 0.33 |
| Label | Label27 | Ship Ticket |  |  |  | 3.80, 1.31, 0.58, 0.33 |
| Label | Label30 | The following Orders were not shipped to the Ordering Client and might require adujstments for billing purposes |  |  |  | 1.79, 0.88, 4.88, 0.36 |
| Label | Label35 | Unit Code |  |  |  | 5.61, 1.31, 0.36, 0.33 |
| Line | Line38 |  |  |  |  | 0.00, 1.64, 7.92, 0.00 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Level |  | Level | 1;Shipped to Another Forest;2;Shipped to Another District |  | 0.00, 0.00, 3.42, 0.26 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line29 |  |  |  |  | 0.00, 0.00, 7.92, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Bags/Boxes |  | Bags/Boxes |  |  | 4.54, 0.00, 0.62, 0.21 |
| TextBox | Amt Per |  | Amt Per |  |  | 6.22, 0.00, 0.67, 0.21 |
| TextBox | PCT_of_Total |  | ID |  |  | 0.00, 0.00, 1.08, 0.21 |
| TextBox | Order |  | Order |  |  | 1.21, 0.00, 0.52, 0.21 |
| TextBox | M_Total |  | =Round([Bags/Boxes]*[Amt Per]/1000,3) |  |  | 7.12, 0.00, 0.62, 0.21 |
| TextBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE |  |  | 1.92, 0.00, 0.75, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 2.83, 0.00, 0.75, 0.21 |
| TextBox | TKT_NO |  | Ticket |  |  | 3.62, 0.00, 0.88, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 5.29, 0.00, 0.75, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Sum([Bags/Boxes]) |  |  | 4.54, 0.00, 0.64, 0.21 |
| TextBox | Text24 |  | =Sum(Round([Bags/Boxes]*[Amt Per]/1000,3)) |  |  | 7.14, 0.00, 0.62, 0.21 |
| Line | Line25 |  |  |  |  | 4.72, 0.00, 0.46, 0.00 |
| Line | Line26 |  |  |  |  | 7.15, 0.00, 0.62, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | NOTE |  |  | 0.50, 0.00, 7.25, 0.01 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.25, 0.03, 3.50, 0.20 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.39, 0.03, 3.50, 0.20 |
