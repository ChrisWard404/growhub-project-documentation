# Report: NMIS_PRODUCT_Projected_Income_by_lot

**Caption:** NMIS Product Projected Income by Lot  
**Record source:**

```sql
NMIS_PRODUCT_Projected_Income Query
```

**Grouping/sorting:** `CATEGORY_CODE`, `Species_Product_Cat_Code`, `Age_Class`, `Age_Class_Prod_Category_Class`, `CHARGE_PER_AMT`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Request (M) |  |  |  | 2.92, 1.36, 0.60, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.72, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.50, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.50, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 4.25, 1.19, 0.41, 0.50 |
| Label | Label111 | Net Inv (M) |  |  |  | 4.91, 1.19, 0.39, 0.50 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.05, 1.64, 7.95, 0.22 |
| Label | Label149 | Sown For (M) |  |  |  | 3.73, 1.21, 0.41, 0.47 |
| Label | Label169 | Firm Order (M) |  |  |  | 5.50, 1.21, 0.47, 0.47 |
| TextBox | Text188 |  | ="Projected income for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices" |  |  | 0.05, 0.60, 7.96, 0.25 |
| Label | Label190 | Chg/ Amt ($) |  |  |  | 6.13, 1.19, 0.39, 0.50 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 1.45, 0.90, 5.17, 0.21 |
| Label | Label209 |                $ Per Sq Ft |  |  |  | 7.46, 1.21, 0.51, 0.47 |
| Label | Label225 | Projected Income ($) |  |  |  | 6.67, 1.19, 0.62, 0.50 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text208 |  | Age_Class_Prod_Category_Class |  |  | 0.06, 0.01, 3.56, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Actual_Sown_Calculated |  | Actual_Sow_Calculated2 |  |  | 3.54, 0.00, 0.52, 0.15 |
| TextBox | TOTAL_REQUEST |  | SumOfAMOUNT_REQUESTED |  |  | 3.01, 0.00, 0.49, 0.15 |
| TextBox | GROSS |  | GROSS_INV |  |  | 4.12, 0.00, 0.53, 0.15 |
| TextBox | NET_INV |  | Net_Inv |  |  | 4.69, 0.00, 0.59, 0.15 |
| TextBox | Text138 |  | AgLotID_Source |  |  | 0.00, 0.00, 3.18, 0.15 |
| TextBox | CHARGE_PER_AMT |  | [CHARGE_PER_AMT] |  |  | 6.13, 0.00, 0.49, 0.15 |
| TextBox | Firm_Order |  | [Firm_Order] |  |  | 5.61, 0.00, 0.47, 0.15 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 5.28, 0.00, 0.12, 0.15 |
| TextBox | Shortage |  | =IIf([Net_Inv]<[TOTAL_REQUEST],"*","") |  |  | 5.40, 0.00, 0.18, 0.15 |
| TextBox | CHARGE |  | [CHARGE] |  |  | 6.64, 0.00, 0.69, 0.14 |
| TextBox | Chg_PSF |  | Chg_PSF |  |  | 7.35, 0.00, 0.62, 0.14 |
| TextBox | No_STD_Chg |  | No_STD_Chg |  |  | 6.12, 0.00, 1.21, 0.15 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 2.90, 0.04, 0.61, 0.17 |
| TextBox | Text97 |  | =Sum([GROSS_INV]) |  |  | 4.13, 0.04, 0.58, 0.17 |
| TextBox | Text99 |  | =Sum([NET_INV]) |  |  | 4.75, 0.04, 0.58, 0.17 |
| TextBox | Text141 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 3.54, 0.04, 0.55, 0.17 |
| TextBox | Text170 |  | =Sum([Firm_Order]) |  |  | 5.50, 0.04, 0.58, 0.17 |
| TextBox | Text192 |  | [CHARGE_PER_AMT] |  |  | 6.10, 0.04, 0.52, 0.17 |
| TextBox | Text193 |  | =Sum([CHARGE]) |  |  | 6.63, 0.04, 0.70, 0.17 |
| TextBox | Text156 |  | =Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") |  |  | 1.99, 0.03, 0.87, 0.19 |
| TextBox | Text211 |  | =Sum([charge])/Sum([Area]) |  |  | 7.34, 0.04, 0.64, 0.17 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text174 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 2.90, 0.06, 0.61, 0.17 |
| TextBox | Text175 |  | =Sum([GROSS_INV]) |  |  | 4.13, 0.06, 0.58, 0.17 |
| TextBox | Text176 |  | =Sum([NET_INV]) |  |  | 4.75, 0.06, 0.58, 0.17 |
| TextBox | Text177 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 3.54, 0.06, 0.55, 0.17 |
| Label | Label182 | Totals |  |  |  | 2.44, 0.05, 0.46, 0.19 |
| TextBox | Text183 |  | =Sum([Firm_Order]) |  |  | 5.50, 0.06, 0.58, 0.17 |
| ComboBox | Combo185 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 0.00, 0.04, 2.42, 0.20 |
| TextBox | Text195 |  | =Sum([CHARGE]) |  |  | 6.60, 0.06, 0.73, 0.17 |
| Line | Line200 |  |  |  |  | 2.93, 0.03, 0.60, 0.00 |
| Line | Line201 |  |  |  |  | 3.55, 0.03, 0.57, 0.00 |
| Line | Line202 |  |  |  |  | 4.16, 0.03, 0.58, 0.00 |
| Line | Line203 |  |  |  |  | 4.76, 0.03, 0.58, 0.00 |
| Line | Line204 |  |  |  |  | 5.50, 0.03, 0.58, 0.00 |
| Line | Line205 |  |  |  |  | 6.60, 0.03, 0.73, 0.00 |
| TextBox | Text212 |  | =Sum([charge])/Sum([Area]) |  |  | 7.31, 0.06, 0.67, 0.17 |
| Line | Line213 |  |  |  |  | 7.31, 0.03, 0.67, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.19, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.50, 0.19, 3.50, 0.18 |
| Label | Label113 | ___________________________________________________________________________________________________________ |  |  |  | 0.10, 0.00, 7.85, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text160 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 2.92, 0.08, 0.61, 0.17 |
| TextBox | Text161 |  | =Sum([GROSS_INV]) |  |  | 4.15, 0.08, 0.58, 0.17 |
| TextBox | Text162 |  | =Sum([NET_INV]) |  |  | 4.77, 0.08, 0.58, 0.17 |
| TextBox | Text163 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 3.56, 0.08, 0.55, 0.17 |
| Line | Line164 |  |  |  |  | 2.93, 0.04, 0.60, 0.00 |
| Line | Line165 |  |  |  |  | 3.55, 0.04, 0.57, 0.00 |
| Line | Line166 |  |  |  |  | 4.16, 0.04, 0.58, 0.00 |
| Line | Line167 |  |  |  |  | 4.76, 0.04, 0.58, 0.00 |
| Label | Label168 | Totals |  |  |  | 2.46, 0.07, 0.46, 0.19 |
| TextBox | Text171 |  | =Sum([Firm_Order]) |  |  | 5.50, 0.08, 0.58, 0.17 |
| Line | Line172 |  |  |  |  | 5.50, 0.04, 0.58, 0.00 |
| TextBox | Text197 |  | =Sum([CHARGE]) |  |  | 6.60, 0.08, 0.73, 0.17 |
| Line | Line199 |  |  |  |  | 6.60, 0.04, 0.73, 0.00 |
| TextBox | Text214 |  | =Sum([charge])/Sum([Area]) |  |  | 7.31, 0.08, 0.67, 0.17 |
| Line | Line215 |  |  |  |  | 7.31, 0.04, 0.67, 0.00 |

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

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```
