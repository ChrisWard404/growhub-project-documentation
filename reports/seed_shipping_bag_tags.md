# Report: seed_shipping_bag_tags

**Caption:** seed_shipping_ticket  
**Grouping/sorting:** `TICKET_CN`, `CATEGORY_CODE`, `DIVERSE`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_UNITS`  
**Opened from (VBA):** `Form_Seed_Shipping_Ticket Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Shipping Bag Tags |  |  |  | 3.03, 0.56, 1.95, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_UNITS |  | ABS_Activity_Units |  |  | 4.35, 0.03, 0.97, 0.26 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.33, 0.03, 0.43, 0.26 |
| TextBox | Combo19 |  | ID_SOURCEB |  |  | 0.00, 0.03, 4.34, 0.26 |
| TextBox | Text89 |  | ABS_Activity_Units |  |  | 4.34, 0.33, 0.97, 0.26 |
| ComboBox | Combo90 |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.33, 0.33, 0.42, 0.26 |
| TextBox | Text92 |  | ID_SOURCEB |  |  | 0.00, 0.33, 4.34, 0.26 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.03, 3.38, 0.18 |
| Line | Line82 |  |  |  |  | 0.04, 0.00, 7.83, 0.00 |
