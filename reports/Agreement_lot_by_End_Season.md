# Report: Agreement_lot_by_End_Season

**Grouping/sorting:** `Cost_Center`, `ID`, `CLIENT_ASSOCIATE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | ID |  |  |  | 0.25, 1.39, 1.08, 0.21 |
| Label | CLIENT_ASSOCIATE_Label | Client Associate |  |  |  | 1.40, 1.39, 1.69, 0.21 |
| Label | TOTAL_REQUEST_Label | Total Request |  |  |  | 4.11, 1.26, 0.75, 0.33 |
| Label | AMOUNT_REQUESTED_Label | Amount Requested |  |  |  | 4.91, 1.26, 0.79, 0.33 |
| Label | PCT_of_Total_Label | % of Total |  |  |  | 5.82, 1.26, 0.42, 0.33 |
| Label | NET_INV_Label | Net Inventory |  |  |  | 6.32, 1.26, 0.67, 0.33 |
| Label | M_from_last_inv_Label | Amt based on  Last Inv (M) |  |  |  | 7.05, 1.26, 0.85, 0.33 |
| Line | Line19 |  |  |  |  | 0.21, 1.61, 7.75, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.41, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.20, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.20, 0.00, 3.24, 0.16 |
| Label | Label22 | End Season |  |  |  | 3.30, 1.26, 0.62, 0.32 |
| TextBox | Text24 |  | ="Agreement Lots with End Season " & [End_Season] & " Agreements" |  |  | 1.25, 0.58, 5.33, 0.23 |
| ComboBox | Cost_Center |  | Cost_Center | B;Bareroot;C;Container |  | 2.12, 0.83, 3.46, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.25, 0.00, 3.88, 0.25 |
| TextBox | Text21 |  | Species_Products_String |  |  | 4.15, 0.00, 3.77, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & "  " & [ASSOCIATE_NAME] AS ac_an FROM NMIS_ASSOCIATES; |  | 0.22, 0.00, 2.96, 0.24 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 4.11, 0.00, 0.64, 0.24 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 4.91, 0.00, 0.68, 0.24 |
| TextBox | PCT_of_Total |  | PCT_of_Total |  |  | 5.66, 0.00, 0.56, 0.24 |
| TextBox | NET_INV |  | NET_INV |  |  | 6.32, 0.00, 0.55, 0.24 |
| TextBox | M_from_last_inv |  | M_from_last_inv |  |  | 7.05, 0.00, 0.70, 0.24 |
| TextBox | End_Season |  | End_Season |  |  | 3.38, 0.00, 0.64, 0.24 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line20 |  |  |  |  | 0.21, 0.00, 7.75, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.25, 0.17, 3.50, 0.20 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.39, 0.17, 3.50, 0.20 |
