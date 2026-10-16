# Report: Request_Checklist_by_Age_Class

**Caption:** Request_Summary_Checklist  
**Record source:**

```sql
Request_Summary
```

**Grouping/sorting:** `CATEGORY_CODE`, `Class`, `PARENT_ASSOCIATE`, `CLIENT_ASSOCIATE`, `PLNTMSTR_SYMBOL`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Sowing Request Summary by Age Class and Client |  |  |  | 2.21, 0.59, 3.74, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Label | Label87 | Lot ID |  |  |  | 2.16, 1.48, 1.27, 0.23 |
| Line | Line113 |  |  |  |  | 0.00, 1.71, 8.00, 0.00 |
| Label | Label115 | Contact |  |  |  | 0.04, 1.48, 1.93, 0.23 |
| Label | Label117 | Species/Source ID |  |  |  | 3.59, 1.48, 1.67, 0.23 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 2.21, 0.85, 3.71, 0.26 |
| Label | Label41 | Request (M) |  |  |  | 5.59, 1.28, 0.70, 0.43 |
| Label | Label73 | Source Required |  |  |  | 7.27, 1.28, 0.72, 0.43 |
| Label | Label119 | Calculated (M) |  |  |  | 6.32, 1.28, 0.94, 0.43 |
| TextBox | Beg_FY |  | Beg_FY |  |  | 2.21, 1.12, 3.71, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text66 |  | Class |  |  | 0.00, 0.00, 3.71, 0.29 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | PARENT_ASSOCIATE |  | PARENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 6.08, 0.26 |

## Section: GroupHeader6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo74 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 6.08, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text122 |  | ID |  |  | 2.19, 0.00, 1.48, 0.23 |
| TextBox | Text123 |  | SumOfAMOUNT_REQUESTED |  |  | 5.69, 0.00, 0.64, 0.23 |
| TextBox | Text124 |  | Agreement_Source_Required |  |  | 7.19, 0.00, 0.80, 0.25 |
| TextBox | Text125 |  | Contact_Name |  |  | 0.01, 0.00, 2.17, 0.23 |
| TextBox | Text126 |  | PlntmstrSymbol_SourceID |  |  | 3.67, 0.00, 2.02, 0.23 |
| TextBox | Text120 |  | Adj_Req |  |  | 6.34, 0.00, 0.82, 0.23 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo81 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.08, 0.04, 4.79, 0.19 |
| Line | Line110 |  |  |  |  | 0.00, 0.26, 8.00, 0.00 |
| Line | Line121 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |
| TextBox | Text46 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.41, 0.00, 0.92, 0.25 |
| TextBox | Text76 |  | =Sum([Agreement_Source_Required]) |  |  | 7.19, 0.00, 0.80, 0.25 |
| TextBox | Text121 |  | =Sum([Adj_Req]) |  |  | 6.34, 0.00, 0.82, 0.25 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo82 |  | PARENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.08, 0.04, 4.79, 0.19 |
| Line | Line109 |  |  |  |  | 0.00, 0.25, 8.00, 0.00 |
| TextBox | Text127 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.41, 0.00, 0.92, 0.25 |
| TextBox | Text128 |  | =Sum([Agreement_Source_Required]) |  |  | 7.19, 0.00, 0.80, 0.25 |
| TextBox | Text129 |  | =Sum([Adj_Req]) |  |  | 6.34, 0.00, 0.82, 0.25 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Age_Class |  | [Class] |  |  | 0.72, 0.05, 2.17, 0.19 |
| Label | Label108 | Totals for  |  |  |  | 0.08, 0.05, 0.64, 0.19 |
| Line | Line112 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |
| TextBox | Text130 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.42, 0.00, 0.92, 0.25 |
| TextBox | Text131 |  | =Sum([Agreement_Source_Required]) |  |  | 7.20, 0.00, 0.80, 0.25 |
| TextBox | Text132 |  | =Sum([Adj_Req]) |  |  | 6.35, 0.00, 0.82, 0.25 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, "Totals for " & [CATEGORY_DESC] AS CD FROM NMIS_CATEGORIES; |  | 0.08, 0.05, 2.71, 0.19 |
| Line | Line111 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |
| TextBox | Text133 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.42, 0.00, 0.92, 0.25 |
| TextBox | Text134 |  | =Sum([Agreement_Source_Required]) |  |  | 7.20, 0.00, 0.80, 0.25 |
| TextBox | Text135 |  | =Sum([Adj_Req]) |  |  | 6.35, 0.00, 0.82, 0.25 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.18, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.53, 0.05, 5.46, 0.16 |
| Line | Line22 |  |  |  |  | 0.00, 0.03, 7.98, 0.01 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label107 | Grand Total |  |  |  | 0.12, 0.08, 0.93, 0.19 |
| TextBox | Text136 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.41, 0.00, 0.92, 0.25 |
| TextBox | Text137 |  | =Sum([Agreement_Source_Required]) |  |  | 7.19, 0.00, 0.80, 0.25 |
| TextBox | Text138 |  | =Sum([Adj_Req]) |  |  | 6.34, 0.00, 0.82, 0.25 |
