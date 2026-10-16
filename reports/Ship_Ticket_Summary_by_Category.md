# Report: Ship_Ticket_Summary_by_Category

**Grouping/sorting:** `CATEGORY_CODE`, `Date`, `Ticket No`, `Ticket No`, `ID`, `Order`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_Reports_Menu_Shipping Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Ticket FY_Label | FY |  |  |  | 1.69, 0.87, 0.40, 0.19 |
| Label | Ticket No_Label | Ticket No |  |  |  | 0.26, 0.87, 0.66, 0.19 |
| Label | Ticket Type_Label | Ticket Type |  |  |  | 0.93, 0.87, 0.75, 0.19 |
| Label | Date_Label | Date |  |  |  | 2.09, 0.87, 0.52, 0.19 |
| Label | DELIVERED_TO_ASSOCIATE_Label | Delivered To |  |  |  | 2.65, 0.87, 0.86, 0.19 |
| Label | CHARGE_PER_TICKET_Label | Charge Per Ticket |  |  |  | 3.54, 0.87, 1.22, 0.19 |
| Label | GBL_PCT_Label | GBL % |  |  |  | 4.79, 0.87, 0.56, 0.19 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 5.38, 0.87, 0.88, 0.19 |
| Line | Line34 |  |  |  |  | 0.21, 0.82, 7.33, 0.00 |
| Line | Line35 |  |  |  |  | 0.21, 1.10, 7.33, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.83, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.62, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.62, 0.00, 3.24, 0.16 |
| Label | Label42 | Shipping Ticket Summary |  |  |  | 3.40, 0.58, 1.75, 0.19 |
| Label | Label45 | Units |  |  |  | 6.44, 0.87, 0.36, 0.19 |
| Label | Label46 | Amt (M) |  |  |  | 6.93, 0.88, 0.57, 0.19 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.25, 0.03, 4.17, 0.23 |
| Line | Line62 |  |  |  |  | 0.42, 0.28, 7.12, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ticket FY |  | Ticket FY |  |  | 1.67, 0.00, 0.41, 0.20 |
| TextBox | Ticket No |  | Ticket No |  |  | 0.25, 0.00, 0.66, 0.20 |
| TextBox | Ticket Type |  | Ticket Type |  |  | 0.92, 0.00, 0.75, 0.20 |
| TextBox | Date |  | Date |  |  | 2.07, 0.00, 0.56, 0.20 |
| ComboBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.65, 0.00, 0.86, 0.20 |
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  |  | 3.53, 0.00, 1.22, 0.20 |
| TextBox | GBL_PCT |  | GBL_PCT |  |  | 4.78, 0.00, 0.56, 0.20 |
| TextBox | NOTE |  | Show_NOTE |  |  | 0.41, 0.20, 7.08, 0.01 |
| ComboBox | ACTIVITY_CODE |  | ActivityCode | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 5.47, 0.00, 0.67, 0.20 |
| TextBox | Text43 |  | =Sum([Units]) |  |  | 6.19, 0.01, 0.58, 0.19 |
| TextBox | Text44 |  | =Sum([AMT(M)]) |  |  | 6.79, 0.01, 0.68, 0.19 |
| Line | Line47 |  |  |  |  | 0.40, 0.23, 7.12, 0.00 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo60 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 1.00, 0.00, 4.54, 0.19 |
| Label | Label57 | Total for: |  |  |  | 0.38, 0.00, 0.62, 0.19 |
| TextBox | Text63 |  | =Sum([Units]) |  |  | 6.20, 0.00, 0.58, 0.19 |
| TextBox | Text64 |  | =Sum([AMT(M)]) |  |  | 6.80, 0.00, 0.68, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Now() |  |  | 0.25, 0.09, 3.50, 0.00 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.21, 0.09, 3.32, 0.00 |
| Line | Line53 |  |  |  |  | 0.42, 0.03, 7.12, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | =Sum([Units]) |  |  | 6.20, 0.03, 0.58, 0.19 |
| TextBox | Text49 |  | =Sum([AMT(M)]) |  |  | 6.80, 0.03, 0.68, 0.19 |
| Label | Label61 | Total for All |  |  |  | 0.38, 0.03, 1.04, 0.19 |
