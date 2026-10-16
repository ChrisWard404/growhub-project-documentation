# Report: Ship_Ticket_Summary_by_Ticket_No_TSO

**Grouping/sorting:** `Ticket Type`, `TKT_SORT`, `Ticket No`, `ID`, `Order`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Opened from (VBA):** `Form_Reports_Menu_Shipping Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Ticket FY_Label | FY |  |  |  | 0.91, 0.99, 0.40, 0.19 |
| Label | Ticket No_Label | Ticket No |  |  |  | 0.22, 0.99, 0.66, 0.19 |
| Label | Date_Label | Date |  |  |  | 1.36, 0.99, 0.50, 0.19 |
| Label | DELIVERED_TO_ASSOCIATE_Label | Delivered To |  |  |  | 1.89, 0.84, 0.70, 0.34 |
| Label | CHARGE_PER_TICKET_Label | Charge Per Ticket |  |  |  | 4.56, 0.83, 0.69, 0.35 |
| Label | GBL_PCT_Label | GBL % |  |  |  | 4.17, 0.83, 0.38, 0.35 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 5.36, 0.82, 0.52, 0.36 |
| Line | Line34 |  |  |  |  | 0.00, 0.82, 7.84, 0.00 |
| Line | Line35 |  |  |  |  | 0.00, 1.19, 7.84, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.54, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.33, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.33, 0.00, 3.24, 0.16 |
| Label | Label42 | Product Shipping Ticket with TSO Summary |  |  |  | 2.50, 0.58, 2.96, 0.19 |
| Label | Label45 | Units |  |  |  | 6.34, 0.99, 0.36, 0.19 |
| Label | Label46 | Amt (M) |  |  |  | 6.83, 0.99, 0.57, 0.19 |
| Label | Label67 | Delivered By |  |  |  | 2.65, 0.83, 0.70, 0.35 |
| Label | Label68 | TSO # |  |  |  | 3.43, 0.96, 0.64, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text58 | Ticket Type: | Ticket Type |  |  | 0.98, 0.02, 0.96, 0.23 |
| Line | Line60 |  |  |  |  | 0.19, 0.25, 7.64, 0.00 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ticket FY |  | Ticket FY |  |  | 0.91, 0.00, 0.41, 0.20 |
| TextBox | Ticket No |  | Ticket No |  |  | 0.23, 0.00, 0.66, 0.20 |
| TextBox | Date |  | Date |  |  | 1.35, 0.00, 0.55, 0.20 |
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  |  | 4.56, 0.00, 0.60, 0.20 |
| TextBox | GBL_PCT |  | GBL_PCT2 |  |  | 4.09, 0.00, 0.43, 0.20 |
| TextBox | NOTE |  | Show_NOTE |  |  | 0.86, 0.20, 6.92, 0.01 |
| ComboBox | ACTIVITY_CODE |  | ActivityCode | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES;  |  | 5.40, 0.00, 0.73, 0.20 |
| TextBox | Text43 |  | =Sum([Units]) |  |  | 6.19, 0.01, 0.47, 0.19 |
| TextBox | Text44 |  | =Sum([AMT(M)]) |  |  | 6.78, 0.01, 0.59, 0.19 |
| Line | Line47 |  |  |  |  | 0.21, 0.23, 7.64, 0.00 |
| TextBox | EXT_DOC_REF |  | EXT_DOC_REF |  |  | 3.37, 0.01, 0.72, 0.19 |
| TextBox | DELIVERED_BY_ASSOCIATE |  | DELIVERED_BY_ASSOCIATE |  |  | 2.71, 0.01, 0.61, 0.19 |
| TextBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE |  |  | 1.96, 0.00, 0.74, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Now() |  |  | 0.00, 0.09, 3.50, 0.00 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.55, 0.09, 3.32, 0.00 |
| Line | Line53 |  |  |  |  | 0.00, 0.03, 7.82, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | =Sum([Units]) |  |  | 6.10, 0.03, 0.55, 0.19 |
| TextBox | Text49 |  | =Sum([AMT(M)]) |  |  | 6.67, 0.02, 0.70, 0.19 |
| Label | Label57 | Total for All |  |  |  | 0.33, 0.00, 0.78, 0.19 |
