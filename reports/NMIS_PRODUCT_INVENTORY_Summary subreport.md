# Report: NMIS_PRODUCT_INVENTORY_Summary subreport

**Caption:** NMIS_PRODUCT_INVENTORIES subreport  
**Backend tables referenced:** `NMIS_PRODUCT_INVENTORIES`  
**Embedded in:** `Report:Product_Inventory_Data_Summary`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line20 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label22 | Tree Counts |  |  |  | 0.00, 0.41, 1.02, 0.22 |
| TextBox | sumxsq | Sum (X2): | sumxsq |  |  | 2.26, 0.95, 0.92, 0.22 |
| TextBox | Total_Trees | Sum X: | SumX |  |  | 2.26, 0.70, 0.92, 0.22 |
| TextBox | SAMPLES | Original # of Plots: | SAMPLES |  |  | 2.26, 1.17, 0.92, 0.22 |
| TextBox | mean | Mean: | mean |  |  | 2.26, 1.43, 0.92, 0.22 |
| TextBox | GROSS_INV | Gross Inventory: | GROSS_INV |  |  | 2.26, 2.17, 0.92, 0.22 |
| TextBox | NET_INV | Net Inventory: | NET_INV |  |  | 2.26, 2.41, 0.92, 0.22 |
| TextBox | Text29 | Calculated # of Plots: | Calculated_Plots |  |  | 2.26, 2.88, 0.92, 0.22 |
| TextBox | ADDITIONAL_SAMPLES | Additional Plots to Take: | Additional_Plots |  |  | 2.26, 3.12, 0.92, 0.22 |
| TextBox | ADDITIONAL_SAMPLES_SPACING | New Plot Spacing: | Additional_Plot_Spacing |  |  | 2.25, 3.37, 0.92, 0.22 |
| Label | Label34 | Tree Size |  |  |  | 0.00, 4.21, 1.08, 0.22 |
| TextBox | Total_Sized | Total Sized: | Total_Sized |  |  | 1.54, 4.52, 0.00, 0.22 |
| Label | Label36 | Summary |  |  |  | 0.00, 4.90, 1.25, 0.22 |
| Label | Label37 | Est Gross Volume: |  |  |  | 0.00, 5.22, 1.46, 0.22 |
| Label | Label38 | Shipping Factor: |  |  |  | 0.00, 5.47, 1.25, 0.22 |
| Label | Label39 | Est Net Volume: |  |  |  | 0.00, 5.72, 1.24, 0.22 |
| Label | Label40 | Alternate Ship Factor: |  |  |  | 0.00, 5.97, 1.62, 0.22 |
| Label | Label41 | Alternate Net Volume: |  |  |  | 0.00, 6.22, 1.62, 0.22 |
| ComboBox | Combo42 |  | ID_ACTIVITY_CN | SELECT NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING.ID_ACTIVITY_CN, "M  @ " & [SIZE_SPEC_STRING] & "  " & [STANDARD] AS ss FROM NMIS_PRODUCT_INVENTORIES INNER JOIN NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING ON NMIS_PRODUCT_INVENTORIES.ID_ACTIVITY_CN = NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING.ID_ACTIVITY_CN WHERE (((NMIS_PRODUCT_INVENTORIES.NET_INV) Is Not Null)); |  | 2.61, 5.72, 2.56, 0.22 |
| TextBox | Alt_Net |  | NET_INV_ALT |  |  | 1.67, 6.22, 0.90, 0.22 |
| TextBox | Alt_Factor |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor_Alt] |  |  | 1.67, 5.97, 0.90, 0.22 |
| TextBox | Standard_Net |  | NET_INV |  |  | 1.67, 5.72, 0.90, 0.22 |
| TextBox | Target_Factor |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor] |  |  | 1.67, 5.47, 0.90, 0.22 |
| TextBox | Text48 |  | GROSS_INV |  |  | 1.67, 5.22, 0.92, 0.22 |
| ComboBox | Gross_Unit |  | GROSS_INV | SELECT NMIS_PRODUCT_INVENTORIES.GROSS_INV, IIf(Not IsNull([GROSS_INV]),"M","") AS Unit FROM NMIS_PRODUCT_INVENTORIES;  |  | 2.61, 5.22, 0.54, 0.22 |
| TextBox | Text51 | Accuracy % (STD): | Accuracy |  |  | 2.26, 1.68, 0.92, 0.22 |
| TextBox | Text53 | Sample Error: | Sample_Error |  |  | 2.26, 2.65, 0.92, 0.22 |
| TextBox | Text55 | Student t-test Distribution: | PCT_PROBABILITY |  |  | 2.63, 3.86, 0.54, 0.22 |
| Label | Label57 | 1% Probability = |  |  |  | 0.75, 3.86, 1.33, 0.21 |
| TextBox | Net_as_pct_of_ADJ_Req | Net as % of  Request: | Net_as_pct_of_Req |  |  | 1.98, 6.73, 0.73, 0.22 |
| TextBox | Standard_Ship_Factor_Unit |  | =IIf(Not IsNull([Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor]),"%","") |  |  | 2.61, 5.46, 0.54, 0.22 |
| ComboBox | Combo59 |  | ID_ACTIVITY_CN | SELECT NMIS_PRODUCT_INVENTORIES.ID_ACTIVITY_CN, IIf(Len([NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING].[SIZE_SPEC_STRING_ALT])>0,"M  @ " & [SIZE_SPEC_STRING_Alt] & " Alternate",Null) AS ss FROM NMIS_PRODUCT_INVENTORIES INNER JOIN NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING ON NMIS_PRODUCT_INVENTORIES.ID_ACTIVITY_CN = NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING.ID_ACTIVITY_CN; |  | 2.60, 6.22, 2.56, 0.22 |
| TextBox | Text60 |  | =IIf(Not IsNull([Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor]),"%","") |  |  | 2.60, 5.95, 0.54, 0.22 |
| TextBox | Text61 | ALT Net as % of  Request: | Net_ALT_as_pct_of_Req |  |  | 1.98, 7.04, 0.73, 0.22 |
| Label | Label19 | Inventory Date: |  |  |  | 0.00, 0.02, 1.26, 0.23 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 1.30, 0.02, 1.08, 0.23 |
| TextBox | Text63 | Coefficient of Variation% (CV): | =[Accuracy]/[mean]*100 |  |  | 2.26, 1.93, 0.92, 0.22 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line21 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
