# Report: Husky_Lpro_Daily_Dump_Report

**Caption:** Lifting Husky (LPRO) Data Transfer  
**Record source:**

```sql
**Husky_lpro_xfer_hlift_table2
```

**Grouping/sorting:** `Date`, `index`  
**Subforms/subreports:** `Report.Husky_Lpro_Daily_Dump_Container_Totals Subreport`  
**Opened from (VBA):** `Form_Husky_lpro_data_input_check_form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Lifting / Field Destroy Checklist |  |  |  | 2.65, 0.60, 2.70, 0.19 |
| Label | Nursery_ID_Label | Agreement Lot ID |  |  |  | 0.53, 1.12, 0.79, 0.38 |
| Label | Contract_Item_Label | Contract Item |  |  |  | 1.50, 1.14, 0.75, 0.36 |
| Label | Feet_Lifted_Label | Feet Lifted |  |  |  | 2.57, 1.14, 0.55, 0.36 |
| Label | Field_Container_Label | Field Container |  |  |  | 3.75, 1.17, 0.92, 0.33 |
| Label | Containers_Label | Containers |  |  |  | 4.78, 1.32, 1.05, 0.17 |
| Line | Line13 |  |  |  |  | 0.44, 1.51, 7.44, 0.00 |
| TextBox | ACTIVITY_DATE |  | Date |  |  | 2.96, 0.83, 2.24, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Nursery_ID |  | Nursery_ID |  |  | 0.64, 0.03, 0.75, 0.00 |
| TextBox | Contract_Item |  | Contract_Item |  |  | 1.54, 0.03, 0.67, 0.00 |
| TextBox | Feet_Lifted |  | Feet_Lifted |  |  | 2.35, 0.03, 0.68, 0.00 |
| TextBox | Field_Container |  | Field_Container |  |  | 3.73, 0.03, 0.93, 0.00 |
| TextBox | Containers |  | Containers |  |  | 4.79, 0.03, 0.71, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | **Husky_lpro_xfer_hlift_table2 subreport |  | Report.Husky_Lpro_Daily_Dump_Container_Totals Subreport (master: Date → child: Date) |  |  | 3.66, 0.08, 2.56, 0.17 |
| Line | Line21 |  |  |  |  | 3.75, 0.04, 0.92, 0.00 |
| Line | Line22 |  |  |  |  | 4.79, 0.04, 0.71, 0.00 |
| TextBox | Text23 |  | =Sum([Feet_Lifted]) |  |  | 2.35, 0.08, 0.68, 0.00 |
| Line | Line24 |  |  |  |  | 2.35, 0.04, 0.65, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.41, 0.17, 2.25, 0.00 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.12, 0.17, 2.71, 0.00 |
