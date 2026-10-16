# Report: NMIS_CONTACT_AND_PHONE_CHECKLIST

**Caption:** Associates Contacts Phone Numbers  
**Record source:**

```sql
SELECT NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_PHONE_TYPES.PHONE_TYPE, NMIS_CONTACTS.CONTACT_DESC, NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_CONTACTS.CN FROM (NMIS_PHONE_TYPES RIGHT JOIN NMIS_PHONE_NUMBERS ON NMIS_PHONE_TYPES.CN = NMIS_PHONE_NUMBERS.PHONE_TYPE_CN) RIGHT JOIN NMIS_CONTACTS ON NMIS_PHONE_NUMBERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HOME_ASSOCIATE) Not Like "99*" And (NMIS_CONTACTS.HOME_ASSOCIATE) Like [Like Client CODE (Blank for all)] & "*") AND ((NMIS_CONTACTS.CONTACT_NAME_UPPER) Is Not Null) AND ((NMIS_CONTACTS.HISTORICAL)=No Or (NMIS_CONTACTS.HISTORICAL) Is Null));
```

**Grouping/sorting:** `CONTACT_NAME_UPPER`, `HOME_ASSOCIATE`  
**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_PHONE_NUMBERS`, `NMIS_PHONE_TYPES`  
**Subforms/subreports:** `Report.NMIS_CONTACT_LINKS subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CONTACT_NAME_UPPER_Label | Contact Name |  |  |  | 0.03, 0.93, 1.82, 0.17 |
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 4.94, 0.93, 1.42, 0.17 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 6.40, 0.93, 0.93, 0.17 |
| Line | Line14 |  |  |  |  | 0.03, 0.89, 7.88, 0.00 |
| Line | Line15 |  |  |  |  | 0.03, 1.14, 7.88, 0.00 |
| Label | Label22 | Contact Description |  |  |  | 3.03, 0.93, 1.83, 0.17 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.40, 0.16, 3.24, 0.19 |
| Label | Label33 | Associate Contacts and Phone Numbers |  |  |  | 2.12, 0.57, 3.79, 0.26 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.40, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.40, 0.00, 3.24, 0.16 |
| Label | Label25 | Home Associate |  |  |  | 1.94, 0.93, 1.02, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 4.92, 0.00, 1.34, 0.00 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 6.29, 0.00, 1.64, 0.00 |
| TextBox | CONTACT_NAME_UPPER |  | CONTACT_NAME_UPPER |  |  | 0.00, 0.00, 1.96, 0.00 |
| TextBox | Text21 |  | CONTACT_DESC |  |  | 3.00, 0.00, 1.88, 0.00 |
| TextBox | HOME_ASSOCIATE |  | HOME_ASSOCIATE |  |  | 1.94, 0.00, 0.98, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_CONTACT_LINKS subreport |  | Report.NMIS_CONTACT_LINKS subreport (master: CN → child: CN) |  |  | 0.88, 0.02, 7.00, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.07, 0.17, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.80, 0.17, 3.08, 0.18 |
