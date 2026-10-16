# Report: NMIS_PROCESS_PACK_LABELS_PROOF

**Caption:** Preview Packing Label  
**Record source:**

```sql
SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.CN FROM NMIS_ORDERS GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.CN HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select]) AND ((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN]));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  
**Opened from (VBA):** `Form_NMIS_PROCESS_LABELS_ST1`, `Form_NMIS_PROCESS_LABELS_ST2`, `Form_NMIS_PROCESS_LABELS_ST3`, `Form_NMIS_PROCESS_LABELS_ST4`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ClientName_Label | Client: |  |  |  | 0.32, 2.01, 0.45, 0.19 |
| Label | NurseryID_Label | Nursery ID: |  |  |  | 0.01, 0.92, 0.76, 0.19 |
| TextBox | Date Packed | Date Packed: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] |  |  | 3.46, 3.26, 1.64, 0.53 |
| TextBox | Text38 | Trees/Cont: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] |  |  | 3.71, 1.31, 1.36, 0.46 |
| TextBox | Text40 | Table: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table] |  |  | 0.83, 1.31, 1.14, 0.46 |
| TextBox | Comments | Comment: | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments] |  |  | 0.83, 2.75, 4.66, 0.49 |
| Label | Label53 | Date Lifted: |  |  |  | 0.00, 3.44, 0.77, 0.19 |
| TextBox | Text54 |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] |  |  | 0.83, 3.26, 1.63, 0.53 |
| ComboBox | ClientName |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.83, 2.07, 4.58, 0.42 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.83, 1.78, 1.93, 0.28 |
| ComboBox | NurseryID |  | AGREEMENT_LOT_CN | SELECT [NMIS_ORDERS].[AGREEMENT_LOT_CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_ORDERS].[AGREEMENT_LOT_CN]=[NMIS_AGREEMENT_LOTS].[CN]; |  | 0.83, 0.66, 4.75, 0.63 |
| Label | Label63 | Order: |  |  |  | 0.32, 0.27, 0.45, 0.19 |
| TextBox | Combo64 |  | =[Forms]![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] |  |  | 0.83, 0.01, 4.42, 0.63 |
| Label | HtMin_Label | Height: |  |  |  | 0.25, 2.53, 0.52, 0.20 |
| Label | CaliperMin_Label | Caliper: |  |  |  | 2.12, 2.53, 0.57, 0.20 |
| Label | RootTarget_Label | RootTarget: |  |  |  | 3.50, 2.53, 0.80, 0.20 |
| TextBox | CaliperMin |  | CALIPER_MIN |  |  | 2.79, 2.51, 0.58, 0.23 |
| TextBox | RootTarget |  | ROOT_PRUNE_TARGET |  |  | 4.42, 2.51, 0.67, 0.23 |
| TextBox | Height_Range |  | =[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX]) |  |  | 0.83, 2.51, 1.04, 0.23 |
