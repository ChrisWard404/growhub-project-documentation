# Report: LIFT_CONTRACT_ACCUMULATED

**Caption:** LIFT_CONTRACT_ACCUM  
**Record source:**

```sql
LIFT_CONTRACT_ACCUM Query
```

**Grouping/sorting:** `FISCAL_YEAR`, `CONTRACT_ITEM`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.00, 0.38, 3.50, 0.21 |
| Label | REPORT_Label |  LIFTING CONTRACT PAYMENT |  |  |  | 2.68, 0.58, 2.14, 0.19 |
| TextBox | REPORT_DATE |  | =Now() |  |  | 6.50, 0.00, 0.92, 0.00 |
| TextBox | ACTIVITY_DATE | Begin Date: | [Payment Period Begin Date] |  |  | 0.83, 1.17, 0.00, 0.21 |
| TextBox | Text63 | Contract Number: | CONTRACT_NO |  |  | 3.96, 0.79, 0.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.46, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.33, 0.17, 2.78, 0.20 |
| TextBox | Text69 | End Date: | [Payment Period End Date] |  |  | 6.62, 1.17, 0.83, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.04, 0.00, 1.12, 0.20 |
| Label | FEET_Label | Feet |  |  |  | 2.79, 0.00, 0.71, 0.20 |
| Label | FLD_CONT_Label | # Tubs |  |  |  | 3.71, 0.00, 0.77, 0.20 |
| Label | PAYMENT_PER_UNIT_Label | $/Unit |  |  |  | 5.79, 0.00, 0.58, 0.20 |
| Label | PAYMENT_Label | Payment |  |  |  | 6.46, 0.00, 0.96, 0.20 |
| Line | Line15 |  |  |  |  | 0.04, 0.20, 7.46, 0.01 |
| Label | Label65 | # Bins |  |  |  | 4.62, 0.00, 0.77, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_ITEM_DESC |  | CONTRACT_ITEM_DESC |  |  | 0.50, 0.00, 1.50, 0.21 |
| TextBox | FEET |  | SumOfNO_FEET |  |  | 2.50, 0.00, 0.00, 0.21 |
| TextBox | FLD_CONT |  | SumOfNO_PTUB |  |  | 3.71, 0.00, 0.75, 0.21 |
| TextBox | PAYMENT_PER_UNIT |  | PAYMENT_PER_UNIT |  |  | 5.79, 0.00, 0.58, 0.21 |
| TextBox | PAYMENT |  | PAYMENT |  |  | 6.46, 0.00, 0.96, 0.21 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 0.04, 0.00, 0.46, 0.21 |
| TextBox | Text66 |  | SumOfNO_MBIN |  |  | 4.62, 0.00, 0.75, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text40 |  | =Sum([PAYMENT]) |  |  | 6.50, 0.08, 0.92, 0.21 |
| Line | Line46 |  |  |  |  | 6.50, 0.04, 0.92, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.29, 0.04, 3.17, 0.20 |
