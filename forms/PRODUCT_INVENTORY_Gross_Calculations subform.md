# Form: PRODUCT_INVENTORY_Gross_Calculations subform

**Caption:** PRODUCT_INVENTORY_Calculations subform  
**Record source:**

```sql
SELECT [NMIS_ID_ACTIVITIES].[CN], [Product_inventories_Sample_Stats].[sumX], [Product_inventories_Sample_Stats].[Samples_Taken], Round([SumX]/[Samples_Taken]*2,3) AS Density, 1 AS Plot_Spacing, Round(([Total_Activity_Units]*[SumX]/[Samples_Taken]*2)/1000,3) AS Gross FROM Product_inventories_Sample_Stats INNER JOIN (Transaction_Totals_by_Id_Activity INNER JOIN NMIS_ID_ACTIVITIES ON [Transaction_Totals_by_Id_Activity].[ID_ACTIVITY_CN]=[NMIS_ID_ACTIVITIES].[CN]) ON [Product_inventories_Sample_Stats].[ID_ACTIVITY_CN]=[NMIS_ID_ACTIVITIES].[CN];
```

**Backend tables referenced:** `NMIS_ID_ACTIVITIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Gross |  | Gross |  |  | 2.56, 0.06, 0.46, 0.20 |
| Label | Gross_Label | Gross: |  |  |  | 2.01, 0.06, 0.50, 0.20 |
| TextBox | Plots_Taken | Samples: | Samples_Taken |  |  | 1.72, 0.06, 0.26, 0.20 |
| CommandButton | Calculate_Gross | Click to Use |  |  | Click | 0.05, 0.06, 0.86, 0.21 |
| TextBox | Sample_Spacing | Sample Spacing: | Plot_Spacing |  |  | 1.97, 0.04, 0.29, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Calculate_Gross_Click()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![GROSS_INV] = GROSS
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES] = Plots_Taken
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES_SPACING] = Plot_Spacing
    
End Sub
```
