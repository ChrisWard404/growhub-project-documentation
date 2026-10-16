# Form: NMIS_PROCESS_QUALITY_SAMPLES_NOTES subform

**Caption:** NMIS_PROCESSING_QI_NOTES subform  
**Record source:**

```sql
SELECT [NMIS_PROCESSING_QI_NOTES].[ORDER_CN], [NMIS_PROCESSING_QI_NOTES].[DATE], [NMIS_PROCESSING_QI_NOTES].[TIME], [NMIS_PROCESSING_QI_NOTES].[NOTE] FROM NMIS_PROCESSING_QI_NOTES ORDER BY [NMIS_PROCESSING_QI_NOTES].[DATE], [NMIS_PROCESSING_QI_NOTES].[TIME], [NMIS_PROCESSING_QI_NOTES].[NOTE];
```

**Backend tables referenced:** `NMIS_PROCESSING_QI_NOTES`  
**Embedded in:** `Form:NMIS_PROCESS_QUALITY_SAMPLES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | DATE_Label | Date |  |  |  | 0.09, 0.04, 0.72, 0.20 |
| Label | TIME_Label | Time |  |  |  | 0.86, 0.04, 0.57, 0.20 |
| Label | NOTE_Label | Note |  |  |  | 1.48, 0.04, 5.36, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | DATE |  | DATE |  |  | 0.09, 0.04, 0.72, 0.20 |
| TextBox | TIME |  | TIME |  |  | 0.86, 0.04, 0.57, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 1.48, 0.04, 5.36, 0.20 |
