# Report: NMIS_PRODUCT_INVENTORY_SUMARY2_Report

**Caption:** NMIS_Plant_Inventory  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORY_Query
```

**Grouping/sorting:** `END_FY`, `SPECIES_PRODUCT_DESC`, `CLIENT_ASSOCIATE`, `PLNTMSTR_SYMBOL`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Agreement (M) |  |  |  | 4.50, 1.04, 0.77, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Summary Report |  |  |  | 2.76, 0.55, 2.62, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross Inventory (M) |  |  |  | 5.99, 0.89, 0.68, 0.47 |
| Label | Label111 | Net Inventory (M) |  |  |  | 6.68, 0.89, 0.68, 0.47 |
| Label | Label112 | _________________________________________________________________________________________________________ |  |  |  | 0.07, 1.34, 7.92, 0.19 |
| Label | Label149 | Sown For (M) |  |  |  | 5.28, 1.04, 0.71, 0.33 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Combo123 |  | ="*Ordered for FY " & [END_FY] & "*" |  |  | 0.05, 0.09, 1.87, 0.20 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.52, 0.01, 0.75, 0.17 |
| TextBox | Text93 |  | =Sum([GROSS_INV]) |  |  | 5.99, 0.01, 0.67, 0.17 |
| TextBox | Text95 |  | =Sum([NET_INV]) |  |  | 6.73, 0.01, 0.65, 0.17 |
| TextBox | Text139 |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.38, 0.01, 0.58, 0.17 |
| TextBox | Combo135 |  | SPECIES_PRODUCT_DESC |  |  | 0.08, 0.00, 1.83, 0.19 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 3.68, 0.01, 0.74, 0.00 |
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 2.04, 0.00, 1.54, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text155 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.51, 0.09, 0.75, 0.17 |
| TextBox | Text156 |  | =Sum([GROSS_INV]) |  |  | 5.98, 0.09, 0.67, 0.17 |
| TextBox | Text157 |  | =Sum([NET_INV]) |  |  | 6.72, 0.09, 0.65, 0.17 |
| TextBox | Text158 |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.38, 0.09, 0.58, 0.17 |
| TextBox | Text159 |  | ="Totals for: " & [SPECIES_PRODUCT_DESC] |  |  | 0.19, 0.08, 1.83, 0.19 |

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
