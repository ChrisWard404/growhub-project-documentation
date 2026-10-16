# Form: Oyjord_Calibration_Settings_Subform

**Record source:**

```sql
SELECT Last(NMIS_OYJORD_SETTINGS1.TRAVEL_PER_REVOLUTION) AS LastOfTRAVEL_PER_REVOLUTION, Last(NMIS_OYJORD_SETTINGS1.GEAR) AS LastOfGEAR, Last(NMIS_OYJORD_SETTINGS1.ZMAX) AS LastOfZMAX, Last(NMIS_OYJORD_SETTINGS1.TURNS) AS LastOfTURNS FROM NMIS_OYJORD_SETTINGS1;
```


## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LastOfGEAR | GEAR: | LastOfGEAR |  |  | 0.83, 0.28, 0.83, 0.19 |
| TextBox | LastOfZMAX | ZMAX: | LastOfZMAX |  |  | 0.83, 0.51, 0.83, 0.19 |
| TextBox | LastOfTURNS | TURNS: | LastOfTURNS |  |  | 0.83, 0.74, 0.83, 0.19 |
| TextBox | LastOfTRAVEL_PER_REVOLUTION | Travel/Rev: | LastOfTRAVEL_PER_REVOLUTION |  |  | 0.83, 0.04, 0.83, 0.19 |
