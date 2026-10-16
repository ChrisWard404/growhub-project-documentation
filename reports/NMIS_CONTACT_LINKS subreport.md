# Report: NMIS_CONTACT_LINKS subreport

**Caption:** NMIS_CONTACT_LINKS subreport  
**Record source:**

```sql
SELECT NMIS_CONTACTS.CN, NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS.CONTACT_DESC, NMIS_CONTACTS.HOME_ASSOCIATE FROM NMIS_CONTACTS RIGHT JOIN (NMIS_ASSOCIATES LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_CONTACT_LINKS.LINK_ASSOCIATE) ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN GROUP BY NMIS_CONTACTS.CN, NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS.CONTACT_DESC, NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACTS.HISTORICAL HAVING (((NMIS_CONTACTS.CONTACT_NAME_UPPER) Is Not Null) AND ((NMIS_CONTACTS.HISTORICAL)=No Or (NMIS_CONTACTS.HISTORICAL) Is Null));
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`  
**Subforms/subreports:** `Report.NMIS_PHONE_NUMBERS subreport2`  
**Embedded in:** `Report:NMIS_CONTACT_AND_PHONE_CHECKLIST`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line4 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.00, 0.00, 0.92, 0.19 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.96, 0.00, 2.94, 0.19 |
| Subform | NMIS_PHONE_NUMBERS subreport |  | Report.NMIS_PHONE_NUMBERS subreport2 (master: ASSOCIATE → child: ASSOCIATE) |  |  | 3.95, 0.00, 3.06, 0.21 |
| Line | Line24 |  |  |  |  | 4.04, 0.21, 2.96, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line5 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
