# Report: Agreement_Lot_Sow_Order_Oyjord_Sub_Report2

**Record source:**

```sql
SELECT Last(NMIS_OYJORD_SETTINGS3.TRAVEL_PER_REVOLUTION) AS LastOfTRAVEL_PER_REVOLUTION, NMIS_OYJORD_SETTINGS3.GEAR, Last(NMIS_OYJORD_SETTINGS3.ZMAX) AS LastOfZMAX, Last(NMIS_OYJORD_SETTINGS3.TURNS) AS LastOfTURNS, NMIS_OYJORD_SETTINGS3.gearsort FROM NMIS_OYJORD_SETTINGS3 WHERE (((NMIS_OYJORD_SETTINGS3.TRAVEL_PER_REVOLUTION)<=[Reports]![Agreement_Lot_Sow_Order_Oyjord_Report2]![CALIBRATION_TRAVEL_PER_REV]) AND (((Abs([Reports]![Agreement_Lot_Sow_Order_Oyjord_Report2]![CALIBRATION_TRAVEL_PER_REV]-[TRAVEL_PER_REVOLUTION]))/[Reports]![Agreement_Lot_Sow_Order_Oyjord_Report2]![CALIBRATION_TRAVEL_PER_REV])<0.1)) GROUP BY NMIS_OYJORD_SETTINGS3.GEAR, NMIS_OYJORD_SETTINGS3.gearsort ORDER BY NMIS_OYJORD_SETTINGS3.gearsort DESC;
```


## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label1 | T/R |  |  |  | 0.08, 0.00, 0.22, 0.16 |
| Label | Label2 | Zmax |  |  |  | 0.56, 0.00, 0.33, 0.16 |
| Label | Label3 | Turns |  |  |  | 0.98, 0.00, 0.34, 0.16 |
| Label | Label4 | Gear |  |  |  | 1.51, 0.00, 0.30, 0.16 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GEAR |  | GEAR |  |  | 1.42, 0.00, 0.38, 0.15 |
| TextBox | ZMAX |  | LastOfZMAX |  |  | 0.51, 0.00, 0.43, 0.15 |
| TextBox | TURNS |  | LastOfTURNS |  |  | 0.96, 0.00, 0.43, 0.15 |
| TextBox | TRAVEL_PER_REVOLUTION |  | LastOfTRAVEL_PER_REVOLUTION |  |  | 0.00, 0.00, 0.50, 0.15 |
