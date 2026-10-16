# Form: Plant_Inventory_Worksheets Form

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_FISCAL_YEARS`, `NMIS_PRODUCTS`, `NMIS_SPECIES`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Report:Plant_Inventory_Worksheet`, `Report:Plant_Inventory_Worksheet_w_matrix`, `Report:Plant_Inventory_matrix`  
**Opened from (VBA):** `Form_**********dbdNMIS_PRODUCT_INVENTORIES`, `Form_NMIS_PRODUCT_INVENTORIES`, `Form_NMIS_PRODUCT_INVENTORIES2`, `Form_NMIS_PRODUCT_INVENTORIES3`, `Form_Reports_Menu_Production Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Plant Inventory Worksheets |  |  |  | 2.16, 0.23, 2.72, 0.27 |
| Line | Line12 |  |  |  |  | 0.08, 0.74, 6.21, 0.01 |
| Rectangle | Box13 |  |  |  |  | 0.12, 0.95, 3.42, 2.02 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.22, 2.28, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.22, 2.59, 0.68, 0.20 |
| ComboBox | Product | Product: |  | SELECT Agreement_Lot_Current_Age_Class.Age_Class, Count([nmis_agreement_lots].[cn]) & IIf(Count([nmis_agreement_lots].[cn])>1," Lots"," Lot") AS Lots, Agreement_Lot_Current_Age_Class.BorCforCycle FROM (NMIS_PRODUCTS INNER JOIN Product_String ON NMIS_PRODUCTS.CN = Product_String.CN) INNER JOIN (((Agreement_Lot_Total_Containers_Grow RIGHT JOIN (NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.SPECIES_PRODUCT_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL)) ON Agreement_Lot_Total_Containers_Grow.Agreement_Lot_CN = NMIS_AGREEMENT_LOTS.CN) INNER JOIN Agreement_Lot_Current_Age_Class ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lot_Current_Age_Class.CN) INNER JOIN Agreement_Lots_Currently_Active_in_Grow_Containers ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lots_Currently_Active_in_Grow_Containers.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_AGREEMENT_LOTS.END_FY) Like [Forms]![Plant_Inventory_Worksheets Form]![End_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![Plant_Inventory_Worksheets Form]![Begin_FY] & "*") AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Is Not Null) AND ((NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) Like Nz([Forms]![Plant_Inventory_Worksheets Form]![Plntmstr_Symbol],"*")) AND ((NMIS_SPECIES_PRODUCTS.SPECIES_PRODUCT_DESC)<>"Seed")) GROUP BY Agreement_Lot_Current_Age_Class.Age_Class, Agreement_Lot_Current_Age_Class.BorCforCycle, Agreement_Lot_Current_Age_Class.BorCforCycle HAVING (((Agreement_Lot_Current_Age_Class.BorCforCycle) In ("B","C") And (Agreement_Lot_Current_Age_Class.BorCforCycle) Like [Forms]![Plant_Inventory_Worksheets Form]![BR_OR_C])) ORDER BY Agreement_Lot_Current_Age_Class.BorCforCycle, Agreement_Lot_Current_Age_Class.BorCforCycle, Agreement_Lot_Current_Age_Class.Age_Class; | Enter | 1.22, 1.70, 2.23, 0.20 |
| Rectangle | Box27 |  |  |  |  | 3.62, 0.95, 2.67, 2.05 |
| CommandButton | Create_Plant_Inventory_Worksheets | Click to Create Plant Inventory Worksheets |  |  | Click | 0.88, 3.42, 1.44, 0.59 |
| CommandButton | Clear_ids | Click to Clear |  |  | Click | 4.78, 2.63, 0.86, 0.26 |
| TextBox | Location | Location: |  |  | Enter | 1.22, 1.42, 0.63, 0.20 |
| CommandButton | Create_Plant_Inventory_Worksheets_With_Size_Matrix | Click to Create Plant Inventory Worksheets with Size Matrix |  |  | Click | 2.83, 3.42, 1.44, 0.59 |
| ComboBox | BR_OR_C | Bareroot/Cont: |  | B;Bareroot;C;Container;*;All |  | 1.22, 1.14, 1.36, 0.20 |
| CommandButton | Create_Plant_Inventory_Size_Matrix_Worksheets | Click to Create Plant Inventory Size Matrix Only Worksheet |  |  | Click | 4.80, 3.42, 1.44, 0.59 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 1.22, 1.99, 0.80, 0.21 |
| ComboBox | Lot_ID_1 | Like Lot ID 1: |  | SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS; | Enter | 4.73, 1.18, 1.43, 0.21 |
| ComboBox | Lot_ID_2 | Like Lot ID 2: |  | SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;  |  | 4.73, 1.47, 1.43, 0.21 |
| ComboBox | Lot_ID_3 | Like Lot ID 3: |  | SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;  |  | 4.73, 1.76, 1.43, 0.21 |
| ComboBox | Lot_ID_4 | Like Lot ID 4: |  | SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;  |  | 4.73, 2.06, 1.43, 0.21 |
| ComboBox | Lot_ID_5 | Like Lot ID 5: |  | SELECT NMIS_AGREEMENT_LOTS.ID FROM NMIS_AGREEMENT_LOTS;  |  | 4.73, 2.35, 1.43, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Create_Plant_Inventory_Size_Matrix_Worksheets_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_matrix"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Plant_Inventory_Worksheets_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet"
   
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Plant_Inventory_Worksheets_With_Size_Matrix_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet_w_matrix"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Inventory_Worksheets_Product_Select_MT"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Location_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Lot_ID_1_Enter()
    
    [Product] = "*"
    [Plntmstr_Symbol] = "*"
    [BEGIN_FY] = "*"
    [END_FY] = "*"
    
End Sub
Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub Product_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    
    Product.Requery
    
End Sub
```
