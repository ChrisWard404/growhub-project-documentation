# Form: NMIS_PHONE_NUMBERS_ASSOCIATE subform

**Caption:** NMIS_PHONE_NUMBERS subform2  
**Record source:**

```sql
SELECT [NMIS_PHONE_NUMBERS].[PHONE_NUMBER], [NMIS_PHONE_NUMBERS].[ASSOCIATE], [NMIS_PHONE_NUMBERS].[CN], [NMIS_PHONE_NUMBERS].[Index], [NMIS_PHONE_NUMBERS].[PHONE_TYPE_CN] FROM NMIS_PHONE_NUMBERS;
```

**Backend tables referenced:** `NMIS_PHONE_NUMBERS`, `NMIS_PHONE_TYPES`  
**Embedded in:** `Form:NMIS_ASSOCIATES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 1.97, 0.04, 1.29, 0.20 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 0.12, 0.04, 1.78, 0.20 |
| TextBox | CN |  | CN |  |  | 0.54, 0.05, 0.80, 0.00 |
| TextBox | Index |  | Index |  |  | 1.75, 0.05, 0.80, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 1.97, 0.04, 1.29, 0.20 |
| ComboBox | PHONE_TYPE |  | PHONE_TYPE_CN | SELECT [NMIS_PHONE_TYPES].[CN], [NMIS_PHONE_TYPES].[PHONE_TYPE] FROM NMIS_PHONE_TYPES;  |  | 0.12, 0.04, 1.80, 0.20 |
