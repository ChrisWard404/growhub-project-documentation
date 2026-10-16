# Form: NMIS_ASSOCIATE_GROUPS subform

**Caption:** NMIS_ASSOCIATE_GROUPS subform  
**Record source:**

```sql
NMIS_ASSOCIATE_GROUPS
```

**Backend tables referenced:** `NMIS_ASSOCIATE_GROUPS`, `NMIS_GROUPS`  
**Embedded in:** `Form:NMIS_ASSOCIATES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | GROUP_NAME_Label | Group Name |  |  |  | 1.29, 0.04, 0.88, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | GROUP_NAME |  | GROUP_CN | SELECT NMIS_GROUPS.* FROM NMIS_GROUPS ORDER BY NMIS_GROUPS.GROUP_NAME; |  | 0.05, 0.03, 3.08, 0.20 |
