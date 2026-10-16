# Report: NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_by_Contact

**Caption:** Associates Contacts Phone Numbers with Orders for Current FY  
**Grouping/sorting:** `CONTACT_NAME_UPPER`  

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
| Label | ASSOCIATE_NAME_Label | Associate  |  |  |  | 3.25, 0.04, 2.23, 0.17 |
| Label | CONTACT_NAME_UPPER_Label | Contact Name |  |  |  | 0.04, 0.04, 1.45, 0.17 |
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 5.57, 0.04, 0.90, 0.17 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 6.54, 0.04, 0.93, 0.17 |
| Line | Line14 |  |  |  |  | 0.00, 0.00, 7.97, 0.00 |
| Line | Line15 |  |  |  |  | 0.00, 0.26, 7.96, 0.00 |
| Label | Label24 | e-mail address |  |  |  | 1.56, 0.04, 1.62, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 5.70, 0.00, 0.83, 0.19 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 6.54, 0.00, 1.43, 0.19 |
| TextBox | CONTACT_NAME_UPPER |  | Contact_Name |  |  | 0.00, 0.00, 1.52, 0.19 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 3.22, 0.00, 0.57, 0.19 |
| TextBox | ASSOCIATE_NAME |  | [ASSOCIATE_NAME] |  |  | 3.81, 0.00, 1.87, 0.19 |
| TextBox | Text25 |  | EMAIL_ADDR |  |  | 1.53, 0.00, 1.68, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.00, 0.00, 7.89, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.88, 0.17, 3.08, 0.18 |
