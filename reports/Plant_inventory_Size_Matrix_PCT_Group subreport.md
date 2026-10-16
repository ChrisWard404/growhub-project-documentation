# Report: Plant_inventory_Size_Matrix_PCT_Group subreport

**Caption:** Size_Matrix_Xtab subreport  
**Record source:**

```sql
*Plant_Inv_Matrix_Group_PCT_xtab_Table
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template`  
**Subforms/subreports:** `Report.PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport`  
**Embedded in:** `Report:Plant_inventory_Rpt_Size_Matrix_Group`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label20 | Caliper (mm) |  |  |  | 0.80, 0.35, 5.25, 0.22 |
| Label | Label21 | Percent by Caliper and Height  |  |  |  | 0.79, 0.04, 3.86, 0.23 |
| ComboBox | Text44 |  | ="A" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 0.80, 0.57, 0.75, 0.23 |
| ComboBox | Combo46 |  | ="B" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 1.55, 0.57, 0.76, 0.23 |
| ComboBox | Combo47 |  | ="C" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 2.30, 0.57, 0.76, 0.23 |
| ComboBox | Combo48 |  | ="D" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 3.05, 0.57, 0.82, 0.23 |
| ComboBox | Combo49 |  | ="E" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 3.79, 0.57, 0.76, 0.23 |
| ComboBox | Combo50 |  | ="F" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 4.55, 0.57, 0.75, 0.23 |
| ComboBox | Combo51 |  | ="G" | SELECT NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING FROM NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template GROUP BY NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.COL_ORDER, NMIS_PRODUCT_INVENTORY_SIZE_Matrix_Table_Template.CAL_HEADING; |  | 5.30, 0.57, 0.75, 0.23 |
| TextBox | Ht_Col_Head |  | ="Height (" & [PLANT_INVENTORY_SPECS_UNIT_CODE subreport].[Report]![SPECS_UNIT_CODE] & ")" |  |  | 0.12, 0.35, 0.67, 0.45 |
| Subform | PLANT_INVENTORY_SPECS_UNIT_CODE subreport |  | Report.PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport (master: ID_ACTIVITY_CN → child: ID_ACTIVITY_CN) |  |  | 4.54, 0.04, 1.63, 0.29 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line18 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Ht_Heading |  | Ht_Heading |  |  | 0.13, 0.00, 0.67, 0.23 |
| TextBox | A |  | A |  |  | 0.80, 0.00, 0.75, 0.23 |
| TextBox | B |  | B |  |  | 1.55, 0.00, 0.75, 0.23 |
| TextBox | C |  | C |  |  | 2.30, 0.00, 0.75, 0.23 |
| TextBox | D |  | D |  |  | 3.05, 0.00, 0.75, 0.23 |
| TextBox | E |  | E |  |  | 3.80, 0.00, 0.75, 0.23 |
| TextBox | F |  | F |  |  | 4.55, 0.00, 0.75, 0.23 |
| TextBox | G |  | G |  |  | 5.30, 0.00, 0.75, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line19 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
