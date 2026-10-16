# Report: Ship_Ticket_Summary_by_TSO

**Caption:** Product Shipping Ticket Summary  
**Record source:**

```sql
SELECT NMIS_TICKETS.CN, NMIS_TICKETS.CHARGE_PER_TICKET, Val(Nz([GBL_PCT],0)) AS GBLPCT, [DELIVERED_TO_ASSOCIATE] & " - " & [nmis_associates].[associate_name] AS Del_To, NMIS_TICKETS.DELIVERED_BY_ASSOCIATE, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY, [**Product_Ship_Ticket_Total_Containers_Table].Containers, [**Product_Ship_Ticket_Total_Containers_Table].SHIP_MILES, [**Product_Ship_Ticket_Total_Containers_Table].Rack_Eq, NMIS_TICKETS.NOTE FROM ([**Product_Ship_Ticket_Total_Containers_Table] RIGHT JOIN NMIS_TICKETS ON [**Product_Ship_Ticket_Total_Containers_Table].TICKET_CN = NMIS_TICKETS.CN) INNER JOIN NMIS_ASSOCIATES ON NMIS_TICKETS.DELIVERED_TO_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_TICKETS.EXT_DOC_REF)=[Forms]![NMIS_TICKETS_charge_per_ticket1]![EXT_DOC_REF]) AND ((NMIS_TICKETS.TICKET_TYPE)="p"));
```

**Grouping/sorting:** `TKT_NO`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_TICKETS`  
**Opened from (VBA):** `Form_NMIS_TICKETS_charge_per_ticket1`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Ticket FY_Label | FY |  |  |  | 1.49, 1.10, 0.40, 0.19 |
| Label | Ticket No_Label | Ticket No |  |  |  | 0.79, 1.10, 0.66, 0.19 |
| Label | Date_Label | Rack Estimate |  |  |  | 7.44, 0.96, 0.57, 0.33 |
| Label | DELIVERED_TO_ASSOCIATE_Label | Delivered To |  |  |  | 2.06, 0.96, 0.70, 0.34 |
| Label | CHARGE_PER_TICKET_Label | Charge Per Ticket |  |  |  | 6.15, 0.95, 0.69, 0.35 |
| Label | GBL_PCT_Label | TSO % |  |  |  | 5.73, 0.94, 0.42, 0.35 |
| Label | ACTIVITY_CODE_Label | Ship Miles |  |  |  | 6.93, 0.94, 0.52, 0.36 |
| Line | Line34 |  |  |  |  | 0.00, 0.94, 8.00, 0.00 |
| Line | Line35 |  |  |  |  | 0.00, 1.30, 8.00, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.54, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.33, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.33, 0.00, 3.24, 0.16 |
| Label | Label42 | Product TSO with Tickets |  |  |  | 2.49, 0.61, 2.97, 0.19 |
| Label | Label67 | Delivered By |  |  |  | 5.01, 0.95, 0.70, 0.35 |
| Label | Label68 | TSO # |  |  |  | 0.10, 1.10, 0.64, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ticket FY |  | FY |  |  | 1.44, 0.00, 0.41, 0.20 |
| TextBox | Ticket No |  | TKT_NO |  |  | 0.76, 0.00, 0.66, 0.20 |
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  |  | 6.11, 0.00, 0.60, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 0.82, 0.21, 7.08, 0.02 |
| Line | Line47 |  |  |  |  | 0.17, 0.26, 7.80, 0.00 |
| ComboBox | ACTIVITY_CODE |  | SHIP_MILES | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES;  |  | 6.86, 0.00, 0.48, 0.20 |
| TextBox | EXT_DOC_REF |  | EXT_DOC_REF |  |  | 0.00, 0.01, 0.72, 0.19 |
| TextBox | DELIVERED_BY_ASSOCIATE |  | DELIVERED_BY_ASSOCIATE |  |  | 5.03, 0.01, 0.61, 0.19 |
| TextBox | DELIVERED_TO_ASSOCIATE |  | Del_To |  |  | 1.92, 0.00, 3.09, 0.20 |
| TextBox | Rack_Eq |  | Rack_Eq |  |  | 7.46, 0.00, 0.46, 0.19 |
| TextBox | Text77 |  | GBLPCT |  |  | 5.66, 0.00, 0.44, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Now() |  |  | 0.00, 0.09, 3.50, 0.00 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.66, 0.09, 3.32, 0.00 |
| Line | Line53 |  |  |  |  | 0.00, 0.03, 7.99, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([CHARGE_PER_TICKET]) |  |  | 6.11, 0.00, 0.60, 0.20 |
| Label | Label74 | Totals |  |  |  | 0.46, 0.00, 0.43, 0.20 |
| TextBox | Text75 |  | =Sum([GBLPCT]) |  |  | 5.58, 0.00, 0.51, 0.19 |
