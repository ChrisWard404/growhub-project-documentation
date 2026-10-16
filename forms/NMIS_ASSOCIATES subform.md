# Form: NMIS_ASSOCIATES subform

**Caption:** NMIS_ASSOCIATES subform  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_CONTACT_LINKS.LINK_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS.CN, NMIS_CONTACT_LINKS.CONTACT_CN FROM (NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN=NMIS_CONTACT_LINKS.CONTACT_CN) LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTACT_LINKS.LINK_ASSOCIATE=NMIS_ASSOCIATES.ASSOCIATE;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`  
**Embedded in:** `Form:NMIS_CONTACTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_Label | Associate Code |  |  |  | 0.08, 0.04, 1.07, 0.20 |
| Label | Label10 | Associate Name |  |  |  | 1.24, 0.05, 3.02, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ASSOCIATE |  | LINK_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES; |  | 0.08, 0.04, 1.07, 0.20 |
| ComboBox | ASSOCIATE_NAME |  | LINK_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Historical)"); |  | 1.23, 0.04, 3.06, 0.20 |
