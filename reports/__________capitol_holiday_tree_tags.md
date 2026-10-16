# Report: **********capitol_holiday_tree_tags

**Caption:** Tag pairs without Nursery ID's (bareroot)  
**Record source:**

```sql
SELECT "Douglas-fir grown at J. Herbert Stone Nursery" AS String1, "in celebration of the 2002 Capitol Holiday Tree" AS String2, "for the City of " & [city] AS String3 FROM NMIS_ACTIVITY_CODES WHERE ((([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE])="241"));
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text294 |  | String1 |  |  | 3.75, 0.08, 4.22, 0.27 |
| TextBox | Text296 |  | String2 |  |  | 3.75, 0.35, 4.22, 0.27 |
| TextBox | Text297 |  | String3 |  |  | 3.75, 0.62, 4.22, 0.27 |
| TextBox | Text301 |  | String1 |  |  | 3.75, 1.10, 4.22, 0.27 |
| TextBox | Text302 |  | String2 |  |  | 3.75, 1.37, 4.22, 0.27 |
| TextBox | Text303 |  | String3 |  |  | 3.75, 1.63, 4.22, 0.27 |
| TextBox | Text304 |  | String1 |  |  | 3.75, 2.09, 4.22, 0.27 |
| TextBox | Text305 |  | String2 |  |  | 3.75, 2.36, 4.22, 0.27 |
| TextBox | Text306 |  | String3 |  |  | 3.75, 2.62, 4.22, 0.27 |
| TextBox | Text307 |  | String1 |  |  | 3.75, 3.04, 4.22, 0.27 |
| TextBox | Text308 |  | String2 |  |  | 3.75, 3.31, 4.22, 0.27 |
| TextBox | Text309 |  | String3 |  |  | 3.75, 3.58, 4.22, 0.27 |
