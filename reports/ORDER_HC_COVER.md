# Report: ORDER_HC_COVER

**Caption:** NMIS_ORDER_HC_COVER  
**Record source:**

```sql
ORDER_HC_COVER Query
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`  
**Subforms/subreports:** `Report.ORDER_HC_CNTCT Subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.00, 3.50, 0.21 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 6.25, 0.00, 0.75, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.33, 0.00, 2.71, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.42, 0.00, 0.88, 0.21 |
| Label | Label15 | to: |  |  |  | 0.08, 0.00, 0.29, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_HC_CNTCT Subrep |  | Report.ORDER_HC_CNTCT Subrep (master: CLIENT_ASSOCIATE → child: CLIENT_ASSOCIATE) |  |  | 1.00, 0.00, 6.00, 0.57 |
| Label | Label16 | Attached are order forms for the seedling lots we grew for you for harvest this year.  Please fill in all the blanks as best you can.  Feel free to use the comments section to further define what lifting and packing instructions you wish us to know.  |  |  |  | 0.54, 1.00, 6.21, 0.62 |
| Label | Label17 | We are hoping for a quick turn-around time for these order forms so that we can develop a list of surplus seedlings to offer to other clients.   As usual, we will be starting lift and pack by lifting the lodgepole pine early in December, then moving to the ponderosa pine. |  |  |  | 0.54, 1.71, 6.24, 0.80 |
| Label | Label18 | You may return your order to us by mail, fax (541-858-6110) , or  telephone (call Sharon Turcotte at 541-858-6163).  Please notify Sharon if there are any changes to the list of contacts and/or phone numbers that appear above. |  |  |  | 0.54, 2.59, 6.24, 0.61 |
| Label | Label19 | If you have any questions on these orders, please call Bruce Bristow (541-858-6171) or Sharon Turcotte. |  |  |  | 0.54, 3.29, 6.24, 0.42 |
| Label | Label20 | Thank you, |  |  |  | 0.54, 3.83, 0.81, 0.21 |
| Label | Label21 | Steve Feigner |  |  |  | 0.54, 4.21, 1.42, 0.21 |
