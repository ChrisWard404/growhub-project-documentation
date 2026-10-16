# Report: TOLIFT_Remaining

**Grouping/sorting:** `Age_Class_String`, `PLNTMSTR_SYMBOL`, `LOT_LOC`, `BED_SORT_ORDER`, `ID`  
**Opened from (VBA):** `Form_Lifting_Locations_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.57, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label39 | Age Class                         Species      Location                Lot ID                                   Net Inv (M)      Orders (M)        Feet to Lift |  |  |  | 0.02, 1.09, 7.97, 0.19 |
| Label | Label49 | * = Partial Lift |  |  |  | 6.92, 0.21, 1.04, 0.21 |
| Label | Label44 | Lifting Locations Like |  |  |  | 0.10, 0.76, 1.62, 0.21 |
| TextBox | Text50 |  | =[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location] |  |  | 1.77, 0.76, 1.49, 0.21 |
| TextBox | PRODUCT_CLASS | Species/Age Class Like: | =[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class] |  |  | 6.21, 0.75, 1.75, 0.22 |
| TextBox | Text40 | Order Dates: | =IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date() |  |  | 0.14, 0.24, 1.83, 0.21 |
| Line | Line80 |  |  |  |  | 0.04, 1.29, 7.96, 0.00 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text79 |  | Age_Class_String |  |  | 0.00, 0.02, 1.62, 0.21 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES |  | Vernacular_With_Code |  |  | 0.12, 0.00, 5.83, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NET_INV |  | NET_INV |  |  | 5.07, 0.00, 0.84, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 5.99, 0.00, 0.86, 0.21 |
| TextBox | LOT_LOC |  | LOT_LOC |  |  | 2.33, 0.00, 1.16, 0.21 |
| TextBox | ID |  | ID |  |  | 3.50, 0.00, 1.56, 0.21 |
| TextBox | Text45 |  | TOLIFT |  |  | 7.03, 0.00, 0.85, 0.21 |
| TextBox | Partial_Lift |  | Partial_Lift |  |  | 7.88, 0.00, 0.12, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text51 |  | =Sum([NET_INV]) |  |  | 5.07, 0.02, 0.84, 0.22 |
| TextBox | Text52 |  | =Sum([ORDER_SUM]) |  |  | 5.99, 0.02, 0.86, 0.22 |
| TextBox | Text54 |  | =Sum([TOLIFT]) |  |  | 7.03, 0.02, 0.85, 0.22 |
| Label | Label55 | Subtotal for: |  |  |  | 0.14, 0.02, 1.45, 0.22 |
| TextBox | Text56 |  | Age_Class_String |  |  | 1.64, 0.02, 2.62, 0.22 |
| Line | Line57 |  |  |  |  | 5.08, 0.02, 0.84, 0.00 |
| Line | Line59 |  |  |  |  | 6.03, 0.02, 0.82, 0.00 |
| Line | Line61 |  |  |  |  | 7.08, 0.02, 0.79, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.89, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.03, 0.02, 7.88, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text69 |  | =Sum([NET_INV]) |  |  | 5.07, 0.03, 0.84, 0.22 |
| TextBox | Text70 |  | =Sum([ORDER_SUM]) |  |  | 5.99, 0.03, 0.86, 0.22 |
| TextBox | Text72 |  | =Sum([TOLIFT]) |  |  | 7.03, 0.03, 0.85, 0.22 |
| Label | Label73 | Total: |  |  |  | 0.15, 0.03, 0.65, 0.22 |
| Line | Line75 |  |  |  |  | 5.08, 0.00, 0.84, 0.00 |
| Line | Line76 |  |  |  |  | 6.03, 0.00, 0.82, 0.00 |
| Line | Line78 |  |  |  |  | 7.08, 0.00, 0.79, 0.00 |
