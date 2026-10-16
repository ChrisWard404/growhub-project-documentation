# Report: NMIS_Processing_Table_Priorities subreport

**Caption:** NMIS_Processing_Table_Priorities subreport  
**Record source:**

```sql
SELECT [NMIS_Processing_Table_Priorities].[ORDER_CN], [NMIS_Processing_Table_Priorities].[PROCESSING_PRIORITY], [NMIS_Processing_Table_Priorities].[TABLE], [NMIS_Processing_Table_Priorities].[NOTE] FROM [NMIS_Processing_Table_Priorities]
```

**Backend tables referenced:** `NMIS_Processing_Table_Priorities`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ORDER_CN_Label | Order CN |  |  |  | 0.25, 0.04, 2.00, 0.19 |
| Label | PROCESSING_PRIORITY_Label | Processing Priority |  |  |  | 2.29, 0.04, 1.75, 0.19 |
| Label | TABLE_Label | Table |  |  |  | 4.08, 0.04, 0.54, 0.19 |
| Label | NOTE_Label | Note |  |  |  | 4.67, 0.04, 3.29, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 0.25, 0.04, 2.00, 0.19 |
| TextBox | PROCESSING_PRIORITY |  | PROCESSING_PRIORITY |  |  | 2.29, 0.04, 1.75, 0.19 |
| TextBox | TABLE |  | TABLE |  |  | 4.08, 0.04, 0.54, 0.19 |
| TextBox | NOTE |  | NOTE |  |  | 4.67, 0.04, 3.29, 0.19 |
