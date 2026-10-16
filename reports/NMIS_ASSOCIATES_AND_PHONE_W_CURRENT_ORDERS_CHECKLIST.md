# Report: NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST

**Grouping/sorting:** `Associate_Parent`, `ASSOCIATE`, `CONTACT_NAME_UPPER`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`, `Form_Reports_Menu_Processing Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.51, 0.16, 3.24, 0.19 |
| Label | Label33 | Associate Contacts and Phone Numbers with orders for FY |  |  |  | 1.00, 0.56, 5.72, 0.26 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.51, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.51, 0.00, 3.24, 0.16 |
| TextBox | Text21 |  | FISCAL_YEAR |  |  | 6.72, 0.56, 0.71, 0.26 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_NAME_Label | Associate  |  |  |  | 0.01, 0.04, 2.84, 0.17 |
| Label | CONTACT_NAME_UPPER_Label | Contact Name        BAP |  |  |  | 2.92, 0.04, 1.45, 0.18 |
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 5.57, 0.04, 0.93, 0.17 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 6.53, 0.04, 0.93, 0.17 |
| Line | Line14 |  |  |  |  | 0.00, 0.00, 7.99, 0.00 |
| Line | Line15 |  |  |  |  | 0.00, 0.26, 7.99, 0.00 |
| Label | Label24 | e-mail address |  |  |  | 4.35, 0.04, 1.17, 0.17 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Associate_Parent |  | Associate_Parent |  |  | 0.00, 0.00, 5.17, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 5.70, 0.00, 0.83, 0.19 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 6.53, 0.00, 1.43, 0.19 |
| TextBox | CONTACT_NAME_UPPER |  | Contact_Name |  |  | 2.89, 0.00, 1.24, 0.19 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.00, 0.00, 0.57, 0.19 |
| TextBox | ASSOCIATE_NAME |  | [ASSOCIATE_NAME] |  |  | 0.59, 0.00, 2.27, 0.19 |
| TextBox | Text25 |  | EMAIL_ADDR |  |  | 4.34, 0.00, 1.36, 0.19 |
| CheckBox | BE_AT_PACK |  | BE_AT_PACK |  |  | 4.15, 0.04, 0.00, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.00, 0.02, 7.99, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.06, 0.02, 2.98, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.75, 0.02, 2.23, 0.18 |
| Label | Label29 | BAP = Client Wants to be at pack |  |  |  | 3.25, 0.03, 2.33, 0.18 |
| Line | Line30 |  |  |  |  | 0.00, 0.02, 8.00, 0.00 |
