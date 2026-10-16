# Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Report2

**Caption:** NMIS_Plant_Inventory  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query
```

**Grouping/sorting:** `Age_Class`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Begin FY |  |  |  | 3.33, 1.40, 0.42, 0.33 |
| Label | TOTAL_REQUEST_Label | Request (M) |  |  |  | 3.85, 1.40, 0.60, 0.33 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 1.66, 1.55, 0.47, 0.17 |
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.17, 1.43, 0.75, 0.30 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Report |  |  |  | 3.16, 0.55, 1.82, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross Inv (M) |  |  |  | 5.02, 1.25, 0.48, 0.47 |
| Label | Label111 | Net Inv (M) |  |  |  | 5.60, 1.25, 0.47, 0.47 |
| Label | Label112 | _________________________________________________________________________________________________________ |  |  |  | 0.17, 1.70, 7.77, 0.19 |
| Label | Label118 | Lots without totals will be inventoried at a later date. |  |  |  | 0.42, 0.12, 1.30, 0.28 |
| Label | Label119 | Note: |  |  |  | 0.01, 0.12, 0.40, 0.19 |
| Label | Label122 | Location |  |  |  | 7.24, 1.55, 0.69, 0.17 |
| Label | Label149 | Sown For (M) |  |  |  | 4.50, 1.25, 0.41, 0.47 |
| Label | Label150 | Gross Density |  |  |  | 6.71, 1.40, 0.58, 0.33 |
| Label | Label155 | Inv Date |  |  |  | 6.26, 1.40, 0.47, 0.33 |
| TextBox | ASSOCIATE |  | Age_Class |  |  | 1.67, 0.85, 4.79, 0.32 |
| Label | Label158 | Net Inventory Type: |  |  |  | 0.41, 0.44, 1.08, 0.15 |
| Label | Label159 | C = Count Only      S = Count and Size |  |  |  | 0.47, 0.59, 1.02, 0.33 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Actual_Sown_Calculated |  | Actual_Sow_Calculated2 |  |  | 4.38, 0.00, 0.52, 0.15 |
| ComboBox | BEGIN_FY |  | BEGIN_FY | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 3.39, 0.00, 0.45, 0.15 |
| TextBox | TOTAL_REQUEST |  | SumOfAMOUNT_REQUESTED |  |  | 3.83, 0.00, 0.49, 0.15 |
| TextBox | GROSS_INV |  | GROSS_INV |  |  | 4.96, 0.00, 0.53, 0.15 |
| TextBox | NET_INV |  | NET_INV |  |  | 5.53, 0.00, 0.55, 0.15 |
| ComboBox | Text120 |  | CN | SELECT [Agreement_Lot_Max_N_Min_Field_Location].[AGREEMENT_LOT_CN], [MinOfLOCATION] & "-" & [MaxOfLOCATION] AS Location FROM Agreement_Lot_Max_N_Min_Field_Location;  |  | 7.18, 0.00, 0.79, 0.15 |
| TextBox | Text138 |  | ID_SOURCE |  |  | 0.23, 0.00, 3.15, 0.15 |
| TextBox | LastOfDensity |  | Density |  |  | 6.78, 0.00, 0.38, 0.15 |
| TextBox | MaxOfACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.28, 0.00, 0.47, 0.15 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 6.10, 0.01, 0.16, 0.14 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.71, 0.11, 0.61, 0.17 |
| Label | Label55 | Total For:  |  |  |  | 0.38, 0.08, 0.62, 0.19 |
| Label | Label82 | ----------- |  |  |  | 3.76, 0.00, 0.56, 0.13 |
| TextBox | Text97 |  | =Sum([GROSS_INV]) |  |  | 4.91, 0.10, 0.58, 0.17 |
| Label | Label98 | ----------- |  |  |  | 4.93, 0.00, 0.56, 0.13 |
| TextBox | Text99 |  | =Sum([NET_INV]) |  |  | 5.50, 0.10, 0.58, 0.17 |
| Label | Label100 | ----------- |  |  |  | 5.53, 0.00, 0.56, 0.13 |
| TextBox | Text141 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.35, 0.10, 0.55, 0.17 |
| Label | Label142 | ----------- |  |  |  | 4.37, 0.00, 0.53, 0.13 |
| TextBox | Combo135 |  | Age_Class |  |  | 1.02, 0.08, 2.65, 0.19 |
| TextBox | Text156 |  | =Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") |  |  | 6.42, 0.08, 1.04, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.19, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.44, 0.19, 3.50, 0.18 |
| Label | Label113 | ________________________________________________________________________________________________________ |  |  |  | 0.23, 0.00, 7.72, 0.19 |

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
