# Form: *propagule_Grow_Containers_for_Orders_table subform

**Caption:** *propagule_Grow_Containers_for_Orders_table subform  
**Record source:**

```sql
SELECT [*propagule_Grow_Containers_for_Orders_table].[AGREEMENT_LOT_CN], [*propagule_Grow_Containers_for_Orders_table].[SumOfSum_of_Activity_Units] FROM [*propagule_Grow_Containers_for_Orders_table]
```

**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_INPUT_Propagule`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SumOfSum_of_Activity_Units | Current Bed Ft: | SumOfSum_of_Activity_Units |  |  | 1.17, 0.04, 0.62, 0.21 |
