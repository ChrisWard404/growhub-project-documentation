# Form: Agreement_Lot_Grow_Containers

**Caption:** Ft_To_Lift  
**Record source:**

```sql
SELECT [*Agreement_Lot_Total_Containers_Grow_Table].Agreement_Lot_CN, Round(Nz([Total_Containers],0),0) AS Lot_Total_Ft, [*Agreement_Lot_Total_Containers_Grow_Table].Note_Container FROM [*Agreement_Lot_Total_Containers_Grow_Table] GROUP BY [*Agreement_Lot_Total_Containers_Grow_Table].Agreement_Lot_CN, Round(Nz([Total_Containers],0),0), [*Agreement_Lot_Total_Containers_Grow_Table].Note_Container;
```

**Embedded in:** `Form:NMIS_ID_LOCATIONS_FORM_Husky`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Lot_Total_Ft |  | Lot_Total_Ft |  |  | 0.04, 0.04, 0.83, 0.19 |
| TextBox | Text2 |  | Note_Container |  |  | 0.04, 0.25, 0.83, 0.19 |
