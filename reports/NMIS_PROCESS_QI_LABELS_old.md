# Report: NMIS_PROCESS_QI_LABELS_old

**Caption:** Preview Quality Monitoring Label  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[ID], [NMIS_ORDERS].[CLIENT_ASSOCIATE], [NMIS_ORDERS].[SPEC_MIN], [NMIS_ORDERS].[SPEC_MAX], [NMIS_ORDERS].[CALIPER_MIN], [NMIS_ORDERS].[ROOT_PRUNE_TARGET], [NMIS_ORDERS].[CONTRACT_ITEM], [NMIS_ORDERS].[ORDER_AMT], [NMIS_ORDERS].[Index] AS PACK_ID FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_ORDERS].[AGREEMENT_LOT_CN]=[NMIS_AGREEMENT_LOTS].[CN] GROUP BY [NMIS_AGREEMENT_LOTS].[ID], [NMIS_ORDERS].[CLIENT_ASSOCIATE], [NMIS_ORDERS].[SPEC_MIN], [NMIS_ORDERS].[SPEC_MAX], [NMIS_ORDERS].[CALIPER_MIN], [NMIS_ORDERS].[ROOT_PRUNE_TARGET], [NMIS_ORDERS].[CONTRACT_ITEM], [NMIS_ORDERS].[ORDER_AMT], [NMIS_ORDERS].[Index] HAVING (((NMIS_ORDERS.Index)=[Forms]![NMIS_PROCESS_LABELS]![NMIS_PROCESS_LABELS_subform1].[Form]![PACK_ID]));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label75 | Nursery ID: |  |  |  | 0.00, 1.56, 0.96, 0.19 |
| TextBox | Text77 |  | ID |  |  | 0.97, 1.20, 3.84, 0.55 |
| TextBox | Text78 |  | ="Top: ht: " & [SPEC_MIN] & " - " & [Spec_max] & "   Cal: " & [caliper_min] |  |  | 0.00, 3.27, 4.58, 0.23 |
| Label | Label82 | QUALITY INSPECTION LABEL |  |  |  | 0.08, 0.00, 5.62, 0.21 |
| TextBox | Text84 |  | ='*I' & [ID] & "*" |  |  | 0.00, 1.77, 3.27, 0.25 |
| TextBox | Text85 |  | ='*P' & [Pack_ID] & "*" |  |  | 0.00, 0.96, 2.67, 0.27 |
| TextBox | Text86 |  | ="Date: " & Now() |  |  | 0.92, 0.49, 1.71, 0.21 |
| TextBox | Text88 |  | ="Table: " & [Forms]![NMIS_PROCESS_LABELS]![Table] |  |  | 0.00, 0.49, 0.88, 0.21 |
| TextBox | Text93 |  | ='*T' & [spec_Min] & '+' & [spec_Max] & '+' & [Caliper_Min] & "*" |  |  | 0.00, 3.52, 4.58, 0.28 |
| TextBox | Text95 |  | ="Prune: " & IIf([Contract_Item]="2.4",([Root_Prune_Target]-1) & '-' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '-' & ([Root_Prune_Target]+1.5)) & " Target: " & [ROOT_Prune_TARGET] & " Inches" |  |  | 0.00, 2.12, 3.21, 0.23 |
| TextBox | Text97 |  | ="Take: " & Round([Order_Amt]*10,0) & " From " & [ORDER_AMT] & " M" |  |  | 0.00, 2.73, 2.54, 0.00 |
| TextBox | Text99 |  | =IIf([Contract_Item]="2.4",'*R' & ([Root_Prune_Target]-1) & '+' & ([Root_Prune_Target]+1) & "*",'*R' & ([Root_Prune_Target]-1.5) & '+' & ([Root_Prune_Target]+1.5)) & "*" |  |  | 0.00, 2.36, 3.22, 0.27 |
| TextBox | Text103 |  | ='*Z' & Round([Order_Amt]*10,0) & "*" |  |  | 0.00, 2.92, 4.50, 0.25 |
| TextBox | Text106 |  | ="Order ID: " & [PACK_ID] |  |  | 0.00, 0.75, 2.67, 0.21 |
| TextBox | PACK_CONTRACT_ITEM |  | ="Pack Contract Item: " & [Contract_Item] |  |  | 2.67, 0.75, 2.16, 0.21 |
| ComboBox | Text108 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [ASSOCIATE] & " " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES;  |  | 0.08, 0.25, 5.62, 0.00 |
| TextBox | Text111 |  | ='*C' & [Contract_Item] & "*" |  |  | 2.67, 0.96, 2.92, 0.27 |
