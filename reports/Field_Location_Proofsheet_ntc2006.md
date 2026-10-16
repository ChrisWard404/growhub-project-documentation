# Report: Field_Location_Proofsheet_ntc2006

**Caption:** Field Map Proofsheet  
**Grouping/sorting:** `L1`, `Location`, `SOW_DIRECTION_SORT`  
**Backend tables referenced:** `NMIS_LOCATIONS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| Label | Label33 | Bareroot Stock Location Proofsheet |  |  |  | 2.24, 0.56, 3.68, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Line | Line29 |  |  |  |  | 0.00, 1.08, 8.06, 0.00 |
| ComboBox | Text12 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 2.24, 0.76, 3.71, 0.26 |
| TextBox | Split_Lots |  | =IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only**") |  |  | 0.08, 0.40, 1.88, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Field |  | L1 |  |  | 0.00, 0.00, 0.00, 0.00 |
| Line | Line45 |  |  |  |  | 0.04, 0.01, 8.00, 0.00 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Location |  | [Location] |  |  | 0.00, 0.01, 0.51, 0.00 |
| TextBox | Bed_Total |  | =IIf(Sum([Ft_In_Lot])>[Index_Max],"**","") & Sum([Ft_In_Lot]) |  |  | 1.51, 0.01, 0.47, 0.00 |
| Line | Line30 |  |  |  |  | 0.00, 0.00, 1.98, 0.00 |
| Line | Line31 |  |  |  |  | 0.00, 0.17, 1.98, 0.00 |
| TextBox | INDEX_MAX |  | INDEX_MAX |  |  | 0.96, 0.02, 0.30, 0.15 |
| Label | Label38 | (Max: |  |  |  | 0.63, 0.02, 0.31, 0.15 |
| Label | Label39 | ) |  |  |  | 1.27, 0.02, 0.07, 0.15 |
| TextBox | SB |  | SB |  |  | 1.36, 0.02, 0.15, 0.15 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Sublot_No |  |  | 0.00, 0.00, 0.69, 0.00 |
| TextBox | Ft_In_Lot |  | Ft_In_Lot |  |  | 1.67, 0.00, 0.32, 0.00 |
| TextBox | Riser_Beg |  | END_INDEX |  |  | 1.37, 0.00, 0.30, 0.00 |
| TextBox | Riser_End |  | BEGIN_INDEX |  |  | 1.07, 0.00, 0.29, 0.00 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.69, 0.00, 0.38, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.97, 0.00, 0.00, 0.19 |
| TextBox | Text41 |  | =Now() |  |  | 0.00, 0.00, 0.00, 0.19 |
| Line | Line46 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |
| TextBox | Text52 | = Sown Reversed | ="j" |  |  | 3.26, 0.02, 0.25, 0.19 |
