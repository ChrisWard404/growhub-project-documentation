# Form: NMIS_CONTACTS_LIST

**Caption:** NMIS Contacts List  
**Record source:**

```sql
SELECT NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACTS.LAST_NAME, NMIS_CONTACTS.FIRST_NAME, NMIS_CONTACTS.MIDDLE_INITIAL, NMIS_CONTACTS.HOME_ASSOCIATE FROM NMIS_CONTACTS ORDER BY NMIS_CONTACTS.CONTACT_NAME_UPPER;
```

**Backend tables referenced:** `NMIS_CONTACTS`  
**Embedded in:** `Form:NMIS_CONTACTS`  
**Opened from (VBA):** `Form_NMIS_CONTACTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LAST_NAME_Label | Contact |  |  |  | 1.38, 0.04, 2.75, 0.20 |
| Label | HOME_ASSOCIATE_Label | Home Associate |  |  |  | 0.08, 0.04, 1.10, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Last Name |  | LAST_NAME |  |  | 1.38, 0.03, 1.22, 0.20 |
| TextBox | FIRST_NAME |  | FIRST_NAME |  |  | 2.63, 0.03, 1.25, 0.20 |
| TextBox | MIDDLE_INITIAL |  | MIDDLE_INITIAL |  |  | 3.92, 0.03, 0.24, 0.20 |
| TextBox | HOME_ASSOCIATE |  | HOME_ASSOCIATE |  |  | 0.08, 0.03, 1.11, 0.20 |
