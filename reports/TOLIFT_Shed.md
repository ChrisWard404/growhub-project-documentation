# Report: TOLIFT_Shed

**Caption:** NMIS_TOLIFT  
**Record source:**

```sql
SELECT **TOLIFT_FIELD.* FROM [**TOLIFT_FIELD] WHERE ((([**TOLIFT_FIELD].[TOLIFT])>0));
```

**Grouping/sorting:** `LOT_LOC`, `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.71, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label39 | Location                Lot ID                          Species          Net         Order Amt       Surplus  Lot Length  Feet Lifted     Feet to Lift |  |  |  | 0.11, 1.09, 7.76, 0.19 |
| TextBox | Text47 |  | ="Summary of Lots Remaining to be Lifted as of " & Date() |  |  | 1.67, 0.66, 4.72, 0.29 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NET_INV |  | NET_INV |  |  | 3.28, 0.00, 0.62, 0.21 |
| TextBox | ORDER_SUM |  | ORDER_SUM |  |  | 3.98, 0.00, 0.80, 0.21 |
| TextBox | SURPLUS |  | SURPLUS |  |  | 4.83, 0.00, 0.84, 0.21 |
| TextBox | LOT_LENGTH |  | LOT_LGTH |  |  | 5.70, 0.00, 0.71, 0.21 |
| TextBox | TOLIFT |  | TOLIFT |  |  | 7.18, 0.00, 0.75, 0.21 |
| TextBox | LOT_LOC |  | LOT_LOC |  |  | 0.00, 0.00, 1.16, 0.21 |
| TextBox | ID |  | ID |  |  | 1.20, 0.00, 1.38, 0.21 |
| TextBox | SPECIES |  | PLNTMSTR_SYMBOL |  |  | 2.63, 0.00, 0.62, 0.21 |
| TextBox | Text38 |  | LIFTED |  |  | 6.43, 0.00, 0.71, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.79, 0.08, 2.00, 0.21 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text40 |  | =Sum([NET_INV]) |  |  | 3.28, 0.03, 0.64, 0.21 |
| TextBox | Text41 |  | =Sum([ORDER_SUM]) |  |  | 3.98, 0.03, 0.80, 0.21 |
| TextBox | Text42 |  | =Sum([SURPLUS]) |  |  | 4.83, 0.03, 0.84, 0.21 |
| TextBox | Text43 |  | =Sum([LOT_LGTH]) |  |  | 5.70, 0.03, 0.71, 0.21 |
| TextBox | Text44 |  | =Sum([TOLIFT]) |  |  | 7.18, 0.03, 0.75, 0.21 |
| TextBox | Text45 |  | LIFTED |  |  | 6.43, 0.03, 0.71, 0.21 |
