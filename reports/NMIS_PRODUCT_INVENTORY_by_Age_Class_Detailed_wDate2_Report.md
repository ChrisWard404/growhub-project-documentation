# Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report

**Grouping/sorting:** `BorC`, `Age_Class`, `PLNTMSTR_SYMBOL`, `LastOfCLIENT_ASSOCIATE`, `SOURCE`, `NMIS_AGREEMENT_LOTS_ID`  
**Subforms/subreports:** `Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Req (M) |  |  |  | 4.22, 1.60, 0.47, 0.33 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Report |  |  |  | 3.16, 0.55, 1.82, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 5.38, 1.43, 0.41, 0.50 |
| Label | Label111 | Est. Net  (M) |  |  |  | 6.01, 1.43, 0.39, 0.50 |
| Label | Label149 | Sown For (M) |  |  |  | 4.84, 1.45, 0.37, 0.47 |
| Label | Label157 | Summary by Age Class |  |  |  | 3.15, 0.77, 1.88, 0.23 |
| Label | Label169 | Inv Date |  |  |  | 6.67, 1.59, 0.32, 0.33 |
| TextBox | Text188 |  | ="FY " & [Forms]![Switchboard]![FY_For_Reports] |  |  | 3.17, 1.00, 1.83, 0.23 |
| Line | Line197 |  |  |  |  | 0.01, 1.93, 7.83, 0.00 |
| Label | Label198 | Agreement Lot Id |  |  |  | 0.09, 1.60, 0.83, 0.33 |
| Label | Label199 |     Source |  |  |  | 1.05, 1.60, 0.54, 0.33 |
| ComboBox | CATEGORY_CODE |  | BorC | B;Bareroot Plant;C;Container Plant |  | 1.54, 1.22, 5.17, 0.21 |
| Label | Label160 | * = Potential Net Shortage |  |  |  | 6.46, 0.83, 1.39, 0.16 |
| Label | Label201 |       Location |  |  |  | 7.12, 1.58, 0.70, 0.33 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text196 |  | Age_Class |  |  | 0.00, 0.02, 3.96, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Total_Request |  | [SumOfAMOUNT_REQUESTED] |  |  | 4.15, 0.00, 0.54, 0.17 |
| TextBox | GROSS_INV |  | [GROSS_INV] |  |  | 5.26, 0.00, 0.50, 0.17 |
| TextBox | Net_Inv |  | [NET_INV] |  |  | 5.81, 0.00, 0.50, 0.17 |
| TextBox | Text193 |  | [Actual_Sow_Calculated2] |  |  | 4.76, 0.00, 0.52, 0.17 |
| TextBox | ID_SOURCE |  | ID_SOURCE |  |  | 0.05, 0.00, 4.11, 0.18 |
| TextBox | Shortage |  | =IIf([Net_Inv]<[TOTAL_REQUEST],"*","") |  |  | 6.46, 0.00, 0.14, 0.18 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 6.32, 0.00, 0.14, 0.14 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.58, 0.00, 0.52, 0.18 |
| Subform | *******dbd map |  | Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 7.11, 0.00, 0.83, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 4.15, 0.08, 0.54, 0.17 |
| TextBox | Text97 |  | =Sum([GROSS_INV]) |  |  | 5.26, 0.08, 0.50, 0.17 |
| TextBox | Text99 |  | =Sum([NET_INV]) |  |  | 5.81, 0.08, 0.50, 0.17 |
| TextBox | Text141 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.76, 0.08, 0.52, 0.17 |
| TextBox | Combo135 |  | ="Totals for " & [Age_Class] |  |  | 0.01, 0.06, 2.23, 0.19 |
| TextBox | Text156 |  | =Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried" |  |  | 2.25, 0.07, 1.93, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text174 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 4.11, 0.04, 0.57, 0.17 |
| TextBox | Text175 |  | =Sum([GROSS_INV]) |  |  | 5.26, 0.04, 0.50, 0.17 |
| TextBox | Text176 |  | =Sum([NET_INV]) |  |  | 5.81, 0.04, 0.50, 0.17 |
| TextBox | Text177 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.72, 0.04, 0.55, 0.17 |
| Line | Line178 |  |  |  |  | 4.22, 0.00, 0.46, 0.00 |
| Line | Line179 |  |  |  |  | 4.81, 0.00, 0.44, 0.00 |
| Line | Line180 |  |  |  |  | 5.27, 0.00, 0.49, 0.00 |
| Line | Line181 |  |  |  |  | 5.81, 0.00, 0.51, 0.00 |
| Label | Label182 | Totals |  |  |  | 3.67, 0.03, 0.46, 0.19 |
| ComboBox | Combo185 |  | BorC | B;Bareroot Plant;C;Container Plant |  | 0.59, 0.02, 3.04, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.19, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.44, 0.19, 3.50, 0.18 |
| Label | Label113 | ___________________________________________________________________________________________________________ |  |  |  | 0.10, 0.00, 7.85, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text160 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 4.06, 0.08, 0.62, 0.17 |
| TextBox | Text161 |  | =Sum([GROSS_INV]) |  |  | 5.26, 0.08, 0.50, 0.17 |
| TextBox | Text162 |  | =Sum([NET_INV]) |  |  | 5.81, 0.08, 0.50, 0.17 |
| TextBox | Text163 |  | =Sum([Actual_Sow_Calculated2]) |  |  | 4.67, 0.08, 0.60, 0.17 |
| Line | Line164 |  |  |  |  | 4.18, 0.04, 0.52, 0.00 |
| Line | Line165 |  |  |  |  | 4.77, 0.04, 0.49, 0.00 |
| Line | Line166 |  |  |  |  | 5.29, 0.04, 0.47, 0.00 |
| Line | Line167 |  |  |  |  | 5.81, 0.04, 0.50, 0.00 |
| Label | Label168 | Totals |  |  |  | 3.46, 0.07, 0.46, 0.19 |

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

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```
