# Form: NMIS_PROCESS_QUALITY_ORDERS subform

**Caption:** NMIS_ORDERS subform1  
**Record source:**

```sql
SELECT [NMIS_ORDERS].[CN], Left$([cn],(Len([cn])-7)) AS [Order], [NMIS_ORDERS].[CLIENT_ASSOCIATE], [NMIS_ORDERS].[AGREEMENT_LOT_CN] FROM NMIS_ORDERS WHERE ((([NMIS_ORDERS].[AGREEMENT_LOT_CN])=[Forms]![NMIS_PROCESS_QUALITY_SAMPLES]![NMIS_ORDERS subform1].Form!Agreement_Lot_CN_Choose));
```

**Backend tables referenced:** `NMIS_ORDERS`, `NMIS_PROCESSING_QI_SAMPLES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Agreement_Lot_CN_Choose | Agreement Lot ID: |  | SELECT [NMIS_PROCESSING_QI_SAMPLES].[ORDER_CN], [ID] & "/" & Left$([ORDER_CN],(Len([ORDER_CN])-7)) AS ID_n_Order FROM NMIS_PROCESSING_QI_SAMPLES INNER JOIN (NMIS_ORDERS INNER JOIN Agreement_Lots_Currently_Active ON [NMIS_ORDERS].[AGREEMENT_LOT_CN]=[Agreement_Lots_Currently_Active].[CN]) ON [NMIS_PROCESSING_QI_SAMPLES].[ORDER_CN]=[NMIS_ORDERS].[CN] GROUP BY [NMIS_PROCESSING_QI_SAMPLES].[ORDER_CN], [ID] & "/" & Left$([ORDER_CN],(Len([ORDER_CN])-7)) ORDER BY [ID] & "/" & Left$([ORDER_CN],(Len([ORDER_CN])-7));  |  | 1.70, 0.09, 1.33, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.84, 0.03, 0.89, 0.20 |
| TextBox | AGREEMENT_LOT_CN |  | Order |  |  | 0.05, 0.03, 0.76, 0.20 |
