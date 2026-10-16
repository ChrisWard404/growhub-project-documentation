# Report: CLIENT_BILL_INVOICE

**Caption:** **CLIENT_BILL  
**Record source:**

```sql
CLIENT_BILL_INVOICE
```

**Grouping/sorting:** `Reporting_Parent`, `CLIENT`, `JC`, `PRIORITY`, `TYPE`, `CAT`, `PRODUCT`, `BILL_CODE`, `BILL_DESC`  
**Subforms/subreports:** `Report.Client_Bill_Income_Dist_Client_Jobcode_Subform`, `Report.Client_Bill_Unit_Jobcode_Total_Subform`, `Report.Client_Bill_Income_Dist_Client_Subform`, `Report.Client_Bill_Parent_Total_Subform2`, `Report.Client_Bill_Income_Dist_Client_Parent_Subform`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client_Code | Client: | CLIENT |  |  | 0.62, 1.12, 0.79, 0.21 |
| TextBox | Job_Code | Job Code: | JC |  |  | 6.35, 1.12, 1.52, 0.21 |
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| TextBox | Text21 |  | =Now() |  |  | 2.75, 0.75, 2.50, 0.20 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.46, 1.12, 3.67, 0.21 |
| TextBox | PARENT_NAME |  | PARENT_NAME |  |  | 1.46, 1.33, 3.67, 0.20 |
| Label | Text29 | CLIENT STOCK BILL |  |  |  | 2.73, 0.54, 2.53, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRIORITY_NAME |  | PRIORITY_NAME |  |  | 0.00, 0.08, 3.00, 0.21 |
| Label | BILL_CODE_Label | Bill |  |  |  | 0.00, 0.33, 0.46, 0.20 |
| Label | BILL_DESC_Label | Description |  |  |  | 0.62, 0.33, 1.75, 0.20 |
| Label | UNITS_Label | Units |  |  |  | 5.24, 0.33, 0.51, 0.20 |
| Label | TYPE_Label | Type |  |  |  | 5.78, 0.33, 0.38, 0.20 |
| Label | CHARGE_PER_UNIT_Label | $/Unit |  |  |  | 6.25, 0.33, 0.54, 0.20 |
| Label | ITEM_COST_Label | Bill Amount |  |  |  | 6.96, 0.33, 0.88, 0.20 |
| Line | Line29 |  |  |  |  | 0.10, 0.54, 7.86, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BILL_CODE |  | BILL_CODE |  |  | 0.00, 0.00, 0.58, 0.00 |
| TextBox | PRODUCT |  | PRODUCT |  |  | 2.27, 0.00, 2.29, 0.00 |
| TextBox | BILL_DESC |  | BILL_DESC |  |  | 0.59, 0.00, 1.66, 0.00 |
| TextBox | UNITS |  | UNITS |  |  | 5.07, 0.00, 0.68, 0.00 |
| TextBox | TYPE |  | TYPE |  |  | 5.91, 0.00, 0.25, 0.00 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 6.17, 0.00, 0.75, 0.00 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 6.96, 0.00, 0.97, 0.00 |
| TextBox | Text40 |  | CAT |  |  | 4.57, 0.00, 0.50, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text58 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.06, 1.04, 0.20 |
| Line | Line59 |  |  |  |  | 6.96, 0.02, 0.00, 0.00 |
| Label | Label60 | Total Charges for Jobcode: |  |  |  | 0.00, 0.08, 1.83, 0.18 |
| TextBox | JC |  | JC |  |  | 1.86, 0.08, 1.34, 0.18 |
| Line | Line61 |  |  |  |  | 6.96, 0.00, 0.00, 0.00 |
| Subform | Client_Bill_Income_Dist_Subform |  | Report.Client_Bill_Income_Dist_Client_Jobcode_Subform (master: JC → child: JC) |  |  | 0.00, 0.32, 2.22, 0.04 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =[ASSOCIATE_NAME] & " Total Charges" |  |  | 0.00, 0.09, 5.08, 0.20 |
| Subform | Client_Bill_Unit_Jobcode_Total_Subform |  | Report.Client_Bill_Unit_Jobcode_Total_Subform (master: CLIENT → child: CLIENT) |  |  | 6.88, 0.00, 1.08, 0.25 |
| Subform | Child81 |  | Report.Client_Bill_Income_Dist_Client_Subform (master: CLIENT → child: CLIENT) |  |  | 0.00, 0.34, 2.22, 0.05 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | ="Total Charges" |  |  | 0.00, 0.05, 5.08, 0.20 |
| Subform | **********capitol_holiday_tree_tags |  | Report.Client_Bill_Parent_Total_Subform2 (master: Reporting_Parent → child: None) |  |  | 6.88, 0.00, 1.07, 0.28 |
| Subform | Child82 |  | Report.Client_Bill_Income_Dist_Client_Parent_Subform (master: Reporting_Parent → child: Reporting_Parent) |  |  | 0.00, 0.34, 2.22, 0.18 |
