# Form: NMIS_PROCESS_QUALITY_COUNTS subform

**Caption:** NMIS_PROCESSING_QUALITY_COUNTS subform  
**Record source:**

```sql
SELECT [NMIS_PROCESSING_QI_COUNTS].[ORDER_CN], [NMIS_PROCESSING_QI_COUNTS].[COUNT_DATE], [NMIS_PROCESSING_QI_COUNTS].[COUNT_TIME], [NMIS_PROCESSING_QI_COUNTS].[COUNT_DESIRED], [NMIS_PROCESSING_QI_COUNTS].[COUNT_ACTUAL] FROM NMIS_PROCESSING_QI_COUNTS;
```

**Backend tables referenced:** `NMIS_ORDERS`, `NMIS_PROCESSING_QI_COUNTS`  
**Embedded in:** `Form:NMIS_PROCESS_QUALITY_SAMPLES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | COUNT_DATE_Label | Count Date |  |  |  | 0.09, 0.04, 0.79, 0.20 |
| Label | COUNT_TIME_Label | Count Time |  |  |  | 0.95, 0.04, 0.80, 0.20 |
| Label | COUNT_DESIRED_Label | Count Desired |  |  |  | 1.82, 0.04, 0.99, 0.20 |
| Label | COUNT_ACTUAL_Label | Count Actual |  |  |  | 2.88, 0.04, 0.92, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | COUNT_DATE |  | COUNT_DATE |  |  | 0.09, 0.04, 0.79, 0.19 |
| TextBox | COUNT_TIME |  | COUNT_TIME |  |  | 0.95, 0.04, 0.80, 0.19 |
| TextBox | COUNT_DESIRED |  | COUNT_DESIRED |  |  | 1.82, 0.04, 0.99, 0.19 |
| TextBox | COUNT_ACTUAL |  | COUNT_ACTUAL |  |  | 2.88, 0.04, 0.90, 0.19 |
| ComboBox | ORDER_Index |  | ORDER_CN | SELECT [NMIS_ORDERS].[CN], Left$([CN],Len([CN])-7) AS [Order] FROM NMIS_ORDERS;  |  | 3.88, 0.04, 0.29, 0.20 |
