# Form: NMIS_CONTACT_NAME_SELECTED subform

**Caption:** NMIS_CONTACT_NAME_SELECTED subform  
**Record source:**

```sql
NMIS_CONTACTS
```

**Backend tables referenced:** `NMIS_CONTACTS`  
**Embedded in:** `Form:NMIS_ASSOCIATES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FIRST_NAME_Label | Information for: |  |  |  | 0.98, 0.03, 1.07, 0.20 |
| TextBox | CN |  | CN |  |  | 0.38, 0.00, 1.72, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FIRST_NAME |  | FIRST_NAME |  |  | 0.07, 0.03, 1.18, 0.20 |
| TextBox | MIDDLE_INITIAL |  | MIDDLE_INITIAL |  |  | 1.29, 0.03, 0.22, 0.20 |
| TextBox | LAST_NAME |  | LAST_NAME |  |  | 1.56, 0.03, 1.22, 0.20 |
