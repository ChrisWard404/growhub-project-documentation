# Report: NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2

**Caption:** Associates Contacts Phone Numbers with Orders for Current FY  
**Grouping/sorting:** `ASSOCIATE`, `CONTACT_NAME_UPPER`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.41, 0.16, 3.24, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.41, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.41, 0.00, 3.24, 0.16 |
| TextBox | Text23 |  | ="Associate Contacts and Phone Numbers For Agreements with Begin FY " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] |  |  | 2.03, 0.55, 4.17, 0.51 |
| ComboBox | Text179 |  | =[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse] | 0;Traditional Species Only;-1;Non-Traditional Species only;*;"Traditional and Non-Traditional Species" |  | 0.00, 0.00, 2.66, 0.21 |
| TextBox | Text130 |  | ="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] |  |  | 0.00, 0.41, 1.92, 0.20 |
| TextBox | Text132 |  | ="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY] |  |  | 0.00, 0.60, 1.92, 0.20 |
| TextBox | Text133 |  | ="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client] |  |  | 0.00, 0.80, 2.08, 0.20 |
| TextBox | Text134 |  | ="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol] |  |  | 0.00, 0.99, 2.08, 0.20 |
| TextBox | Text26 |  | ="Selected for End Prod Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_Product] |  |  | 0.00, 0.21, 2.88, 0.20 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_NAME_Label | Associate  |  |  |  | 0.05, 0.03, 3.13, 0.17 |
| Label | CONTACT_NAME_UPPER_Label | Contact Name |  |  |  | 3.51, 0.03, 1.74, 0.17 |
| Label | PHONE_NUMBER_Label | Phone Number |  |  |  | 5.29, 0.03, 1.06, 0.17 |
| Label | PHONE_TYPE_Label | Phone Type |  |  |  | 6.43, 0.03, 0.93, 0.17 |
| Line | Line14 |  |  |  |  | 0.00, 0.00, 8.01, 0.00 |
| Line | Line15 |  |  |  |  | 0.00, 0.24, 8.01, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 5.42, 0.00, 0.83, 0.19 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 6.43, 0.00, 1.43, 0.19 |
| TextBox | CONTACT_NAME_UPPER |  | Contact_Name |  |  | 3.47, 0.00, 1.92, 0.19 |
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.04, 0.00, 0.67, 0.19 |
| TextBox | ASSOCIATE_NAME |  | [ASSOCIATE_NAME] |  |  | 0.74, 0.00, 2.72, 0.19 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.10, 0.02, 7.85, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Now() |  |  | 0.15, 0.02, 3.50, 0.18 |
| TextBox | Text12 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.90, 0.02, 3.08, 0.18 |
