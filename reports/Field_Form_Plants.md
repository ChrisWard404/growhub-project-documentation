# Report: Field_Form_Plants

**Caption:** Stock Monitoring Form  
**Grouping/sorting:** `FirstOfCost_Center`, `MinOfMinOfLOCATION`, `MaxOfSOW_DIRECTION_SORT`, `MaxOfSOW_DIRECTION_SORT`, `ID`, `Sublot`  
**Subforms/subreports:** `Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport`  
**Opened from (VBA):** `Form_Field_Form_Plants`, `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 1.30, 1.09, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 3.18, 1.09, 0.43, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 4.74, 0.93, 0.33, 0.38 |
| Line | Line21 |  |  |  |  | 0.04, 1.33, 8.08, 0.00 |
| Label | Label26 | Location |  |  |  | 5.98, 1.10, 0.70, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.06, 1.09, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.00, 0.89, 8.13, 0.00 |
| Label | Label40 | Date ___________ |  |  |  | 6.95, 0.45, 1.12, 0.20 |
| Label | Label41 | By ____________ |  |  |  | 6.96, 0.66, 1.16, 0.20 |
| Label | Label42 | Nursery Management Information System |  |  |  | 2.81, 0.16, 2.81, 0.19 |
| TextBox | Text43 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.40, 0.35, 3.67, 0.20 |
| Label | Label44 | USDA Forest Service |  |  |  | 2.59, 0.00, 3.24, 0.16 |
| TextBox | Text45 |  | Grow_Units |  |  | 5.08, 1.10, 0.83, 0.20 |
| ComboBox | Text46 |  | FirstOfCost_Center | B;Bareroot Stock Monitoring Checklist;C;Container Stock Mointoring Checklist |  | 0.76, 0.59, 6.94, 0.23 |
| Label | Total_Req_Label | Sow Req |  |  |  | 1.88, 0.93, 0.33, 0.38 |
| Label | Label53 | End FY |  |  |  | 2.35, 0.93, 0.26, 0.39 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 1.24, 0.02, 0.55, 0.18 |
| TextBox | Source_Location |  | ID_SOURCE |  |  | 2.66, 0.02, 1.96, 0.18 |
| TextBox | Date_Sown |  | MaxOfMinOfACTIVITY_DATE |  |  | 4.64, 0.02, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 5.19, 0.02, 0.55, 0.18 |
| TextBox | From_To |  | From_To |  |  | 5.75, 0.02, 1.25, 0.18 |
| TextBox | Notes |  | Lot_Note |  |  | 6.99, 0.02, 1.13, 0.18 |
| TextBox | CN |  | ID |  |  | 0.00, 0.02, 1.05, 0.18 |
| TextBox | SUBLOT_NO |  | Sublot |  |  | 1.06, 0.02, 0.17, 0.18 |
| TextBox | Extra_Note_Line |  | Extra_Note_Line |  |  | 0.00, 0.20, 0.00, 0.01 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 1.79, 0.02, 0.46, 0.18 |
| TextBox | Text54 |  | END_FY |  |  | 2.26, 0.02, 0.40, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.03, 0.03, 8.09, 0.00 |
| Subform | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport |  | Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.57, 0.00, 7.49, 0.01 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text56 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 5.07, 0.02, 0.66, 0.18 |
| TextBox | Text57 |  | ="Total " & [Grow_Units] |  |  | 3.64, 0.00, 1.39, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.18, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.36, 0.05, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.02, 0.03, 8.08, 0.00 |
