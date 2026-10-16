# Report: Request_Checklist_by_Age_Class_End_Year_Summary

**Caption:** Request_Summary_Checklist  
**Grouping/sorting:** `CATEGORY_CODE`, `Beg_FY`, `Class`, `PARENT_ASSOCIATE`, `CLIENT_ASSOCIATE`, `PLNTMSTR_SYMBOL`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Sowing Request Summary by Age Class and Client |  |  |  | 2.21, 0.59, 3.74, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Line | Line113 |  |  |  |  | 0.00, 1.71, 8.00, 0.00 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 2.21, 0.85, 3.71, 0.26 |
| Label | Label41 | Request (M) |  |  |  | 5.28, 1.48, 0.94, 0.23 |
| Label | Label73 | Source Required |  |  |  | 7.27, 1.28, 0.72, 0.43 |
| Label | Label119 | Calculated (M) |  |  |  | 6.26, 1.28, 0.94, 0.43 |
| TextBox | Beg_FY |  | Beg_End_FY |  |  | 2.00, 1.12, 4.17, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text66 |  | Class |  |  | 0.00, 0.02, 2.17, 0.29 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo81 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.08, 0.04, 4.79, 0.19 |
| TextBox | Text46 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.38, 0.00, 0.82, 0.23 |
| TextBox | Text76 |  | =Sum([Agreement_Source_Required]) |  |  | 7.19, 0.00, 0.80, 0.23 |
| TextBox | Text121 |  | =Sum([Adj_Req]) |  |  | 6.28, 0.00, 0.82, 0.23 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo82 |  | PARENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Totals for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.08, 0.04, 4.79, 0.19 |
| Line | Line109 |  |  |  |  | 0.00, 0.25, 8.00, 0.00 |
| TextBox | Text127 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.38, 0.00, 0.82, 0.23 |
| TextBox | Text128 |  | =Sum([Agreement_Source_Required]) |  |  | 7.19, 0.00, 0.80, 0.23 |
| TextBox | Text129 |  | =Sum([Adj_Req]) |  |  | 6.28, 0.00, 0.82, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class |  | [Class] |  |  | 0.72, 0.04, 2.17, 0.19 |
| Label | Label108 | Totals for  |  |  |  | 0.05, 0.05, 0.67, 0.19 |
| Line | Line112 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |
| TextBox | Text130 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.39, 0.00, 0.82, 0.23 |
| TextBox | Text131 |  | =Sum([Agreement_Source_Required]) |  |  | 7.20, 0.00, 0.80, 0.23 |
| TextBox | Text132 |  | =Sum([Adj_Req]) |  |  | 6.29, 0.00, 0.82, 0.23 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text140 |  | [BEG_FY] |  |  | 0.72, 0.04, 2.17, 0.19 |
| Label | Label141 | Totals for  |  |  |  | 0.05, 0.05, 0.67, 0.19 |
| Line | Line142 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |
| TextBox | Text143 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.39, 0.00, 0.82, 0.23 |
| TextBox | Text144 |  | =Sum([Agreement_Source_Required]) |  |  | 7.20, 0.00, 0.80, 0.23 |
| TextBox | Text145 |  | =Sum([Adj_Req]) |  |  | 6.29, 0.00, 0.82, 0.23 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, "Totals for " & [CATEGORY_DESC] AS CD FROM NMIS_CATEGORIES; |  | 0.08, 0.04, 2.71, 0.19 |
| Line | Line111 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |
| TextBox | Text133 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.39, 0.00, 0.82, 0.23 |
| TextBox | Text134 |  | =Sum([Agreement_Source_Required]) |  |  | 7.20, 0.00, 0.80, 0.23 |
| TextBox | Text135 |  | =Sum([Adj_Req]) |  |  | 6.29, 0.00, 0.82, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.18, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.53, 0.05, 5.46, 0.16 |
| Line | Line22 |  |  |  |  | 0.00, 0.03, 7.98, 0.01 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label107 | Grand Total |  |  |  | 0.19, 0.04, 0.79, 0.19 |
| TextBox | Text136 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.37, 0.00, 0.82, 0.23 |
| TextBox | Text137 |  | =Sum([Agreement_Source_Required]) |  |  | 7.18, 0.00, 0.80, 0.23 |
| TextBox | Text138 |  | =Sum([Adj_Req]) |  |  | 6.28, 0.00, 0.82, 0.23 |
