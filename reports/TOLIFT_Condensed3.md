# Report: TOLIFT_Condensed3

**Grouping/sorting:** `Age_Class_String`, `LOT_LOC`, `BED_SORT_ORDER`, `ID`  
**Opened from (VBA):** `Form_Lifting_Locations_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label39 | Location                Lot ID                             Species          Net         Order Amt       Surplus  Lot Length  Feet Lifted   Feet to Lift |  |  |  | 0.12, 1.00, 7.79, 0.19 |
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| Label | Label49 | * = Partial Lift |  |  |  | 6.92, 0.29, 1.04, 0.21 |
| Label | Label44 | Lifting Locations Like |  |  |  | 0.08, 0.73, 1.62, 0.21 |
| TextBox | Text50 |  | =[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location] |  |  | 1.75, 0.73, 1.49, 0.21 |
| TextBox | PRODUCT_CLASS | Species/Age Class Like: | =[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class] |  |  | 6.19, 0.72, 1.75, 0.22 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class_String |  | Age_Class_String |  |  | 0.00, 0.00, 3.25, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NET_INV |  | NET_INV |  |  | 3.46, 0.00, 0.67, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 4.13, 0.00, 0.71, 0.21 |
| TextBox | SURPLUS |  | SURPLUS |  |  | 4.87, 0.00, 0.75, 0.21 |
| TextBox | LOT_LENGTH |  | LOT_LGTH |  |  | 5.64, 0.00, 0.71, 0.21 |
| TextBox | TOLIFT |  | TOLIFT |  |  | 7.09, 0.00, 0.75, 0.21 |
| TextBox | LOT_LOC |  | LOT_LOC |  |  | 0.08, 0.00, 1.16, 0.21 |
| TextBox | ID |  | ID |  |  | 1.25, 0.00, 1.56, 0.21 |
| TextBox | SPECIES |  | PLNTMSTR_SYMBOL |  |  | 2.83, 0.00, 0.62, 0.21 |
| TextBox | Text38 |  | LIFTED |  |  | 6.38, 0.00, 0.71, 0.21 |
| TextBox | Partial_Lift |  | Partial_Lift |  |  | 7.84, 0.00, 0.12, 0.21 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Combo80 |  | =[Age_Class_String] & " Totals:" |  |  | 0.00, 0.01, 3.21, 0.20 |
| TextBox | Text47 |  | =Sum([NET_INV]) |  |  | 3.34, 0.02, 0.77, 0.21 |
| TextBox | Text48 |  | =Sum([ORDER_SUM]) |  |  | 4.10, 0.02, 0.75, 0.21 |
| TextBox | Text49 |  | =Sum([SURPLUS]) |  |  | 4.86, 0.02, 0.75, 0.21 |
| TextBox | Text51 |  | =Sum([LOT_LGTH]) |  |  | 5.64, 0.02, 0.71, 0.21 |
| TextBox | Text52 |  | =Sum([TOLIFT]) |  |  | 7.12, 0.02, 0.72, 0.21 |
| TextBox | Text53 |  | =Sum([LIFTED]) |  |  | 6.37, 0.02, 0.71, 0.21 |
| TextBox | Surplus_Ft | Surplus Ft: | =Sum([Surplus_Ft]) |  |  | 3.07, 0.26, 1.01, 0.22 |
| TextBox | ToLift_M | To Lift M: | =Sum([ToLift_M]) |  |  | 7.05, 0.26, 0.91, 0.22 |
| TextBox | Lifted_M | Lifted M: | =Sum([Lifted_M]) |  |  | 5.03, 0.26, 0.93, 0.22 |
| Line | Line69 |  |  |  |  | 3.46, 0.00, 0.67, 0.00 |
| Line | Line70 |  |  |  |  | 4.17, 0.00, 0.67, 0.00 |
| Line | Line71 |  |  |  |  | 4.96, 0.00, 0.67, 0.00 |
| Line | Line72 |  |  |  |  | 5.67, 0.00, 0.67, 0.00 |
| Line | Line73 |  |  |  |  | 6.42, 0.00, 0.67, 0.00 |
| Line | Line74 |  |  |  |  | 7.21, 0.00, 0.69, 0.00 |
| Rectangle | Box118 |  |  |  |  | 1.90, 0.26, 6.07, 0.22 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.99, 0.08, 0.96, 0.21 |
| Line | Line42 |  |  |  |  | 0.04, 0.08, 7.92, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text99 |  | =Sum([NET_INV]) |  |  | 3.33, 0.00, 0.77, 0.21 |
| TextBox | Text100 |  | =Sum([ORDER_SUM]) |  |  | 4.09, 0.00, 0.75, 0.21 |
| TextBox | Text101 |  | =Sum([SURPLUS]) |  |  | 4.85, 0.00, 0.77, 0.21 |
| TextBox | Text102 |  | =Sum([LOT_LGTH]) |  |  | 5.64, 0.00, 0.71, 0.21 |
| TextBox | Text103 |  | =Sum([TOLIFT]) |  |  | 7.12, 0.00, 0.83, 0.21 |
| TextBox | Text104 |  | =Sum([LIFTED]) |  |  | 6.37, 0.00, 0.71, 0.21 |
| Line | Line111 |  |  |  |  | 3.45, 0.00, 0.67, 0.00 |
| Line | Line112 |  |  |  |  | 4.16, 0.00, 0.67, 0.00 |
| Line | Line113 |  |  |  |  | 4.95, 0.00, 0.67, 0.00 |
| Line | Line114 |  |  |  |  | 5.67, 0.00, 0.67, 0.00 |
| Line | Line115 |  |  |  |  | 6.42, 0.00, 0.67, 0.00 |
| Line | Line116 |  |  |  |  | 7.21, 0.00, 0.70, 0.00 |
| Label | Label117 | Grand Totals |  |  |  | 0.15, 0.01, 0.91, 0.20 |
| TextBox | Text147 | Surplus Ft: | =Sum([Surplus_Ft]) |  |  | 3.07, 0.25, 1.01, 0.22 |
| TextBox | Text149 | To Lift M: | =Sum([ToLift_M]) |  |  | 7.05, 0.25, 0.91, 0.22 |
| TextBox | Text151 | Lifted M: | =Sum([Lifted_M]) |  |  | 5.03, 0.25, 0.93, 0.22 |
| Rectangle | Box153 |  |  |  |  | 1.90, 0.25, 6.07, 0.22 |
