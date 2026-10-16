# Report: NMIS_PROCESS_QI_ONLY_LABELS

**Caption:** Preview Quality Monitoring Label  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS.ORDER_AMT, Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) AS PACK_ID, NMIS_ORDERS.CN, IIf([ORDER_AMT]<5,IIf([ACTIVITY_CODE] Like "PXPLT*","See Table Leader","<5M NO SAMPLE"),"") AS NO_QM_SAMPLE, NMIS_ORDERS.ACTIVITY_CODE FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_AGREEMENT_LOTS.ID, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS.ORDER_AMT, Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7), NMIS_ORDERS.CN, IIf([ORDER_AMT]<5,IIf([ACTIVITY_CODE] Like "PXPLT*","See Table Leader","<5M NO SAMPLE"),""), NMIS_ORDERS.ACTIVITY_CODE HAVING (((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label75 | Lot ID: |  |  |  | 2.91, 1.62, 2.81, 0.23 |
| TextBox | Text77 |  | ID |  |  | 2.92, 1.82, 2.79, 0.57 |
| TextBox | Text78 |  | ="Top: ht: " & [SPEC_MIN] & " - " & [Spec_max] & "   Cal: " & [caliper_min] |  |  | 0.00, 3.27, 4.58, 0.23 |
| Label | Label82 | QUALITY INSPECTION LABEL |  |  |  | 0.08, 0.00, 5.62, 0.21 |
| TextBox | Text84 |  | ='I' & [ID] |  |  | 0.00, 1.35, 5.67, 0.25 |
| TextBox | Text85 |  | ='P' & [Pack_ID] |  |  | 0.00, 0.82, 2.92, 0.25 |
| TextBox | Text86 |  | ="Date: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 0.92, 0.43, 1.71, 0.21 |
| TextBox | Text88 |  | ="Table: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 0.00, 0.43, 0.88, 0.21 |
| TextBox | Text93 |  | ='*T' & [spec_Min] & "+" & [spec_Max] & '+' & [Caliper_Min] & "*" |  |  | 0.00, 3.50, 5.62, 0.29 |
| TextBox | Text95 |  | ="Prune: " & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '-' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '-' & ([Root_Prune_Target]+1.5)) & " Target: " & [ROOT_Prune_TARGET] & " Inches" |  |  | 0.00, 2.22, 2.92, 0.23 |
| TextBox | Text97 |  | ="Take: " & Round([Order_Amt]*10,0) & " From " & [ORDER_AMT] & " M" |  |  | 0.00, 2.72, 2.54, 0.22 |
| TextBox | Text99 |  | ='*R' & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '+' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '+' & ([Root_Prune_Target]+1.5)) & "*" |  |  | 0.00, 2.43, 5.62, 0.29 |
| TextBox | Text103 |  | ='Z' & Round([Order_Amt]*10,0) |  |  | 0.00, 2.92, 5.58, 0.28 |
| TextBox | Text106 |  | ="Order ID: " & [PACK_ID] |  |  | 0.00, 0.64, 2.67, 0.21 |
| TextBox | PACK_CONTRACT_ITEM |  | ="Pack Contract Item: " & [Contract_Item] |  |  | 0.00, 1.69, 2.16, 0.21 |
| ComboBox | Text108 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [ASSOCIATE] & " " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.08, 0.21, 5.62, 0.23 |
| TextBox | Text111 |  | ='C' & [Contract_Item] |  |  | 0.00, 1.88, 2.92, 0.25 |
| TextBox | NO_QM_SAMPLE |  | NO_QM_SAMPLE |  |  | 3.29, 2.65, 2.33, 0.33 |
| TextBox | Text115 |  | ="Lot ID: " & [ID] |  |  | 0.00, 1.17, 2.16, 0.21 |
| Label | Label116 | ORDER ID: |  |  |  | 2.92, 0.61, 2.79, 0.23 |
| TextBox | Text117 |  | PACK_ID |  |  | 2.92, 0.80, 2.79, 0.55 |
