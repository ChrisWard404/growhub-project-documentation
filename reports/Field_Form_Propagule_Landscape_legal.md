# Report: Field_Form_Propagule_Landscape_legal

**Caption:** Field Form  
**Grouping/sorting:** `MinOfMinOfLOCATION`, `SUBLOT_NO`  
**Subforms/subreports:** `Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_wide_leg subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Plants Grown For Propagule Production by Location |  |  |  | 3.23, 0.62, 6.82, 0.23 |
| Label | Label32 | Nursery Management Information System |  |  |  | 5.35, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 4.96, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 5.10, 0.00, 3.24, 0.16 |
| TextBox | Show_Monitoring_Notes |  | =[Show Monitoring  Notes (Y/N or Blank for NO)] |  |  | 1.46, 0.25, 0.62, 0.29 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 1.30, 0.21, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 2.57, 0.21, 0.56, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 6.72, 0.04, 0.33, 0.38 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 7.58, 0.04, 0.41, 0.38 |
| Label | Bed_Start_Label | Field: |  |  |  | 8.71, 0.04, 0.30, 0.20 |
| Label | Notes_Label | Notes |  |  |  | 9.60, 0.21, 0.34, 0.21 |
| Line | Line21 |  |  |  |  | 0.08, 0.45, 13.39, 0.01 |
| Label | Label26 | From..... .....To |  |  |  | 8.45, 0.22, 0.72, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 0.21, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.08, 0.00, 13.37, 0.01 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 1.02, 0.01, 0.90, 0.29 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.95, 0.01, 4.38, 0.29 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 6.36, 0.01, 0.89, 0.29 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 7.25, 0.01, 0.75, 0.29 |
| TextBox | Bed_Start |  | MinOfMinOfLOCATION |  |  | 8.10, 0.01, 0.68, 0.29 |
| TextBox | Bed_End |  | MaxOfMaxOfLOCATION |  |  | 8.84, 0.01, 0.68, 0.29 |
| TextBox | Notes |  | LastOfNOTE |  |  | 9.58, 0.01, 3.89, 0.57 |
| TextBox | CN |  | ID |  |  | 0.04, 0.01, 0.78, 0.29 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.81, 0.01, 0.20, 0.29 |
| Subform | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport |  | Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_wide_leg subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.09, 0.61, 10.37, 0.03 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 13.39, 0.00 |
