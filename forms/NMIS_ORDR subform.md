# Form: NMIS_ORDR subform

**Caption:** NMIS_ORDR subform  
**Record source:**

```sql
SELECT NMIS_ORDERS.CN, NMIS_ORDERS.FISCAL_YEAR, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.CONTRACT_ITEM, IIf(Not IsNull([nmis_orders].[CN]),Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7),"") AS Order_ID, NMIS_ORDERS_SIZE_SPEC_STRING.Order_Size_Spec_W_Prune2 FROM NMIS_ORDERS INNER JOIN NMIS_ORDERS_SIZE_SPEC_STRING ON NMIS_ORDERS.CN = NMIS_ORDERS_SIZE_SPEC_STRING.CN WHERE (((NMIS_ORDERS.FISCAL_YEAR) Like [Forms]![Switchboard]![FY_For_Reports]) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Like_Client] & "*") AND ((NMIS_ORDERS.CONTACT_CN) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Contact_CN] & "*")) ORDER BY NMIS_ORDERS.FISCAL_YEAR DESC , NMIS_ORDERS.CN;
```

**Backend tables referenced:** `NMIS_ORDERS`  
**Embedded in:** `Form:NMIS_ORDER_ACT-TRANS-LOC`, `Form:NMIS_ORDER_BILL_ADJUSTMENTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | FY |  |  |  | 0.53, 0.04, 0.41, 0.16 |
| Label | CLIENT_ASSOCIATE_Label | Client |  |  |  | 0.98, 0.04, 0.61, 0.16 |
| Label | ACTIVITY_CODE_Label | Code |  |  |  | 1.63, 0.04, 0.53, 0.16 |
| Label | ORDER_AMT_Label | Amount |  |  |  | 2.22, 0.04, 0.50, 0.16 |
| Label | SIZE_Label | Grade Specs |  |  |  | 2.76, 0.04, 1.22, 0.17 |
| Label | Label27 | CItem |  |  |  | 4.02, 0.04, 0.42, 0.17 |
| Label | Label30 | OrderID |  |  |  | 45.50, 0.04, 0.50, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.98, 0.02, 0.61, 0.19 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 1.63, 0.02, 0.53, 0.19 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 2.22, 0.02, 0.50, 0.19 |
| TextBox | SIZE |  | Order_Size_Spec_W_Prune2 |  |  | 2.77, 0.02, 1.19, 0.19 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.53, 0.02, 0.41, 0.19 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 4.02, 0.02, 0.39, 0.19 |
| TextBox | Order_ID |  | Order_ID |  |  | 0.00, 0.02, 0.49, 0.18 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 1.04, 0.04, 0.96, 0.21 |
| TextBox | CN |  | CN |  |  | 2.04, 0.04, 0.92, 0.00 |
