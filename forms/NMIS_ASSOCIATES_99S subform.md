# Form: NMIS_ASSOCIATES_99S subform

**Caption:** NMIS_ASSOCIATES_99S subform  
**Record source:**

```sql
SELECT Max(Val([Associate])+1) AS Next_Surplus_Associate FROM NMIS_ASSOCIATES WHERE ((([NMIS_ASSOCIATES].[ASSOCIATE]) Like "99*"));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Embedded in:** `Form:NMIS_ASSOCIATES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE |  | Next_Surplus_Associate |  |  | 0.04, 0.04, 0.88, 0.20 |
