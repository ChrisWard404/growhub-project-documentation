# Report: CLIENT_BILL_INVOICE_COMBINED2

**Caption:** **CLIENT_BILL  
**Record source:**

```sql
CLIENT_BILL_INVOICE_COMBINED2
```

**Grouping/sorting:** `CATEGORY_CODE`, `PRIORITY`, `TYPE`, `PRODUCT`, `BILL_CODE`, `BILL_DESC`  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Subforms/subreports:** `Report.Client_Bill_Income_Dist_Summary_Subform`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| TextBox | Text21 |  | ="FY " & [Forms]![Switchboard]![FY_For_Reports] & " Billing Summary as of " & Date() |  |  | 2.00, 0.54, 4.00, 0.20 |
| Line | Line46 |  |  |  |  | 0.04, 0.77, 7.75, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CAT |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.06, 0.03, 3.04, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRIORITY_NAME |  | PRIORITY_NAME |  |  | 0.04, 0.01, 3.00, 0.21 |
| Label | BILL_CODE_Label | Bill |  |  |  | 2.34, 0.22, 0.46, 0.20 |
| Label | BILL_DESC_Label | Description |  |  |  | 2.95, 0.22, 1.75, 0.20 |
| Label | ITEM_COST_Label | Bill Amount |  |  |  | 6.84, 0.22, 0.88, 0.20 |
| Line | Line29 |  |  |  |  | 0.10, 0.42, 7.75, 0.00 |
| Label | Label36 | Product |  |  |  | 0.04, 0.21, 1.83, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BILL_CODE |  | BILL_CODE |  |  | 2.34, 0.00, 0.58, 0.00 |
| TextBox | PRODUCT |  | PRODUCT |  |  | 0.03, 0.00, 2.29, 0.00 |
| TextBox | BILL_DESC |  | BILL_DESC_LONG |  |  | 2.95, 0.00, 3.72, 0.00 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 6.84, 0.00, 0.97, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text40 |  | =Sum([ITEM_COST]) |  |  | 6.34, 0.00, 1.47, 0.18 |
| Line | Line41 |  |  |  |  | 6.80, 0.00, 1.04, 0.00 |
| Label | Label42 | Sub Total: |  |  |  | 5.50, 0.00, 0.83, 0.18 |
| TextBox | Text43 |  | PRODUCT |  |  | 3.20, 0.00, 2.29, 0.18 |
| Line | Line45 |  |  |  |  | 0.04, 0.20, 7.79, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Sum([ITEM_COST]) |  |  | 6.34, 0.01, 1.47, 0.18 |
| Line | Line34 |  |  |  |  | 6.77, 0.01, 1.04, 0.00 |
| Label | Label35 | Sub Total: |  |  |  | 5.50, 0.01, 0.83, 0.18 |
| TextBox | Text44 |  | PRIORITY_NAME |  |  | 2.49, 0.01, 3.00, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | =Sum([ITEM_COST]) |  |  | 6.33, 0.01, 1.47, 0.18 |
| Label | Label49 | Sub Total: |  |  |  | 5.49, 0.01, 0.83, 0.18 |
| ComboBox | Combo50 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 3.21, 0.01, 2.25, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text51 |  | =Date() & "   " & Time() |  |  | 0.00, 0.04, 2.00, 0.00 |
| TextBox | Text53 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.46, 0.04, 1.35, 0.00 |
| Line | Line54 |  |  |  |  | 0.00, 0.02, 7.83, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text30 |  | =Sum([ITEM_COST]) |  |  | 6.34, 0.08, 1.47, 0.00 |
| Label | Label31 | Total: |  |  |  | 5.26, 0.08, 0.83, 0.18 |
| Line | Line32 |  |  |  |  | 6.80, 0.04, 1.04, 0.00 |
| Subform | Child82 |  | Report.Client_Bill_Income_Dist_Summary_Subform |  |  | 0.00, 0.33, 2.22, 0.18 |
