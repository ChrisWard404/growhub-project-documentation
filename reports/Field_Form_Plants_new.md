# Report: Field_Form_Plants_new

**Caption:** Field Form  
**Grouping/sorting:** `MinOfLOCATION`, `MaxOfLOCATION`, `ID`, `Sublot`  
**Subforms/subreports:** `Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Field Monitoring Form for Plant Production |  |  |  | 0.50, 0.62, 7.21, 0.23 |
| Label | Label24 | Date ___________ |  |  |  | 6.76, 0.45, 1.12, 0.20 |
| Label | Label25 | By ____________ |  |  |  | 6.77, 0.66, 1.16, 0.20 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.23, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.37, 0.00, 3.24, 0.16 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 1.34, 0.21, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 2.38, 0.21, 0.41, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 3.98, 0.04, 0.33, 0.38 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 4.48, 0.04, 0.41, 0.38 |
| Label | Notes_Label | Lot Notes |  |  |  | 6.54, 0.21, 0.55, 0.21 |
| Line | Line21 |  |  |  |  | 0.08, 0.45, 7.85, 0.00 |
| Label | Label26 | Location |  |  |  | 4.92, 0.22, 1.33, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 0.21, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.12, 0.00, 7.81, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 1.28, 0.01, 0.46, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.75, 0.01, 2.13, 0.18 |
| TextBox | Date_Sown |  | MaxOfMinOfACTIVITY_DATE |  |  | 3.91, 0.01, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 4.48, 0.01, 0.41, 0.18 |
| TextBox | From_To |  | From_To |  |  | 4.92, 0.01, 1.59, 0.18 |
| TextBox | Notes |  | Lot_Note |  |  | 6.54, 0.01, 1.41, 0.00 |
| TextBox | CN |  | ID |  |  | 0.04, 0.01, 1.05, 0.18 |
| TextBox | SUBLOT_NO |  | Sublot |  |  | 1.10, 0.01, 0.17, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.09, 7.85, 0.00 |
| Subform | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport |  | Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.08, 0.04, 7.78, 0.02 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.17, 0.05, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.12, 0.03, 7.81, 0.00 |
