# Report: Field_Location_Worksheet_Condensed_bu

**Grouping/sorting:** `Field`, `ZONE`, `Location`  
**Backend tables referenced:** `NMIS_LOCATIONS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| Label | Label33 | Bareroot Location Worksheet |  |  |  | 3.27, 0.56, 1.76, 0.20 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.28, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.49, 0.00, 3.24, 0.16 |
| Line | Line45 |  |  |  |  | 0.16, 1.31, 7.83, 0.00 |
| Label | Label46 | Bed |  |  |  | 0.10, 1.10, 0.49, 0.20 |
| Label | Label48 | Currently Used as: |  |  |  | 2.45, 1.10, 1.35, 0.20 |
| Label | Label49 | Bed Feet |  |  |  | 1.31, 0.94, 0.35, 0.36 |
| ComboBox | Text12 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 2.28, 0.77, 3.75, 0.26 |
| Label | Label84 | Zone |  |  |  | 0.76, 1.10, 0.39, 0.20 |
| Label | Label91 | Acres |  |  |  | 1.93, 1.10, 0.41, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text87 |  | =IIf(Not IsNull([zone]),"Irrigation Zone" & "  " & [zone]) |  |  | 3.21, 0.00, 2.00, 0.01 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line43 |  |  |  |  | 0.16, 0.25, 7.84, 0.00 |
| TextBox | LOCATION |  | LOCATION |  |  | 0.10, 0.01, 0.69, 0.22 |
| TextBox | INDEX_MAX |  | INDEX_MAX |  |  | 1.22, 0.01, 0.45, 0.22 |
| TextBox | UNIT_DESC |  | info |  |  | 2.45, 0.01, 5.52, 0.22 |
| TextBox | ZONE |  | ZONE |  |  | 0.81, 0.01, 0.39, 0.22 |
| TextBox | Text90 |  | ac |  |  | 1.75, 0.01, 0.49, 0.22 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text89 |  | =IIf(Not IsNull([zone]),"Irrigation Zone" & "  " & [zone]) |  |  | 3.21, 0.00, 2.00, 0.01 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text92 |  | =Sum([INDEX_MAX]) |  |  | 0.93, 0.00, 0.80, 0.22 |
| TextBox | Text93 |  | =Sum([ac]) |  |  | 1.73, 0.00, 0.65, 0.22 |
| Label | Label94 | Totals |  |  |  | 0.38, 0.03, 0.51, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.30, 0.00, 1.14, 0.19 |
| TextBox | Text68 |  | =Format(Date(),"Long Date") & " " & Format(Time(),"Long Time") |  |  | 0.21, 0.00, 2.06, 0.19 |
| Line | Line74 |  |  |  |  | 0.16, 0.00, 7.82, 0.00 |
| ComboBox | Combo78 |  | Location_Parent | SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_DESC FROM NMIS_LOCATIONS; |  | 5.32, 0.01, 2.67, 0.24 |
