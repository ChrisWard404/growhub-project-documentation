# Report: TOLIFT_Condensed3_old

**Caption:** To Lift by Age Class, Species and Location  
**Record source:**

```sql
TOLIFT_Field Query
```

**Grouping/sorting:** `Age_Class_String`, `PLNTMSTR_SYMBOL`, `LOT_LOC`, `BED_SORT_ORDER`, `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.57, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label39 | Age Class                         Species      Location                Lot ID                             Net Inv (M) Orders (M) Feet Lifted  Feet to Lift |  |  |  | 0.02, 1.09, 7.94, 0.19 |
| Label | Label49 | * = Partial Lift |  |  |  | 6.92, 0.21, 1.04, 0.21 |
| Label | Label44 | Lifting Locations Like |  |  |  | 0.10, 0.76, 1.62, 0.21 |
| TextBox | Text50 |  | =[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location] |  |  | 1.77, 0.76, 1.49, 0.21 |
| TextBox | PRODUCT_CLASS | Species/Age Class Like: | =[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class] |  |  | 6.21, 0.75, 1.75, 0.22 |
| TextBox | Text40 | Order Dates: | =IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date() |  |  | 0.14, 0.24, 1.83, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NET_INV |  | NET_INV |  |  | 5.07, 0.00, 0.62, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 5.71, 0.00, 0.71, 0.21 |
| TextBox | TOLIFT |  | LIFTED |  |  | 6.43, 0.00, 0.75, 0.21 |
| TextBox | LOT_LOC |  | LOT_LOC |  |  | 2.33, 0.00, 1.16, 0.21 |
| TextBox | ID |  | ID |  |  | 3.50, 0.00, 1.56, 0.21 |
| TextBox | SPECIES |  | PLNTMSTR_SYMBOL |  |  | 1.70, 0.00, 0.62, 0.21 |
| TextBox | Age_Class |  | Age_Class_String |  |  | 0.05, 0.00, 1.62, 0.21 |
| TextBox | Text45 |  | TOLIFT |  |  | 7.20, 0.00, 0.69, 0.21 |
| TextBox | Partial_Lift |  | Partial_Lift |  |  | 7.88, 0.00, 0.12, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.89, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.03, 0.02, 7.88, 0.00 |
