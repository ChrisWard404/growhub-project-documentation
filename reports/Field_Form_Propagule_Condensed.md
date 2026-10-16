# Report: Field_Form_Propagule_Condensed

**Caption:** Field Form  
**Grouping/sorting:** `END_PRODUCT_TYPE`, `MinOfLOCATION`, `SUBLOT_NO`  
**Backend tables referenced:** `NMIS_PRODUCT_TYPES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Client_Label | Client |  |  |  | 0.74, 1.36, 0.33, 0.21 |
| Label | Source_Location_Label | Source |  |  |  | 1.77, 1.36, 0.41, 0.21 |
| Label | Date_Sown_Label | Date Sown |  |  |  | 3.38, 1.19, 0.33, 0.38 |
| Label | Bed_Feet_Label | Bed Feet |  |  |  | 3.88, 1.20, 0.41, 0.38 |
| Label | Bed_Start_Label | Field: |  |  |  | 4.58, 1.19, 0.30, 0.20 |
| Label | Notes_Label | Notes |  |  |  | 5.42, 1.36, 0.34, 0.21 |
| Line | Line21 |  |  |  |  | 0.08, 1.59, 7.85, 0.00 |
| Label | Label26 | From..... .....To |  |  |  | 4.32, 1.37, 0.72, 0.20 |
| Label | Label29 | Lot ID |  |  |  | 0.09, 1.36, 0.33, 0.21 |
| Line | Line28 |  |  |  |  | 0.12, 1.19, 7.81, 0.00 |
| Label | Label18 | Field Form for Plants Grown For Propagule Production |  |  |  | 0.52, 0.56, 6.78, 0.23 |
| Label | Label24 | Observation Dates ________________________ |  |  |  | 0.10, 0.99, 2.96, 0.21 |
| Label | Label25 | Observers________________________________ |  |  |  | 4.96, 0.99, 2.96, 0.21 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.62, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.23, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.37, 0.00, 3.24, 0.16 |
| ComboBox | END_PRODUCT_TYPE |  | END_PRODUCT_TYPE | SELECT [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE], [NMIS_PRODUCT_TYPES].[PRODUCT_TYPE_DESC] FROM NMIS_PRODUCT_TYPES; |  | 2.25, 0.79, 3.67, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client |  | Major_Client |  |  | 0.68, 0.00, 0.46, 0.18 |
| TextBox | Source_Location |  | SOURCE |  |  | 1.15, 0.00, 2.13, 0.18 |
| TextBox | Date_Sown |  | MinOfACTIVITY_DATE |  |  | 3.30, 0.00, 0.54, 0.18 |
| TextBox | Bed_Feet |  | SumOfTotal_Activity_Units |  |  | 3.88, 0.00, 0.41, 0.18 |
| TextBox | Bed_Start |  | MinOfLOCATION |  |  | 4.31, 0.00, 0.39, 0.18 |
| TextBox | Bed_End |  | MaxOfLOCATION |  |  | 4.70, 0.00, 0.41, 0.18 |
| TextBox | CN |  | ID |  |  | 0.04, 0.00, 0.49, 0.18 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 0.53, 0.00, 0.15, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line32 |  |  |  |  | 0.08, 0.02, 7.85, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text45 |  | =Sum([SumOfTotal_Activity_Units]) |  |  | 3.39, 0.00, 0.95, 0.18 |
| Label | Label46 | Totals |  |  |  | 1.25, 0.00, 0.42, 0.18 |
| Label | Label47 | Bed Feet |  |  |  | 4.40, 0.00, 0.58, 0.18 |
| TextBox | Text48 |  | =(Sum([SumOfTotal_Activity_Units])/6857) |  |  | 5.27, 0.00, 0.95, 0.18 |
| Label | Label49 | Acres |  |  |  | 6.27, 0.00, 0.40, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.23, 0.02, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.17, 0.02, 5.75, 0.15 |
| Line | Line22 |  |  |  |  | 0.12, 0.00, 7.81, 0.00 |
