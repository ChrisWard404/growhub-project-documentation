# Report: NMIS_SOURCE_Inventory_wtotals_pn_Report

**Caption:** NMIS_SOURCE_Inventory  
**Record source:**

```sql
NMIS_SOURCE_Inventory_Report_pn_xcel
```

**Grouping/sorting:** `Species`, `Species`, `Seed Zone`, `Elev`, `For`, `DS`  
**Opened from (VBA):** `Form_Seed_Inventory_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 4.25, 0.16, 2.81, 0.19 |
| Label | Label33 | SOURCE INVENTORY REPORT |  |  |  | 4.45, 0.56, 2.41, 0.18 |
| Label | Label31 | USDA Forest Service |  |  |  | 4.03, 0.00, 3.24, 0.16 |
| Label | ID_Label | ID |  |  |  | 0.00, 1.26, 0.41, 0.17 |
| Label | TEST_DATE_Label | Test Date |  |  |  | 6.10, 1.11, 0.53, 0.33 |
| Label | GROSS_SOURCE_PER_UNIT_Label | SPP |  |  |  | 6.85, 1.26, 0.30, 0.18 |
| Label | PURITY_PCT_Label | Pur % |  |  |  | 7.31, 1.10, 0.32, 0.34 |
| Label | GERM_PCT_Label | Ger % |  |  |  | 7.97, 1.10, 0.29, 0.34 |
| Label | Sum Of ACTIVITY_UNITS_Label | Balance |  |  |  | 8.68, 1.26, 0.50, 0.17 |
| Label | CATEGORY_CODE_Label | Tree No.(s) |  |  |  | 9.20, 1.27, 0.84, 0.17 |
| Label | Label24 | Mst% |  |  |  | 7.66, 1.11, 0.28, 0.33 |
| Label | Label26 | Test Type |  |  |  | 5.61, 1.11, 0.39, 0.33 |
| Line | Line21 |  |  |  |  | 0.02, 1.46, 10.45, 0.01 |
| Label | Label39 | Filled %  |  |  |  | 8.22, 1.11, 0.35, 0.33 |
| Label | Label42 | Species |  |  |  | 1.05, 1.26, 0.70, 0.17 |
| Label | Label45 | Breed SubUnit |  |  |  | 1.89, 1.11, 0.54, 0.33 |
| Label | Label47 | Seed Zone |  |  |  | 2.43, 1.11, 0.39, 0.33 |
| Label | Label49 | Elev |  |  |  | 2.85, 1.26, 0.30, 0.18 |
| Label | Label51 | Dist |  |  |  | 3.48, 1.26, 0.29, 0.18 |
| Label | Label53 | Col Type |  |  |  | 3.79, 1.10, 0.32, 0.34 |
| Label | Label56 | Placerville Nursery |  |  |  | 4.25, 0.36, 2.82, 0.19 |
| Label | Label57 | For |  |  |  | 3.19, 1.26, 0.25, 0.18 |
| Label | Label61 | # Stands |  |  |  | 4.12, 1.11, 0.47, 0.33 |
| Label | Label63 | Avg # Trees |  |  |  | 4.54, 1.11, 0.47, 0.33 |
| Label | Label65 | Comb |  |  |  | 5.02, 0.80, 0.15, 0.64 |
| Label | Label67 | Crop Yr |  |  |  | 5.21, 1.11, 0.38, 0.33 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | Lot ID |  |  | 0.02, 0.01, 0.00, 0.20 |
| TextBox | TEST_DATE |  | Test Date |  |  | 6.06, 0.01, 0.57, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT |  | SPP |  |  | 6.66, 0.01, 0.65, 0.20 |
| TextBox | PURITY_PCT |  | Pur % |  |  | 7.31, 0.01, 0.28, 0.20 |
| TextBox | GERM_PCT |  | Germ% |  |  | 7.95, 0.01, 0.27, 0.20 |
| TextBox | Balance |  | Balance (Lbs) |  |  | 8.52, 0.01, 0.69, 0.20 |
| TextBox | TREE_NUMBER |  | TREE_NUMBER |  |  | 9.30, 0.01, 1.18, 0.20 |
| TextBox | MOISTURE_PCT |  | Moist % |  |  | 7.62, 0.01, 0.30, 0.20 |
| TextBox | Text44 |  | Species |  |  | 1.04, 0.01, 0.82, 0.20 |
| TextBox | BREEDING_SUBUNIT |  | BREEDING_SUBUNIT |  |  | 1.89, 0.01, 0.52, 0.20 |
| TextBox | Text48 |  | Seed Zone |  |  | 2.43, 0.01, 0.35, 0.20 |
| TextBox | Text50 |  | Elev |  |  | 2.84, 0.01, 0.28, 0.20 |
| TextBox | Text52 |  | DS |  |  | 3.49, 0.01, 0.28, 0.20 |
| TextBox | Text54 |  | Col Type |  |  | 3.79, 0.01, 0.28, 0.20 |
| TextBox | TYPE_OF_TEST |  | Test Type |  |  | 5.65, 0.01, 0.40, 0.20 |
| TextBox | Fill % |  | Fill % |  |  | 8.22, 0.01, 0.29, 0.20 |
| TextBox | For |  | For |  |  | 3.18, 0.01, 0.28, 0.20 |
| TextBox | # Stands |  | # Stands |  |  | 4.12, 0.02, 0.43, 0.19 |
| TextBox | Avg # Trees |  | Avg # Trees |  |  | 4.59, 0.02, 0.33, 0.19 |
| TextBox | Col Yr |  | Col Yr |  |  | 5.26, 0.02, 0.25, 0.19 |
| CheckBox | COMBINED |  | Combo |  |  | 5.03, 0.06, 0.00, 0.16 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label29 | Total For: |  |  |  | 0.02, 0.03, 0.65, 0.19 |
| TextBox | Text31 |  | =Sum([Balance (Lbs)]) |  |  | 8.40, 0.04, 0.81, 0.18 |
| Line | Line41 |  |  |  |  | 0.02, 0.25, 10.48, 0.00 |
| TextBox | PLNTMSTR_SYMBOL |  | Species |  |  | 0.70, 0.04, 2.86, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.06, 0.17, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.96, 0.17, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.02, 0.12, 10.48, 0.02 |
