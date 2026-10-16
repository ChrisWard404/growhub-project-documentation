# Report: Request_Checklist_by_Client_no_lots

**Caption:** Request_Summary_Checklist  
**Grouping/sorting:** `Reporting_Parent`, `CLIENT_ASSOCIATE`, `Beg_FY`, `END_FY`, `CATEGORY_CODE`, `Class`, `PLNTMSTR_SYMBOL`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Request_Summary`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Sowing Request Summary by Client |  |  |  | 2.23, 0.62, 3.70, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Label | Label73 | Source Required |  |  |  | 7.27, 0.86, 0.72, 0.43 |
| Line | Line113 |  |  |  |  | 0.00, 1.29, 8.00, 0.00 |
| TextBox | like_begin_fy |  | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![Begin_FY] |  |  | 0.90, 0.21, 1.29, 0.00 |
| TextBox | Text134 | Like End fy: | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![End_FY] |  |  | 0.90, 0.39, 0.00, 0.18 |
| Label | Label136 | Like Begin fy: |  |  |  | 0.00, 0.20, 0.80, 0.18 |
| TextBox | Text137 | Like Client: | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![Like_client] |  |  | 0.90, 0.55, 0.00, 0.18 |
| TextBox | Text139 | Like Species: | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![Plntmstr_Symbol] |  |  | 0.90, 0.72, 0.00, 0.18 |
| TextBox | Text141 |  | ="Amt Calculated   (" & [UNIT_CODE] & ")" |  |  | 6.50, 0.67, 0.89, 0.62 |
| TextBox | Text144 |  | ="Request (" & [UNIT_CODE] & ")" |  |  | 5.64, 0.86, 0.86, 0.43 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Reporting_Parent |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.00, 0.00, 4.79, 0.26 |

## Section: GroupHeader6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo74 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.04, 0.02, 4.79, 0.23 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | END_FY |  | Req_in_For |  |  | 0.05, 0.00, 3.79, 0.24 |
| Line | Line130 |  |  |  |  | 0.00, 0.24, 8.00, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.01, 0.82, 0.23 |
| TextBox | Age_Class |  | [Class] |  |  | 0.04, 0.01, 2.78, 0.23 |
| TextBox | Text76 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.01, 0.80, 0.23 |
| TextBox | Text121 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.01, 0.82, 0.23 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.01, 0.82, 0.23 |
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, "Totals for " & [CATEGORY_DESC] AS CD FROM NMIS_CATEGORIES; |  | 0.02, 0.00, 3.27, 0.23 |
| TextBox | Text78 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.01, 0.80, 0.23 |
| Line | Line111 |  |  |  |  | 0.00, 0.24, 8.00, 0.00 |
| TextBox | Text122 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.01, 0.82, 0.23 |
| Line | Line114 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |
| Line | Line131 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text126 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.00, 0.82, 0.23 |
| TextBox | Text127 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.00, 0.80, 0.23 |
| TextBox | Text128 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.00, 0.82, 0.23 |
| TextBox | Combo129 |  | ="Totals " & [Req_in_For] |  |  | 0.02, 0.00, 4.27, 0.23 |
| Line | Line129 |  |  |  |  | 0.00, 0.23, 8.00, 0.00 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo81 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.02, 0.00, 5.06, 0.23 |
| TextBox | Text88 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.00, 0.82, 0.23 |
| TextBox | Text92 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.00, 0.80, 0.23 |
| Line | Line110 |  |  |  |  | 0.00, 0.23, 8.00, 0.00 |
| TextBox | Text123 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.00, 0.82, 0.23 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo82 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.02, 0.00, 5.06, 0.23 |
| TextBox | Text95 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.48, 0.00, 0.82, 0.23 |
| TextBox | Text98 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.00, 0.80, 0.23 |
| Line | Line109 |  |  |  |  | 0.00, 0.23, 8.00, 0.00 |
| TextBox | Text124 |  | =Sum([Adj_Req]) |  |  | 6.34, 0.00, 0.82, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.12, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.49, 0.05, 5.46, 0.16 |
| Line | Line22 |  |  |  |  | 0.00, 0.03, 8.00, 0.01 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text101 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.48, 0.04, 0.82, 0.23 |
| TextBox | Text104 |  | =Sum([Agreement_Source_Required]) |  |  | 7.18, 0.04, 0.80, 0.23 |
| Label | Label107 | Grand Total |  |  |  | 0.06, 0.08, 0.93, 0.19 |
| TextBox | Text125 |  | =Sum([Adj_Req]) |  |  | 6.34, 0.04, 0.82, 0.23 |
