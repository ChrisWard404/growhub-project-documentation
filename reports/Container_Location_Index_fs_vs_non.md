# Report: Container_Location_Index_fs_vs_non

**Grouping/sorting:** `Facility`, `Location_Parent`, `Location`, `BEGIN_INDEX`, `END_INDEX`, `id2`  
**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS subreport`  
**Opened from (VBA):** `Form_Field_Map Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.79, 0.16, 2.81, 0.19 |
| Label | Label33 | Container Facility Index |  |  |  | 3.49, 0.56, 1.43, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.40, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.54, 0.00, 3.24, 0.16 |
| Line | Line45 |  |  |  |  | 0.16, 1.65, 7.83, 0.00 |
| Label | Label46 | Nursery ID |  |  |  | 0.51, 1.44, 0.73, 0.19 |
| Label | Label47 | Containers In Location |  |  |  | 6.17, 1.28, 0.91, 0.36 |
| Label | Label48 | Location |  |  |  | 4.53, 1.44, 0.62, 0.19 |
| Label | Label49 | Source |  |  |  | 1.56, 1.44, 0.51, 0.19 |
| Label | Label50 | Begin Index |  |  |  | 5.27, 1.28, 0.47, 0.36 |
| Label | Label56 | End Index |  |  |  | 5.68, 1.28, 0.47, 0.36 |
| Label | Label63 | Lot Total Containers |  |  |  | 3.75, 1.28, 0.78, 0.35 |
| ComboBox | Text12 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 2.40, 0.82, 3.71, 0.26 |
| TextBox | Split_Lots |  | =IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*") |  |  | 0.00, 1.19, 1.91, 0.19 |
| TextBox | Like_Client |  | Like_Client |  |  | 0.00, 0.19, 1.91, 0.20 |
| TextBox | Like_Plntmstr_Symbol |  | Like_Plntmstr_Symbol |  |  | 0.00, 0.39, 1.91, 0.20 |
| TextBox | Text73 |  | Like_Product_Group |  |  | 0.00, 0.00, 1.91, 0.20 |
| TextBox | Text75 |  | =IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class]) |  |  | 0.00, 0.99, 1.90, 0.20 |
| TextBox | Like_End_FY |  | Like_End_FY |  |  | 0.00, 0.79, 1.91, 0.20 |
| TextBox | Text76 |  | Like_Begin_FY |  |  | 0.00, 0.59, 1.91, 0.20 |
| TextBox | ToLift |  | ="Forest Service R" & Mid$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],2,1) |  |  | 5.78, 0.02, 2.20, 0.20 |
| TextBox | NotToLift |  | ="Non-Region and non-Forest Service" |  |  | 5.78, 0.23, 2.20, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_ID_LOCATIONS subreport |  | Report.NMIS_ID_LOCATIONS subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 5.73, 0.05, 0.92, 0.17 |
| TextBox | Ft_In_Lot |  | Containers_In_Lot |  |  | 6.24, 0.17, 0.38, 0.19 |
| TextBox | Begin_Riser |  | BEGIN_INDEX |  |  | 5.31, 0.17, 0.41, 0.19 |
| TextBox | Location |  | Location |  |  | 4.58, 0.18, 0.53, 0.18 |
| Line | Line43 |  |  |  |  | 0.16, 0.36, 7.79, 0.00 |
| TextBox | Text51 |  | =[Major_Client] & "-" & [ID2] & "    " & [ID_Source] |  |  | 0.24, 0.17, 3.75, 0.19 |
| TextBox | End_Riser |  | END_INDEX |  |  | 5.73, 0.17, 0.46, 0.19 |
| TextBox | Text61 |  | =[NMIS_ID_LOCATIONS subreport].[Report]![Ft_In_Lot] |  |  | 4.03, 0.17, 0.50, 0.19 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 5.12, 0.21, 0.17, 0.15 |
| TextBox | ID |  | Sublot_ID |  |  | 4.85, 0.04, 0.77, 0.13 |
| TextBox | Description |  | DESCRIPTION |  |  | 0.20, 0.01, 4.68, 0.12 |
| TextBox | NOTE |  | FirstOfNOTE |  |  | 6.64, 0.17, 1.32, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.46, 0.02, 1.14, 0.00 |
| TextBox | Text68 |  | =Format(Date(),"Long Date") & " " & Format(Time(),"Long Time") |  |  | 0.21, 0.03, 2.06, 0.00 |
| Line | Line74 |  |  |  |  | 0.16, 0.00, 7.79, 0.00 |
| ComboBox | Combo77 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 4.62, 0.01, 3.34, 0.24 |
