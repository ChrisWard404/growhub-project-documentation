# Report: TOLIFT_Condensed

**Grouping/sorting:** `LOT_LOC`, `BED_SORT_ORDER`, `ID`  
**Opened from (VBA):** `Form_Lifting_Locations_Form`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.80, 0.21, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.88, 0.42, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.68, 0.00, 2.78, 0.20 |
| Label | Label39 | Location                Lot ID                             Species          Net         Order Amt       Surplus  Lot Length  Feet Lifted   Feet to Lift |  |  |  | 0.20, 1.09, 7.79, 0.19 |
| TextBox | Text40 | Order Dates: | =IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date() |  |  | 0.17, 0.25, 1.83, 0.21 |
| Label | Label49 | * = Partial Lift |  |  |  | 6.92, 0.17, 1.04, 0.21 |
| Label | Label44 | Lifting Locations Like |  |  |  | 0.12, 0.82, 1.62, 0.21 |
| TextBox | Text50 |  | =[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location] |  |  | 1.79, 0.82, 1.49, 0.21 |
| TextBox | PRODUCT_CLASS | Species/Age Class Like: | =[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class] |  |  | 6.23, 0.81, 1.75, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NET_INV |  | NET_INV |  |  | 3.47, 0.00, 0.67, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 4.14, 0.00, 0.71, 0.21 |
| TextBox | SURPLUS |  | SURPLUS |  |  | 4.88, 0.00, 0.75, 0.21 |
| TextBox | LOT_LENGTH |  | LOT_LGTH |  |  | 5.65, 0.00, 0.71, 0.21 |
| TextBox | TOLIFT |  | TOLIFT |  |  | 7.14, 0.00, 0.75, 0.21 |
| TextBox | LOT_LOC |  | LOT_LOC |  |  | 0.09, 0.00, 1.16, 0.21 |
| TextBox | ID |  | ID |  |  | 1.26, 0.00, 1.56, 0.21 |
| TextBox | SPECIES |  | PLNTMSTR_SYMBOL |  |  | 2.84, 0.00, 0.62, 0.21 |
| TextBox | Text38 |  | LIFTED |  |  | 6.39, 0.00, 0.71, 0.21 |
| TextBox | Partial_Lift |  | Partial_Lift |  |  | 7.88, 0.00, 0.12, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.14, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.89, 0.08, 2.00, 0.21 |
