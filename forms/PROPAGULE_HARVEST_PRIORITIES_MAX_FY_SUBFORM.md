# Form: PROPAGULE_HARVEST_PRIORITIES_MAX_FY_SUBFORM

**Caption:** NMIS_PROPAGULE_HARVEST_PRIORITIES_MAX_FY
FROM NMIS_PROPAGULE_HARVEST_PRIORITIES;
  
**Record source:**

```sql
SELECT Max(NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY) AS MaxOfHARVEST_FY
FROM NMIS_PROPAGULE_HARVEST_PRIORITIES;
```

**Backend tables referenced:** `NMIS_PROPAGULE_HARVEST_PRIORITIES`  
**Embedded in:** `Form:Propagule_Harvest_Priorties`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Max_FY |  | MaxOfHARVEST_FY |  |  | 0.33, 0.04, 1.81, 0.19 |
