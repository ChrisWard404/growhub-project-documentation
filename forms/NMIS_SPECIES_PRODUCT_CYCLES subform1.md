# Form: NMIS_SPECIES_PRODUCT_CYCLES subform1

**Caption:** NMIS_SPECIES_PRODUCT_CYCLES subform1  
**Record source:**

```sql
SELECT NMIS_SPECIES_PRODUCT_CYCLES.*, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR1_DESC, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR2_DESC, Product_Inventory_Factor_Desc_For_Species_Products.FACTOR3_DESC FROM Product_Inventory_Factor_Desc_For_Species_Products RIGHT JOIN NMIS_SPECIES_PRODUCT_CYCLES ON Product_Inventory_Factor_Desc_For_Species_Products.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCT_CYCLES.SPECIES_PRODUCT_CN ORDER BY NMIS_SPECIES_PRODUCT_CYCLES.SPECIES_PRODUCT_CN, NMIS_SPECIES_PRODUCT_CYCLES.NUMBER_OF_FY_MIN;
```

**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_SPECIES_PRODUCTS`, `NMIS_SPECIES_PRODUCT_CYCLES`, `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_FACTORS`, `Form:NMIS_SPECIES_PRODUCTS Form`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NUMBER_OF_FY_MIN_Label | Min |  |  |  | 2.79, 0.86, 0.47, 0.24 |
| Label | NUMBER_OF_FY_MAX_Label | Max |  |  |  | 3.27, 0.86, 0.48, 0.24 |
| Label | CURRENT_SPECIES_PRODUCT_CN_Label | Cycle Product |  |  |  | 0.04, 0.86, 2.70, 0.24 |
| Label | CYCLE_REQUIRES_PROCESSING_Label | Requires Processing |  |  |  | 3.78, 0.74, 0.78, 0.37 |
| Label | Label44 | Cycles/Inventory Factors |  |  |  | 3.07, 0.06, 2.68, 0.30 |
| TextBox | SPECIES_PRODUCT_CN |  | SPECIES_PRODUCT_CN |  |  | 0.08, 0.04, 1.29, 0.20 |
| Label | Label10 | # Fiscal Years |  |  |  | 2.79, 0.66, 0.97, 0.19 |
| Label | Label11 | Target % |  |  |  | 5.39, 0.73, 0.47, 0.38 |
| Label | Label15 | Sample Size |  |  |  | 7.42, 0.73, 0.60, 0.38 |
| Label | Label16 | Max CV |  |  |  | 8.04, 0.73, 0.37, 0.38 |
| Label | Label17 | Inventory |  |  |  | 5.39, 0.50, 3.03, 0.21 |
| Line | Line18 |  |  |  |  | 0.08, 0.46, 8.22, 0.00 |
| Label | Label47 | Grow Container |  |  |  | 4.58, 0.73, 0.78, 0.38 |
| TextBox | FACTOR1_DESC |  | FACTOR1_DESC |  |  | 5.89, 0.73, 0.47, 0.38 |
| TextBox | Text81 |  | FACTOR2_DESC |  |  | 6.40, 0.73, 0.47, 0.38 |
| TextBox | Text82 |  | FACTOR3_DESC |  |  | 6.91, 0.73, 0.47, 0.38 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NUMBER_OF_FY_MIN |  | NUMBER_OF_FY_MIN |  |  | 2.88, 0.03, 0.23, 0.20 |
| TextBox | NUMBER_OF_FY_MAX |  | NUMBER_OF_FY_MAX |  |  | 3.35, 0.03, 0.28, 0.20 |
| CheckBox | CYCLE_REQUIRES_PROCESSING |  | CYCLE_REQUIRES_PROCESSING |  |  | 4.08, 0.07, 0.00, 0.00 |
| TextBox | INV_TARGET_PCT |  | INV_TARGET_PCT |  |  | 5.48, 0.03, 0.30, 0.20 |
| TextBox | INV_FACTOR_1 |  | INV_FACTOR_1 |  |  | 5.96, 0.03, 0.30, 0.20 |
| TextBox | INV_FACTOR_2 |  | INV_FACTOR_2 |  |  | 6.48, 0.03, 0.30, 0.20 |
| TextBox | INV_FACTOR_3 |  | INV_FACTOR_3 |  |  | 7.00, 0.03, 0.30, 0.20 |
| TextBox | INV_SIZE_SAMPLE |  | INV_SIZE_SAMPLE |  |  | 7.54, 0.03, 0.30, 0.20 |
| TextBox | INV_MAX_CV |  | INV_MAX_CV |  |  | 8.08, 0.03, 0.30, 0.20 |
| ComboBox | CURRENT_SPECIES_PRODUCT_CN |  | CURRENT_PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.HISTORICAL FROM NMIS_PRODUCTS WHERE (((NMIS_PRODUCTS.HISTORICAL) Like IIf([Forms]![NMIS_SPECIES_PRODUCTS Form]![Hide_Historical],0,"*"))) ORDER BY [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")"; | Enter, GotFocus | 0.05, 0.03, 2.70, 0.20 |
| ComboBox | UNIT |  | UNIT | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELL_DIMENSIONS FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) Like IIf(IsNull("unit_code"),"g","g*"))) ORDER BY NMIS_UNITS.UNIT_CODE; |  | 4.58, 0.04, 0.77, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CURRENT_SPECIES_PRODUCT_CN_Enter()

    CURRENT_SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub CURRENT_SPECIES_PRODUCT_CN_GotFocus()

    CURRENT_SPECIES_PRODUCT_CN.Requery
    
End Sub
```
