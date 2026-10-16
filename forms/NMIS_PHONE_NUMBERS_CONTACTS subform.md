# Form: NMIS_PHONE_NUMBERS_CONTACTS subform

**Caption:** NMIS_PHONE_NUMBERS_CONTACTS subform  
**Record source:**

```sql
NMIS_PHONE_NUMBERS
```

**Backend tables referenced:** `NMIS_PHONE_NUMBERS`, `NMIS_PHONE_TYPES`  
**Embedded in:** `Form:NMIS_ASSOCIATES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 0.07, 0.05, 1.47, 0.20 |
| Label | PHONE_TYPE_CN_Label | Phone Type |  |  |  | 1.59, 0.05, 1.75, 0.20 |
| TextBox | CONTACT_CN |  | CONTACT_CN |  |  | 1.00, 0.10, 0.96, 0.14 |
| TextBox | Index |  | Index |  |  | 1.83, 0.10, 0.64, 0.14 |
| TextBox | CN |  | CN |  |  | 0.08, 0.10, 0.96, 0.14 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 0.07, 0.03, 1.47, 0.20 |
| ComboBox | PHONE_TYPE_CN |  | PHONE_TYPE_CN | SELECT [NMIS_PHONE_TYPES].[CN], [NMIS_PHONE_TYPES].[PHONE_TYPE] FROM NMIS_PHONE_TYPES;  |  | 1.59, 0.03, 1.75, 0.20 |
