# Report: Request_Checklist_by_Client_no_lots_no_class

**Caption:** Request_Summary_Checklist  
**Grouping/sorting:** `Beg_FY`, `END_FY`, `Reporting_Parent`, `CLIENT_ASSOCIATE`, `CATEGORY_CODE`, `Class`, `PLNTMSTR_SYMBOL`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
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
| TextBox | like_begin_fy |  | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![Begin_FY] |  |  | 0.96, 0.18, 1.29, 0.00 |
| TextBox | Text134 | Like End fy: | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![End_FY] |  |  | 0.96, 0.35, 0.00, 0.18 |
| Label | Label136 | Like Begin fy: |  |  |  | 0.06, 0.17, 0.80, 0.18 |
| TextBox | Text137 | Like Client: | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![Like_client] |  |  | 0.96, 0.52, 0.00, 0.18 |
| TextBox | Text139 | Like Species: | =[Forms]![NMIS_AGREEMENT_LOTS_Request_Summary]![Plntmstr_Symbol] |  |  | 0.96, 0.69, 0.00, 0.18 |
| TextBox | Text141 |  | ="Amt Calculated   (" & [UNIT_CODE] & ")" |  |  | 6.49, 0.67, 0.89, 0.62 |
| TextBox | Text144 |  | ="Request (" & [UNIT_CODE] & ")" |  |  | 5.62, 0.86, 0.86, 0.43 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | END_FY |  | Req_in_For |  |  | 0.00, 0.00, 3.79, 0.24 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo82 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE,"("&  [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS Code_and_Name FROM NMIS_ASSOCIATES; |  | 0.02, 0.00, 5.06, 0.23 |
| TextBox | Text95 |  | =Sum([SumOfAMOUNT_REQUESTED]) |  |  | 5.48, 0.00, 0.82, 0.23 |
| TextBox | Text98 |  | =Sum([Agreement_Source_Required]) |  |  | 7.17, 0.00, 0.80, 0.23 |
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
