# Report: NMIS_LOCATIONS_CHECKLIST

**Grouping/sorting:** `LOCATION_TYPE`, `LOCATION`  
**Opened from (VBA):** `Form_NMIS_LOCATION_TYPES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_Label | Location |  |  |  | 0.01, 1.18, 0.63, 0.17 |
| Label | INDEX_MAX_Label | Index Max |  |  |  | 0.71, 1.18, 0.73, 0.17 |
| Label | LOCATION_DESC_Label | Description |  |  |  | 1.88, 1.18, 1.21, 0.17 |
| Line | Line14 |  |  |  |  | 0.00, 1.14, 8.00, 0.00 |
| Line | Line15 |  |  |  |  | 0.00, 1.39, 8.00, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.63, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.42, 0.00, 3.24, 0.16 |
| Label | Label24 | Location Checklist |  |  |  | 3.17, 0.56, 1.91, 0.19 |
| TextBox | Text20 |  | Header |  |  | 1.00, 0.78, 5.96, 0.26 |
| Label | Label23 | Zone |  |  |  | 1.48, 1.16, 0.35, 0.19 |
| Label | Label25 | Location |  |  |  | 4.03, 1.18, 0.63, 0.17 |
| Label | Label26 | Index Max |  |  |  | 4.73, 1.18, 0.73, 0.17 |
| Label | Label27 | Description |  |  |  | 5.90, 1.18, 1.21, 0.17 |
| Label | Label28 | Zone |  |  |  | 5.50, 1.16, 0.35, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION |  | LOCATION2 |  |  | 0.00, 0.00, 0.79, 0.17 |
| TextBox | INDEX_MAX |  | INDEX_MAX |  |  | 0.84, 0.00, 0.61, 0.17 |
| TextBox | ZONE |  | ZONE |  |  | 1.54, 0.00, 0.30, 0.17 |
| TextBox | LOCATION_DESC |  | LOCATION_DESC |  |  | 1.88, 0.00, 2.12, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.04, 0.08, 2.88, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.91, 0.08, 3.04, 0.18 |
| Label | Label29 | = Historical |  |  |  | 4.04, 0.09, 0.83, 0.18 |
| Label | Label30 | * |  |  |  | 3.18, 0.09, 0.83, 0.18 |
