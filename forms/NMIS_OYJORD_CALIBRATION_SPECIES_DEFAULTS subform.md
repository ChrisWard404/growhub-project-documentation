# Form: NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform

**Caption:** NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform  
**Record source:**

```sql
SELECT NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_FUNNEL_SETTING, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.PLNTMSTR_SYMBOL, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MIN_REV_UNITS, NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS.DRILL_MAX_REV_UNITS FROM NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS;
```

**Backend tables referenced:** `NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS`  
**Embedded in:** `Form:NMIS_SPECIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label8 | Oyjord Calibration Defaults |  |  |  | 0.91, 0.07, 2.18, 0.24 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 3.33, 0.08, 0.62, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | DRILL_FUNNEL_SETTING |  | DRILL_FUNNEL_SETTING |  |  | 2.26, 0.12, 0.25, 0.20 |
| TextBox | DRILL_MIN_REV_UNITS |  | DRILL_MIN_REV_UNITS |  |  | 2.26, 0.42, 0.35, 0.20 |
| TextBox | DRILL_MAX_REV_UNITS |  | DRILL_MAX_REV_UNITS |  |  | 2.26, 0.70, 0.35, 0.20 |
| Label | DRILL_FUNNEL_SETTING_Label | Funnel Setting |  |  |  | 1.12, 0.12, 1.00, 0.20 |
| Label | DRILL_MIN_REV_UNITS_Label | Min Units/Rev |  |  |  | 1.18, 0.42, 0.95, 0.20 |
| Label | DRILL_MAX_REV_UNITS_Label | Max Units/Rev |  |  |  | 1.14, 0.70, 0.98, 0.20 |
