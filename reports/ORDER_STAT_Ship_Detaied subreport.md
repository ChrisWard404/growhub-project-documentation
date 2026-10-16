# Report: ORDER_STAT_Ship_Detaied subreport

**Caption:** ORDER_STAT_PACK_Detaied subreport  
**Record source:**

```sql
SELECT [ORDER_STAT_SHIP_SPD Query].O_CN, [ORDER_STAT_SHIP_SPD Query].SHIP_CONT, [ORDER_STAT_SHIP_SPD Query].UNIT_CODE, [ORDER_STAT_SHIP_SPD Query].[Amt/Unit] FROM [ORDER_STAT_SHIP_SPD Query];
```

**Grouping/sorting:** `SHIP_CONT`, `Amt/Unit`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PACK_AMT |  | SHIP_CONT |  |  | 0.00, 0.00, 0.79, 0.20 |
| TextBox | UNIT_CODE |  | ="@" |  |  | 0.79, 0.00, 0.25, 0.20 |
| TextBox | Amt/Unit |  | Amt/Unit |  |  | 1.04, 0.00, 0.44, 0.20 |
