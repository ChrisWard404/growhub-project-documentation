# Report: ORDER_REVIEW

**Caption:** ORDER_REVIEW  
**Record source:**

```sql
**order_review
```

**Grouping/sorting:** `CATEGORY_DESC`, `PRODUCT_DESC`, `BEGIN_FY`, `ID`  
**Subforms/subreports:** `Report.ORDER_RVW_REQ Subrep`, `Report.ORDER_RVW_ORD Subrep`, `Report.ORDER_RVW_SOW Subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.50, 0.38, 2.56, 0.21 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.33, 0.00, 0.92, 0.00 |
| TextBox | REPORT_DATE |  | =Now() |  |  | 6.33, 0.17, 0.92, 0.00 |
| Label | Label44 | Processing Orders Review |  |  |  | 2.83, 0.58, 1.96, 0.21 |
| TextBox | FISCAL_YEAR | Fiscal Year: | FISCAL_YEAR |  |  | 3.96, 0.79, 0.46, 0.21 |
| TextBox | CATEGORY_DESC |  | CATEGORY_DESC |  |  | 0.04, 1.12, 2.96, 0.20 |
| Label | ID_Label | ID |  |  |  | 0.08, 1.54, 0.46, 0.21 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 0.79, 1.54, 2.33, 0.21 |
| Label | TOTAL_REQUEST_Label | Total Request |  |  |  | 4.04, 1.38, 0.54, 0.38 |
| Label | BEGIN_FY_Label | Begin |  |  |  | 5.50, 1.54, 0.46, 0.21 |
| Label | END_FY_Label | End |  |  |  | 6.12, 1.54, 0.33, 0.21 |
| Label | FY_Label | Fiscal Year |  |  |  | 5.50, 1.38, 0.96, 0.21 |
| Label | SOWN_Label | Ft. Sown |  |  |  | 6.67, 1.54, 0.58, 0.21 |
| Line | Line27 |  |  |  |  | 0.08, 1.79, 7.25, 0.00 |
| Label | NET_INV_Label | Inventory Net |  |  |  | 4.71, 1.38, 0.62, 0.38 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.54, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.42, 0.17, 2.78, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PRODUCT_DESC_Label | Product: |  |  |  | 0.04, 0.00, 0.54, 0.21 |
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.62, 0.00, 1.96, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.08, 0.00, 0.71, 0.20 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 0.79, 0.00, 3.12, 0.20 |
| TextBox | AMOUNT_REQUESTED |  | TOTAL_REQUEST |  |  | 4.00, 0.00, 0.58, 0.20 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 5.50, 0.00, 0.50, 0.20 |
| TextBox | END_FY |  | END_FY |  |  | 6.04, 0.00, 0.42, 0.20 |
| Subform | NMIS_ORDER_RVW_REQ Subrep |  | Report.ORDER_RVW_REQ Subrep (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 0.62, 0.25, 2.12, 0.20 |
| Subform | NMIS_ORDER_RVW_ORD Subrep |  | Report.ORDER_RVW_ORD Subrep (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 3.50, 0.25, 3.87, 0.20 |
| Subform | NMIS_ORDER_RVW_SOW Subrep |  | Report.ORDER_RVW_SOW Subrep (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 6.58, 0.00, 0.79, 0.20 |
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 2.42, 0.00, 0.00, 0.20 |
| TextBox | NET_INV |  | NET_INV |  |  | 4.71, 0.00, 0.62, 0.21 |
| TextBox | STATUS |  | STATUS |  |  | 2.83, 0.25, 0.62, 0.21 |
