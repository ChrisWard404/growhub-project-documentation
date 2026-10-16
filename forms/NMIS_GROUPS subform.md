# Form: NMIS_GROUPS subform

**Caption:** NMIS_GROUPS subform  
**Record source:**

```sql
SELECT [NMIS_GROUPS].[GROUP_NAME], [NMIS_GROUPS].[CN], [NMIS_GROUPS].[Index] FROM NMIS_GROUPS;
```

**Backend tables referenced:** `NMIS_GROUPS`  
**Embedded in:** `Form:NMIS_GROUPS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | GROUP_NAME_Label | Group Name |  |  |  | 2.17, 0.04, 0.99, 0.20 |
| TextBox | CN |  | CN |  |  | 1.21, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 0.12, 0.05, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | GROUP_NAME |  | GROUP_NAME |  |  | 0.17, 0.04, 4.96, 0.20 |
