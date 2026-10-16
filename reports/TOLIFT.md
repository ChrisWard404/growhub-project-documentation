# Report: TOLIFT

**Caption:** NMIS_TOLIFT  
**Record source:**

```sql
TOLIFT Query
```

**Grouping/sorting:** `LOT_LOC`, `BED_SORT_ORDER`, `ID`  
**Subforms/subreports:** `Report.TOLIFT_ORDER subrep`  
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

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box41 |  |  |  |  | 0.00, 0.00, 7.97, 0.21 |
| Subform | NMIS_TOLIFT_ORDER subrep |  | Report.TOLIFT_ORDER subrep (master: AG_LOT_CN;FISCAL_YEAR → child: AGREEMENT_LOT_CN;FISCAL_YEAR) |  |  | 1.62, 0.21, 6.31, 0.01 |
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

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.02, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.83, 0.02, 0.96, 0.21 |
