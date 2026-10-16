# Report: SURPLUS_ORDER_STATUS_SUMMARY

**Caption:** SURPLUS_ORDER_STATUS  
**Record source:**

```sql
SELECT [SURPLUS_ORDER_STATUS Query].[CLIENT_ASSOCIATE], [NMIS_CLIENT_MGMT_CODES].[MGMT_CODE], "(" & [SURPLUS_ORDER_STATUS Query].[CLIENT_ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Associate, Count([PACK_AMT]) & " of " & Count([ORDER]) & " Processed" AS Status, IIf(Count([PACK_AMT])=Count([ORDER]),"Complete","") AS Status_Complete, [SURPLUS_ORDER_STATUS Query].[ASSOCIATE_NAME] FROM NMIS_CLIENT_MGMT_CODES INNER JOIN [SURPLUS_ORDER_STATUS Query] ON [NMIS_CLIENT_MGMT_CODES].[ORDER_CN]=[SURPLUS_ORDER_STATUS Query].[ORDER_CN] GROUP BY [SURPLUS_ORDER_STATUS Query].[CLIENT_ASSOCIATE], [NMIS_CLIENT_MGMT_CODES].[MGMT_CODE], "(" & [SURPLUS_ORDER_STATUS Query].[CLIENT_ASSOCIATE] & ") " & [ASSOCIATE_NAME], [SURPLUS_ORDER_STATUS Query].[ASSOCIATE_NAME];
```

**Grouping/sorting:** `ASSOCIATE_NAME`  
**Backend tables referenced:** `NMIS_CLIENT_MGMT_CODES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 0.49, 0.95, 2.01, 0.18 |
| Line | Line19 |  |  |  |  | 0.49, 1.16, 7.38, 0.00 |
| Label | Label21 | Status |  |  |  | 4.71, 0.95, 1.95, 0.22 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.66, 0.16, 3.25, 0.19 |
| Label | Label33 | Surplus Order Status by Associate |  |  |  | 2.89, 0.58, 2.78, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.66, 0.35, 3.25, 0.20 |
| Label | Label50 | USDA Forest Service |  |  |  | 2.66, 0.00, 3.25, 0.16 |
| Label | Label22 | Type |  |  |  | 3.51, 0.95, 0.39, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_AMT |  | Status |  |  | 4.97, 0.01, 1.67, 0.19 |
| TextBox | DATE_PACK |  | Status_Complete |  |  | 6.76, 0.01, 1.03, 0.19 |
| TextBox | CLIENT_ASSOCIATE |  | Code_and_Associate |  |  | 0.46, 0.01, 2.79, 0.19 |
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 3.58, 0.01, 0.30, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.53, 0.08, 3.50, 0.20 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.37, 0.08, 3.50, 0.20 |
