# Report: NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check

**Caption:** Agreement Lots vs Agreements Check  
**Record source:**

```sql
Ageement_Lot_and_Agreements_Total_Request_Check
```

**Subforms/subreports:** `Report.Agreement_Lot_vs_agreement_check_Subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 5.65, 0.90, 0.42, 0.32 |
| Label | END_FY_Label | End FY |  |  |  | 6.17, 0.90, 0.38, 0.32 |
| Label | TOTAL_REQUEST_Label | Agrmt Lot Total (M) |  |  |  | 6.71, 0.74, 0.62, 0.47 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.09, 1.04, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.01, 0.91, 0.75, 0.30 |
| Line | Line31 |  |  |  |  | 0.00, 1.26, 7.98, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.51, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.29, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.29, 0.00, 3.24, 0.16 |
| Label | Label104 | Agrmt Total  (M) |  |  |  | 7.43, 0.74, 0.52, 0.47 |
| Label | Label106 | Agreement Lot Totals not equal to Agreement Totals |  |  |  | 2.11, 0.58, 3.57, 0.19 |
| Label | Label107 | Original Lot ID |  |  |  | 1.07, 0.90, 0.67, 0.33 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | ID_SOURCE2 |  |  | 1.85, 0.01, 3.70, 0.21 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 6.68, 0.01, 0.57, 0.21 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 5.61, 0.01, 0.47, 0.21 |
| TextBox | END_FY |  | END_FY |  |  | 6.11, 0.01, 0.48, 0.21 |
| Subform | Agreement_Lot_Grow_Locations_Subreport |  | Report.Agreement_Lot_vs_agreement_check_Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.70, 0.22, 7.23, 0.03 |
| TextBox | ID |  | ID |  |  | 0.05, 0.04, 0.95, 0.00 |
| TextBox | ID_ORIGINAL |  | ID_ORIGINAL |  |  | 1.07, 0.04, 0.71, 0.00 |
| TextBox | Text105 |  | SumOfAMOUNT_REQUESTED |  |  | 7.31, 0.01, 0.57, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.94, 0.17, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.04, 0.04, 7.51, 0.00 |

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
