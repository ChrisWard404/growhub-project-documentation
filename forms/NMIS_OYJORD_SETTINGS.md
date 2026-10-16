# Form: NMIS_OYJORD_SETTINGS

**Caption:** NMIS OYJORD SETTINGS  
**Record source:**

```sql
SELECT NMIS_OYJORD_SETTINGS.OYJORD_ID, NMIS_OYJORD_SETTINGS.GEAR, NMIS_OYJORD_SETTINGS.ZMAX, NMIS_OYJORD_SETTINGS.TURNS, NMIS_OYJORD_SETTINGS.TRAVEL_PER_REVOLUTION FROM NMIS_OYJORD_SETTINGS ORDER BY NMIS_OYJORD_SETTINGS.OYJORD_ID, NMIS_OYJORD_SETTINGS.GEAR, NMIS_OYJORD_SETTINGS.ZMAX, NMIS_OYJORD_SETTINGS.TURNS, NMIS_OYJORD_SETTINGS.TRAVEL_PER_REVOLUTION;
```

**Backend tables referenced:** `NMIS_OYJORD_SETTINGS`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`, `Form_xLookup_Tables_Menu`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | OYJORD_ID_Label | Oyjord ID |  |  |  | 0.21, 0.86, 0.69, 0.20 |
| Label | GEAR_Label | Gear |  |  |  | 1.04, 0.86, 0.45, 0.20 |
| Label | ZMAX_Label | Zmax |  |  |  | 1.72, 0.86, 0.51, 0.20 |
| Label | TURNS_Label | Turns |  |  |  | 2.47, 0.86, 0.57, 0.20 |
| Label | TRAVEL_PER_REVOLUTION_Label | Travel/ Revolution |  |  |  | 3.30, 0.68, 0.77, 0.38 |
| Label | Label10 | Oyjord Setings |  |  |  | 1.67, 0.08, 1.68, 0.31 |
| Line | Line11 |  |  |  |  | 0.08, 0.58, 4.83, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | OYJORD_ID |  | OYJORD_ID |  |  | 0.21, 0.04, 0.69, 0.20 |
| TextBox | GEAR |  | GEAR |  |  | 1.04, 0.04, 0.45, 0.20 |
| TextBox | ZMAX |  | ZMAX |  |  | 1.72, 0.04, 0.51, 0.20 |
| TextBox | TURNS |  | TURNS |  |  | 2.47, 0.04, 0.57, 0.20 |
| TextBox | TRAVEL_PER_REVOLUTION |  | TRAVEL_PER_REVOLUTION |  |  | 3.29, 0.04, 0.79, 0.20 |
