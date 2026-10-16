# Form: Husky_lpro_vs_spro_error subform

**Caption:** Husky_lpro_vs_spro_error subform  
**Record source:**

```sql
SELECT Husky_lpro_vs_spro_error.Nursery_ID, Husky_lpro_vs_spro_error.Contract_Item, Husky_lpro_vs_spro_error.Feet_Lifted, Husky_lpro_vs_spro_error.Field_Container, Husky_lpro_vs_spro_error.Field_Container_Code, Husky_lpro_vs_spro_error.Containers, Husky_lpro_vs_spro_error.Field_Containers, Husky_lpro_vs_spro_error.LTime, Husky_lpro_vs_spro_error.STime, IIf([Count_error]>0,[Containers],"") AS LCount_Off, IIf([Count_error]>0,[Field_Containers],"") AS SCount_Off, IIf([Container_Type_Error]>0,[Field_Container],"") AS LContainer_Type_Off, IIf([Container_Type_Error]>0,[Field_Container_Code],"") AS SContainer_Type_Off FROM Husky_lpro_vs_spro_error;
```


## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Contract_Item_Label | Contract Item |  |  |  | 0.79, 0.50, 0.63, 0.36 |
| Label | Feet_Lifted_Label | Feet Lifted |  |  |  | 1.46, 0.50, 0.52, 0.36 |
| Label | Field_Container_Code_Label | Shed |  |  |  | 2.58, 0.72, 0.48, 0.20 |
| Label | Nursery_ID_Label | Agreement Lot ID |  |  |  | 0.00, 0.50, 0.76, 0.37 |
| Label | Field_Container_Label | Field |  |  |  | 2.01, 0.72, 0.53, 0.20 |
| Label | Label8 | Container or Count Missmatches |  |  |  | 2.53, 0.06, 1.43, 0.37 |
| Label | Label14 | Container Type |  |  |  | 2.01, 0.50, 1.05, 0.20 |
| Label | Label15 | Shed |  |  |  | 3.67, 0.72, 0.51, 0.20 |
| Label | Label16 | Field |  |  |  | 3.09, 0.72, 0.54, 0.20 |
| Label | Label17 |  # of Containers |  |  |  | 3.09, 0.50, 1.08, 0.20 |
| Label | Label18 | Shed |  |  |  | 4.80, 0.72, 0.52, 0.20 |
| Label | Label19 | Field |  |  |  | 4.22, 0.72, 0.54, 0.20 |
| Label | Label20 |  Time |  |  |  | 4.22, 0.50, 1.10, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Nursery_ID |  | Nursery_ID |  |  | 0.00, 0.04, 0.74, 0.20 |
| TextBox | Contract_Item |  | Contract_Item |  |  | 0.78, 0.04, 0.63, 0.20 |
| TextBox | Feet_Lifted |  | Feet_Lifted |  |  | 1.46, 0.04, 0.51, 0.20 |
| TextBox | Field_Container |  | LContainer_Type_Off |  |  | 2.01, 0.04, 0.53, 0.20 |
| TextBox | Field_Container_Code |  | SContainer_Type_Off |  |  | 2.54, 0.04, 0.47, 0.20 |
| TextBox | Containers |  | LCount_Off |  |  | 3.09, 0.04, 0.53, 0.20 |
| TextBox | Field_Containers |  | SCount_Off |  |  | 3.67, 0.04, 0.50, 0.20 |
| TextBox | LTime |  | LTime |  |  | 4.22, 0.04, 0.54, 0.20 |
| TextBox | STime |  | STime |  |  | 4.80, 0.04, 0.52, 0.20 |
