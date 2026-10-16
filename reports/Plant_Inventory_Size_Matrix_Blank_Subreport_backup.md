# Report: Plant_Inventory_Size_Matrix_Blank_Subreport_backup

**Record source:**

```sql
Plant_inv_matrix_xtab_Blank
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ht_Col_Head |  | ="Height (" & [Specs_Unit_Code] & ")" |  |  | 0.00, 0.00, 0.88, 0.69 |
| TextBox | Text123 |  | ="Caliper (mm)" |  |  | 0.88, 0.00, 6.12, 0.35 |
| ComboBox | Combo0 |  | ="A" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 0.88, 0.35, 0.88, 0.33 |
| ComboBox | Combo46 |  | ="B" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 1.76, 0.35, 0.88, 0.33 |
| ComboBox | Combo47 |  | ="C" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 2.64, 0.35, 0.88, 0.33 |
| ComboBox | Combo48 |  | ="D" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 3.51, 0.35, 0.88, 0.33 |
| ComboBox | Combo49 |  | ="E" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 4.38, 0.35, 0.88, 0.33 |
| ComboBox | Combo50 |  | ="F" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 5.26, 0.35, 0.88, 0.33 |
| ComboBox | Combo51 |  | ="G" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 6.12, 0.35, 0.88, 0.33 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | HT_HEADING |  |  | 0.00, 0.00, 0.88, 0.50 |
| TextBox | Text14 |  |  |  |  | 0.88, 0.00, 0.88, 0.50 |
| TextBox | Text86 |  |  |  |  | 1.75, 0.00, 0.88, 0.50 |
| TextBox | Text87 |  |  |  |  | 2.62, 0.00, 0.88, 0.50 |
| TextBox | Text17 |  |  |  |  | 3.50, 0.00, 0.88, 0.50 |
| TextBox | Text18 |  |  |  |  | 4.38, 0.00, 0.88, 0.50 |
| TextBox | Text19 |  |  |  |  | 5.25, 0.00, 0.88, 0.50 |
| TextBox | Text20 |  |  |  |  | 6.12, 0.00, 0.88, 0.50 |
