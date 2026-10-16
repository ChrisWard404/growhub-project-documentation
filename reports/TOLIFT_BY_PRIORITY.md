# Report: TOLIFT_BY_PRIORITY

**Grouping/sorting:** `ShowNote`, `Priority`, `LOT_LOC`, `BED_SORT_ORDER`, `ID`  
**Backend tables referenced:** `Lifting_Priorties`  
**Subforms/subreports:** `Report.TOLIFT_ORDER_Lift_Priority subrep`  
**Opened from (VBA):** `Form_Lifting_Priorties_BU`, `Form_Lifting_Priorties_Data_Subform`, `Form_Plant_Processing_Table_Priorties_Data_Subform`, `Form_Propagule_Harvest_Priorties_Data_Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label39 | Location                Lot ID                             Species          Net         Order Amt       Surplus  Lot Length  Feet Lifted   Feet to Lift |  |  |  | 0.12, 0.80, 7.79, 0.19 |
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| Label | Label49 | * = Partial Lift |  |  |  | 6.92, 0.29, 1.04, 0.21 |
| TextBox | Text68 |  | =[Forms]![Lifting_Priorties]![Report_Date] |  |  | 2.62, 0.58, 2.83, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text43 |  | =[Forms]![Lifting_Priorties]![Comments] |  |  | 0.00, 0.02, 7.92, 0.02 |
| Line | Line91 |  |  |  |  | 0.00, 0.06, 7.97, 0.00 |
| Line | Line44 |  |  |  |  | 0.00, 0.00, 7.97, 0.00 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Priority | Priority: | Priority |  |  | 0.88, 0.01, 0.71, 0.26 |
| TextBox | Text93 |  | Comment |  |  | 1.69, 0.00, 6.29, 0.27 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box42 |  |  |  |  | 0.01, 0.00, 7.98, 0.21 |
| Subform | NMIS_TOLIFT_ORDER subrep |  | Report.TOLIFT_ORDER_Lift_Priority subrep (master: AG_LOT_CN;FISCAL_YEAR → child: AGREEMENT_LOT_CN;FISCAL_YEAR) |  |  | 1.28, 0.21, 6.66, 0.04 |
| TextBox | NET_INV |  | NET_INV |  |  | 3.48, 0.00, 0.62, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 4.13, 0.00, 0.71, 0.21 |
| TextBox | SURPLUS |  | SURPLUS |  |  | 4.87, 0.00, 0.75, 0.21 |
| TextBox | LOT_LENGTH |  | LOT_LGTH |  |  | 5.64, 0.00, 0.71, 0.21 |
| TextBox | TOLIFT |  | TOLIFT |  |  | 7.09, 0.00, 0.75, 0.21 |
| TextBox | LOT_LOC |  | LOC2 |  |  | 0.00, 0.00, 1.25, 0.21 |
| TextBox | ID |  | ID |  |  | 1.25, 0.00, 1.56, 0.21 |
| TextBox | SPECIES |  | PLNTMSTR_SYMBOL |  |  | 2.83, 0.00, 0.62, 0.21 |
| TextBox | Text38 |  | LIFTED |  |  | 6.38, 0.00, 0.71, 0.21 |
| TextBox | Partial_Lift |  | Partial_Lift |  |  | 7.83, 0.00, 0.12, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.02, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.83, 0.02, 0.96, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Comments |  | =[Forms]![Lifting_Priorties]![Comments] |  |  | 0.00, 0.00, 7.83, 0.35 |
