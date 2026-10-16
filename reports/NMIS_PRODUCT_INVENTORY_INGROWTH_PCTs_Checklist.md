# Report: NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist

**Caption:** Size_Spec_Ingrowth_percents_Checklist  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORY_INGROWTH_Pcts
```

**Grouping/sorting:** `Spec_Range`, `Ht`  
**Opened from (VBA):** `Form_NMIS_PRODUCT_INVENTORIES`, `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line22 |  |  |  |  | 0.00, 0.99, 7.84, 0.00 |
| Label | Label28 |  Size Spec Ingrowth Percent Checklist |  |  |  | 2.30, 0.61, 3.58, 0.26 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.63, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.42, 0.00, 3.24, 0.16 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box29 |  |  |  |  | 1.86, 0.06, 4.29, 0.79 |
| TextBox | Spec_Range | Specs | Spec_Range |  |  | 1.87, 0.07, 4.29, 0.26 |
| Label | HT_HEADING_Label | Height  |  |  |  | 1.87, 0.42, 0.62, 0.43 |
| Label | 1-2_Label | 1-2 |  |  |  | 2.48, 0.64, 0.53, 0.22 |
| Label | 2_5_Label | 2.5 |  |  |  | 3.01, 0.64, 0.53, 0.22 |
| Label | 3_Label | 3 |  |  |  | 3.53, 0.64, 0.53, 0.22 |
| Label | 3_5_Label | 3.5 |  |  |  | 4.06, 0.64, 0.53, 0.22 |
| Label | 4_Label | 4 |  |  |  | 4.58, 0.64, 0.53, 0.22 |
| Label | 5_Label | 5 |  |  |  | 5.11, 0.64, 0.53, 0.22 |
| Label | 5+_Label | 5+ |  |  |  | 5.63, 0.64, 0.53, 0.22 |
| Label | Label27 | Caliper (mm) |  |  |  | 2.48, 0.42, 3.67, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | HT_HEADING |  | HT_HEADING |  |  | 1.87, 0.00, 0.62, 0.22 |
| TextBox | 1-2 |  | 1-2 |  |  | 2.48, 0.00, 0.53, 0.22 |
| TextBox | 2_5 |  | 2_5 |  |  | 3.01, 0.00, 0.53, 0.22 |
| TextBox | 3 |  | 3 |  |  | 3.53, 0.00, 0.53, 0.22 |
| TextBox | 3_5 |  | 3_5 |  |  | 4.06, 0.00, 0.53, 0.22 |
| TextBox | 4 |  | 4 |  |  | 4.58, 0.00, 0.53, 0.22 |
| TextBox | 5 |  | 5 |  |  | 5.11, 0.00, 0.53, 0.22 |
| TextBox | 5+ |  | 5+ |  |  | 5.63, 0.00, 0.53, 0.22 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.76, 0.17, 3.04, 0.00 |
| Line | Line24 |  |  |  |  | 0.00, 0.00, 7.84, 0.00 |
