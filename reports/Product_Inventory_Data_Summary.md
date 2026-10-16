# Report: Product_Inventory_Data_Summary

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORIES`  
**Subforms/subreports:** `Report.NMIS_PRODUCT_INVENTORY_Summary subreport`  
**Opened from (VBA):** `Form_**********dbdNMIS_PRODUCT_INVENTORIES`, `Form_NMIS_PRODUCT_INVENTORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID_Activities_CN |  | ID_Activities_CN |  |  | 6.88, 0.88, 0.00, 0.00 |
| TextBox | Text51 |  | ="Inventory Data Summary" |  |  | 2.38, 0.62, 3.54, 0.33 |
| TextBox | ID | Seedlot ID: | ID |  |  | 1.33, 1.04, 1.56, 0.25 |
| TextBox | ADJ_REQ | Req M: | TOTAL_REQUEST |  |  | 1.33, 1.59, 0.54, 0.22 |
| TextBox | ACTUAL_FT | Bed Length: | =[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers] |  |  | 4.01, 1.59, 0.58, 0.22 |
| TextBox | LOCATION | Location: | Loc |  |  | 4.01, 1.33, 1.32, 0.22 |
| TextBox | SOURCE_CODE | Source Code: | ID_SOURCE2 |  |  | 4.01, 1.07, 3.74, 0.22 |
| TextBox | ASSOCIATE | Client: | Major_Client |  |  | 1.33, 1.88, 1.12, 0.22 |
| TextBox | SPECIES_AGE_CLASS | Age Class: | Age_Class |  |  | 1.33, 1.33, 1.56, 0.22 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.46, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.46, 0.00, 3.24, 0.16 |
| TextBox | Plot_Size | Plot Size: | =[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![Plot_Size] |  |  | 4.03, 1.85, 1.32, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_PRODUCT_INVENTORIES subreport |  | Report.NMIS_PRODUCT_INVENTORY_Summary subreport (master: ID_Activities_CN → child: ID_ACTIVITY_CN) |  |  | 0.89, 0.04, 6.78, 7.33 |
| Rectangle | Box99 |  |  |  |  | 0.46, 0.00, 7.33, 7.60 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text79 | Seedlot ID: | ID |  |  | 6.77, 0.17, 1.21, 0.25 |
