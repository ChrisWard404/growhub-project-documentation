# Report: Processing_Table_Assignments_Detailed

**Grouping/sorting:** `TABLE`, `PROCESSING_PRIORITY`, `ID`, `ORDER_CN`  
**Subforms/subreports:** `Report.Table_assignment_Precool_detailed Subrep`  
**Opened from (VBA):** `Form_Plant_Processing_Table_Priorties`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.71, 0.36, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label134 | Order ID |  |  |  | 0.00, 1.03, 0.47, 0.36 |
| Label | Label135 | Client |  |  |  | 0.40, 1.20, 0.60, 0.20 |
| Label | Label136 | Total Order |  |  |  | 1.83, 1.03, 0.43, 0.36 |
| Label | Label137 | Order Size Specs |  |  |  | 2.44, 1.20, 1.20, 0.20 |
| Label | Label138 | Special Services |  |  |  | 4.21, 1.20, 1.16, 0.20 |
| Label | Label139 | Contract Item |  |  |  | 6.27, 1.03, 0.66, 0.36 |
| Label | Label140 | Status |  |  |  | 7.00, 1.20, 0.60, 0.20 |
| Line | Line141 |  |  |  |  | 0.00, 1.40, 7.93, 0.00 |
| Label | Label143 | Activity Code |  |  |  | 1.05, 1.03, 0.58, 0.36 |
| TextBox | Text147 |  | =[Forms]![Plant_Processing_Table_Priorties]![Processing_Date] |  |  | 2.58, 0.80, 2.79, 0.22 |
| TextBox | TABLE |  | TA |  |  | 2.71, 0.58, 2.50, 0.22 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_ORDER |  |  | 0.00, 0.00, 1.17, 0.20 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT |  |  | 1.17, 0.00, 3.33, 0.20 |
| Subform | Child23 |  | Report.Table_assignment_Precool_detailed Subrep (master: AGREEMENT_LOT_CN → child: AGR_LOT_CN) |  |  | 6.46, 0.00, 1.47, 0.19 |
| TextBox | Species_Product_Description |  | Species_Product_Description |  |  | 4.58, 0.00, 1.83, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGR_REQ |  | [Total_Order] |  |  | 1.68, 0.21, 0.56, 0.18 |
| TextBox | Order_Size_Spec_W_Prune |  | Order_Size_Spec_W_Prune |  |  | 2.39, 0.21, 1.80, 0.18 |
| TextBox | SERVICES_STRING |  | SERVICES_STRING |  |  | 4.20, 0.21, 2.23, 0.18 |
| TextBox | Status |  | Status |  |  | 6.81, 0.21, 1.11, 0.18 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 6.44, 0.21, 0.31, 0.18 |
| TextBox | All_Overrun |  | All_Overrun |  |  | 2.21, 0.21, 0.11, 0.18 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 1.08, 0.21, 0.59, 0.18 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 0.21, 0.00, 4.04, 0.20 |
| TextBox | LastOfNURSERY_NOTE |  | NNote |  |  | 4.26, 0.00, 3.67, 0.19 |
| TextBox | Double_Sort |  | =IIf([SERVICES_STRING] Like "*dblsrt*","Double Sort") |  |  | 0.03, 0.21, 0.96, 0.18 |
| TextBox | NOTE |  | NOTE |  |  | 0.04, 0.40, 7.88, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line130 |  |  |  |  | 0.00, 0.01, 7.94, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.03, 3.42, 0.19 |
| Line | Line113 |  |  |  |  | 0.00, 0.01, 7.94, 0.00 |
