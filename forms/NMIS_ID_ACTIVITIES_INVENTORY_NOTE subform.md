# Form: NMIS_ID_ACTIVITIES_INVENTORY_NOTE subform

**Caption:** NMIS_LOCATION_ACTIVITIES subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON (NMIS_ACTIVITY_CODES.ACTIVITY_CODE=NMIS_ID_ACTIVITIES.ACTIVITY_CODE) AND (NMIS_ACTIVITY_CODES.ACTIVITY_CODE=NMIS_ID_ACTIVITIES.ACTIVITY_CODE) WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PLNINV"));
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ID_ACTIVITIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label34 | Note |  |  |  | 0.05, 0.03, 3.64, 0.20 |
| TextBox | Index |  | Index |  |  | 2.49, 0.05, 0.22, 0.00 |
| TextBox | CN |  | CN |  |  | 2.21, 0.03, 0.74, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.57, 0.04, 0.59, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | NOTE |  |  | 0.04, 0.03, 3.67, 0.93 |
