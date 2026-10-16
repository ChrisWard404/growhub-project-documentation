# Report: NMIS_PRODUCT_INVENTORY_Summary_Report

**Caption:** NMIS_Plant_Inventory  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORY_Query
```

**Grouping/sorting:** `Region`, `END_FY`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Agreement (M) |  |  |  | 3.77, 1.40, 0.77, 0.33 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 0.90, 1.55, 1.89, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.06, 1.43, 0.75, 0.30 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Summary Report |  |  |  | 2.76, 0.55, 2.62, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross Inventory (M) |  |  |  | 5.27, 1.25, 0.68, 0.47 |
| Label | Label111 | Net Inventory (M) |  |  |  | 5.96, 1.25, 0.68, 0.47 |
| Label | Label112 | _________________________________________________________________________________________________________ |  |  |  | 0.07, 1.70, 7.92, 0.19 |
| Label | Label149 | Sown For (M) |  |  |  | 4.55, 1.40, 0.71, 0.33 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo152 |  | Region | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES; |  | 0.12, 0.13, 2.65, 0.23 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text125 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 3.73, 0.11, 0.75, 0.17 |
| Label | Label126 | Total For:  |  |  |  | 0.12, 0.11, 0.62, 0.17 |
| Label | Label128 | ----------- |  |  |  | 3.92, 0.00, 0.56, 0.13 |
| TextBox | Text129 |  | =Sum([GROSS_INV]) |  |  | 5.20, 0.10, 0.67, 0.17 |
| Label | Label130 | ----------- |  |  |  | 5.31, 0.00, 0.56, 0.13 |
| TextBox | Text131 |  | =Sum([NET_INV]) |  |  | 5.94, 0.10, 0.65, 0.17 |
| Label | Label132 | ----------- |  |  |  | 6.03, 0.00, 0.56, 0.13 |
| TextBox | Text133 |  | ="*Ordered for FY " & [END_FY] & "*" |  |  | 0.77, 0.11, 2.65, 0.17 |
| TextBox | Text143 |  | =Sum([Actual_Sow_Calculated]) |  |  | 4.59, 0.10, 0.58, 0.17 |
| Label | Label144 | ----------- |  |  |  | 4.62, 0.00, 0.56, 0.13 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 3.58, 0.11, 0.90, 0.17 |
| Label | Label51 | Total For:  |  |  |  | 0.12, 0.12, 0.62, 0.17 |
| ComboBox | Combo52 |  | Region | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES; |  | 0.77, 0.12, 2.65, 0.00 |
| Label | Label69 | ----------- |  |  |  | 3.92, 0.00, 0.56, 0.13 |
| TextBox | Text105 |  | =Sum([GROSS_INV]) |  |  | 5.20, 0.11, 0.67, 0.17 |
| Label | Label106 | ----------- |  |  |  | 5.31, 0.00, 0.56, 0.13 |
| TextBox | Text107 |  | =Sum([NET_INV]) |  |  | 5.95, 0.11, 0.64, 0.17 |
| Label | Label108 | ----------- |  |  |  | 6.03, 0.00, 0.56, 0.13 |
| TextBox | Text147 |  | =Sum([Actual_Sow_Calculated]) |  |  | 4.53, 0.10, 0.64, 0.17 |
| Label | Label148 | ----------- |  |  |  | 4.62, 0.00, 0.56, 0.13 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.19, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.44, 0.19, 3.50, 0.18 |
| Label | Label113 | ________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.88, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, "Client Billings by Project"
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```
