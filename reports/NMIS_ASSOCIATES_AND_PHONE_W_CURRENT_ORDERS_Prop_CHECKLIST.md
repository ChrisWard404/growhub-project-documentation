# Report: NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST

**Caption:** Associates Contacts Phone Numbers with Orders for Current FY  
**Grouping/sorting:** `ASSOCIATE`, `CONTACT_NAME_UPPER`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.51, 0.16, 3.24, 0.19 |
| Label | Label33 |  Propagule Associate Contacts and Phone Numbers with order for FY |  |  |  | 0.30, 0.56, 6.71, 0.26 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.51, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.51, 0.00, 3.24, 0.16 |
| TextBox | Text21 |  | FISCAL_YEAR |  |  | 7.01, 0.56, 0.71, 0.26 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_NAME_Label | Associate  |  |  |  | 0.09, 0.04, 3.13, 0.17 |
| Label | CONTACT_NAME_UPPER_Label | Contact Name |  |  |  | 3.55, 0.04, 1.74, 0.17 |
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 5.34, 0.04, 1.06, 0.17 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 6.47, 0.04, 0.93, 0.17 |
| Line | Line14 |  |  |  |  | 0.10, 0.00, 7.88, 0.00 |
| Line | Line15 |  |  |  |  | 0.10, 0.26, 7.88, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 5.46, 0.00, 0.83, 0.19 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 6.47, 0.00, 1.43, 0.19 |
| TextBox | CONTACT_NAME_UPPER |  | Contact_Name |  |  | 3.51, 0.00, 1.82, 0.19 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.14, 0.00, 0.57, 0.19 |
| TextBox | ASSOCIATE_NAME |  | [ASSOCIATE_NAME] |  |  | 0.78, 0.00, 2.72, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.15, 0.02, 7.71, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.14, 0.17, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.44, 0.17, 3.08, 0.18 |
