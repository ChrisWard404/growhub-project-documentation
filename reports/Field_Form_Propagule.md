# Report: Field_Form_Propagule

**Caption:** Field Form  
**Grouping/sorting:** `END_PRODUCT_TYPE`, `MinOfMinOfLOCATION`, `SUBLOT_NO`  
**Backend tables referenced:** `NMIS_PRODUCT_TYPES`  
**Subforms/subreports:** `Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 0.74, 1.70, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 1.77, 1.70, 0.41, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 3.38, 1.52, 0.33, 0.38 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 3.88, 1.53, 0.41, 0.38 |
| Label | Bed_Start_Label | Field: |  |  |  | 4.58, 1.53, 0.30, 0.20 |
| Label | Notes_Label | Notes |  |  |  | 5.42, 1.70, 0.34, 0.21 |
| Line | Line21 |  |  |  |  | 0.00, 1.94, 7.91, 0.00 |
| Label | Label26 | From..... .....To |  |  |  | 4.32, 1.71, 0.72, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.10, 1.70, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.02, 1.49, 7.89, 0.00 |
| Label | Label18 | Field Form for Plants Grown For Propagule Production |  |  |  | 1.98, 0.62, 4.04, 0.24 |
| Label | Label24 | Observation Dates ________________________ |  |  |  | 4.90, 1.06, 3.01, 0.21 |
| Label | Label25 | Observers________________________________ |  |  |  | 4.90, 1.27, 3.01, 0.21 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.54, 0.16, 2.91, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.16, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.36, 0.00, 3.24, 0.16 |
| ComboBox | END_PRODUCT_TYPE |  | END_PRODUCT_TYPE | SELECT [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE], [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] FROM NMIS_PRODUCT_TYPES; |  | 2.17, 0.85, 3.67, 0.23 |
| TextBox | Show_Monitoring_Notes |  | =[Show Monitoring  Notes (Y/N or Blank for NO)] |  |  | 0.71, 0.21, 0.62, 0.29 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 0.68, 0.04, 0.46, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.15, 0.04, 2.13, 0.18 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 3.30, 0.04, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 3.88, 0.04, 0.41, 0.18 |
| TextBox | Bed_Start |  | MinOfMinOfLOCATION |  |  | 4.31, 0.04, 0.39, 0.18 |
| TextBox | Bed_End |  | MaxOfMaxOfLOCATION |  |  | 4.70, 0.04, 0.41, 0.18 |
| TextBox | Notes |  | LastOfNOTE |  |  | 5.18, 0.04, 2.74, 0.18 |
| TextBox | CN |  | ID |  |  | 0.04, 0.04, 0.49, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.54, 0.04, 0.14, 0.18 |
| Subform | NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport |  | Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 0.09, 0.53, 7.81, 0.03 |
| TextBox | Scientific_Name |  | Name |  |  | 0.05, 0.17, 3.25, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text45 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 3.38, 0.03, 0.95, 0.18 |
| Label | Label46 | Totals |  |  |  | 1.24, 0.03, 0.42, 0.18 |
| Label | Label47 | Bed Feet |  |  |  | 4.39, 0.03, 0.58, 0.18 |
| TextBox | Text48 |  | =(Sum([SumOfTotal_Activity_Units])/6857) |  |  | 5.26, 0.03, 0.95, 0.18 |
| Label | Label49 | Acres |  |  |  | 6.26, 0.03, 0.40, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.05, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.17, 0.05, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.12, 0.03, 7.81, 0.00 |
