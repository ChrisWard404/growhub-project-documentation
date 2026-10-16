# Report: Agreement_Lot_Destroy_Checklist

**Grouping/sorting:** `Cost_Center`, `Product_Class_for_Processing`, `ID`, `END_FY`  
**Subforms/subreports:** `Report.Agreement_Lot_Destroy_Checkist_Client_Subreport`, `Report.Agreement_Lot_Destroy_Checklist subreport`, `Report.Agreement_Lot_Destroy_Checklist_CCSum subreport`, `Report.Agreement_Lot_Destroy_Checklist_GrandSum subreport`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_Reports_Menu_Processing Subform`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.00, 1.26, 0.85, 0.30 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label155 | Inv Date |  |  |  | 6.85, 1.23, 0.42, 0.33 |
| Label | TOTAL_REQUEST_Label | Request (M) |  |  |  | 4.18, 1.24, 0.55, 0.33 |
| Label | Label109 | Gross  Inv (M) |  |  |  | 5.76, 1.08, 0.44, 0.47 |
| Label | Label111 | Est. Net (M) |  |  |  | 6.33, 1.08, 0.42, 0.47 |
| ComboBox | Combo199 |  | Cost_Center | B;Bareroot Plant;C;Container Plant |  | 2.46, 0.83, 3.21, 0.26 |
| Label | Label212 | Firm Order (M) |  |  |  | 7.47, 1.08, 0.41, 0.48 |
| TextBox | Text218 |  | ="Stock Destroyed Checklist FY " & [Forms]![Switchboard]![FY_For_Reports] |  |  | 2.45, 0.58, 3.26, 0.23 |
| Line | Line224 |  |  |  |  | 0.00, 1.56, 7.85, 0.00 |
| Label | Label226 | Client |  |  |  | 1.90, 1.39, 0.40, 0.18 |
| Label | Label227 | Req Size Specs |  |  |  | 4.99, 1.08, 0.44, 0.47 |
| TextBox | date_range |  | date_range |  |  | 0.04, 0.88, 2.42, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Product_Class_for_Processing |  | Product_Class_for_Processing |  |  | 0.00, 0.00, 3.54, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GROSS |  | GROSS_INV |  |  | 5.59, 0.00, 0.57, 0.19 |
| TextBox | NET_INV |  | NET_INV |  |  | 6.19, 0.00, 0.56, 0.19 |
| TextBox | Text138 |  | ID |  |  | 0.02, 0.00, 1.12, 0.19 |
| TextBox | MaxOfACTIVITY_DATE |  | ACTIVITY_DATE |  |  | 6.76, 0.00, 0.57, 0.19 |
| TextBox | Obligation |  | Obligation |  |  | 7.33, 0.00, 0.55, 0.19 |
| Subform | Agreement_Lot_Destroy_Checkist_Client_Subreport |  | Report.Agreement_Lot_Destroy_Checkist_Client_Subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 1.15, 0.00, 3.60, 0.20 |
| TextBox | Amount_Requested |  | Amount_Requested |  |  | 0.50, 0.00, 0.00, 0.20 |
| TextBox | Text228 |  | SIZE_SPEC_STRING |  |  | 4.83, 0.00, 0.75, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Report.Agreement_Lot_Destroy_Checklist subreport |  | Report.Agreement_Lot_Destroy_Checklist subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 0.01, 7.82, 0.17 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Child216 |  | Report.Agreement_Lot_Destroy_Checklist_CCSum subreport (master: Cost_Center → child: Cost_Center) |  |  | 0.12, 0.07, 5.29, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.19, 2.03, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.82, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Agreement_Lot_Destroy_Checklist_Sum subreport |  | Report.Agreement_Lot_Destroy_Checklist_GrandSum subreport |  |  | 0.12, 0.26, 5.29, 0.19 |
| Line | Line215 |  |  |  |  | 0.12, 0.08, 7.69, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Destroy_Checklist_Subreport_MT"
    DoCmd.SetWarnings True
    
End Sub
```
