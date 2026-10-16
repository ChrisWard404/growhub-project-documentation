# Report: NMIS_SEED_TICKETS_CHECKLIST

**Grouping/sorting:** `TICKET_TYPE`, `TKT_NO`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FY_Label | FY |  |  |  | 0.00, 1.02, 0.38, 0.19 |
| Label | TKT_NO_Label | Ticket ID |  |  |  | 0.39, 0.85, 0.47, 0.35 |
| Label | DESIRED_DATE_Label | Desired Date |  |  |  | 0.86, 0.88, 0.53, 0.33 |
| Label | CHARGE_PER_TICKET_Label | Charge Per Ticket |  |  |  | 1.38, 0.88, 0.58, 0.33 |
| Label | GBL_PCT_Label | GBL % |  |  |  | 2.00, 0.88, 0.30, 0.33 |
| Label | DELIVERED_TO_ASSOCIATE_Label | Delivered To Associate |  |  |  | 2.31, 0.88, 0.70, 0.33 |
| Label | DELIVERED_BY_ASSOCIATE_Label | Delivered By Associate |  |  |  | 3.02, 0.88, 0.74, 0.33 |
| Label | NOTE_Label | Note |  |  |  | 3.78, 1.02, 3.01, 0.19 |
| Label | EXT_DOC_REF_Label | REF |  |  |  | 6.81, 1.02, 0.80, 0.19 |
| Label | NURSERY_CONTACT_CN_Label | Nursery Contact |  |  |  | 7.63, 1.02, 1.15, 0.19 |
| Line | Line27 |  |  |  |  | 0.04, 1.23, 10.29, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.84, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Ticket Checklist |  |  |  | 4.28, 0.55, 1.93, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.62, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.62, 0.00, 3.24, 0.16 |
| Label | Label30 | Client Contact |  |  |  | 8.99, 1.02, 1.00, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text35 |  | TICKET_TYPE | S;"Misc. Source Ticket";SW;"Sowing Withdrawal Ticket" |  | 0.02, 0.01, 3.52, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FY |  | FY |  |  | 0.02, 0.02, 0.33, 0.19 |
| TextBox | TKT_NO |  | TKT_NO |  |  | 0.38, 0.02, 0.48, 0.00 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  |  | 0.88, 0.02, 0.46, 0.00 |
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  |  | 1.41, 0.02, 0.47, 0.00 |
| TextBox | GBL_PCT |  | GBL_PCT |  |  | 1.96, 0.02, 0.36, 0.00 |
| ComboBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.46, 0.02, 0.50, 0.00 |
| ComboBox | DELIVERED_BY_ASSOCIATE |  | DELIVERED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 3.19, 0.02, 0.43, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 3.78, 0.02, 3.01, 0.00 |
| TextBox | EXT_DOC_REF |  | EXT_DOC_REF |  |  | 6.81, 0.02, 0.84, 0.00 |
| ComboBox | NURSERY_CONTACT_CN |  | NURSERY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER FROM NMIS_CONTACTS;  |  | 7.58, 0.02, 1.40, 0.00 |
| ComboBox | Combo29 |  | CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER FROM NMIS_CONTACTS; |  | 8.97, 0.02, 1.40, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Now() |  |  | 0.04, 0.17, 2.98, 0.00 |
| TextBox | Text26 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.41, 0.17, 3.50, 0.00 |
| Line | Line28 |  |  |  |  | 0.96, 0.17, 9.00, 0.00 |
