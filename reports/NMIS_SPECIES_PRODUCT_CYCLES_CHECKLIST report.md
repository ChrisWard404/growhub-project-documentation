# Report: NMIS_SPECIES_PRODUCT_CYCLES_CHECKLIST report

**Caption:** NMIS_SPECIES_PRODUCT_CYCLES_CHECKLIST report  
**Record source:**

```sql
NMIS_SPECIES_PRODUCT_CYCLES_CHECKLIST query
```

**Grouping/sorting:** `CATEGORY_CODE`, `Product_String_1.Product_String`, `Species_Products_String`, `PLNTMSTR_SYMBOL`, `NUMBER_OF_FY_MIN`, `Product_String_1.Product_String`, `Product_String.Product_String`, `PRODUCT_CLASS`, `Species_Products_String`, `NUMBER_OF_FY_MIN`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_CLASS_Label | Cycle Product Class |  |  |  | 3.60, 1.00, 0.96, 0.36 |
| Label | Species_Products_String_Label | Species Product Desc |  |  |  | 0.57, 1.17, 2.34, 0.19 |
| Label | NUMBER_OF_FY_MIN_Label | Cycle # |  |  |  | 3.04, 1.16, 0.50, 0.19 |
| Label | UNIT_Label | Cycle Container |  |  |  | 7.33, 1.01, 0.65, 0.35 |
| Line | Line21 |  |  |  |  | 0.00, 1.42, 7.97, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| Label | Label33 | Species Product Cycles Checklist |  |  |  | 2.64, 0.55, 2.71, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label22 | Product Desc |  |  |  | 4.63, 1.17, 2.58, 0.19 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Product_String_1.Product_String |  | Product_String_1.Product_String |  |  | 1.08, 0.00, 2.94, 0.26 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 0.04, 0.00, 0.96, 0.26 |
| TextBox | TOTAL_NUMBER_OF_FY |  | FY_s |  |  | 4.09, 0.00, 1.88, 0.26 |
| TextBox | PRODUCT_CN | PRODUCT_CN: | PRODUCT_CN |  |  | 6.71, 0.04, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | PRODUCT_CLASS |  |  | 3.58, 0.00, 0.00, 0.17 |
| TextBox | Species_Products_String |  | Species_Products_String |  |  | 0.49, 0.00, 2.51, 0.17 |
| TextBox | NUMBER_OF_FY_MIN |  | NUMBER_OF_FY_MIN |  |  | 3.07, 0.00, 0.42, 0.17 |
| TextBox | UNIT |  | UNIT |  |  | 7.34, 0.00, 0.63, 0.17 |
| TextBox | Product_String.Product_String |  | Product_String.Product_String |  |  | 4.81, 0.00, 2.48, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text17 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.00 |
| TextBox | Text18 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.17, 3.50, 0.00 |
