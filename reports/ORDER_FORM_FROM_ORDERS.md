# Report: ORDER_FORM_FROM_ORDERS

**Caption:** NMIS_ORDER_FORM  
**Record source:**

```sql
ORDER_FORM_FROM_ORDERS Query
```

**Grouping/sorting:** `AGREEMENT_LOT_CN`, `CLIENT_ASSOCIATE`, `ORDER_CN`  
**Subforms/subreports:** `Report.ORDER_FORM_LEN Subrep`, `Report.ORDER_FORM_LIFT Subrep`, `Report.ORDER_FORM_SPECS Subrep`, `Report.ORDER_FORM_QI Subrep`  
**Opened from (VBA):** `Form_junk`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.75, 0.38, 2.50, 0.21 |
| TextBox | Text66 | Fiscal Year: | FISCAL_YEAR |  |  | 7.38, 0.92, 0.46, 0.21 |
| Label | Label68 | SEEDLING ORDER FORM |  |  |  | 2.96, 0.62, 2.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| TextBox | Text57 |  | PRODUCT_DESCRIPTION |  |  | 0.04, 0.92, 3.96, 0.21 |
| TextBox | ID | Nursery ID: | ID |  |  | 0.92, 1.25, 0.00, 0.00 |
| Label | SOURCE_CODE_Label | Source Code: |  |  |  | 3.21, 1.25, 0.92, 0.17 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 4.17, 1.25, 3.71, 0.00 |
| TextBox | CLIENT | Client: | CLIENT |  |  | 0.67, 1.54, 5.42, 0.21 |
| Line | Line51 |  |  |  |  | 0.92, 1.46, 0.00, 0.00 |
| Line | Line52 |  |  |  |  | 4.17, 1.46, 3.71, 0.00 |
| TextBox | AGR_REQ | Total Agreement Request: | AMOUNT_REQUESTED |  |  | 1.79, 1.79, 0.62, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 3.04, 1.75, 0.62, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 6.12, 1.54, 0.00, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_FORM_LEN |  | Report.ORDER_FORM_LEN Subrep (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 0.04, 3.45, 0.53 |
| Subform | ORDER_FORM_LIFT Subrep |  | Report.ORDER_FORM_LIFT Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 5.75, 0.04, 2.17, 0.53 |
| TextBox | TOTAL_CLIENT_ORDER | ORDER AMOUNT: | CLI_ORDER |  |  | 1.17, 0.67, 0.58, 0.00 |
| TextBox | SURPLUS | SURPLUS: | LOT_SURPLUS |  |  | 2.79, 0.67, 0.54, 0.00 |
| Line | Line69 |  |  |  |  | 1.17, 0.88, 0.62, 0.00 |
| Line | Line70 |  |  |  |  | 2.79, 0.88, 0.58, 0.00 |
| Subform | ORDER_FORM_SPECS Subrep |  | Report.ORDER_FORM_SPECS Subrep (master: ORDER_CN → child: CN) |  |  | 0.04, 0.92, 7.78, 0.74 |
| Subform | ORDER_FORM_QI Subrep |  | Report.ORDER_FORM_QI Subrep (master: ORDER_CN → child: ORDER_CN) |  |  | 3.62, 0.04, 2.03, 0.53 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.46, 0.67, 0.00, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label92 |  M's Packed |  |  |  | 3.42, 2.04, 0.79, 0.17 |
| Label | ACTIVITY_CODE_Label | GRADING SPECIFICATIONS |  |  |  | 0.08, 0.08, 1.71, 0.17 |
| Label | ORDER_AMT_Label | Order Amt  (M) |  |  |  | 3.21, 0.04, 0.67, 0.31 |
| Label | OVERRUN_AMT_Label | Amt(M) |  |  |  | 4.27, 0.17, 0.46, 0.18 |
| Label | OVERRUN_ALL_Label |  All |  |  |  | 3.88, 0.17, 0.33, 0.17 |
| Label | SPEC_MIN_Label | Min |  |  |  | 4.88, 0.17, 0.42, 0.17 |
| Label | SPEC_MAX_Label |  Max |  |  |  | 5.33, 0.17, 0.38, 0.17 |
| Label | CALIPER_MIN_Label | Cal. (mm) |  |  |  | 5.83, 0.00, 0.38, 0.33 |
| Label | ROOT_PRUNE_TARGET_Label | Root Prune Target |  |  |  | 6.42, 0.00, 0.42, 0.33 |
| Label | Height_Label | Height (in) |  |  |  | 4.97, 0.00, 0.64, 0.18 |
| Label | Overrun_Label | Overrun |  |  |  | 3.88, 0.00, 0.88, 0.17 |
| TextBox | Text90 |  | AGREEMENT_LOT_CN |  |  | 2.08, 0.08, 0.79, 0.00 |
| Label | PACK_ID_Label | Pack ID |  |  |  | 7.50, 0.17, 0.50, 0.17 |
| Label | CONTRACT_ITEM_Label | Contr Item |  |  |  | 6.96, 0.00, 0.42, 0.33 |
| Line | Line91 |  |  |  |  | 0.12, 0.67, 7.88, 0.00 |
| Rectangle | Box92 |  |  |  |  | 0.12, 1.17, 7.62, 0.83 |
| Line | Line93 |  |  |  |  | 0.12, 1.38, 7.63, 0.00 |
| Line | Line94 |  |  |  |  | 0.12, 1.58, 7.63, 0.00 |
| Line | Line95 |  |  |  |  | 0.12, 1.79, 7.63, 0.00 |
| Line | Line96 |  |  |  |  | 0.92, 1.17, 0.00, 0.83 |
| Line | Line97 |  |  |  |  | 1.62, 1.17, 0.00, 0.83 |
| Line | Line98 |  |  |  |  | 4.38, 1.17, 0.00, 0.83 |
| Line | Line99 |  |  |  |  | 5.46, 1.17, 0.00, 0.83 |
| Line | Line100 |  |  |  |  | 6.62, 1.17, 0.00, 0.83 |
| Label | Label101 | Cull Reason |  |  |  | 6.75, 1.62, 0.88, 0.17 |
| Line | Line112 |  |  |  |  | 3.42, 1.17, 0.00, 0.83 |
| Line | Line115 |  |  |  |  | 2.25, 1.17, 0.00, 0.83 |
| Rectangle | Box50 |  |  |  |  | 0.12, 0.88, 6.50, 0.29 |
| Label | Pack_Header_Label | Date        Table    Size     # Containers  Trees/Cont    M's Packed    # Fld Contrs   |  |  |  | 0.17, 0.92, 6.46, 0.18 |
| Line | Line60 |  |  |  |  | 0.92, 0.88, 0.00, 0.30 |
| Line | Line61 |  |  |  |  | 1.62, 0.88, 0.00, 0.30 |
| Line | Line63 |  |  |  |  | 2.25, 0.88, 0.00, 0.30 |
| Line | Line64 |  |  |  |  | 4.38, 0.88, 0.00, 0.30 |
| Line | Line65 |  |  |  |  | 5.46, 0.88, 0.00, 0.30 |
| Line | Line67 |  |  |  |  | 6.62, 0.88, 0.00, 0.30 |
| Line | Line111 |  |  |  |  | 3.42, 0.88, 0.00, 0.30 |
| Label | Label103 | Hours Worked |  |  |  | 6.71, 1.21, 0.95, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.25, 1.96, 0.00 |
| TextBox | Text89 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.96, 0.25, 0.00, 0.00 |
