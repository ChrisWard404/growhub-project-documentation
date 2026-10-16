# Report: TOLIFT_Condensed_Eastside_Clients

**Caption:** NMIS_TOLIFT  
**Record source:**

```sql
TOLIFT_Field_Eastside Query
```

**Grouping/sorting:** `LOT_LOC`, `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Report_Label | Planned Lifting Locations |  |  |  | 0.14, 0.79, 1.96, 0.21 |
| TextBox | Text33 | Beginning: | [Beginning Loc] |  |  | 2.80, 0.79, 0.83, 0.21 |
| TextBox | Text35 | Ending: | [Ending Loc] |  |  | 4.20, 0.79, 0.83, 0.21 |
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.80, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.80, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.68, 0.17, 2.78, 0.20 |
| Label | Label39 | Location                Lot ID                             Species          Net         Order Amt       Surplus  Lot Length  Feet Lifted   Feet to Lift |  |  |  | 0.20, 1.09, 7.79, 0.19 |
| TextBox | Text40 | Order Dates: | LastOfMODIFIED_DATE |  |  | 6.12, 0.79, 0.79, 0.21 |
| TextBox | Text42 |  | =" - " & Date() |  |  | 6.93, 0.79, 1.07, 0.21 |
| Label | Label44 | Eastside Clients |  |  |  | 6.04, 0.25, 1.62, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NET_INV |  | NET_INV |  |  | 3.49, 0.00, 0.62, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 4.14, 0.00, 0.71, 0.21 |
| TextBox | SURPLUS |  | SURPLUS |  |  | 4.88, 0.00, 0.75, 0.21 |
| TextBox | LOT_LENGTH |  | LOT_LGTH |  |  | 5.65, 0.00, 0.71, 0.21 |
| TextBox | TOLIFT |  | TOLIFT |  |  | 7.14, 0.00, 0.75, 0.21 |
| TextBox | LOT_LOC |  | LOT_LOC |  |  | 0.09, 0.00, 1.16, 0.21 |
| TextBox | ID |  | ID_forest |  |  | 1.26, 0.00, 1.56, 0.21 |
| TextBox | SPECIES |  | PLNTMSTR_SYMBOL |  |  | 2.84, 0.00, 0.62, 0.21 |
| TextBox | Text38 |  | LIFTED |  |  | 6.39, 0.00, 0.71, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.14, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.89, 0.08, 2.00, 0.21 |
