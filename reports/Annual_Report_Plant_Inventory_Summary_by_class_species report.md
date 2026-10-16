# Report: Annual_Report_Plant_Inventory_Summary_by_class_species report

**Caption:** NMIS_Plant_Inventory  
**Record source:**

```sql
Annual_Report_Product_Inventory_Summary
```

**Grouping/sorting:** `END_FY`, `CC`, `Current_Product`, `END_FY`, `PLNTMSTR_SYMBOL`  
**Backend tables referenced:** `NMIS_SPECIES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | Client |  |  |  | 0.23, 1.34, 0.54, 0.17 |
| Label | SOURCE_CODE_Label | Lot ID |  |  |  | 1.05, 1.34, 0.68, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.77, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Summary |  |  |  | 3.15, 0.55, 2.04, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.55, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.55, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross Inventory (M) |  |  |  | 5.83, 1.04, 0.68, 0.47 |
| Label | Label111 | Net Inventory (M) |  |  |  | 6.52, 1.04, 0.68, 0.47 |
| Label | Label149 | Sown For (M) |  |  |  | 5.11, 1.19, 0.71, 0.33 |
| Label | Label152 | Species Code |  |  |  | 1.93, 1.19, 0.77, 0.33 |
| Label | Label153 | Request (M) |  |  |  | 4.39, 1.19, 0.71, 0.33 |
| Label | Label154 | Firm Orders   (M)   |  |  |  | 7.30, 1.04, 0.54, 0.47 |
| Label | Label157 | Common Name |  |  |  | 2.76, 1.33, 1.44, 0.18 |
| TextBox | END_FY | End FY: | END_FY |  |  | 4.22, 0.79, 0.67, 0.23 |
| Line | Line211 |  |  |  |  | 0.21, 1.54, 7.67, 0.00 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CC |  | CC |  |  | 0.18, 0.05, 2.39, 0.26 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | Current_Product |  |  | 0.17, 0.02, 3.12, 0.21 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Actual_Sown_Calculated |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.13, 0.00, 0.54, 0.15 |
| TextBox | TOTAL_REQUEST |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.46, 0.00, 0.49, 0.15 |
| TextBox | GROSS_INV |  | =Sum([Gross_InvP]) |  |  | 5.72, 0.00, 0.65, 0.15 |
| TextBox | NET_INV |  | =Sum([Net_InvP]) |  |  | 6.40, 0.00, 0.65, 0.15 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 2.02, 0.00, 0.79, 0.15 |
| ComboBox | Text158 |  | PLNTMSTR_SYMBOL | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES;  |  | 2.85, 0.00, 1.54, 0.00 |
| TextBox | Text159 |  | =Sum([Firm_Order]) |  |  | 7.16, 0.00, 0.65, 0.15 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text99 |  | =Sum([Net_InvP]) |  |  | 6.43, 0.10, 0.65, 0.17 |
| Label | Label100 | ----------- |  |  |  | 6.52, 0.00, 0.56, 0.13 |
| TextBox | Text160 |  | =Sum([Firm_Order]) |  |  | 7.16, 0.10, 0.65, 0.17 |
| Label | Label161 | ----------- |  |  |  | 7.25, 0.00, 0.56, 0.13 |
| TextBox | Text162 |  | =Sum([Gross_InvP]) |  |  | 5.72, 0.10, 0.65, 0.17 |
| Label | Label163 | ----------- |  |  |  | 5.81, 0.00, 0.56, 0.13 |
| TextBox | Text164 |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.03, 0.10, 0.65, 0.17 |
| Label | Label165 | ----------- |  |  |  | 5.12, 0.00, 0.56, 0.13 |
| TextBox | Text166 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.30, 0.10, 0.65, 0.17 |
| Label | Label167 | ----------- |  |  |  | 4.39, 0.00, 0.56, 0.13 |
| Label | Label168 | Totals for |  |  |  | 0.99, 0.10, 0.61, 0.18 |
| TextBox | Text192 |  | Current_Product |  |  | 1.58, 0.10, 2.62, 0.18 |
| Line | Line213 |  |  |  |  | 0.21, 0.31, 7.67, 0.00 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text198 |  | =Sum([Net_InvP]) |  |  | 6.43, 0.10, 0.65, 0.17 |
| Label | Label199 | ----------- |  |  |  | 6.52, 0.00, 0.56, 0.13 |
| TextBox | Text200 |  | =Sum([Firm_Order]) |  |  | 7.16, 0.10, 0.65, 0.17 |
| Label | Label201 | ----------- |  |  |  | 7.25, 0.00, 0.56, 0.13 |
| TextBox | Text202 |  | =Sum([Gross_InvP]) |  |  | 5.72, 0.10, 0.65, 0.17 |
| Label | Label203 | ----------- |  |  |  | 5.81, 0.00, 0.56, 0.13 |
| TextBox | Text204 |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.03, 0.10, 0.65, 0.17 |
| Label | Label205 | ----------- |  |  |  | 5.12, 0.00, 0.56, 0.13 |
| TextBox | Text206 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.30, 0.10, 0.65, 0.17 |
| Label | Label207 | ----------- |  |  |  | 4.39, 0.00, 0.56, 0.13 |
| Label | Label208 | Totals for |  |  |  | 0.99, 0.10, 0.61, 0.18 |
| TextBox | Text209 |  | CC |  |  | 1.58, 0.10, 2.62, 0.18 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text181 |  | =Sum([Net_InvP]) |  |  | 6.44, 0.10, 0.65, 0.17 |
| Label | Label182 | ----------- |  |  |  | 6.53, 0.00, 0.56, 0.13 |
| TextBox | Text183 |  | =Sum([Firm_Order]) |  |  | 7.17, 0.10, 0.65, 0.17 |
| Label | Label184 | ----------- |  |  |  | 7.26, 0.00, 0.56, 0.13 |
| TextBox | Text185 |  | =Sum([Gross_InvP]) |  |  | 5.73, 0.10, 0.65, 0.17 |
| Label | Label186 | ----------- |  |  |  | 5.82, 0.00, 0.56, 0.13 |
| TextBox | Text187 |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.04, 0.10, 0.65, 0.17 |
| Label | Label188 | ----------- |  |  |  | 5.13, 0.00, 0.56, 0.13 |
| TextBox | Text189 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.31, 0.10, 0.65, 0.17 |
| Label | Label190 | ----------- |  |  |  | 4.40, 0.00, 0.56, 0.13 |
| Label | Label193 | Totals for |  |  |  | 1.01, 0.10, 0.61, 0.18 |
| TextBox | Text194 |  | END_FY |  |  | 1.60, 0.10, 2.62, 0.18 |
| Line | Line214 |  |  |  |  | 0.21, 0.00, 7.67, 0.00 |
| Line | Line217 |  |  |  |  | 0.21, 0.31, 7.67, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.19, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.77, 0.19, 2.13, 0.18 |
| Line | Line215 |  |  |  |  | 0.21, 0.03, 7.67, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text169 |  | =Sum([Net_InvP]) |  |  | 6.46, 0.10, 0.65, 0.17 |
| Label | Label170 | ----------- |  |  |  | 6.55, 0.00, 0.56, 0.13 |
| TextBox | Text171 |  | =Sum([Firm_Order]) |  |  | 7.19, 0.10, 0.65, 0.17 |
| Label | Label172 | ----------- |  |  |  | 7.28, 0.00, 0.56, 0.13 |
| TextBox | Text173 |  | =Sum([Gross_InvP]) |  |  | 5.75, 0.10, 0.65, 0.17 |
| Label | Label174 | ----------- |  |  |  | 5.84, 0.00, 0.56, 0.13 |
| TextBox | Text175 |  | =Sum([Actual_Sow_Calculated]) |  |  | 5.06, 0.10, 0.65, 0.17 |
| Label | Label176 | ----------- |  |  |  | 5.15, 0.00, 0.56, 0.13 |
| TextBox | Text177 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.33, 0.10, 0.65, 0.17 |
| Label | Label178 | ----------- |  |  |  | 4.42, 0.00, 0.56, 0.13 |
| Label | Label196 | Grand Totals |  |  |  | 1.12, 0.10, 0.77, 0.18 |

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
