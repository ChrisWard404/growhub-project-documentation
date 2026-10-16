# Form: NMIS_LOCATION_TYPES subform

**Caption:** NMIS_LOCATION_TYPES subform  
**Record source:**

```sql
SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES;
```

**Backend tables referenced:** `NMIS_LOCATION_TYPES`  
**Embedded in:** `Form:NMIS_LOCATION_TYPES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_TYPE_Label | Location Type |  |  |  | 0.04, 0.04, 1.02, 0.20 |
| Label | LOCATION_TYPE_DESC_Label | Descripton |  |  |  | 1.10, 0.04, 2.50, 0.20 |
| TextBox | Selected_Location | Selected Location Type: | =[LOCATION_TYPE] |  |  | 2.04, 0.04, 0.92, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION_TYPE |  | LOCATION_TYPE |  |  | 0.04, 0.04, 1.02, 0.20 |
| TextBox | LOCATION_TYPE_DESC |  | LOCATION_TYPE_DESC |  |  | 1.10, 0.04, 2.50, 0.20 |
