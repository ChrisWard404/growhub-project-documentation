# Report: TOLIFT_BY_PRIORITY_ver2_not_in_use

**Caption:** NMIS_TOLIFT  
**Record source:**

```sql
SELECT Lifting_Priorties.*, [Species] & "/" & [age class] AS Species_Age_Class, IIf([Ft Note]>"",[Ft Note],IIf([Partial_Lift]=True,"Partial","")) AS Ft_to_Lift_Note, [Lot Length]-[LIFTED] AS Bed_Bal, NMIS_AGREEMENT_LOTS.CN AS Agreement_Lot_CN, Val([Forms]![Switchboard]![FY_For_Reports]) AS FY FROM Lifting_Priorties INNER JOIN NMIS_AGREEMENT_LOTS ON Lifting_Priorties.[Lot ID] = NMIS_AGREEMENT_LOTS.ID WHERE (((Lifting_Priorties.[Feet To Lift])>IIf([Forms]![Lifting_Priorties]![Include_0_ft]=True,-1000,0) Or (Lifting_Priorties.[Feet To Lift]) Is Null) AND ((Lifting_Priorties.Priority)>=[Forms]![Lifting_Priorties]![Min_Priority] And (Lifting_Priorties.Priority)<=[Forms]![Lifting_Priorties]![Max_Priority]));
```

**Grouping/sorting:** `Priority`, `Location`, `BED_SORT_ORDER`, `Lot ID`  
**Backend tables referenced:** `Lifting_Priorties`, `NMIS_AGREEMENT_LOTS`  
**Subforms/subreports:** `Report.TOLIFT_ORDER_Lift_Priority subrep`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.57, 0.38, 2.83, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.71, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.58, 0.17, 2.78, 0.20 |
| Label | Label51 | Location |  |  |  | 0.04, 1.12, 0.68, 0.23 |
| Label | Label52 | Lot ID |  |  |  | 1.17, 1.12, 0.68, 0.23 |
| Label | Label53 | Species/Age Class |  |  |  | 2.33, 1.12, 1.33, 0.23 |
| Label | Label54 | To Lift |  |  |  | 4.80, 1.12, 0.59, 0.23 |
| Label | Label55 | Net Amt(M) |  |  |  | 6.20, 1.12, 0.92, 0.23 |
| Line | Line56 |  |  |  |  | 0.00, 1.38, 7.97, 0.00 |
| Label | Label57 | Lifting Priorities |  |  |  | 2.58, 0.58, 2.83, 0.23 |
| TextBox | Text68 |  | =Date() |  |  | 2.58, 0.81, 2.83, 0.20 |
| Label | Label69 |  Ft in Field |  |  |  | 3.83, 1.12, 0.81, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Priority | Priority: | Priority |  |  | 0.83, 0.04, 0.00, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box89 |  |  |  |  | 0.01, 0.00, 8.00, 0.21 |
| TextBox | Feet To Lift |  | Feet To Lift |  |  | 4.79, 0.00, 0.59, 0.21 |
| TextBox | Ft Note |  | Ft_to_Lift_Note |  |  | 5.39, 0.00, 0.00, 0.21 |
| TextBox | Net Order |  | Net Order |  |  | 6.40, 0.00, 0.75, 0.21 |
| TextBox | Location |  | Location |  |  | 0.00, 0.00, 1.16, 0.21 |
| TextBox | Lot ID |  | Lot ID |  |  | 1.17, 0.00, 1.16, 0.21 |
| TextBox | Species/Age Class |  | Species_Age_Class |  |  | 2.33, 0.00, 1.46, 0.21 |
| TextBox | Net Note |  | Net Note |  |  | 7.18, 0.00, 0.81, 0.21 |
| TextBox | Text70 |  | Bed_Bal |  |  | 3.82, 0.00, 0.81, 0.21 |
| Subform | NMIS_TOLIFT_ORDER subrep |  | Report.TOLIFT_ORDER_Lift_Priority subrep (master: Agreement_Lot_CN;FY → child: AGREEMENT_LOT_CN;FISCAL_YEAR) |  |  | 2.12, 0.23, 5.88, 0.02 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text58 |  | =Sum([Feet To Lift]) |  |  | 4.74, 0.03, 0.65, 0.21 |
| TextBox | Text59 |  | =Sum([Net Order]) |  |  | 6.26, 0.03, 0.89, 0.21 |
| Line | Line61 |  |  |  |  | 4.75, 0.04, 0.64, 0.00 |
| Line | Line62 |  |  |  |  | 6.27, 0.04, 0.88, 0.00 |
| TextBox | Text71 |  | =Sum([Bed_Bal]) |  |  | 3.77, 0.03, 0.86, 0.21 |
| Line | Line72 |  |  |  |  | 3.78, 0.04, 0.85, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.04, 0.08, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.98, 0.08, 2.00, 0.21 |
| Line | Line46 |  |  |  |  | 0.00, 0.02, 7.97, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text63 |  | =Sum([Feet To Lift]) |  |  | 4.61, 0.03, 0.77, 0.21 |
| TextBox | Text64 |  | =Sum([Net Order]) |  |  | 6.26, 0.03, 0.89, 0.21 |
| Line | Line65 |  |  |  |  | 4.71, 0.04, 0.68, 0.00 |
| Line | Line66 |  |  |  |  | 6.27, 0.04, 0.88, 0.00 |
| TextBox | Text73 |  | =Sum([Bed_Bal]) |  |  | 3.65, 0.03, 0.99, 0.21 |
| Line | Line74 |  |  |  |  | 3.74, 0.04, 0.90, 0.00 |
