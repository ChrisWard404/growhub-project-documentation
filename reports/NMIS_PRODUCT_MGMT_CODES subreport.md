# Report: NMIS_PRODUCT_MGMT_CODES subreport

**Caption:** NMIS_PRODUCT_MGMT_CODES subreport  
**Record source:**

```sql
*NMIS_PRODUCT_CHARGES_Dist_Subreport_Table
```

**Grouping/sorting:** `MGMT_CODE`, `PERCENT_OF_CHARGE`  
**Embedded in:** `Report:NMIS_PRODUCTS_All_Price_CHECKLIST`, `Report:NMIS_PRODUCTS_NO_Charges_CHECKLIST`, `Report:NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST`, `Report:NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line14 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 0.00, 0.00, 0.71, 0.18 |
| TextBox | PERCENT_OF_CHARGE |  | PERCENT_OF_CHARGE |  |  | 0.72, 0.00, 0.35, 0.18 |
| Label | Label17 | % |  |  |  | 1.08, 0.00, 0.18, 0.18 |
| TextBox | Dollars_Per_Unit |  | Dollars_Per_Unit |  |  | 1.28, 0.00, 0.67, 0.18 |
| TextBox | Dollars_Per_amt |  | Dollars_Per_amt |  |  | 1.94, 0.00, 0.79, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line15 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
