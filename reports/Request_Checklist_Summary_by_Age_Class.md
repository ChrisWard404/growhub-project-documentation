# Report: Request_Checklist_Summary_by_Age_Class

**Grouping/sorting:** `CATEGORY_CODE`, `ClassBC`, `PARENT_ASSOCIATE`, `CLIENT_ASSOCIATE`, `PLNTMSTR_SYMBOL`, `ID`  
**Backend tables referenced:** `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Sowing Request Summary by Age Class |  |  |  | 2.22, 0.62, 3.72, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Line | Line113 |  |  |  |  | 0.00, 1.53, 8.00, 0.00 |
| Label | Label41 | Request (M) |  |  |  | 3.81, 1.10, 0.61, 0.43 |
| Label | Label73 | Source Required |  |  |  | 5.43, 1.10, 0.72, 0.43 |
| Label | Label119 | Calculated (M) |  |  |  | 4.49, 1.10, 0.80, 0.43 |
| TextBox | Beg_FY |  | Beg_FY |  |  | 2.24, 0.88, 3.71, 0.23 |
| Label | Label147 | Estimated Containers |  |  |  | 6.20, 1.10, 0.82, 0.43 |
| Label | Label153 | Begin Container |  |  |  | 7.16, 1.10, 0.82, 0.43 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.00, 0.00, 3.71, 0.26 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text154 |  | BEGIN_CONTAINER |  |  | 7.07, 0.00, 0.80, 0.25 |
| TextBox | Text148 |  | =Sum([EST_CONTAINERS_REQUIRED]) |  |  | 6.21, 0.00, 0.80, 0.25 |
| TextBox | Text132 |  | =Sum([Adj_Req]) |  |  | 4.47, 0.00, 0.82, 0.25 |
| TextBox | Text131 |  | =Sum([Agreement_Source_Required]) |  |  | 5.34, 0.00, 0.80, 0.25 |
| TextBox | Text130 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.60, 0.00, 0.82, 0.25 |
| TextBox | Age_Class |  | [Class] |  |  | 0.32, 0.00, 2.80, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text149 |  | =Sum([EST_CONTAINERS_REQUIRED]) |  |  | 6.22, 0.00, 0.80, 0.25 |
| Line | Line151 |  |  |  |  | 6.23, 0.00, 0.79, 0.00 |
| Line | Line142 |  |  |  |  | 5.35, 0.00, 0.79, 0.00 |
| Line | Line141 |  |  |  |  | 4.49, 0.00, 0.81, 0.00 |
| TextBox | Text133 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.60, 0.00, 0.82, 0.25 |
| TextBox | Text134 |  | =Sum([Agreement_Source_Required]) |  |  | 5.34, 0.00, 0.80, 0.25 |
| TextBox | Text135 |  | =Sum([Adj_Req]) |  |  | 4.47, 0.00, 0.82, 0.25 |
| Line | Line140 |  |  |  |  | 3.65, 0.00, 0.77, 0.00 |
| Line | Line111 |  |  |  |  | 0.00, 0.25, 8.00, 0.00 |
| TextBox | Text156 |  | =Sum([Total_Containers]) |  |  | 7.08, 0.00, 0.80, 0.25 |
| Line | Line155 |  |  |  |  | 7.09, 0.00, 0.79, 0.00 |
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, "Totals for " & [CATEGORY_DESC] AS CD FROM NMIS_CATEGORIES; |  | 0.08, 0.03, 3.54, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.18, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.53, 0.05, 5.46, 0.16 |
| Line | Line152 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label107 | Grand Total |  |  |  | 0.12, 0.12, 0.93, 0.19 |
| TextBox | Text136 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 3.60, 0.06, 0.82, 0.25 |
| TextBox | Text137 |  | =Sum([Agreement_Source_Required]) |  |  | 5.34, 0.06, 0.80, 0.25 |
| TextBox | Text138 |  | =Sum([Adj_Req]) |  |  | 4.47, 0.06, 0.82, 0.25 |
| TextBox | Text150 |  | =Sum([EST_CONTAINERS_REQUIRED]) |  |  | 6.20, 0.06, 0.80, 0.25 |
| TextBox | Text157 |  | =Sum([Total_Containers]) |  |  | 7.06, 0.06, 0.80, 0.25 |
