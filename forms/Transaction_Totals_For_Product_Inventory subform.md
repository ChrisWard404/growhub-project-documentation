# Form: Transaction_Totals_For_Product_Inventory subform

**Caption:** Transaction_Totals_By_Location_and_amt_per_unit1 subform  
**Record source:**

```sql
Transaction_Totals_for_Product_Inv_FORM
```

**Backend tables referenced:** `NMIS_UNITS`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_CN_Label | Location |  |  |  | 0.56, 0.30, 1.54, 0.17 |
| Label | Sum_of_Activity_Units_Label | Units |  |  |  | 2.15, 0.30, 0.47, 0.17 |
| Label | Net_Density_Label | Net/Unit |  |  |  | 5.25, 0.30, 0.70, 0.17 |
| Label | Gross_Density_Label | Gross/Unit |  |  |  | 4.48, 0.30, 0.71, 0.17 |
| Label | Label14 | Net |  |  |  | 6.81, 0.30, 0.60, 0.17 |
| Label | Label18 | Unit |  |  |  | 2.67, 0.30, 1.75, 0.17 |
| Label | Label19 | Gross |  |  |  | 6.01, 0.30, 0.65, 0.17 |
| Label | Label24 | Current Inventory Info |  |  |  | 2.98, 0.08, 1.77, 0.17 |
| TextBox | SUM_OF_ACTIVITY_UNITS_T |  |  |  |  | 6.50, 0.04, 0.67, 0.12 |
| TextBox | ID_LOCATION_CN_T |  |  |  |  | 5.70, 0.04, 0.67, 0.12 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_of_Activity_Units |  | Total_Activity_Units |  |  | 2.15, 0.02, 0.47, 0.20 |
| TextBox | Net_Density |  | Net_Density |  |  | 5.27, 0.02, 0.68, 0.20 |
| TextBox | Gross_Density |  | Gross_Density |  |  | 4.48, 0.02, 0.71, 0.20 |
| TextBox | Net_M |  | =Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3) |  |  | 6.80, 0.02, 0.62, 0.20 |
| TextBox | LOCATION_CN |  | LOCATION2 |  |  | 0.57, 0.02, 1.53, 0.20 |
| TextBox | Gross_M |  | =Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3) |  |  | 6.01, 0.02, 0.66, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 2.68, 0.02, 1.74, 0.20 |
| CommandButton | Zero | Update |  |  | Click | 0.04, 0.02, 0.49, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Net_M |  | =Sum(Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3)) |  |  | 6.76, 0.03, 0.67, 0.20 |
| Label | Label16 | Total Inventory: |  |  |  | 4.82, 0.04, 0.95, 0.19 |
| TextBox | Sum_Gross_M |  | =Sum(Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3)) |  |  | 5.95, 0.02, 0.73, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Zero_Click()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
    End If
    
        If IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
        ID_LOCATION_CN_T = ID_LOCATION_CN
        SUM_OF_ACTIVITY_UNITS_T = Sum_Of_ACTIVITY_UNITS
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
            = ID_LOCATION_CN
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
            = Sum_Of_ACTIVITY_UNITS * -1
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
            = Net_Density
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
            = Gross_Density
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
            = ID_LOCATION_CN_T
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
            = SUM_OF_ACTIVITY_UNITS_T
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
            = Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Net_Per_Unit], 0)
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
            = Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Gross_Per_Unit])
        'Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Requery
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
        End If
        
End Sub
```
