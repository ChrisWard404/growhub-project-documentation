# Report: NMIS_AGREEMENTS_Holdover_Report

**Grouping/sorting:** `ASSOCIATE`, `CLIENT_ASSOCIATE`, `Cost_Center`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `ID_N_ORIG`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Report.Agreement_Lot_Grow_Locations_Subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ASSOCIATE |  | ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [Associate_Name] & " (" & [Associate] & ")" AS Associate_Header FROM NMIS_ASSOCIATES;  |  | 0.29, 0.80, 7.46, 0.32 |
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 4.17, 1.30, 0.42, 0.32 |
| Label | END_FY_Label | End FY |  |  |  | 4.69, 1.30, 0.38, 0.32 |
| Label | TOTAL_REQUEST_Label | Total Request (M) |  |  |  | 5.24, 1.15, 0.62, 0.47 |
| Label | EST_CONTAINERS_REQUIRED_Label | Holdover  |  |  |  | 6.51, 1.12, 0.62, 0.18 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.87, 1.45, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.09, 1.32, 0.75, 0.30 |
| Line | Line31 |  |  |  |  | 0.04, 1.66, 7.90, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| Label | Label33 | Holdover Agreements Needing Adjustments |  |  |  | 2.25, 0.55, 3.52, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.39, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Label | Label95 | Grow Containers |  |  |  | 7.00, 1.29, 0.71, 0.33 |
| Label | Label96 | Net (M) |  |  |  | 6.62, 1.29, 0.29, 0.33 |
| Label | Label97 | Gross (M) |  |  |  | 5.92, 1.29, 0.45, 0.33 |
| Line | Line98 |  |  |  |  | 5.94, 1.30, 1.83, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NURSERY_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 1.12, 0.00, 4.17, 0.25 |
| TextBox | Combo34 |  | CLIENT_ASSOCIATE |  |  | 0.00, 0.00, 0.94, 0.25 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Cost_Center |  | [Cost_Center] |  |  | 0.00, 0.00, 3.50, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 0.02, 0.00, 3.75, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 0.72, 0.07, 3.38, 0.20 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.03, 0.07, 0.64, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | ID_SOURCE2 |  |  | 1.11, 0.01, 3.04, 0.21 |
| TextBox | TOTAL_REQUEST |  | AMOUNT_REQUESTED |  |  | 5.17, 0.01, 0.57, 0.21 |
| TextBox | BEGIN_FY |  | begin |  |  | 4.17, 0.01, 0.47, 0.21 |
| TextBox | END_FY |  | End |  |  | 4.67, 0.01, 0.49, 0.21 |
| TextBox | SumOfTotal_Activity_Units |  | SumOfTotal_Activity_Units |  |  | 6.97, 0.01, 0.52, 0.21 |
| TextBox | Gross |  | Gross |  |  | 5.76, 0.01, 0.57, 0.21 |
| TextBox | Net |  | Net |  |  | 6.38, 0.01, 0.57, 0.21 |
| Subform | Agreement_Lot_Grow_Locations_Subreport |  | Report.Agreement_Lot_Grow_Locations_Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.12, 0.22, 6.38, 0.03 |
| TextBox | Text101 |  | ID |  |  | 0.06, 0.01, 0.90, 0.21 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.91, 0.10, 0.83, 0.20 |
| Label | Label58 | Total For:  |  |  |  | 0.03, 0.10, 0.73, 0.19 |
| TextBox | Text62 |  | SPECIES_PRODUCT_DESC |  |  | 1.42, 0.10, 2.97, 0.20 |
| TextBox | Text63 |  | PLNTMSTR_SYMBOL |  |  | 0.81, 0.10, 0.57, 0.20 |
| Label | Label83 | ----------- |  |  |  | 5.18, 0.00, 0.56, 0.13 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.91, 0.11, 0.83, 0.20 |
| Label | Label55 | Total For:  |  |  |  | 0.03, 0.11, 0.73, 0.19 |
| TextBox | Combo37 |  | PRODUCT_DESC |  |  | 0.79, 0.11, 2.94, 0.19 |
| Label | Label82 | ----------- |  |  |  | 5.18, 0.00, 0.56, 0.13 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SUM_TOTAL_REQ |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.91, 0.11, 0.83, 0.20 |
| Label | Label36 | Total For:  |  |  |  | 0.03, 0.11, 0.73, 0.19 |
| ComboBox | Combo56 |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.81, 0.11, 2.94, 0.19 |
| Label | Label68 | ----------- |  |  |  | 5.18, 0.00, 0.56, 0.13 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.62, 0.11, 1.12, 0.20 |
| Label | Label51 | Total For:  |  |  |  | 0.03, 0.12, 0.73, 0.19 |
| ComboBox | Combo52 |  | ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.82, 0.12, 2.94, 0.19 |
| Label | Label69 | ----------- |  |  |  | 5.18, 0.00, 0.56, 0.13 |
| Line | Line85 |  |  |  |  | 0.04, 0.33, 7.38, 0.00 |

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
| TextBox | Text87 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.62, 0.12, 1.12, 0.20 |
| Label | Label88 | ----------- |  |  |  | 5.18, 0.00, 0.56, 0.13 |

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
