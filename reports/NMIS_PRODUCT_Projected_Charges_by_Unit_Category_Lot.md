# Report: NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot

**Caption:** NMIS Product Projected Charges  
**Grouping/sorting:** `Reporting_Parent`, `CLIENT_ASSOCIATE`, `CATEGORY_CODE`, `Species_Product_Cat_Code`, `Age_Class`, `Age_Class_Prod_Category_Class`, `CHARGE_PER_AMT`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Request (M) |  |  |  | 3.55, 1.36, 0.60, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 4.88, 1.19, 0.41, 0.50 |
| Label | Label111 | Net Inv (M) |  |  |  | 5.54, 1.19, 0.39, 0.50 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.05, 1.64, 7.93, 0.22 |
| Label | Label149 | Sown For (M) |  |  |  | 4.37, 1.21, 0.41, 0.47 |
| Label | Label169 | Firm Order (M) |  |  |  | 6.13, 1.21, 0.47, 0.47 |
| TextBox | Text188 |  | ="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices" |  |  | 0.00, 0.60, 7.96, 0.25 |
| Label | Label190 | Chg/ Amt ($) |  |  |  | 6.76, 1.19, 0.39, 0.50 |
| Label | Label225 | ProjectedCharges ($) |  |  |  | 7.30, 1.19, 0.62, 0.50 |
| ComboBox | PARENT_ASSOCIATE |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [Associate] & ")" AS Assoc FROM NMIS_ASSOCIATES; |  | 2.21, 0.88, 3.75, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo232 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [Associate] & ")" AS Assoc FROM NMIS_ASSOCIATES; |  | 0.08, 0.00, 3.42, 0.23 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class_Header |  | =[Age_Class_Prod_Category_Class] & " " & [No_STD_Chg] |  |  | 0.12, 0.00, 3.91, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text235 |  | [SumOfAMOUNT_REQUESTED] |  |  | 3.53, 0.00, 0.61, 0.18 |
| TextBox | Text236 |  | [GROSS_AMT] |  |  | 4.76, 0.00, 0.58, 0.18 |
| TextBox | Text237 |  | [NET_AMT] |  |  | 5.38, 0.00, 0.58, 0.18 |
| TextBox | Text238 |  | [Actual_Sow_Calculated2] |  |  | 4.17, 0.00, 0.55, 0.18 |
| TextBox | Text239 |  | [Firm_Order] |  |  | 5.99, 0.00, 0.58, 0.18 |
| TextBox | Text240 |  | [CHARGE_PER_AMT] |  |  | 6.60, 0.00, 0.58, 0.18 |
| TextBox | Text241 |  | [CHARGE] |  |  | 7.23, 0.00, 0.73, 0.18 |
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | Lot_ID_SOURCE |  |  | 0.17, 0.00, 3.29, 0.18 |
| TextBox | No_STD_Chg |  | No_STD_Chg |  |  | 6.62, 0.00, 1.33, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Combo135 |  | Age_Class_Prod_Category_Class |  |  | 0.48, 0.03, 2.20, 0.19 |
| TextBox | Text192 |  | [CHARGE_PER_AMT] |  |  | 6.60, 0.04, 0.58, 0.17 |
| TextBox | Text264 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.53, 0.03, 0.61, 0.17 |
| TextBox | Text265 |  | =Sum([GROSS_AMT]) |  |  | 4.76, 0.03, 0.58, 0.17 |
| TextBox | Text266 |  | =Sum([NET_AMT]) |  |  | 5.38, 0.03, 0.58, 0.17 |
| TextBox | Text267 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.17, 0.03, 0.55, 0.17 |
| TextBox | Text268 |  | =Sum([Firm_Order]) |  |  | 5.99, 0.03, 0.58, 0.17 |
| TextBox | Text269 |  | =Sum([CHARGE]) |  |  | 7.23, 0.03, 0.73, 0.17 |
| Line | Line270 |  |  |  |  | 3.56, 0.00, 0.60, 0.00 |
| Line | Line271 |  |  |  |  | 4.19, 0.00, 0.57, 0.00 |
| Line | Line272 |  |  |  |  | 4.80, 0.00, 0.58, 0.00 |
| Line | Line273 |  |  |  |  | 5.40, 0.00, 0.58, 0.00 |
| Line | Line274 |  |  |  |  | 6.00, 0.00, 0.58, 0.00 |
| Line | Line275 |  |  |  |  | 7.23, 0.00, 0.73, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text174 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.53, 0.06, 0.61, 0.17 |
| TextBox | Text175 |  | =Sum([GROSS_AMT]) |  |  | 4.76, 0.06, 0.58, 0.17 |
| TextBox | Text176 |  | =Sum([NET_AMT]) |  |  | 5.38, 0.06, 0.58, 0.17 |
| TextBox | Text177 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.17, 0.06, 0.55, 0.17 |
| Label | Label182 | Totals |  |  |  | 2.75, 0.05, 0.46, 0.19 |
| TextBox | Text183 |  | =Sum([Firm_Order]) |  |  | 5.99, 0.06, 0.58, 0.17 |
| ComboBox | Combo185 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 0.54, 0.04, 2.10, 0.20 |
| TextBox | Text195 |  | =Sum([CHARGE]) |  |  | 7.23, 0.06, 0.73, 0.17 |
| Line | Line200 |  |  |  |  | 3.56, 0.03, 0.60, 0.00 |
| Line | Line201 |  |  |  |  | 4.19, 0.03, 0.57, 0.00 |
| Line | Line202 |  |  |  |  | 4.80, 0.03, 0.58, 0.00 |
| Line | Line203 |  |  |  |  | 5.40, 0.03, 0.58, 0.00 |
| Line | Line204 |  |  |  |  | 6.00, 0.03, 0.58, 0.00 |
| Line | Line205 |  |  |  |  | 7.23, 0.03, 0.73, 0.00 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label234 | Totals |  |  |  | 2.74, 0.00, 0.46, 0.19 |
| TextBox | Text252 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.52, 0.03, 0.61, 0.17 |
| TextBox | Text253 |  | =Sum([GROSS_AMT]) |  |  | 4.75, 0.03, 0.58, 0.17 |
| TextBox | Text254 |  | =Sum([NET_AMT]) |  |  | 5.37, 0.03, 0.58, 0.17 |
| TextBox | Text255 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.16, 0.03, 0.55, 0.17 |
| TextBox | Text256 |  | =Sum([Firm_Order]) |  |  | 5.98, 0.03, 0.58, 0.17 |
| TextBox | Text257 |  | =Sum([CHARGE]) |  |  | 7.22, 0.03, 0.73, 0.17 |
| Line | Line258 |  |  |  |  | 3.55, 0.00, 0.60, 0.00 |
| Line | Line259 |  |  |  |  | 4.18, 0.00, 0.57, 0.00 |
| Line | Line260 |  |  |  |  | 4.79, 0.00, 0.58, 0.00 |
| Line | Line261 |  |  |  |  | 5.39, 0.00, 0.58, 0.00 |
| Line | Line262 |  |  |  |  | 5.99, 0.00, 0.58, 0.00 |
| Line | Line263 |  |  |  |  | 7.22, 0.00, 0.73, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.19, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.44, 0.19, 3.50, 0.18 |
| Label | Label113 | ___________________________________________________________________________________________________________ |  |  |  | 0.10, 0.00, 7.85, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text160 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.55, 0.08, 0.61, 0.17 |
| TextBox | Text161 |  | =Sum([GROSS_AMT]) |  |  | 4.79, 0.08, 0.58, 0.17 |
| TextBox | Text162 |  | =Sum([NET_AMT]) |  |  | 5.40, 0.08, 0.58, 0.17 |
| TextBox | Text163 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.19, 0.08, 0.55, 0.17 |
| Line | Line164 |  |  |  |  | 3.57, 0.04, 0.60, 0.00 |
| Line | Line165 |  |  |  |  | 4.20, 0.04, 0.57, 0.00 |
| Line | Line166 |  |  |  |  | 4.80, 0.04, 0.58, 0.00 |
| Line | Line167 |  |  |  |  | 5.40, 0.04, 0.58, 0.00 |
| Label | Label168 | Grand Totals |  |  |  | 2.65, 0.06, 0.91, 0.20 |
| TextBox | Text171 |  | =Sum([Firm_Order]) |  |  | 6.01, 0.08, 0.58, 0.17 |
| Line | Line172 |  |  |  |  | 6.01, 0.04, 0.58, 0.00 |
| TextBox | Text197 |  | =Sum([CHARGE]) |  |  | 7.23, 0.08, 0.73, 0.17 |
| Line | Line199 |  |  |  |  | 7.23, 0.04, 0.73, 0.00 |

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
