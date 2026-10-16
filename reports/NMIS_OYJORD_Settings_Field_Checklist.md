# Report: NMIS_OYJORD_Settings_Field_Checklist

**Caption:** NMIS_Oyjord_Field_Checklist  
**Record source:**

```sql
SELECT NMIS_OYJORD_SETTINGS.*, " Oyjord # " & [OYJORD_ID] & " Calibration Field Checklist" AS Page_Header, IIf([Gear]=0,4,[gear]) AS Gear_Sort_Order FROM NMIS_OYJORD_SETTINGS;
```

**Grouping/sorting:** `OYJORD_ID`, `TRAVEL_PER_REVOLUTION`, `Gear_Sort_Order`, `GEAR`  
**Backend tables referenced:** `NMIS_OYJORD_SETTINGS`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | UNIT_TYPE_Label | Gear |  |  |  | 0.51, 0.84, 0.38, 0.23 |
| Label | UNIT_CODE_Label | ZMax |  |  |  | 0.90, 0.84, 0.46, 0.23 |
| Label | UNIT_DESC_Label | Turns |  |  |  | 1.35, 0.84, 0.44, 0.23 |
| Label | CELL_DIMENSIONS_Label | Ft/Rev |  |  |  | 0.00, 0.84, 0.50, 0.23 |
| Line | Line16 |  |  |  |  | 0.00, 0.82, 7.98, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.51, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.29, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.29, 0.00, 3.24, 0.16 |
| Label | Label20 | Gear |  |  |  | 2.57, 0.84, 0.38, 0.23 |
| Label | Label21 | ZMax |  |  |  | 2.96, 0.84, 0.46, 0.23 |
| Label | Label22 | Turns |  |  |  | 3.42, 0.84, 0.44, 0.23 |
| Label | Label23 | Ft/Rev |  |  |  | 2.06, 0.84, 0.50, 0.23 |
| Label | Label25 | Gear |  |  |  | 4.58, 0.84, 0.38, 0.23 |
| Label | Label26 | ZMax |  |  |  | 4.97, 0.84, 0.46, 0.23 |
| Label | Label27 | Turns |  |  |  | 5.43, 0.84, 0.44, 0.23 |
| Label | Label28 | Ft/Rev |  |  |  | 4.07, 0.84, 0.50, 0.23 |
| Label | Label29 | Gear |  |  |  | 6.65, 0.84, 0.38, 0.23 |
| Label | Label30 | ZMax |  |  |  | 7.03, 0.84, 0.46, 0.23 |
| Label | Label33 | Turns |  |  |  | 7.49, 0.84, 0.44, 0.23 |
| Label | Label34 | Ft/Rev |  |  |  | 6.14, 0.84, 0.50, 0.23 |
| TextBox | OYJORD_ID |  | Page_Header |  |  | 1.62, 0.57, 4.83, 0.23 |
| Line | Line17 |  |  |  |  | 0.00, 1.09, 7.98, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | GEAR |  |  | 0.56, 0.00, 0.31, 0.17 |
| TextBox | UNIT_DESC |  | ZMAX |  |  | 0.96, 0.00, 0.36, 0.17 |
| TextBox | CELL_DIMENSIONS |  | TURNS |  |  | 1.41, 0.00, 0.37, 0.17 |
| TextBox | CELLS_PER_CONTAINER |  | TRAVEL_PER_REVOLUTION |  |  | 0.00, 0.00, 0.52, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.04, 0.02, 3.17, 0.00 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.81, 0.02, 3.17, 0.00 |
