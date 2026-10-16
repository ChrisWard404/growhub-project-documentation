# Report: NMIS_PROCESS_QI_LABELS_bu

**Caption:** Preview Quality Monitoring Label  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS.ORDER_AMT, Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) AS PACK_ID, NMIS_ORDERS.CN, IIf([ORDER_AMT]<5,IIf([ACTIVITY_CODE] Like "PXPLT*","See Table Leader","<5M NO SAMPLE"),"") AS NO_QM_SAMPLE, NMIS_ORDERS.ACTIVITY_CODE FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_AGREEMENT_LOTS.ID, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS.ORDER_AMT, Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7), NMIS_ORDERS.CN, IIf([ORDER_AMT]<5,IIf([ACTIVITY_CODE] Like "PXPLT*","See Table Leader","<5M NO SAMPLE"),""), NMIS_ORDERS.ACTIVITY_CODE HAVING (((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_ID] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code]));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label75 | Nursery ID: |  |  |  | 0.00, 1.56, 1.14, 0.19 |
| TextBox | Text77 |  | ID |  |  | 1.14, 1.20, 4.53, 0.55 |
| TextBox | Text78 |  | ="Top: ht: " & [SPEC_MIN] & " - " & [Spec_max] & "   Cal: " & [caliper_min] |  |  | 0.00, 3.27, 4.58, 0.23 |
| Label | Label82 | QUALITY INSPECTION LABEL |  |  |  | 0.08, 0.00, 5.62, 0.21 |
| TextBox | Text84 |  | ='*I' & [ID] & "*" |  |  | 0.00, 1.79, 5.67, 0.25 |
| TextBox | Text85 |  | ='*P' & [Pack_ID] & "*" |  |  | 0.00, 0.98, 2.67, 0.25 |
| TextBox | Text86 |  | ="Date: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 0.92, 0.49, 1.71, 0.21 |
| TextBox | Text88 |  | ="Table: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 0.00, 0.49, 0.88, 0.21 |
| TextBox | Text93 |  | ='*T' & [spec_Min] & '+' & [spec_Max] & '+' & [Caliper_Min] & "*" |  |  | 0.00, 3.54, 4.58, 0.28 |
| TextBox | Text95 |  | ="Prune: " & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '-' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '-' & ([Root_Prune_Target]+1.5)) & " Target: " & [ROOT_Prune_TARGET] & " Inches" |  |  | 0.00, 2.12, 3.21, 0.23 |
| TextBox | Text97 |  | ="Take: " & Round([Order_Amt]*10,0) & " From " & [ORDER_AMT] & " M" |  |  | 0.00, 2.68, 2.54, 0.22 |
| TextBox | Text99 |  | ='*R' & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '+' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '+' & ([Root_Prune_Target]+1.5)) & "*" |  |  | 0.00, 2.38, 3.22, 0.27 |
| TextBox | Text103 |  | ='*Z' & Round([Order_Amt]*10,0) & "*" |  |  | 0.00, 2.94, 4.50, 0.25 |
| TextBox | Text106 |  | ="Order ID: " & [PACK_ID] |  |  | 0.00, 0.74, 2.67, 0.21 |
| TextBox | PACK_CONTRACT_ITEM |  | ="Pack Contract Item: " & [Contract_Item] |  |  | 2.67, 0.74, 2.16, 0.21 |
| ComboBox | Text108 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [ASSOCIATE] & " " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.08, 0.25, 5.62, 0.23 |
| TextBox | Text111 |  | ='*C' & [Contract_Item] & "*" |  |  | 2.67, 0.98, 2.92, 0.25 |
| TextBox | NO_QM_SAMPLE |  | NO_QM_SAMPLE |  |  | 3.29, 2.54, 2.33, 0.33 |
