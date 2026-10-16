# Form: NMIS_SOURCE_LOTS_REPORT subform

**Caption:** NMIS_SOURCE_LOTS_REPORT subform  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE FROM NMIS_SOURCE_LOTS;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  
**Embedded in:** `Form:NMIS_SOURCE_LOT_SELECT`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CN_Label | CN |  |  |  | 0.04, 0.04, 2.02, 0.19 |
| Label | STORED_AT_ASSOCIATE_Label | Stored At Associate |  |  |  | 2.10, 0.04, 1.78, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.04, 0.04, 2.02, 0.17 |
| ComboBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.10, 0.04, 1.78, 0.17 |
