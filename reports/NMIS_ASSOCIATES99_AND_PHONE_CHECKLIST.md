# Report: NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST

**Caption:** Associates Contacts Phone Numbers  
**Grouping/sorting:** `Region`, `ASSOCIATE`, `sort`, `CONTACT_NAME_UPPER`  
**Subforms/subreports:** `Report.NMIS_PHONE_NUMBERS subreport`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.45, 0.16, 3.24, 0.19 |
| Label | Label33 | "Other" Associate Contacts and Phone Numbers |  |  |  | 1.73, 0.57, 4.67, 0.26 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_Label | Associate |  |  |  | 0.08, 0.04, 0.92, 0.17 |
| Label | ASSOCIATE_NAME_Label | Associate Name |  |  |  | 1.04, 0.04, 2.38, 0.17 |
| Label | CONTACT_NAME_UPPER_Label | Contact Name |  |  |  | 3.49, 0.04, 1.42, 0.17 |
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 4.95, 0.04, 1.42, 0.17 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 6.41, 0.04, 0.93, 0.17 |
| Line | Line14 |  |  |  |  | 0.04, 0.00, 7.88, 0.00 |
| Line | Line15 |  |  |  |  | 0.00, 0.26, 7.98, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.08, 0.00, 0.92, 0.19 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.04, 0.00, 3.46, 0.19 |
| Subform | NMIS_PHONE_NUMBERS subreport |  | Report.NMIS_PHONE_NUMBERS subreport (master: ASSOCIATE → child: ASSOCIATE) |  |  | 4.93, 0.01, 3.06, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 4.96, 0.00, 1.19, 0.00 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 6.42, 0.00, 1.43, 0.00 |
| TextBox | CONTACT_NAME_UPPER |  | CONTACT_NAME_UPPER |  |  | 3.46, 0.00, 1.42, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.08, 0.17, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.38, 0.17, 3.08, 0.18 |
