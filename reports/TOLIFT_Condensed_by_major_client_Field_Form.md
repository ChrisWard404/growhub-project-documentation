# Report: TOLIFT_Condensed_by_major_client_Field_Form

**Caption:** NMIS_TOLIFT  
**Record source:**

```sql
TOLIFT_Field_By_Major_Client Query
```

**Grouping/sorting:** `Reporting_Parent`, `LOT_LOC`, `BED_SORT_ORDER`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Lifting_Locations_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.71, 0.21, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.78, 0.42, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.00, 2.78, 0.20 |
| Label | Label39 | Location                Lot ID                             Species          Net         Order Amt       Surplus  Lot Length  Feet Lifted   Feet to Lift |  |  |  | 0.11, 1.14, 7.79, 0.19 |
| TextBox | Text40 | Order Dates: | =IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date() |  |  | 0.07, 0.25, 1.83, 0.21 |
| Label | Label49 | * = Partial Lift |  |  |  | 6.82, 0.17, 1.04, 0.21 |
| Label | Label44 | Lifting Locations Like |  |  |  | 0.03, 0.88, 1.62, 0.21 |
| TextBox | Text50 |  | =[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location] |  |  | 1.70, 0.88, 1.49, 0.21 |
| TextBox | PRODUCT_CLASS | Species/Age Class Like: | =[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class] |  |  | 6.14, 0.86, 1.75, 0.22 |
| ComboBox | Combo78 |  | reporting_parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS code_n_name FROM NMIS_ASSOCIATES; |  | 1.36, 0.58, 5.08, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NET_INV |  | NET_INV |  |  | 3.39, 0.00, 0.67, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 4.05, 0.00, 0.71, 0.21 |
| TextBox | SURPLUS |  | SURPLUS |  |  | 4.78, 0.00, 0.75, 0.21 |
| TextBox | LOT_LENGTH |  | LOT_LGTH |  |  | 5.56, 0.00, 0.71, 0.21 |
| TextBox | TOLIFT |  | TOLIFT |  |  | 7.04, 0.00, 0.83, 0.21 |
| TextBox | LOT_LOC |  | LOT_LOC |  |  | 0.00, 0.00, 1.16, 0.21 |
| TextBox | ID |  | ID |  |  | 1.17, 0.00, 1.56, 0.21 |
| TextBox | SPECIES |  | PLNTMSTR_SYMBOL |  |  | 2.75, 0.00, 0.62, 0.21 |
| TextBox | Text38 |  | LIFTED |  |  | 6.29, 0.00, 0.71, 0.21 |
| TextBox | Partial_Lift |  | Partial_Lift |  |  | 7.88, 0.00, 0.12, 0.21 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo79 |  | reporting_parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " Totals" AS totals FROM NMIS_ASSOCIATES; |  | 0.03, 0.08, 3.21, 0.20 |
| TextBox | Text81 |  | =Sum([NET_INV]) |  |  | 3.25, 0.07, 0.79, 0.21 |
| TextBox | Text82 |  | =Sum([ORDER_SUM]) |  |  | 4.04, 0.07, 0.71, 0.21 |
| TextBox | Text83 |  | =Sum([SURPLUS]) |  |  | 4.77, 0.07, 0.75, 0.21 |
| TextBox | Text84 |  | =Sum([LOT_LGTH]) |  |  | 5.54, 0.07, 0.71, 0.21 |
| TextBox | Text85 |  | =Sum([TOLIFT]) |  |  | 7.03, 0.07, 0.83, 0.21 |
| TextBox | Text86 |  | =Sum([LIFTED]) |  |  | 6.28, 0.07, 0.71, 0.21 |
| Line | Line93 |  |  |  |  | 3.36, 0.07, 0.67, 0.00 |
| Line | Line94 |  |  |  |  | 4.07, 0.07, 0.67, 0.00 |
| Line | Line95 |  |  |  |  | 4.86, 0.07, 0.67, 0.00 |
| Line | Line96 |  |  |  |  | 5.57, 0.07, 0.67, 0.00 |
| Line | Line97 |  |  |  |  | 6.32, 0.07, 0.67, 0.00 |
| Line | Line98 |  |  |  |  | 7.11, 0.07, 0.69, 0.00 |
| TextBox | Text140 | Surplus Ft: | =Sum([Surplus_Ft]) |  |  | 2.97, 0.33, 1.01, 0.22 |
| TextBox | Text142 | To Lift M: | =Sum([ToLift_M]) |  |  | 6.95, 0.33, 0.91, 0.22 |
| TextBox | Text144 | Lifted M: | =Sum([Lifted_M]) |  |  | 4.93, 0.33, 0.93, 0.22 |
| Rectangle | Box146 |  |  |  |  | 1.79, 0.33, 6.07, 0.22 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.04, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.79, 0.04, 2.00, 0.21 |
| Line | Line154 |  |  |  |  | 0.03, 0.04, 7.83, 0.00 |
