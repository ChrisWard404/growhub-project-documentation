# Form: NMIS_ID_LOCATIONS subform2

**Caption:** NMIS_ID_LOCATIONS subform2  
**Record source:**

```sql
SELECT [NMIS_ID_LOCATIONS].[CN], [NMIS_ID_LOCATIONS].[UNIT_CODE] FROM [NMIS_ID_LOCATIONS]
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`  
**Embedded in:** `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN | CN | CN |  |  | 1.12, 0.08, 1.81, 0.19 |
| TextBox | UNIT_CODE | Unit Code | UNIT_CODE |  |  | 1.12, 0.33, 0.80, 0.19 |
