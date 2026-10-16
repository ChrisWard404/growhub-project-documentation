# Report: NMIS_SEED_TICKETS_CHECKLIST2

**Grouping/sorting:** `TICKET_TYPE`, `TKT_NO`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FY_Label | FY |  |  |  | 0.00, 1.02, 0.38, 0.19 |
| Label | TKT_NO_Label | Ticket ID |  |  |  | 0.39, 0.85, 0.47, 0.35 |
| Label | DESIRED_DATE_Label | Ticket Date |  |  |  | 0.85, 0.88, 0.53, 0.34 |
| Label | CHARGE_PER_TICKET_Label | Chg/ Ticket |  |  |  | 6.08, 0.88, 0.50, 0.34 |
| Label | GBL_PCT_Label | GBL % |  |  |  | 6.64, 0.88, 0.30, 0.33 |
| Label | DELIVERED_TO_ASSOCIATE_Label | For Assoc. |  |  |  | 1.85, 0.88, 0.49, 0.34 |
| Label | DELIVERED_BY_ASSOCIATE_Label | By Assoc. |  |  |  | 4.73, 0.88, 0.48, 0.33 |
| Label | NOTE_Label | Note |  |  |  | 2.39, 1.02, 2.35, 0.19 |
| Label | EXT_DOC_REF_Label | REF |  |  |  | 5.26, 1.02, 0.65, 0.19 |
| Label | NURSERY_CONTACT_CN_Label | Nursery Contact |  |  |  | 7.63, 1.02, 1.15, 0.19 |
| Line | Line27 |  |  |  |  | 0.04, 1.23, 10.29, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.84, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Ticket Checklist |  |  |  | 4.28, 0.55, 1.93, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.62, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.62, 0.00, 3.24, 0.16 |
| Label | Label30 | Client Contact |  |  |  | 8.99, 1.02, 1.00, 0.19 |
| Label | Label36 | To Assoc. |  |  |  | 1.34, 0.86, 0.47, 0.34 |
| Label | Weight Label | Weight |  |  |  | 6.96, 1.02, 0.67, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text35 |  | TICKET_TYPE | S;"Misc. Source Ticket";SW;"Sowing Withdrawal Ticket" |  | 0.00, 0.03, 3.52, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FY |  | FY |  |  | 0.02, 0.00, 0.33, 0.16 |
| TextBox | Tkt No |  | TKT_NO |  |  | 0.38, 0.00, 0.48, 0.00 |
| TextBox | Ticket Date |  | DESIRED_DATE |  |  | 0.88, 0.00, 0.46, 0.00 |
| TextBox | Charge per Tkt |  | CHARGE_PER_TICKET |  |  | 5.99, 0.00, 0.56, 0.00 |
| TextBox | GBL Pct |  | GBL_PCT |  |  | 6.59, 0.00, 0.31, 0.00 |
| ComboBox | Delivered For |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.88, 0.00, 0.50, 0.00 |
| ComboBox | Delivered By |  | DELIVERED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 4.77, 0.00, 0.43, 0.00 |
| TextBox | NOTE |  | LastOfNOTE |  |  | 2.39, 0.00, 2.35, 0.00 |
| TextBox | Ext Doc Ref |  | EXT_DOC_REF |  |  | 5.26, 0.00, 0.70, 0.00 |
| ComboBox | Nursery Contact |  | NURSERY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER FROM NMIS_CONTACTS;  |  | 7.58, 0.00, 1.40, 0.00 |
| ComboBox | Client Contact |  | CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER FROM NMIS_CONTACTS; |  | 8.97, 0.00, 1.40, 0.00 |
| TextBox | Weight |  | SumOfACTIVITY_UNITS |  |  | 6.93, 0.00, 0.58, 0.00 |
| ComboBox | Delivered To |  | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 1.35, 0.00, 0.50, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line41 |  |  |  |  | 0.04, 0.04, 10.25, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text25 |  | =Now() |  |  | 0.04, 0.17, 2.98, 0.00 |
| TextBox | Text26 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.81, 0.17, 3.50, 0.00 |
| Line | Line28 |  |  |  |  | 0.07, 0.17, 10.23, 0.00 |
