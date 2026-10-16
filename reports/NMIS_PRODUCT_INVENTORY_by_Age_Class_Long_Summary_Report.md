# Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report

**Grouping/sorting:** `CatCode`, `END_FY`, `DIVERSE`, `Age_Class`, `Inv_Type`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Request (M) |  |  |  | 4.89, 1.26, 0.60, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Report |  |  |  | 3.16, 0.55, 1.82, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 6.26, 1.09, 0.41, 0.50 |
| Label | Label111 | Est. Net (M) |  |  |  | 6.92, 1.09, 0.39, 0.50 |
| Label | Label149 | Sown For (M) |  |  |  | 5.74, 1.11, 0.41, 0.47 |
| Label | Label157 | Summary by Age Class |  |  |  | 3.15, 0.77, 1.88, 0.23 |
| Label | Label159 | Status |  |  |  | 2.39, 1.42, 1.60, 0.17 |
| Label | Label169 | Firm Order (M) |  |  |  | 7.51, 1.11, 0.47, 0.47 |
| TextBox | Text188 |  | ="CY 20" & Right$(Date(),2) |  |  | 3.17, 1.00, 1.83, 0.23 |
| Label | Label158 | Net Inventory Type: |  |  |  | 0.06, 0.90, 1.08, 0.15 |
| Label | Label192 | C = Count Only      S = Count and Size |  |  |  | 0.12, 1.05, 1.02, 0.33 |
| TextBox | Text193 | Selected For Like Client : | =nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Like_Client],"*") |  |  | 1.70, 0.20, 0.38, 0.00 |
| TextBox | Text195 | Selected For Like Begin FY : | =nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Begin_FY],"*") |  |  | 1.70, 0.36, 0.38, 0.00 |
| TextBox | Text197 | Selected For Like End  FY : | =nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![End_FY],"*") |  |  | 1.70, 0.53, 0.38, 0.00 |
| TextBox | Text199 | Selected For Like Species : | =nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Plntmstr_Symbol],"*") |  |  | 1.70, 0.70, 0.38, 0.00 |
| Line | Line209 |  |  |  |  | 0.02, 1.59, 7.96, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CatCode | B;Bareroot Plant;C;Container Plant;CCTR;Container Contract;BCTR;Bareroot Contract |  | 0.04, 0.00, 5.17, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | END_FY | End FY: | END_FY | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.71, 0.00, 0.00, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo208 |  | DIVERSE | 0;Traditional Species;-1;Non-Traditional Species |  | 0.05, 0.00, 3.04, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 4.88, 0.02, 0.61, 0.17 |
| TextBox | Text97 |  | =Sum([GROSS_INV]) |  |  | 6.14, 0.02, 0.58, 0.17 |
| TextBox | Text99 |  | =Sum([NET_INV]) |  |  | 6.76, 0.02, 0.58, 0.17 |
| TextBox | Text141 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 5.50, 0.02, 0.60, 0.17 |
| TextBox | Combo135 |  | Age_Class |  |  | 0.08, 0.00, 2.23, 0.19 |
| TextBox | Text156 |  | =IIf(Count([ACTIVITY_DATE])>0,Count([ACTIVITY_DATE]),[Lots_Not_Inventoried]) & " of " & [Age_Class_Total_Lots] & IIf([Age_Class_Total_Lots]>1," Lots"," Lot") & IIf(Count([ACTIVITY_DATE])=0," Not") & " Inventoried " & [inv_type] |  |  | 2.36, 0.00, 2.51, 0.19 |
| TextBox | Text170 |  | =Sum([Firm_Order]) |  |  | 7.36, 0.02, 0.58, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class_Total_Lots |  | =Count([NMIS_AGREEMENT_LOTS_ID]) |  |  | 0.25, 0.00, 1.86, 0.01 |
| Line | Line191 |  |  |  |  | 0.08, 0.02, 7.88, 0.00 |
| TextBox | Lots_Not_Inventoried |  | =[Age_Class_Total_Lots]-[Lots_Inventoried] |  |  | 4.98, 0.01, 2.51, 0.00 |
| TextBox | Lots_Inventoried |  | =Count([ACTIVITY_DATE]) |  |  | 2.31, 0.01, 2.51, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text201 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 4.86, 0.02, 0.61, 0.17 |
| TextBox | Text202 |  | =Sum([GROSS_INV]) |  |  | 6.13, 0.02, 0.58, 0.17 |
| TextBox | Text203 |  | =Sum([NET_INV]) |  |  | 6.75, 0.02, 0.58, 0.17 |
| TextBox | Text204 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 5.49, 0.02, 0.60, 0.17 |
| Label | Label205 | Totals |  |  |  | 4.24, 0.00, 0.46, 0.19 |
| TextBox | Text206 |  | =Sum([Firm_Order]) |  |  | 7.35, 0.02, 0.58, 0.17 |
| ComboBox | DIVERSE |  | DIVERSE | 0;Traditional Species;-1;Non-Traditional Species |  | 1.17, 0.00, 3.04, 0.20 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text174 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 4.88, 0.02, 0.61, 0.17 |
| TextBox | Text175 |  | =Sum([GROSS_INV]) |  |  | 6.14, 0.02, 0.58, 0.17 |
| TextBox | Text176 |  | =Sum([NET_INV]) |  |  | 6.76, 0.02, 0.58, 0.17 |
| TextBox | Text177 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 5.50, 0.02, 0.60, 0.17 |
| Line | Line178 |  |  |  |  | 4.92, 0.00, 0.60, 0.00 |
| Line | Line179 |  |  |  |  | 5.54, 0.00, 0.57, 0.00 |
| Line | Line180 |  |  |  |  | 6.15, 0.00, 0.58, 0.00 |
| Line | Line181 |  |  |  |  | 6.75, 0.00, 0.58, 0.00 |
| Label | Label182 | Totals |  |  |  | 4.25, 0.00, 0.46, 0.19 |
| TextBox | Text183 |  | =Sum([Firm_Order]) |  |  | 7.36, 0.02, 0.58, 0.17 |
| Line | Line184 |  |  |  |  | 7.35, 0.00, 0.58, 0.00 |
| ComboBox | Combo185 |  | BorC | B;Bareroot Plant;C;Container Plant |  | 1.18, 0.00, 3.04, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.02, 0.02, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.42, 0.02, 3.50, 0.18 |
| Line | Line183 |  |  |  |  | 0.02, 0.00, 7.96, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text160 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 4.90, 0.08, 0.61, 0.17 |
| TextBox | Text161 |  | =Sum([GROSS_INV]) |  |  | 6.16, 0.08, 0.58, 0.17 |
| TextBox | Text162 |  | =Sum([NET_INV]) |  |  | 6.78, 0.08, 0.58, 0.17 |
| TextBox | Text163 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 5.51, 0.08, 0.61, 0.17 |
| Line | Line164 |  |  |  |  | 4.90, 0.04, 0.60, 0.00 |
| Line | Line165 |  |  |  |  | 5.56, 0.04, 0.57, 0.00 |
| Line | Line166 |  |  |  |  | 6.17, 0.04, 0.58, 0.00 |
| Line | Line167 |  |  |  |  | 6.77, 0.04, 0.58, 0.00 |
| Label | Label168 | Totals |  |  |  | 4.27, 0.07, 0.46, 0.19 |
| TextBox | Text171 |  | =Sum([Firm_Order]) |  |  | 7.38, 0.08, 0.58, 0.17 |
| Line | Line172 |  |  |  |  | 7.38, 0.04, 0.58, 0.00 |

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
