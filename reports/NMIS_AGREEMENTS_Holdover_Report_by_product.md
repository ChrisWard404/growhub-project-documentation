# Report: NMIS_AGREEMENTS_Holdover_Report_by_product

**Caption:** Holdover Lots Needing Adjustment  
**Grouping/sorting:** `Cost_Center`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `ASSOCIATE`, `CLIENT_ASSOCIATE`, `ID_N_ORIG`  
**Subforms/subreports:** `Report.Agreement_Lot_Grow_Locations_Subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 4.62, 1.32, 0.42, 0.32 |
| Label | END_FY_Label | End FY |  |  |  | 5.18, 1.32, 0.38, 0.32 |
| Label | TOTAL_REQUEST_Label | Total Request (M) |  |  |  | 5.69, 1.17, 0.62, 0.47 |
| Label | EST_CONTAINERS_REQUIRED_Label | Holdover  |  |  |  | 6.84, 1.15, 0.62, 0.18 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.66, 1.47, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.64, 1.34, 0.75, 0.30 |
| Line | Line31 |  |  |  |  | 0.00, 1.69, 7.98, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.61, 0.16, 2.81, 0.19 |
| Label | Label33 | Holdover Agreements Needing Adjustments by Product |  |  |  | 1.80, 0.88, 4.44, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.39, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| TextBox | Cost_Center |  | [Cost_Center] |  |  | 2.26, 0.55, 3.50, 0.32 |
| Label | Label95 | Grow Cont |  |  |  | 7.54, 1.31, 0.42, 0.33 |
| Label | Label96 | Net (M) |  |  |  | 7.11, 1.31, 0.29, 0.33 |
| Label | Label97 | Gross (M) |  |  |  | 6.42, 1.31, 0.45, 0.33 |
| Line | Line98 |  |  |  |  | 6.42, 1.32, 1.54, 0.00 |
| Label | Label101 | Client |  |  |  | 0.03, 1.47, 0.49, 0.18 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.00, 0.00, 3.75, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | ID_SOURCE2 |  |  | 1.57, 0.01, 3.03, 0.21 |
| TextBox | TOTAL_REQUEST |  | AMOUNT_REQUESTED |  |  | 5.61, 0.01, 0.57, 0.21 |
| TextBox | BEGIN_FY |  | begin |  |  | 4.62, 0.01, 0.47, 0.21 |
| TextBox | END_FY |  | End |  |  | 5.12, 0.01, 0.49, 0.21 |
| TextBox | SumOfTotal_Activity_Units |  | SumOfTotal_Activity_Units |  |  | 7.42, 0.01, 0.52, 0.21 |
| TextBox | Gross |  | Gross |  |  | 6.21, 0.01, 0.57, 0.21 |
| Subform | Agreement_Lot_Grow_Locations_Subreport |  | Report.Agreement_Lot_Grow_Locations_Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 1.56, 0.31, 6.38, 0.03 |
| TextBox | Net |  | Net |  |  | 6.83, 0.01, 0.57, 0.21 |
| TextBox | Combo34 |  | CLIENT_ASSOCIATE |  |  | 0.00, 0.01, 0.63, 0.21 |
| TextBox | ID |  | ID |  |  | 0.64, 0.01, 0.94, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 2.15, 0.25, 5.78, 0.00 |
| TextBox | New_Agreement_lot |  | New_Agreement_lot |  |  | 0.34, 0.30, 1.20, 0.01 |
| TextBox | CONTACT |  | CONTACT |  |  | 0.12, 0.27, 1.34, 0.02 |
| TextBox | Partial_Lift |  | Partial_Lift |  |  | 0.20, 0.25, 1.35, 0.00 |
| TextBox | Activity_Code |  | ACTIVITY_CODE |  |  | 1.61, 0.25, 0.50, 0.00 |
| TextBox | Text108 |  | ="Original Size Specs : " & [SIZE_SPEC_STRING] |  |  | 0.91, 0.23, 3.03, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 5.35, 0.11, 0.83, 0.20 |
| Label | Label55 | Total For:  |  |  |  | 0.03, 0.11, 0.73, 0.19 |
| TextBox | Combo37 |  | PRODUCT_DESC |  |  | 0.79, 0.11, 2.94, 0.19 |
| Label | Label110 | ----------- |  |  |  | 6.84, 0.00, 0.56, 0.13 |
| TextBox | Text109 |  | =Sum([Net]) |  |  | 6.57, 0.11, 0.83, 0.20 |
| Label | Label82 | ----------- |  |  |  | 5.63, 0.00, 0.56, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.94, 0.17, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.04, 0.04, 7.51, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label86 |  Grand Total: |  |  |  | 0.00, 0.10, 1.69, 0.21 |
| TextBox | Text87 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 5.06, 0.11, 1.12, 0.20 |
| Label | Label88 | ----------- |  |  |  | 5.63, 0.00, 0.56, 0.13 |
| Label | Label111 | ----------- |  |  |  | 6.84, 0.00, 0.56, 0.13 |
| TextBox | Text112 |  | =Sum([Net]) |  |  | 6.57, 0.11, 0.83, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)
    
    DoCmd.SetWarnings False
    'DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.OpenQuery "Transaction_Totals_By_Location_and_amt_per_unit_Grow_by_sublot2"
    DoCmd.SetWarnings True
    
End Sub
```
