# Report: ORDER_HC_FORM

**Caption:** NMIS_ORDER_HC_FORM  
**Record source:**

```sql
ORDER_HC_FORM Query
```

**Grouping/sorting:** `ID`  
**Subforms/subreports:** `Report.ORDER_HC_FORM_INV Subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | RUN_DATE |  | =Now() |  |  | 6.04, 0.00, 0.96, 0.20 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.04, 3.00, 0.21 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 3.71, 0.54, 0.54, 0.21 |
| Label | Label38 | Fiscal Year: |  |  |  | 2.83, 0.54, 0.82, 0.20 |
| Label | Label39 | SEEDLING ORDER FORM |  |  |  | 2.50, 0.29, 2.00, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Nursery ID: | ID |  |  | 1.04, 0.04, 1.08, 0.18 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 2.83, 0.04, 1.08, 0.21 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 4.00, 0.04, 3.50, 0.18 |
| TextBox | PARENT_NAME |  | PARENT_NAME |  |  | 1.33, 0.79, 2.85, 0.21 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.33, 0.58, 2.85, 0.21 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.58, 0.58, 0.67, 0.21 |
| Label | Label35 | Client: |  |  |  | 0.08, 0.58, 0.44, 0.19 |
| TextBox | PRODUCT |  | PRODUCT |  |  | 0.79, 1.17, 5.21, 0.18 |
| Label | Label36 | Product: |  |  |  | 0.08, 1.17, 0.67, 0.19 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 1.71, 1.54, 0.67, 0.18 |
| Label | Label37 | Agreement Request: |  |  |  | 0.08, 1.54, 1.58, 0.20 |
| TextBox | AGR_CN |  | AGR_CN |  |  | 7.00, 1.54, 0.46, 0.21 |
| Line | Line42 |  |  |  |  | 1.71, 1.75, 0.67, 0.00 |
| Line | Line43 |  |  |  |  | 4.00, 0.25, 3.50, 0.00 |
| Line | Line44 |  |  |  |  | 1.04, 0.25, 1.08, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | ORDER_HC_FORM_INV Subrep |  | Report.ORDER_HC_FORM_INV Subrep (master: AGR_CN → child: AGR_CN) |  |  | 0.71, 0.12, 5.54, 0.28 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label45 | GRADING SPECIFICATIONS |  |  |  | 0.08, 0.04, 1.90, 0.17 |
| Label | Label46 | ORDER CODE: |  |  |  | 0.46, 0.33, 1.04, 0.20 |
| Label | Label47 | AMOUNT(M) |  |  |  | 2.08, 0.33, 0.88, 0.21 |
| Label | Label48 | OVERRUN AMT (M) |  |  |  | 3.12, 0.17, 0.88, 0.38 |
| Label | Label49 | min |  |  |  | 4.17, 0.33, 0.33, 0.21 |
| Label | Label50 | max |  |  |  | 4.67, 0.33, 0.33, 0.20 |
| Label | Label51 | HEIGHT (in) |  |  |  | 4.17, 0.17, 0.83, 0.20 |
| Label | Label52 | CALIPER (mm) |  |  |  | 5.17, 0.17, 0.70, 0.38 |
| Label | Label53 | ROOT PRUNE TARGET (in) |  |  |  | 6.00, 0.17, 1.00, 0.38 |
| Label | Label54 | PACK (for outplant) |  |  |  | 0.46, 0.61, 1.34, 0.20 |
| Label | Label55 | XPLT (transplant) |  |  |  | 0.46, 0.90, 1.21, 0.20 |
| Line | Line56 |  |  |  |  | 2.12, 0.75, 0.83, 0.00 |
| Line | Line57 |  |  |  |  | 2.12, 1.04, 0.83, 0.00 |
| Line | Line58 |  |  |  |  | 3.17, 0.75, 0.83, 0.00 |
| Line | Line59 |  |  |  |  | 3.17, 1.04, 0.83, 0.00 |
| Line | Line60 |  |  |  |  | 5.17, 0.75, 0.71, 0.00 |
| Line | Line61 |  |  |  |  | 4.17, 0.75, 0.33, 0.00 |
| Line | Line62 |  |  |  |  | 4.67, 0.75, 0.33, 0.00 |
| Line | Line63 |  |  |  |  | 4.17, 1.04, 0.33, 0.00 |
| Line | Line64 |  |  |  |  | 4.67, 1.04, 0.33, 0.00 |
| Line | Line65 |  |  |  |  | 5.17, 1.04, 0.71, 0.00 |
| Line | Line67 |  |  |  |  | 6.12, 0.75, 0.71, 0.00 |
| Line | Line68 |  |  |  |  | 6.12, 1.04, 0.71, 0.00 |
| Label | Label69 | *root prune target will be a 3 inch range with 1.5" less than target for minimum and 1.5" more than target for m maximum |  |  |  | 3.54, 1.25, 3.51, 0.38 |
| Label | Label70 | If you are declaring SURPLUS indicate quantity: _______________  |  |  |  | 0.08, 1.83, 4.42, 0.20 |
| Label | Label71 | SPECIAL SERVICES: |  |  |  | 0.08, 2.21, 1.43, 0.17 |
| Label | Label72 | Circle ONE container type: |  |  |  | 0.38, 2.50, 1.80, 0.20 |
| Label | Label73 | Circle ONE bundling type: |  |  |  | 0.38, 2.78, 1.80, 0.20 |
| Label | Label74 | Circle ANY of the following: |  |  |  | 0.38, 3.06, 1.88, 0.20 |
| Label | Label75 | BAG |  |  |  | 3.00, 2.50, 0.35, 0.20 |
| Label | Label76 | BOX |  |  |  | 3.60, 2.50, 0.35, 0.20 |
| Label | Label77 | BAG in a BOX |  |  |  | 4.20, 2.50, 0.97, 0.20 |
| Label | Label78 | other:_______________ |  |  |  | 5.42, 2.50, 1.59, 0.20 |
| Label | Label79 | @25 |  |  |  | 3.00, 2.78, 0.35, 0.20 |
| Label | Label80 | @50 |  |  |  | 3.78, 2.78, 0.35, 0.20 |
| Label | Label81 | @100 |  |  |  | 4.57, 2.78, 0.42, 0.20 |
| Label | Label82 | none |  |  |  | 5.42, 2.78, 0.39, 0.20 |
| Label | Label83 | FREEZER STORE |  |  |  | 3.00, 3.12, 1.17, 0.20 |
| Label | Label84 | DOUBLE SORT |  |  |  | 4.58, 3.12, 1.04, 0.20 |
| Label | Label85 | WHO CAN WE CONTACT ABOUT YOUR ORDER? |  |  |  | 0.08, 3.38, 3.29, 0.20 |
| Label | Label86 | Call this person first: ____________________________________________ |  |  |  | 0.38, 3.67, 4.83, 0.20 |
| Label | Label87 | If unavailable, call:   ____________________________________________ |  |  |  | 0.38, 3.95, 4.83, 0.20 |
| Label | Label88 | Phone: ______________________ |  |  |  | 5.29, 3.67, 2.24, 0.20 |
| Label | Label89 | Phone: ______________________ |  |  |  | 5.29, 3.95, 2.24, 0.20 |
| Label | Label90 | YOUR SPECIAL INSTRUCTIONS/COMMENTS: |  |  |  | 0.08, 4.29, 3.00, 0.20 |
| Line | Line91 |  |  |  |  | 0.38, 4.58, 7.04, 0.00 |
| Line | Line92 |  |  |  |  | 0.38, 4.83, 7.04, 0.00 |
| Line | Line93 |  |  |  |  | 0.38, 5.08, 7.04, 0.00 |
| Line | Line94 |  |  |  |  | 0.38, 5.33, 7.04, 0.00 |
| Line | Line95 |  |  |  |  | 0.38, 5.58, 7.04, 0.00 |
