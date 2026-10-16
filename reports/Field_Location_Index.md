# Report: Field_Location_Index

**Grouping/sorting:** `Field`, `Location`, `BED_SORT_ORDER`, `id2`  
**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS subreport`  
**Opened from (VBA):** `Form_Field_Form_Plants`, `Form_Field_Form_Plants_For_Inventory_Sizing`, `Form_Field_Map Form`, `Form_Lifting_Locations_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| Label | Label33 | Bareroot Index |  |  |  | 3.51, 0.56, 1.28, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.28, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.49, 0.00, 3.24, 0.16 |
| Label | Label46 | Nursery ID |  |  |  | 0.51, 1.39, 0.73, 0.19 |
| Label | Label47 | Ft In Bed |  |  |  | 6.15, 1.22, 0.39, 0.36 |
| Label | Label48 | Location |  |  |  | 4.46, 1.39, 0.62, 0.19 |
| Label | Label49 | Source |  |  |  | 1.56, 1.39, 0.51, 0.19 |
| Label | Label50 | Begin Index |  |  |  | 5.22, 1.22, 0.47, 0.36 |
| Label | Label56 | End Index |  |  |  | 5.63, 1.22, 0.47, 0.37 |
| Label | Label63 | Total Bed Ft |  |  |  | 3.93, 1.22, 0.47, 0.36 |
| TextBox | Like_Client |  | Like_Client |  |  | 0.19, 0.19, 1.91, 0.20 |
| TextBox | Like_Plntmstr_Symbol |  | Like_Plntmstr_Symbol |  |  | 0.19, 0.39, 1.91, 0.20 |
| TextBox | Text73 |  | Like_Product_Group |  |  | 0.19, 0.00, 1.91, 0.20 |
| TextBox | Text75 |  | =IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class]) |  |  | 0.19, 0.99, 1.90, 0.20 |
| ComboBox | Text12 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 2.28, 0.77, 3.75, 0.26 |
| TextBox | Split_Lots |  | =IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*") |  |  | 0.19, 1.19, 1.91, 0.19 |
| TextBox | Like_End_FY |  | Like_End_FY |  |  | 0.19, 0.79, 1.91, 0.20 |
| TextBox | Text77 |  | Like_Begin_FY |  |  | 0.19, 0.59, 1.91, 0.20 |
| TextBox | ToLift |  | =IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Plant"),"Lots Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports],Null) |  |  | 5.80, 0.01, 2.20, 0.20 |
| TextBox | NotToLift |  | =IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Plant"),"Lots NOT Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports],Null) |  |  | 5.80, 0.21, 2.20, 0.20 |
| TextBox | Propagule |  | =IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Propagule"),"Propagule Production Lot",Null) |  |  | 5.80, 0.41, 2.20, 0.20 |
| Label | Label81 | ZN |  |  |  | 6.62, 1.22, 0.16, 0.36 |
| Line | Line45 |  |  |  |  | 0.05, 1.58, 7.93, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | Sublot_ID |  |  | 5.02, 0.00, 0.77, 0.01 |
| TextBox | NOTE |  | FirstOfNOTE |  |  | 6.91, 0.03, 1.09, 0.19 |
| TextBox | SB |  | SB |  |  | 4.39, 0.05, 0.14, 0.15 |
| TextBox | Description |  | DESCRIPTION |  |  | 0.09, 0.01, 4.81, 0.00 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 5.10, 0.04, 0.17, 0.15 |
| TextBox | Text61 |  | =[NMIS_ID_LOCATIONS subreport].Report!Ft_In_Lot |  |  | 3.90, 0.01, 0.50, 0.21 |
| TextBox | End_Riser |  | END_INDEX |  |  | 5.69, 0.03, 0.42, 0.19 |
| TextBox | Text51 |  | =[Major_Client] & "-" & [ID2] & "    " & [ID_Source] |  |  | 0.14, 0.03, 3.75, 0.19 |
| Line | Line43 |  |  |  |  | 0.05, 0.24, 7.95, 0.00 |
| TextBox | Location |  | Location |  |  | 4.54, 0.03, 0.53, 0.19 |
| TextBox | Begin_Riser |  | BEGIN_INDEX |  |  | 5.27, 0.03, 0.40, 0.19 |
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 6.13, 0.03, 0.38, 0.19 |
| Subform | NMIS_ID_LOCATIONS subreport |  | Report.NMIS_ID_LOCATIONS subreport (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 5.62, 0.05, 0.92, 0.17 |
| TextBox | ZONE |  | ZONE |  |  | 6.57, 0.03, 0.33, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.30, 0.00, 1.14, 0.19 |
| TextBox | Text68 |  | =Format(Date(),"Long Date") & " " & Format(Time(),"Long Time") |  |  | 0.10, 0.00, 2.06, 0.19 |
| Line | Line74 |  |  |  |  | 0.05, 0.00, 7.93, 0.00 |
| TextBox | Text52 | = Sown Reversed | ="j" |  |  | 3.73, 0.03, 0.25, 0.19 |
| ComboBox | Combo78 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 5.32, 0.01, 2.67, 0.24 |
