# Report: Plant_inventory_Rpt_Size_Matrix_Group_pct_only

**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_PRODUCT_INVENTORIES`, `NMIS_PRODUCT_INVENTORY_SAMPLES`, `NMIS_PRODUCT_INVENTORY_SIZES`  
**Subforms/subreports:** `Report.Plant_inventory_Size_Matrix_PCT2 subreport`, `Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Inventory Size Distribution |  |  |  | 2.92, 0.56, 2.16, 0.23 |
| TextBox | ID | Lot ID: | ID |  |  | 0.71, 0.80, 2.58, 0.35 |
| TextBox | ID_SOURCE2 | Source Lot: | ID_SOURCE2 |  |  | 1.01, 1.53, 4.72, 0.23 |
| TextBox | What_It_Is_Longest |  | What_It_Is_Longest |  |  | 0.09, 1.76, 7.79, 0.23 |
| TextBox | Client | Client: | Client |  |  | 0.68, 1.26, 5.04, 0.23 |
| ComboBox | Combo178 |  | =[Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.16, 2.51, 0.21 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line20 |  |  |  |  | 0.00, 0.00, 7.96, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Plant_inventory_Size_Matrix_PCT subreport |  | Report.Plant_inventory_Size_Matrix_PCT2 subreport |  |  | 0.00, 0.02, 6.12, 7.41 |
| Label | Label21 | Gross Inv (M): |  |  |  | 6.26, 4.43, 1.11, 0.23 |
| Label | Label22 | Net Inv (M): |  |  |  | 6.43, 5.77, 0.95, 0.23 |
| Label | Label23 | Samples: |  |  |  | 6.68, 3.62, 0.70, 0.23 |
| Label | Label25 | Total Count: |  |  |  | 6.41, 3.90, 0.97, 0.23 |
| Label | Label26 | Total Sized: |  |  |  | 6.47, 4.18, 0.91, 0.23 |
| Label | Label27 | Percent at Spec: |  |  |  | 6.18, 5.24, 1.20, 0.23 |
| Label | Label28 | Ship Factor (%): |  |  |  | 6.11, 5.52, 1.26, 0.23 |
| TextBox | Text29 |  | =Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!SAMPLES+NZ(Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!ADDITIONAL_SAMPLES,0) |  |  | 7.41, 3.62, 0.44, 0.23 |
| TextBox | Text31 |  | =Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count |  |  | 7.41, 3.90, 0.44, 0.23 |
| TextBox | Text32 |  | =Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SIZES subform].Form!TOTAL_SIZED |  |  | 7.41, 4.18, 0.44, 0.23 |
| TextBox | Text33 |  | =Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!TARGET_FACTOR |  |  | 7.41, 5.24, 0.44, 0.23 |
| TextBox | Text35 |  | =Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!Shipping_Factor |  |  | 7.41, 5.52, 0.44, 0.23 |
| TextBox | Gross |  | =Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!GROSS_INV |  |  | 7.41, 4.43, 0.44, 0.23 |
| TextBox | net |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![NET_INV] |  |  | 7.41, 5.77, 0.44, 0.23 |
| TextBox | SIZE_SPEC_STRING |  | NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING.SIZE_SPEC_STRING |  |  | 6.25, 4.96, 1.60, 0.26 |
| Rectangle | Box40 |  |  |  |  | 6.12, 3.29, 1.75, 4.33 |
| Label | Label41 | Summary |  |  |  | 6.11, 3.31, 1.71, 0.29 |
| Label | Label46 | Alt Net Inv (M): |  |  |  | 6.18, 7.15, 1.20, 0.23 |
| Label | Label47 | Percent at Spec: |  |  |  | 6.18, 6.61, 1.20, 0.23 |
| Label | Label48 | Ship Factor (%): |  |  |  | 6.11, 6.90, 1.26, 0.23 |
| TextBox | Text49 |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![TARGET_FACTOR_ALT] |  |  | 7.41, 6.61, 0.44, 0.23 |
| TextBox | Text50 |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor_ALT] |  |  | 7.41, 6.90, 0.44, 0.23 |
| TextBox | Text51 |  | =[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![NET_INV_ALT] |  |  | 7.41, 7.15, 0.44, 0.23 |
| TextBox | AltSpecString |  | SIZE_SPEC_STRING_ALT |  |  | 6.25, 6.33, 1.60, 0.26 |
| TextBox | Standard |  | Standard |  |  | 6.25, 4.70, 1.61, 0.26 |
| Label | Label54 | Alternate Specs |  |  |  | 6.24, 6.04, 1.61, 0.29 |
| Line | Line55 |  |  |  |  | 6.11, 4.70, 1.75, 0.00 |
| Line | Line56 |  |  |  |  | 6.11, 6.04, 1.75, 0.00 |
| Label | Label19 | Inventory Date |  |  |  | 6.22, 0.03, 1.18, 0.23 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.42, 0.28, 0.78, 0.25 |
| TextBox | Req |  | TOTAL_REQUEST |  |  | 6.47, 0.88, 0.78, 0.22 |
| Label | Label62 | Total Request |  |  |  | 6.30, 0.62, 1.04, 0.23 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 6.24, 1.14, 1.70, 2.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text3 |  | =Now() |  |  | 0.00, 0.14, 3.50, 0.19 |
| Line | Line6 |  |  |  |  | 0.00, 0.01, 7.96, 0.00 |
| TextBox | Text15 |  | ID |  |  | 5.21, 0.05, 2.58, 0.35 |
