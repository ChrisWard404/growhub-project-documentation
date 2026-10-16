# Report: NMIS_PRODUCT_Projected_Charges_fred

**Caption:** NMIS Product Projected Income  
**Grouping/sorting:** `PARENT_ASSOCIATE`, `CLIENT_ASSOCIATE`, `CATEGORY_CODE`, `Species_Product_Cat_Code`, `Age_Class`, `Age_Class_Prod_Category_Class`, `CHARGE_PER_AMT`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Request (M) |  |  |  | 3.50, 1.36, 0.60, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 4.83, 1.19, 0.41, 0.50 |
| Label | Label111 | Net Inv (M) |  |  |  | 5.49, 1.19, 0.39, 0.50 |
| Label | Label112 | ___________________________________________________________________________________________________________ |  |  |  | 0.05, 1.64, 7.86, 0.22 |
| Label | Label149 | Sown For (M) |  |  |  | 4.31, 1.21, 0.41, 0.47 |
| Label | Label169 | Firm Order (M) |  |  |  | 6.08, 1.21, 0.47, 0.47 |
| TextBox | Text188 |  | ="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices" |  |  | 0.16, 0.60, 7.70, 0.25 |
| Label | Label190 | Chg/ Amt ($) |  |  |  | 6.71, 1.19, 0.39, 0.50 |
| Label | Label225 | Projected Charge   ($) |  |  |  | 7.15, 1.19, 0.70, 0.50 |
| ComboBox | PARENT_ASSOCIATE |  | PARENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [Associate] & ")" AS Assoc FROM NMIS_ASSOCIATES; |  | 2.21, 0.88, 3.75, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo232 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [Associate] & ")" AS Assoc FROM NMIS_ASSOCIATES; |  | 0.18, 0.00, 3.32, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.48, 0.04, 0.61, 0.17 |
| TextBox | Text97 |  | =Sum([GROSS_AMT]) |  |  | 4.71, 0.04, 0.58, 0.17 |
| TextBox | Text99 |  | =Sum([NET_AMT]) |  |  | 5.33, 0.04, 0.58, 0.17 |
| TextBox | Text141 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.12, 0.04, 0.55, 0.17 |
| TextBox | Combo135 |  | Age_Class_Prod_Category_Class |  |  | 0.48, 0.03, 2.20, 0.19 |
| TextBox | Text170 |  | =Sum([Firm_Order]) |  |  | 5.93, 0.04, 0.58, 0.17 |
| TextBox | Text192 |  | [CHARGE_PER_AMT] |  |  | 6.55, 0.04, 0.58, 0.17 |
| TextBox | Text193 |  | =Sum([CHARGE]) |  |  | 7.17, 0.04, 0.73, 0.17 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text228 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.49, 0.20, 0.61, 0.17 |
| TextBox | Text229 |  | =Sum([CHARGE]) |  |  | 7.18, 0.20, 0.73, 0.17 |
| Label | Label234 | Totals |  |  |  | 2.74, 0.19, 0.46, 0.19 |
| TextBox | Text244 |  | =Sum([GROSS_AMT]) |  |  | 4.72, 0.20, 0.58, 0.17 |
| TextBox | Text245 |  | =Sum([NET_AMT]) |  |  | 5.33, 0.20, 0.58, 0.17 |
| TextBox | Text246 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.12, 0.20, 0.55, 0.17 |
| TextBox | Text247 |  | =Sum([Firm_Order]) |  |  | 5.94, 0.20, 0.58, 0.17 |
| Label | Label252 | ________ |  |  |  | 3.46, 0.01, 0.64, 0.18 |
| Label | Label253 | ________ |  |  |  | 4.04, 0.01, 0.64, 0.18 |
| Label | Label254 | ________ |  |  |  | 4.66, 0.01, 0.64, 0.18 |
| Label | Label255 | ________ |  |  |  | 5.28, 0.01, 0.64, 0.18 |
| Label | Label256 | ________ |  |  |  | 5.89, 0.01, 0.64, 0.18 |
| Label | Label257 | _________ |  |  |  | 7.12, 0.01, 0.78, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.19, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.42, 0.19, 3.50, 0.18 |
| Label | Label113 | __________________________________________________________________________________________________________ |  |  |  | 0.10, 0.00, 7.79, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text160 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.50, 0.08, 0.61, 0.17 |
| TextBox | Text161 |  | =Sum([GROSS_AMT]) |  |  | 4.73, 0.08, 0.58, 0.17 |
| TextBox | Text162 |  | =Sum([NET_AMT]) |  |  | 5.35, 0.08, 0.58, 0.17 |
| TextBox | Text163 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.14, 0.08, 0.55, 0.17 |
| Line | Line164 |  |  |  |  | 3.52, 0.04, 0.60, 0.00 |
| Line | Line165 |  |  |  |  | 4.14, 0.04, 0.57, 0.00 |
| Line | Line166 |  |  |  |  | 4.75, 0.04, 0.58, 0.00 |
| Line | Line167 |  |  |  |  | 5.35, 0.04, 0.58, 0.00 |
| Label | Label168 | Totals |  |  |  | 3.09, 0.07, 0.46, 0.19 |
| TextBox | Text171 |  | =Sum([Firm_Order]) |  |  | 5.95, 0.08, 0.58, 0.17 |
| Line | Line172 |  |  |  |  | 5.96, 0.04, 0.58, 0.00 |
| TextBox | Text197 |  | =Sum([CHARGE]) |  |  | 7.18, 0.08, 0.73, 0.17 |
| Line | Line199 |  |  |  |  | 7.17, 0.04, 0.73, 0.00 |

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
