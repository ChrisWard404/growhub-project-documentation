# Report: Propagule_Order_Field_Location_Index Subform

**Caption:** Field Index  
**Record source:**

```sql
SELECT [*Field_Location_Propagule_Inv_Subform].* FROM [*Field_Location_Propagule_Inv_Subform];
```

**Grouping/sorting:** `AGREEMENT_LOT_CN`, `BEGIN_DATE`, `LOCATION`  
**Embedded in:** `Report:ORDER_FORM_SPECS_PROPAGULE mt Subrep`  

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BEGIN_DATE | Sow Date: | BEGIN_DATE |  |  | 0.58, 0.01, 1.38, 0.16 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 1.25, 0.00, 0.33, 0.13 |
| TextBox | Begin_Riser |  | BEGIN_INDEX |  |  | 0.57, 0.00, 0.34, 0.12 |
| TextBox | Location |  | Location |  |  | 0.00, 0.00, 0.42, 0.13 |
| Line | Line43 |  |  |  |  | 0.00, 0.14, 1.58, 0.00 |
| TextBox | End_Riser |  | END_INDEX |  |  | 0.94, 0.00, 0.29, 0.13 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.43, 0.00, 0.12, 0.14 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([Ft_In_Lot]) |  |  | 1.12, 0.00, 0.49, 0.15 |
| Label | Label48 | Total Containers: |  |  |  | 0.06, 0.00, 0.94, 0.16 |
