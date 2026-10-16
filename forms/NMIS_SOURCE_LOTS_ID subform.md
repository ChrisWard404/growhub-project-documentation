# Form: NMIS_SOURCE_LOTS_ID subform

**Caption:** NMIS_SOURCE_LOTS_ID subform  
**Record source:**

```sql
SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM [NMIS_SOURCE_LOTS]
```

**Backend tables referenced:** `NMIS_SOURCE_LOTS`  
**Embedded in:** `Form:NMIS_AGREEMENTS`, `Form:NMIS_AGREEMENTS_bu`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 2.17, 0.04, 0.46, 0.19 |
| TextBox | ID | Source Lot ID: | ID |  |  | 1.25, 0.08, 0.77, 0.19 |
