# Form: NMIS_OYJORD_SETTINGS subform

**Caption:** NMIS_OYJORD_SETTINGS subform  
**Record source:**

```sql
SELECT Last(NMIS_OYJORD_SETTINGS1.TRAVEL_PER_REVOLUTION) AS LastOfTRAVEL_PER_REVOLUTION, NMIS_OYJORD_SETTINGS1.GEAR, Last(NMIS_OYJORD_SETTINGS1.ZMAX) AS LastOfZMAX, Last(NMIS_OYJORD_SETTINGS1.TURNS) AS LastOfTURNS, NMIS_OYJORD_SETTINGS1.gearsort FROM NMIS_OYJORD_SETTINGS1 GROUP BY NMIS_OYJORD_SETTINGS1.GEAR, NMIS_OYJORD_SETTINGS1.gearsort ORDER BY NMIS_OYJORD_SETTINGS1.gearsort DESC;
```

**Embedded in:** `Form:Oyjord_Calibration subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | GEAR_Label | Gear |  |  |  | 0.03, 0.04, 0.39, 0.21 |
| Label | ZMAX_Label | Zmax |  |  |  | 0.48, 0.04, 0.43, 0.21 |
| Label | TURNS_Label | Turns |  |  |  | 0.96, 0.04, 0.43, 0.21 |
| Label | TRAVEL_PER_REVOLUTION_Label | Travel/Revolution |  |  |  | 1.45, 0.04, 1.23, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GEAR |  | GEAR |  |  | 0.03, 0.03, 0.38, 0.20 |
| TextBox | ZMAX |  | LastOfZMAX |  |  | 0.48, 0.03, 0.43, 0.20 |
| TextBox | TURNS |  | LastOfTURNS |  |  | 0.96, 0.03, 0.43, 0.20 |
| TextBox | TRAVEL_PER_REVOLUTION |  | LastOfTRAVEL_PER_REVOLUTION |  |  | 1.45, 0.03, 1.23, 0.20 |
