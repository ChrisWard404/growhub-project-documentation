# Report: NMIS_ASSOCIATES_AND_PHONE_CHECKLIST_bend

**Caption:** Associates Contacts Phone Numbers  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS_CURRENT.CONTACT_NAME_UPPER, NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_PHONE_TYPES.PHONE_TYPE, NMIS_CONTACTS_CURRENT.CONTACT_DESC, NMIS_CONTACTS_CURRENT.EMAIL_ADDR FROM ((NMIS_ASSOCIATES LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_CONTACT_LINKS.LINK_ASSOCIATE) LEFT JOIN NMIS_CONTACTS_CURRENT ON NMIS_CONTACT_LINKS.CONTACT_CN = NMIS_CONTACTS_CURRENT.CN) LEFT JOIN (NMIS_PHONE_TYPES RIGHT JOIN NMIS_PHONE_NUMBERS ON NMIS_PHONE_TYPES.CN = NMIS_PHONE_NUMBERS.PHONE_TYPE_CN) ON NMIS_CONTACTS_CURRENT.CN = NMIS_PHONE_NUMBERS.CONTACT_CN WHERE (((NMIS_ASSOCIATES.ASSOCIATE) Like "0601*" Or (NMIS_ASSOCIATES.ASSOCIATE) Like "0607*" Or (NMIS_ASSOCIATES.ASSOCIATE) Like "0602*" Or (NMIS_ASSOCIATES.ASSOCIATE) Like "0620*")) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS_CURRENT.CONTACT_NAME_UPPER, NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_PHONE_TYPES.PHONE_TYPE, NMIS_CONTACTS_CURRENT.CONTACT_DESC, NMIS_CONTACTS_CURRENT.EMAIL_ADDR;
```

**Grouping/sorting:** `ASSOCIATE`, `CONTACT_NAME_UPPER`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACT_LINKS`, `NMIS_PHONE_NUMBERS`, `NMIS_PHONE_TYPES`  
**Subforms/subreports:** `Report.NMIS_PHONE_NUMBERS subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTACT_NAME_UPPER_Label | Contact Name |  |  |  | 0.04, 0.93, 1.82, 0.17 |
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 5.42, 0.93, 1.01, 0.17 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 6.51, 0.93, 0.93, 0.17 |
| Line | Line14 |  |  |  |  | 0.03, 0.89, 7.88, 0.00 |
| Line | Line15 |  |  |  |  | 0.03, 1.14, 7.88, 0.00 |
| Label | Label22 | Contact Description |  |  |  | 1.89, 0.93, 1.67, 0.17 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.40, 0.16, 3.24, 0.19 |
| Label | Label33 | Associate Contacts and Phone Numbers |  |  |  | 2.12, 0.57, 3.79, 0.26 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.40, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.40, 0.00, 3.24, 0.16 |
| Label | EMAIL_ADDR Label | E-Mail Address |  |  |  | 3.56, 0.93, 1.58, 0.17 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.00, 0.00, 0.92, 0.19 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.96, 0.00, 3.46, 0.19 |
| Subform | NMIS_PHONE_NUMBERS subreport |  | Report.NMIS_PHONE_NUMBERS subreport (master: ASSOCIATE → child: ASSOCIATE) |  |  | 4.90, 0.00, 3.06, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 5.42, 0.00, 1.06, 0.00 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 6.52, 0.00, 1.43, 0.00 |
| TextBox | CONTACT_NAME_UPPER |  | CONTACT_NAME_UPPER |  |  | 0.04, 0.00, 1.82, 0.00 |
| TextBox | Text21 |  | CONTACT_DESC |  |  | 1.89, 0.00, 1.67, 0.00 |
| TextBox | EMAIL_ADDR |  | EMAIL_ADDR |  |  | 3.56, 0.00, 1.85, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.07, 0.17, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.80, 0.17, 3.08, 0.18 |
