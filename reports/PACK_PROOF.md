# Report: PACK_PROOF

**Grouping/sorting:** `ACTIVITY_DATE`, `ID`, `ORDER_CN`  
**Subforms/subreports:** `Report.PACK_PROOF_O subrep`  
**Opened from (VBA):** `Form_Processing_Review_by_Activity_Date`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Nursery     ID |  |  |  | 0.36, 0.92, 0.58, 0.33 |
| Label | ORDER_ID_Label | Order ID |  |  |  | 2.20, 0.92, 0.46, 0.33 |
| Line | Line13 |  |  |  |  | 0.36, 1.25, 7.59, 0.00 |
| Label | Label19 | Unit Code |  |  |  | 6.24, 0.92, 0.42, 0.33 |
| Label | Label20 |     Density    Gross   -   Net |  |  |  | 6.86, 0.92, 1.00, 0.33 |
| Label | Label21 |    Contract   Item   Hours |  |  |  | 4.42, 0.92, 1.00, 0.33 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 4.36, 0.65, 1.02, 0.20 |
| Label | Label14 | Packing Report for  |  |  |  | 3.01, 0.65, 1.32, 0.20 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.74, 0.38, 2.79, 0.20 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.86, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.74, 0.17, 2.78, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.36, 0.00, 1.17, 0.00 |
| TextBox | CN |  | agr_lot_cn |  |  | 1.36, 0.00, 0.29, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | PACK_PROOF_O subrep |  | Report.PACK_PROOF_O subrep (master: agr_lot_cn;ID_Activity_CN → child: AGREEMENT_LOT_CN;ID_Activity_CN) |  |  | 0.49, 0.00, 7.53, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text9 |  | =Now() |  |  | 0.41, 0.00, 1.96, 0.18 |
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.70, 0.00, 2.17, 0.18 |
