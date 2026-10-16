# Report: NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_W_Parent

**Caption:** NMIS_Plant_Inventory  
**Grouping/sorting:** `Region`, `END_FY`, `Reporting_Parent`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Request (M) |  |  |  | 5.05, 1.40, 0.60, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Report |  |  |  | 3.16, 0.55, 1.82, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross Inv  (M) |  |  |  | 6.40, 1.25, 0.42, 0.47 |
| Label | Label111 | Est. Net (M) |  |  |  | 7.03, 1.25, 0.43, 0.47 |
| Label | Label112 | __________________________________________________________________________________________________________ |  |  |  | 0.18, 1.70, 7.78, 0.20 |
| Label | Label149 | Sown For (M) |  |  |  | 5.87, 1.25, 0.41, 0.47 |
| Label | Label157 | Summary by Ending Fiscal Year |  |  |  | 2.79, 0.83, 2.58, 0.23 |
| Label | Label159 | Status |  |  |  | 2.30, 1.55, 2.00, 0.17 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Region |  | Region |  |  | 0.00, 0.02, 0.78, 0.25 |
| ComboBox | Text170 |  | Region | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.87, 0.02, 5.42, 0.25 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text174 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.01, 0.03, 0.61, 0.17 |
| TextBox | Text175 |  | =Sum([GROSS_INV]) |  |  | 6.24, 0.03, 0.58, 0.17 |
| TextBox | Text176 |  | =Sum([NET_INV]) |  |  | 6.86, 0.03, 0.58, 0.17 |
| TextBox | Text177 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 5.65, 0.03, 0.55, 0.17 |
| ComboBox | PARENT_ASSOCIATE |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [associate] & " " & [ASSOCIATE_NAME] AS an FROM NMIS_ASSOCIATES; |  | 0.25, 0.00, 4.46, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.01, 0.04, 0.61, 0.17 |
| TextBox | Text97 |  | =Sum([GROSS_INV]) |  |  | 6.24, 0.04, 0.58, 0.17 |
| TextBox | Text99 |  | =Sum([NET_INV]) |  |  | 6.86, 0.04, 0.58, 0.17 |
| TextBox | Text141 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 5.65, 0.04, 0.55, 0.17 |
| TextBox | Combo135 |  | ="Ending Fiscal Year: " & [END_FY] |  |  | 0.54, 0.03, 1.89, 0.19 |
| TextBox | Text156 |  | =Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried" |  |  | 2.48, 0.03, 2.51, 0.19 |
| Line | Line178 |  |  |  |  | 0.24, 0.25, 7.71, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line172 |  |  |  |  | 0.25, 0.04, 7.71, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.19, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.44, 0.19, 3.50, 0.18 |
| Label | Label113 | _________________________________________________________________________________________________________ |  |  |  | 0.23, 0.00, 7.72, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text160 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.01, 0.08, 0.61, 0.17 |
| TextBox | Text161 |  | =Sum([GROSS_INV]) |  |  | 6.24, 0.08, 0.58, 0.17 |
| TextBox | Text162 |  | =Sum([NET_INV]) |  |  | 6.86, 0.08, 0.58, 0.17 |
| TextBox | Text163 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 5.65, 0.08, 0.55, 0.17 |
| Line | Line164 |  |  |  |  | 5.04, 0.04, 0.60, 0.00 |
| Line | Line165 |  |  |  |  | 5.67, 0.04, 0.57, 0.00 |
| Line | Line166 |  |  |  |  | 6.28, 0.04, 0.58, 0.00 |
| Line | Line167 |  |  |  |  | 6.88, 0.04, 0.58, 0.00 |
| Label | Label168 | Totals |  |  |  | 4.38, 0.07, 0.46, 0.19 |

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

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```
