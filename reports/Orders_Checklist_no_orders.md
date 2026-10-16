# Report: Orders_Checklist_no_orders

**Caption:** Orders Summary Checklist NO ORDERS  
**Record source:**

```sql
Orders_Summary_not
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `CATEGORY_CODE`, `Age_Class`, `Contact`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_NMIS_ORDERS_Reports`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.42, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.02, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.17, 0.00, 3.24, 0.16 |
| Label | Label36 | Lot ID |  |  |  | 2.29, 1.31, 0.53, 0.23 |
| Label | Label41 | Total Req (M) |  |  |  | 4.65, 0.91, 0.48, 0.64 |
| Label | Label42 | Inv Net (M) |  |  |  | 6.78, 0.92, 0.34, 0.62 |
| Label | Label43 | Firm Orders (M) |  |  |  | 7.40, 0.92, 0.60, 0.62 |
| Label | Label44 | Contact |  |  |  | 0.29, 1.31, 0.61, 0.23 |
| Label | Label67 |  Req (M) |  |  |  | 4.09, 1.11, 0.42, 0.43 |
| TextBox | Text64 |  | ="Orders Summary Checklist for FY " & [Forms]![NMIS_ORDERS_Reports]![End_FY] & " - NO ORDERS" |  |  | 1.65, 0.58, 4.46, 0.23 |
| Label | Label110 | End Season |  |  |  | 3.53, 1.11, 0.55, 0.43 |
| Label | Label68 | Inv Gross (M) |  |  |  | 6.01, 0.92, 0.47, 0.62 |
| Label | PCT_of_Total_Label | % of Total |  |  |  | 5.34, 1.11, 0.44, 0.43 |
| Line | Line45 |  |  |  |  | 0.04, 1.59, 7.94, 0.00 |
| TextBox | Text115 |  | ="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*") |  |  | 0.06, 0.16, 2.50, 0.20 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS DISPLAY FROM NMIS_ASSOCIATES; |  | 0.02, 0.00, 7.81, 0.26 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.06, 0.00, 4.21, 0.26 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class |  | AC |  |  | 0.11, 0.03, 2.17, 0.02 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Plntmstr_Symbol |  |  | 2.26, 0.01, 1.33, 0.00 |
| TextBox | SumOfTOTAL_REQUEST |  | LastOfTOTAL_REQUEST |  |  | 4.57, 0.01, 0.61, 0.00 |
| TextBox | SumOfLastOfNET_INV |  | Client_Net |  |  | 6.53, 0.01, 0.64, 0.00 |
| TextBox | Firm_Order |  | Firm_Order_Client |  |  | 7.19, 0.01, 0.79, 0.00 |
| TextBox | Contact |  | Contact |  |  | 0.15, 0.01, 2.10, 0.00 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 3.95, 0.01, 0.57, 0.00 |
| TextBox | END_SEASON_CODE |  | END_SEASON_CODE |  |  | 3.61, 0.01, 0.32, 0.00 |
| TextBox | SumOfLastOfGROSS_INV |  | Client_Gross |  |  | 5.84, 0.01, 0.64, 0.00 |
| TextBox | PCT_of_Total |  | PCT_of_Total |  |  | 5.20, 0.01, 0.60, 0.00 |
| TextBox | ObO |  | ObO |  |  | 5.21, 0.01, 1.95, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line71 |  |  |  |  | 0.04, 0.02, 7.94, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.85, 0.05, 5.12, 0.16 |
| Line | Line22 |  |  |  |  | 0.03, 0.03, 7.95, 0.00 |
