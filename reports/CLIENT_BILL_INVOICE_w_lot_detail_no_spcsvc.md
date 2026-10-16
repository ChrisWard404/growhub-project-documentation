# Report: CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc

**Caption:** **CLIENT_BILL  
**Grouping/sorting:** `Reporting_Parent`, `CLIENT`, `JC`, `PRIORITY`, `CAT`, `BILL_CODE`, `BILL_DESC`, `TYPE`, `PRODUCT`, `ID`  
**Subforms/subreports:** `Report.Client_Bill_Income_Dist_Client_Jobcode_Subform`, `Report.Client_Bill_Unit_Jobcode_Total_Subform`, `Report.Client_Bill_Income_Dist_Client_Subform`, `Report.Client_Bill_Parent_Total_Subform2`, `Report.Client_Bill_Income_Dist_Client_Parent_Subform`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client_Code | Client: | CLIENT |  |  | 0.62, 0.99, 0.79, 0.21 |
| TextBox | Job_Code | Job Code: | JC |  |  | 6.40, 0.99, 1.48, 0.21 |
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| TextBox | Text21 |  | =Now() |  |  | 2.75, 0.75, 2.50, 0.20 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.46, 0.99, 3.88, 0.21 |
| TextBox | PARENT_NAME |  | PARENT_NAME |  |  | 1.46, 1.20, 3.88, 0.20 |
| Label | Text29 | CLIENT STOCK BILL |  |  |  | 2.73, 0.54, 2.53, 0.21 |
| TextBox | Like_Client |  | Like_Client |  |  | 0.54, 0.38, 0.92, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRIORITY_NAME |  | PRIORITY_NAME |  |  | 0.00, 0.00, 3.00, 0.21 |
| Label | BILL_CODE_Label | Bill |  |  |  | 0.00, 0.21, 0.46, 0.20 |
| Label | BILL_DESC_Label | Description |  |  |  | 0.62, 0.21, 1.75, 0.20 |
| Label | UNITS_Label | Units |  |  |  | 5.24, 0.21, 0.51, 0.20 |
| Label | TYPE_Label | Type |  |  |  | 5.78, 0.21, 0.38, 0.20 |
| Label | CHARGE_PER_UNIT_Label | $/Unit |  |  |  | 6.25, 0.21, 0.54, 0.20 |
| Label | ITEM_COST_Label | Bill Amount |  |  |  | 6.96, 0.21, 0.88, 0.20 |
| Line | Line29 |  |  |  |  | 0.02, 0.42, 7.93, 0.00 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BILL_CODE |  | BILL_CODE |  |  | 0.00, 0.00, 0.58, 0.00 |
| TextBox | BILL_DESC |  | BILL_DESC_LONG |  |  | 0.59, 0.00, 4.74, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT |  | PRODUCT_CAT |  |  | 0.04, 0.03, 2.65, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.04, 0.00, 0.00, 0.00 |
| TextBox | UNITS |  | UNITS |  |  | 5.08, 0.00, 0.68, 0.00 |
| TextBox | TYPE |  | TYPE |  |  | 5.92, 0.00, 0.25, 0.00 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 6.18, 0.00, 0.75, 0.00 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 6.99, 0.00, 0.97, 0.00 |
| TextBox | ID_SOURCE |  | ID_SOURCE |  |  | 1.12, 0.00, 3.92, 0.00 |
| TextBox | Text78 |  | =IIf(IsNull([CHARGE_PER_UNIT]),"Undefined","") |  |  | 6.19, 0.00, 0.75, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Sum([UNITS]) |  |  | 5.08, 0.04, 0.68, 0.00 |
| TextBox | Text32 |  | TYPE |  |  | 5.92, 0.04, 0.25, 0.00 |
| TextBox | Text33 |  | CHARGE_PER_UNIT |  |  | 6.18, 0.04, 0.75, 0.00 |
| TextBox | Text34 |  | =Sum([ITEM_COST]) |  |  | 6.99, 0.04, 0.97, 0.00 |
| Line | Line35 |  |  |  |  | 5.08, 0.04, 0.67, 0.00 |
| Line | Line38 |  |  |  |  | 7.00, 0.04, 0.96, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text35 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.09, 1.04, 0.20 |
| Line | Line36 |  |  |  |  | 6.96, 0.05, 0.00, 0.00 |
| Line | Line37 |  |  |  |  | 6.96, 0.03, 0.00, 0.00 |
| Label | Label47 | Product Total Charges |  |  |  | 0.00, 0.09, 1.53, 0.20 |
| TextBox | Text62 |  | =Sum([UNITS]) |  |  | 4.72, 0.09, 1.04, 0.20 |
| Line | Line63 |  |  |  |  | 4.76, 0.05, 0.00, 0.00 |
| Line | Line64 |  |  |  |  | 4.76, 0.03, 0.00, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text58 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.13, 1.04, 0.20 |
| Line | Line59 |  |  |  |  | 6.96, 0.09, 0.00, 0.00 |
| Label | Label60 | Total Charges for Jobcode: |  |  |  | 0.00, 0.15, 1.83, 0.18 |
| TextBox | JC |  | JC |  |  | 1.86, 0.15, 1.34, 0.18 |
| Line | Line61 |  |  |  |  | 6.96, 0.07, 0.00, 0.00 |
| Subform | Client_Bill_Income_Dist_Subform |  | Report.Client_Bill_Income_Dist_Client_Jobcode_Subform (master: JC → child: JC) |  |  | 0.00, 0.40, 2.22, 0.04 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =[ASSOCIATE_NAME] & " Total Charges" |  |  | 0.00, 0.10, 5.08, 0.20 |
| Subform | Client_Bill_Unit_Jobcode_Total_Subform |  | Report.Client_Bill_Unit_Jobcode_Total_Subform (master: CLIENT → child: CLIENT) |  |  | 6.88, 0.01, 1.08, 0.25 |
| Subform | Child81 |  | Report.Client_Bill_Income_Dist_Client_Subform (master: CLIENT → child: CLIENT) |  |  | 0.00, 0.35, 2.22, 0.05 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | ="Total Charges" |  |  | 0.00, 0.06, 5.08, 0.20 |
| Subform | **********capitol_holiday_tree_tags |  | Report.Client_Bill_Parent_Total_Subform2 (master: Reporting_Parent → child: Reporting_Parent) |  |  | 6.88, 0.01, 1.07, 0.28 |
| Subform | Child82 |  | Report.Client_Bill_Income_Dist_Client_Parent_Subform (master: Reporting_Parent → child: Reporting_Parent) |  |  | 0.00, 0.35, 2.22, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line57 |  |  |  |  | 6.96, 0.00, 0.00, 0.00 |
