# Report: Plant_inventory_Rpt_Size_Matrix_Group

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `ID`  
**Backend tables referenced:** `NMIS_CONTACTS`  
**Subforms/subreports:** `Report.Plant_inventory_Size_Matrix_Count_Group subreport`, `Report.Plant_inventory_Size_Matrix_PCT_Group subreport`, `Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport`  
**Opened from (VBA):** `Form_NMIS_PRODUCT_INVENTORY_MATRIX`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line20 |  |  |  |  | 0.00, 2.09, 7.87, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Inventory Size Distribution |  |  |  | 2.92, 0.56, 2.16, 0.23 |
| TextBox | ID | Lot ID: | ID |  |  | 0.71, 0.88, 2.58, 0.35 |
| TextBox | ID_SOURCE2 | Source Lot: | ID_SOURCE2 |  |  | 1.00, 1.60, 4.72, 0.23 |
| TextBox | What_It_Is_Longest |  | What_It_Is_Longest |  |  | 0.08, 1.83, 7.79, 0.23 |
| TextBox | Client | Client: | Client |  |  | 0.67, 1.33, 5.04, 0.23 |
| ComboBox | Combo178 |  | =[Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.07, 0.16, 2.51, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Plant_inventory_Size_Matrix_Count subreport |  | Report.Plant_inventory_Size_Matrix_Count_Group subreport (master: LastOfID_ACTIVITY_CN → child: ID_ACTIVITY_CN) |  |  | 0.00, 0.07, 6.12, 3.51 |
| Subform | Plant_inventory_Size_Matrix_PCT subreport |  | Report.Plant_inventory_Size_Matrix_PCT_Group subreport (master: LastOfID_ACTIVITY_CN → child: ID_ACTIVITY_CN) |  |  | 0.00, 3.67, 6.12, 3.79 |
| Label | Label21 | Gross Inv (M): |  |  |  | 6.26, 3.50, 1.11, 0.23 |
| Label | Label22 | Net Inv (M): |  |  |  | 6.43, 5.51, 0.95, 0.23 |
| Label | Label23 | Samples: |  |  |  | 6.68, 2.70, 0.70, 0.23 |
| Label | Label25 | Total Count: |  |  |  | 6.41, 2.97, 0.97, 0.23 |
| Label | Label26 | Total Sized: |  |  |  | 6.47, 3.25, 0.91, 0.23 |
| Label | Label27 | % at Spec: |  |  |  | 6.18, 4.75, 1.20, 0.23 |
| Label | Label28 | Ship Factor (%): |  |  |  | 6.11, 5.26, 1.26, 0.23 |
| TextBox | Text29 |  | SAMPLES |  |  | 7.41, 2.70, 0.53, 0.23 |
| TextBox | Text31 |  | Total_Counted |  |  | 7.41, 2.97, 0.53, 0.23 |
| TextBox | Text32 |  | Total_Sized |  |  | 7.41, 3.25, 0.53, 0.23 |
| TextBox | Text33 |  | PCT_AT_SPEC |  |  | 7.41, 4.75, 0.44, 0.23 |
| TextBox | Text35 |  | Ship_Factor |  |  | 7.41, 5.26, 0.44, 0.23 |
| TextBox | Gross |  | Gross |  |  | 7.41, 3.50, 0.53, 0.23 |
| TextBox | net |  | Net |  |  | 7.41, 5.51, 0.55, 0.23 |
| TextBox | SIZE_SPEC_STRING |  | NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING_SIZE_SPEC_STRING |  |  | 6.25, 4.47, 1.60, 0.26 |
| Rectangle | Box40 |  |  |  |  | 6.12, 2.38, 1.84, 5.28 |
| Label | Label41 | Summary |  |  |  | 6.11, 2.39, 1.71, 0.29 |
| Label | Label46 | Alt Net Inv (M): |  |  |  | 6.18, 7.15, 1.20, 0.23 |
| Label | Label47 | % at Alt Spec: |  |  |  | 6.18, 6.40, 1.20, 0.23 |
| Label | Label48 | Ship Factor (%): |  |  |  | 6.11, 6.90, 1.26, 0.23 |
| TextBox | Text49 |  | PCT_AT_SPEC_ALT |  |  | 7.41, 6.40, 0.44, 0.23 |
| TextBox | Text50 |  | Ship_Factor_Alt |  |  | 7.41, 6.90, 0.44, 0.23 |
| TextBox | Text51 |  | Net_Alt |  |  | 7.41, 7.15, 0.53, 0.23 |
| TextBox | Text52 |  | SIZE_SPEC_STRING_ALT |  |  | 6.25, 6.11, 1.60, 0.26 |
| TextBox | Standard |  | Standard |  |  | 6.25, 4.21, 1.61, 0.26 |
| Label | Label54 | Alternate Specs |  |  |  | 6.24, 5.82, 1.61, 0.29 |
| Line | Line55 |  |  |  |  | 6.11, 4.17, 1.85, 0.00 |
| Line | Line56 |  |  |  |  | 6.11, 5.78, 1.85, 0.00 |
| Label | Label19 | Inventory Date |  |  |  | 6.17, 0.01, 1.18, 0.23 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.39, 0.24, 0.78, 0.25 |
| TextBox | Req |  | Req |  |  | 6.39, 0.73, 0.78, 0.22 |
| Label | Label62 | Total Request |  |  |  | 6.18, 0.49, 1.04, 0.23 |
| Label | Label64 | % Est Ingrowth: |  |  |  | 6.11, 5.00, 1.26, 0.23 |
| TextBox | Text65 |  | Ingrowth_PCT |  |  | 7.41, 5.00, 0.44, 0.23 |
| Label | Label66 | % Est Ingrowth: |  |  |  | 6.11, 6.65, 1.26, 0.23 |
| TextBox | Text67 |  | Ingrowth_ALT_PCT |  |  | 7.41, 6.65, 0.44, 0.23 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 6.19, 0.96, 1.70, 1.40 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text3 |  | =Now() |  |  | 0.00, 0.14, 3.50, 0.19 |
| Line | Line6 |  |  |  |  | 0.00, 0.01, 7.89, 0.00 |
| TextBox | Text15 |  | ID |  |  | 5.21, 0.05, 2.58, 0.35 |
