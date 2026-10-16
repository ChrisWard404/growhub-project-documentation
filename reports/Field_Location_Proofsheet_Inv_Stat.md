# Report: Field_Location_Proofsheet_Inv_Stat

**Grouping/sorting:** `L1`, `Location`, `SOW_DIRECTION_SORT`  
**Backend tables referenced:** `NMIS_ACCESS_USER_NURSERY`, `NMIS_LOCATIONS`  
**Opened from (VBA):** `Form_Field_Map Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| Label | Label33 | Bareroot Stock Location Proofsheet |  |  |  | 2.20, 0.56, 3.68, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.21, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.35, 0.00, 3.24, 0.16 |
| ComboBox | Text12 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS ORDER BY NMIS_LOCATIONS.LOCATION; |  | 2.20, 0.76, 3.71, 0.26 |
| TextBox | Like_Client |  | Like_Client |  |  | 0.00, 0.19, 1.91, 0.20 |
| TextBox | Like_Plntmstr_Symbol |  | Like_Plntmstr_Symbol |  |  | 0.00, 0.39, 1.91, 0.20 |
| TextBox | Text73 |  | Like_Product_Group |  |  | 0.00, 0.00, 1.91, 0.20 |
| TextBox | Text75 |  | =IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class]) |  |  | 0.00, 0.99, 1.90, 0.20 |
| TextBox | Split_Lots |  | =IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only**") |  |  | 6.12, 0.99, 1.89, 0.19 |
| TextBox | Like_End_FY |  | Like_End_FY |  |  | 0.00, 0.79, 1.91, 0.20 |
| TextBox | Text58 |  | Like_Begin_FY |  |  | 0.00, 0.59, 1.91, 0.20 |
| Line | Line29 |  |  |  |  | 0.00, 1.23, 8.06, 0.00 |
| TextBox | Text77 |  | ="No Inv" |  |  | 6.70, 0.40, 0.78, 0.19 |
| TextBox | Text79 |  | ="Count Inv" |  |  | 6.70, 0.59, 0.78, 0.19 |
| TextBox | Text81 |  | ="Size Inv" |  |  | 6.70, 0.79, 0.78, 0.19 |
| Label | Label83 | Current Calendar Year |  |  |  | 6.39, 0.19, 1.45, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line45 |  |  |  |  | 0.04, 0.00, 1.94, 0.00 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box64 |  |  |  |  | 0.00, 0.00, 1.98, 0.18 |
| TextBox | Location |  | LOCATION_ZONE |  |  | 0.00, 0.01, 0.79, 0.00 |
| TextBox | Bed_Total |  | =IIf(Sum([Ft_In_Lot])>[Index_Max],"**",IIf([Forms]![Field_Map Form]![Highlight_Short_Beds] And ([Index_Max]-Sum([Ft_In_Lot]))>0.1*[Index_Max],"*","")) & Sum([Ft_In_Lot]) |  |  | 1.55, 0.01, 0.43, 0.00 |
| Line | Line30 |  |  |  |  | 0.00, 0.00, 1.98, 0.00 |
| Line | Line31 |  |  |  |  | 0.00, 0.17, 1.98, 0.00 |
| TextBox | SB |  | SB |  |  | 1.41, 0.02, 0.15, 0.15 |
| TextBox | Text72 |  | ="(Max:" & [INDEX_MAX] & ")" |  |  | 0.80, 0.02, 0.61, 0.15 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Sublot_No |  |  | 0.00, 0.00, 0.69, 0.00 |
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 1.67, 0.00, 0.32, 0.00 |
| TextBox | Riser_Beg |  | END_INDEX |  |  | 1.37, 0.00, 0.30, 0.00 |
| TextBox | Riser_End |  | BEGIN_INDEX |  |  | 1.07, 0.00, 0.29, 0.00 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.69, 0.00, 0.38, 0.00 |
| TextBox | PRODUCT_GROUP |  | PRODUCT_GROUP |  |  | 2.12, 0.04, 0.00, 0.09 |
| TextBox | Inv_Type |  | Inv_Type |  |  | 0.53, 0.00, 0.15, 0.16 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text65 |  | =Sum([Ft_In_Lot]) |  |  | 1.38, 0.00, 0.61, 0.00 |
| Label | Label66 | Total Bed Feet |  |  |  | 0.58, 0.01, 0.80, 0.16 |
| TextBox | Text74 |  | =Round(Sum([Ft_In_Lot])/[Forms]![Field_Map Form]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N],2) |  |  | 1.38, 0.17, 0.61, 0.00 |
| Label | Label75 | Total Acres |  |  |  | 0.58, 0.18, 0.80, 0.16 |
| TextBox | Text76 |  | =Round(Sum([Ft_In_Lot])/10890,2) |  |  | 1.38, 0.33, 0.61, 0.00 |
| Label | Label77 | Grow Acres |  |  |  | 0.43, 0.34, 0.96, 0.14 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 1.75, 0.00, 0.00, 0.19 |
| TextBox | Text41 |  | =Now() |  |  | 0.04, 0.00, 1.67, 0.19 |
| Line | Line46 |  |  |  |  | 0.00, 0.00, 8.05, 0.00 |
| TextBox | Text52 | = Sown Reversed | ="j" |  |  | 3.26, 0.02, 0.25, 0.19 |
| ComboBox | Combo63 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS ORDER BY NMIS_LOCATIONS.LOCATION; |  | 4.88, 0.01, 3.19, 0.25 |
