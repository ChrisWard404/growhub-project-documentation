# Report: Plant_Inventory_matrix

**Caption:** Plant Inventory Worksheet  
**Record source:**

```sql
Plant_Inventory_Worksheet Query
```

**Grouping/sorting:** `B_or_C`, `ID`  
**Subforms/subreports:** `Report.Plant_Inventory_Size_Matrix_Blank_Subreport`  
**Opened from (VBA):** `Form_Plant_Inventory_Worksheets Form`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Inventory Worksheet |  |  |  | 3.15, 0.57, 1.68, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label133 |  Lot ID: |  |  |  | 0.38, 0.01, 0.32, 0.30 |
| TextBox | Text134 |  | Client_and_ID |  |  | 0.68, 0.04, 2.77, 0.26 |
| Subform | Plant_Inventory_Size_Matrix_Blank_Subreport |  | Report.Plant_Inventory_Size_Matrix_Blank_Subreport |  |  | 0.41, 0.32, 7.09, 6.06 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 0.09, 3.04, 0.18 |
| TextBox | Text85 |  | Client_and_ID |  |  | 4.95, 0.00, 2.92, 0.34 |
| Line | Line124 |  |  |  |  | 0.00, 0.01, 7.92, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT2"
    DoCmd.SetWarnings True
    
End Sub
```
