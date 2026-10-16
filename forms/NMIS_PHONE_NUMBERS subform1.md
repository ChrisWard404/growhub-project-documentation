# Form: NMIS_PHONE_NUMBERS subform1

**Caption:** NMIS_PHONE_NUMBERS subform1  
**Record source:**

```sql
SELECT NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_PHONE_NUMBERS.CONTACT_CN, NMIS_PHONE_NUMBERS.Index, NMIS_PHONE_NUMBERS.CN, NMIS_PHONE_NUMBERS.PHONE_TYPE_CN FROM NMIS_PHONE_NUMBERS INNER JOIN NMIS_CONTACTS ON NMIS_PHONE_NUMBERS.CONTACT_CN = NMIS_CONTACTS.CN ORDER BY NMIS_PHONE_NUMBERS.CONTACT_CN;
```

**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_PHONE_NUMBERS`, `NMIS_PHONE_TYPES`  
**Embedded in:** `Form:NMIS_CONTACTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PHONE_NUMBER_Label | Number |  |  |  | 0.03, 0.04, 1.40, 0.20 |
| Label | PHONE_TYPE_Label | Type |  |  |  | 1.49, 0.04, 1.88, 0.20 |
| TextBox | CN |  | CN |  |  | 0.46, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 1.75, 0.04, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 0.04, 0.04, 1.39, 0.20 |
| ComboBox | PHONE_TYPE |  | PHONE_TYPE_CN | SELECT NMIS_PHONE_TYPES.CN, NMIS_PHONE_TYPES.PHONE_TYPE FROM NMIS_PHONE_TYPES;  |  | 1.50, 0.04, 1.88, 0.20 |
