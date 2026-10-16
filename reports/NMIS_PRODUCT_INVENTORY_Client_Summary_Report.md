# Report: NMIS_PRODUCT_INVENTORY_Client_Summary_Report

**Caption:** NMIS_Plant_Inventory  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORY_Query
```

**Grouping/sorting:** `Cost_Center`, `END_FY`, `Age_Class_Condensed`, `Reporting_Parent`, `CLIENT_ASSOCIATE`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `NMIS_AGREEMENT_LOTS_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TOTAL_REQUEST_Label | AdjustedRequest (M) |  |  |  | 4.38, 1.18, 0.60, 0.47 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Summary Report |  |  |  | 2.75, 0.55, 2.64, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label109 | Gross Inv (M) |  |  |  | 5.05, 1.18, 0.41, 0.47 |
| Label | Label111 | Est. Net (M) |  |  |  | 5.59, 1.18, 0.39, 0.47 |
| Label | Label112 | ____________________________________________________________________________________________________________ |  |  |  | 0.02, 1.62, 7.93, 0.20 |
| Label | Label149 | Original Request (M) |  |  |  | 3.79, 1.18, 0.59, 0.47 |
| TextBox | Text175 |  | =[Age_Class_Condensed] & " Requested for FY " & [END_FY] |  |  | 0.54, 0.82, 6.96, 0.23 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text176 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.24, 0.00, 0.61, 0.20 |
| TextBox | Text177 |  | =Sum([GROSS]) |  |  | 4.87, 0.00, 0.59, 0.20 |
| TextBox | Text178 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.00, 0.55, 0.20 |
| TextBox | Text179 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.61, 0.00, 0.62, 0.20 |
| ComboBox | Text180 |  | [Client_Associate] | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.15, 0.01, 3.11, 0.18 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text50 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.19, 0.00, 0.66, 0.20 |
| ComboBox | Combo52 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 0.09, 0.01, 2.83, 0.00 |
| TextBox | Text105 |  | =Sum([GROSS]) |  |  | 4.86, 0.00, 0.60, 0.20 |
| TextBox | Text107 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.00, 0.55, 0.20 |
| TextBox | Text147 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.69, 0.00, 0.55, 0.20 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.24, 0.00, 0.61, 0.20 |
| TextBox | Text97 |  | =Sum([GROSS]) |  |  | 4.87, 0.00, 0.59, 0.20 |
| TextBox | Text99 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.00, 0.55, 0.20 |
| TextBox | Text141 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.61, 0.00, 0.62, 0.20 |
| TextBox | Combo135 |  | ="Total for " & [Age_Class_Condensed] |  |  | 0.09, 0.01, 2.91, 0.19 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text125 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.24, 0.00, 0.61, 0.20 |
| TextBox | Text129 |  | =Sum([GROSS]) |  |  | 4.87, 0.00, 0.59, 0.20 |
| TextBox | Text131 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.00, 0.55, 0.20 |
| TextBox | Text133 |  | ="Total for Requested for FY " & [END_FY] |  |  | 0.09, 0.01, 2.92, 0.19 |
| TextBox | Text143 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.61, 0.00, 0.62, 0.20 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text163 |  | =Sum([AMOUNT_REQUESTED]) |  |  | 4.24, 0.00, 0.61, 0.20 |
| TextBox | Text166 |  | =Sum([GROSS]) |  |  | 4.87, 0.00, 0.59, 0.20 |
| TextBox | Text168 |  | =Sum([NET_INV_M]) |  |  | 5.46, 0.00, 0.55, 0.20 |
| TextBox | Text170 |  | =Sum([ORIG_AMOUNT_REQUESTED]) |  |  | 3.62, 0.00, 0.61, 0.20 |
| ComboBox | Combo173 |  | Cost_Center | B;Total for Bareroot Plant;C;Total for Container Plant |  | 0.09, 0.01, 1.86, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.19, 2.13, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.93, 0.19 |

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
