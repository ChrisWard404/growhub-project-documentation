# Report: Field_Form_Propagule_Landscape_letter

**Caption:** Field Form  
**Grouping/sorting:** `MinOfMinOfLOCATION`, `SUBLOT_NO`  
**Subforms/subreports:** `Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Prop_wide subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Field Form for Plants Grown For Propagule Production |  |  |  | 1.77, 0.62, 6.78, 0.23 |
| Label | Label24 | Observation Dates ________________________ |  |  |  | 7.34, 0.91, 3.12, 0.21 |
| Label | Label25 | Observers________________________________ |  |  |  | 7.35, 1.11, 3.12, 0.21 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.87, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.48, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.62, 0.00, 3.24, 0.16 |
| TextBox | Show_Monitoring_Notes |  | =[Show Monitoring  Notes (Y/N or Blank for NO)] |  |  | 0.50, 0.38, 0.62, 0.29 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 0.85, 0.21, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 2.03, 0.21, 0.41, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 4.85, 0.04, 0.33, 0.38 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 5.52, 0.04, 0.41, 0.38 |
| Label | Bed_Start_Label | Field: |  |  |  | 6.37, 0.04, 0.30, 0.20 |
| Label | Notes_Label | Notes |  |  |  | 7.23, 0.21, 0.34, 0.21 |
| Line | Line21 |  |  |  |  | 0.00, 0.44, 10.55, 0.00 |
| Label | Label26 | From..... .....To |  |  |  | 6.11, 0.22, 0.72, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 0.21, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.00, 0.00, 10.55, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 0.79, 0.01, 0.57, 0.23 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.41, 0.01, 3.21, 0.24 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 4.68, 0.01, 0.65, 0.23 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 5.38, 0.01, 0.53, 0.23 |
| TextBox | Bed_Start |  | MinOfMinOfLOCATION |  |  | 6.01, 0.01, 0.44, 0.23 |
| TextBox | Bed_End |  | MaxOfMaxOfLOCATION |  |  | 6.51, 0.01, 0.46, 0.23 |
| TextBox | Notes |  | LastOfNOTE |  |  | 7.04, 0.01, 3.42, 0.23 |
| TextBox | CN |  | ID |  |  | 0.04, 0.01, 0.60, 0.23 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.64, 0.01, 0.16, 0.23 |
| Subform | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport |  | Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Prop_wide subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.09, 0.51, 10.37, 0.03 |
| TextBox | Scientific_Name |  | Name |  |  | 0.04, 0.19, 3.25, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 10.38, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.74, 0.05, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.08, 0.02, 10.37, 0.00 |
