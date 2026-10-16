# Report: Container_Location_Proofsheet_by_SowDate

**Grouping/sorting:** `L1_Label`, `L1`, `Location`, `SOW_DIRECTION_SORT`, `BEGIN_INDEX`, `END_INDEX`, `ID_Sublot_No`  
**Backend tables referenced:** `NMIS_LOCATIONS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.64, 0.16, 2.81, 0.19 |
| Label | Label33 | Container Stock Location Proofsheet |  |  |  | 2.23, 0.56, 3.70, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.25, 0.35, 3.67, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.39, 0.00, 3.24, 0.16 |
| Line | Line29 |  |  |  |  | 0.00, 1.39, 7.97, 0.00 |
| ComboBox | Text12 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 2.24, 0.94, 3.71, 0.26 |
| TextBox | Text50 |  | =IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*") |  |  | 0.00, 1.19, 1.91, 0.19 |
| TextBox | Like_Client |  | Like_Client |  |  | 0.00, 0.19, 1.91, 0.20 |
| TextBox | Like_Plntmstr_Symbol |  | Like_Plntmstr_Symbol |  |  | 0.00, 0.39, 1.91, 0.20 |
| TextBox | Text73 |  | Like_Product_Group |  |  | 0.00, 0.00, 1.91, 0.20 |
| TextBox | Text75 |  | =IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class]) |  |  | 0.00, 0.99, 1.90, 0.20 |
| TextBox | Like_End_FY |  | Like_End_FY |  |  | 0.00, 0.79, 1.91, 0.20 |
| TextBox | Text76 |  | Like_Begin_FY |  |  | 0.00, 0.59, 1.91, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Field |  | L1 |  |  | 0.00, 0.00, 0.00, 0.00 |
| Line | Line45 |  |  |  |  | 0.04, 0.01, 7.92, 0.00 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box68 |  |  |  |  | 0.00, 0.00, 1.98, 0.18 |
| TextBox | Location |  | Location |  |  | 0.00, 0.01, 0.51, 0.00 |
| Line | Line30 |  |  |  |  | 0.00, 0.00, 1.98, 0.00 |
| Line | Line31 |  |  |  |  | 0.00, 0.17, 1.98, 0.00 |
| Label | Label47 | Beg |  |  |  | 1.19, 0.01, 0.24, 0.16 |
| Label | Label48 | End |  |  |  | 1.43, 0.01, 0.24, 0.16 |
| Label | Label49 | Cts |  |  |  | 1.71, 0.01, 0.24, 0.16 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID_Sublot_No |  |  | 0.00, 0.00, 0.72, 0.16 |
| TextBox | Riser_End |  | BEGIN_INDEX |  |  | 1.07, 0.00, 0.34, 0.16 |
| TextBox | Ft_In_Lot |  | Containers_In_Lot |  |  | 1.73, 0.00, 0.28, 0.16 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.71, 0.00, 0.37, 0.16 |
| TextBox | Riser_Beg |  | END_INDEX |  |  | 1.42, 0.00, 0.34, 0.16 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Containers | Total Containers: | =Sum([Containers_In_Lot]) |  |  | 1.42, 0.00, 0.59, 0.00 |
| TextBox | Text71 | Total Cells: | =Sum([Cells]) |  |  | 1.44, 0.18, 0.59, 0.00 |
| TextBox | Text74 | Total Sq Ft: | =Sum([Area]) |  |  | 1.44, 0.36, 0.59, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.64, 0.00, 0.95, 0.00 |
| TextBox | Text41 |  | =Now() |  |  | 0.06, 0.00, 1.73, 0.00 |
| Line | Line46 |  |  |  |  | 0.00, 0.00, 7.97, 0.00 |
| ComboBox | Combo51 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 4.70, 0.01, 3.28, 0.24 |
