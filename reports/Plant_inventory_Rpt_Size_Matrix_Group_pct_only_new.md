# Report: Plant_inventory_Rpt_Size_Matrix_Group_pct_only_new

**Subforms/subreports:** `Report.Plant_Inventory_Inv_Dist_Client_Associate Subreport`, `Report.Plant_inventory_Size_Matrix_PCT2 subreport`, `Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Inventory Size Distribution |  |  |  | 2.92, 0.56, 2.16, 0.23 |
| TextBox | ID | Lot ID: | ID |  |  | 0.71, 0.80, 2.58, 0.35 |
| Subform | Plant_Inventory_Worksheet_Client_Associate Subreport |  | Report.Plant_Inventory_Inv_Dist_Client_Associate Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 5.75, 0.76, 2.16, 1.02 |
| TextBox | ID_SOURCE2 | Source Lot: | ID_SOURCE2 |  |  | 1.00, 1.56, 4.72, 0.23 |
| TextBox | What_It_Is_Longest |  | What_It_Is_Longest |  |  | 0.08, 1.79, 7.83, 0.23 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.22, 1.34, 0.78, 0.22 |
| Label | Label45 | Total Request: |  |  |  | 0.08, 1.33, 1.10, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line20 |  |  |  |  | 0.00, 0.00, 7.96, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Plant_inventory_Size_Matrix_PCT subreport |  | Report.Plant_inventory_Size_Matrix_PCT2 subreport |  |  | 0.00, 0.02, 6.12, 7.41 |
| Label | Label21 | Gross Inv (M): |  |  |  | 6.31, 3.49, 1.11, 0.23 |
| Label | Label22 | Net Inv (M): |  |  |  | 6.48, 5.50, 0.95, 0.23 |
| Label | Label23 | Samples: |  |  |  | 6.73, 2.69, 0.70, 0.23 |
| Label | Label25 | Total Count: |  |  |  | 6.46, 2.96, 0.97, 0.23 |
| Label | Label26 | Total Sized: |  |  |  | 6.52, 3.24, 0.91, 0.23 |
| Label | Label27 | % at Spec: |  |  |  | 6.23, 4.74, 1.20, 0.23 |
| Label | Label28 | Ship Factor (%): |  |  |  | 6.17, 5.25, 1.26, 0.23 |
| TextBox | Text29 |  | SAMPLES |  |  | 7.46, 2.69, 0.44, 0.23 |
| TextBox | Text31 |  | Total_Counted |  |  | 7.46, 2.96, 0.44, 0.23 |
| TextBox | Text32 |  | Total_Sized |  |  | 7.46, 3.24, 0.44, 0.23 |
| TextBox | Text33 |  | PCT_AT_SPEC |  |  | 7.46, 4.74, 0.44, 0.23 |
| TextBox | Text35 |  | Ship_Factor |  |  | 7.46, 5.25, 0.44, 0.23 |
| TextBox | Gross |  | Gross |  |  | 7.46, 3.49, 0.44, 0.23 |
| TextBox | net |  | Net |  |  | 7.46, 5.50, 0.44, 0.23 |
| TextBox | SIZE_SPEC_STRING |  | NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING_SIZE_SPEC_STRING |  |  | 6.30, 4.46, 1.60, 0.26 |
| Rectangle | Box40 |  |  |  |  | 6.18, 2.36, 1.75, 5.26 |
| Label | Label41 | Summary |  |  |  | 6.17, 2.38, 1.71, 0.29 |
| Label | Label46 | Alt Net Inv (M): |  |  |  | 6.23, 7.14, 1.20, 0.23 |
| Label | Label47 | % at Alt Spec: |  |  |  | 6.23, 6.39, 1.20, 0.23 |
| Label | Label48 | Ship Factor (%): |  |  |  | 6.17, 6.89, 1.26, 0.23 |
| TextBox | Text49 |  | PCT_AT_SPEC_ALT |  |  | 7.46, 6.39, 0.44, 0.23 |
| TextBox | Text50 |  | Ship_Factor_Alt |  |  | 7.46, 6.89, 0.44, 0.23 |
| TextBox | Text51 |  | Net_Alt |  |  | 7.46, 7.14, 0.44, 0.23 |
| TextBox | Text52 |  | SIZE_SPEC_STRING_ALT |  |  | 6.30, 6.10, 1.60, 0.26 |
| TextBox | Standard |  | Standard |  |  | 6.30, 4.20, 1.61, 0.26 |
| Label | Label54 | Alternate Specs |  |  |  | 6.29, 5.81, 1.61, 0.29 |
| Line | Line55 |  |  |  |  | 6.17, 4.16, 1.75, 0.00 |
| Line | Line56 |  |  |  |  | 6.17, 5.77, 1.75, 0.00 |
| Label | Label19 | Inventory Date |  |  |  | 6.22, 0.00, 1.18, 0.23 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.44, 0.23, 0.78, 0.25 |
| TextBox | Req |  | Req |  |  | 6.44, 0.72, 0.78, 0.22 |
| Label | Label62 | Total Request |  |  |  | 6.23, 0.48, 1.04, 0.23 |
| Label | Label64 | % Est Ingrowth: |  |  |  | 6.17, 4.99, 1.26, 0.23 |
| TextBox | Text65 |  | Ingrowth_PCT |  |  | 7.46, 4.99, 0.44, 0.23 |
| Label | Label66 | % Est Ingrowth: |  |  |  | 6.17, 6.64, 1.26, 0.23 |
| TextBox | Text67 |  | Ingrowth_ALT_PCT |  |  | 7.46, 6.64, 0.44, 0.23 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 6.24, 0.95, 1.70, 1.40 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text3 |  | =Now() |  |  | 0.00, 0.14, 3.50, 0.19 |
| Line | Line6 |  |  |  |  | 0.00, 0.01, 7.96, 0.00 |
| TextBox | Text15 |  | ID |  |  | 5.21, 0.05, 2.58, 0.35 |
