# Report: Request_Checklist_by_Client

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
| Label | Label73 | Source Required |  |  |  | 7.27, 1.28, 0.72, 0.43 |
| ComboBox | Reporting_Parent |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 1.67, 0.92, 4.79, 0.26 |
| Label | Label87 | Lot ID |  |  |  | 2.43, 1.48, 1.28, 0.23 |
| Line | Line113 |  |  |  |  | 0.00, 1.71, 8.00, 0.00 |
| Label | Label115 | Contact |  |  |  | 0.08, 1.48, 1.93, 0.23 |
| Label | Label117 | Species/Source ID |  |  |  | 3.86, 1.48, 1.39, 0.23 |
| TextBox | Text141 |  | ="Amt Calculated   (" & [UNIT_CODE] & ")" |  |  | 6.53, 1.08, 0.89, 0.62 |
| TextBox | Text144 |  | ="Request (" & [UNIT_CODE] & ")" |  |  | 5.67, 1.28, 0.86, 0.43 |

## Section: GroupHeader6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo74 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.04, 0.01, 4.79, 0.23 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | END_FY |  | Req_in_For |  |  | 0.05, 0.00, 3.79, 0.24 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.05, 0.02, 3.12, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text66 |  | Class |  |  | 0.10, 0.02, 2.17, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 2.48, 0.00, 1.40, 0.23 |
| TextBox | SumOfTOTAL_REQUEST |  | SumOfAMOUNT_REQUESTED |  |  | 5.47, 0.00, 0.82, 0.23 |
| TextBox | Agreement_Source_Required |  | Agreement_Source_Required |  |  | 7.17, 0.00, 0.80, 0.25 |
| TextBox | Text116 |  | Contact_Name |  |  | 0.20, 0.00, 2.27, 0.23 |
| TextBox | Text118 |  | PlntmstrSymbol_SourceID |  |  | 3.91, 0.00, 1.53, 0.23 |
| TextBox | Text120 |  | Adj_Req |  |  | 6.33, 0.00, 0.82, 0.23 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text46 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.01, 0.82, 0.25 |
| TextBox | Age_Class |  | [Class] |  |  | 0.66, 0.05, 2.17, 0.19 |
| TextBox | Text76 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.01, 0.80, 0.25 |
| Label | Label108 | Totals for  |  |  |  | 0.02, 0.05, 0.64, 0.19 |
| Line | Line112 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |
| Line | Line114 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |
| TextBox | Text121 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.01, 0.82, 0.25 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.01, 0.82, 0.23 |
| ComboBox | Combo63 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, "Totals for " & [CATEGORY_DESC] AS CD FROM NMIS_CATEGORIES; |  | 0.02, 0.05, 2.29, 0.19 |
| TextBox | Text78 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.01, 0.80, 0.25 |
| Line | Line111 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |
| TextBox | Text122 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.01, 0.82, 0.23 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text126 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.00, 0.82, 0.23 |
| TextBox | Text127 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.00, 0.80, 0.25 |
| TextBox | Text128 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.00, 0.82, 0.23 |
| TextBox | Combo129 |  | ="Totals " & [Req_in_For] |  |  | 0.02, 0.05, 3.83, 0.19 |
| Line | Line129 |  |  |  |  | 0.00, 0.27, 8.00, 0.00 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo81 |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.02, 0.04, 4.79, 0.19 |
| TextBox | Text88 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.47, 0.00, 0.82, 0.23 |
| TextBox | Text92 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.00, 0.80, 0.25 |
| Line | Line110 |  |  |  |  | 0.00, 0.26, 8.00, 0.00 |
| TextBox | Text123 |  | =Sum([Adj_Req]) |  |  | 6.33, 0.00, 0.82, 0.23 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo82 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, "Total for (" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.02, 0.04, 4.79, 0.19 |
| TextBox | Text95 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.48, 0.00, 0.82, 0.23 |
| TextBox | Text98 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.00, 0.80, 0.25 |
| Line | Line109 |  |  |  |  | 0.00, 0.25, 8.00, 0.00 |
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
| TextBox | Text104 |  | =Sum([Agreement_Source_Required]) |  |  | 7.18, 0.04, 0.80, 0.25 |
| Label | Label107 | Grand Total |  |  |  | 0.06, 0.08, 0.93, 0.19 |
| TextBox | Text125 |  | =Sum([Adj_Req]) |  |  | 6.34, 0.04, 0.82, 0.23 |
