# Report: seed_sow_withdrawal_ticket

**Grouping/sorting:** `TICKET_CN`, `CATEGORY_CODE`, `DIVERSE`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `AGREEMENT_LOT_CN`, `ACTIVITY_CODE`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_CONTACTS`, `NMIS_PHONE_NUMBERS`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Subforms/subreports:** `Report.NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport`  
**Opened from (VBA):** `Form_Seed_Sow_Withdrawal_Ticket Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Seed Sowing Withdrawal Ticket |  |  |  | 2.73, 0.57, 2.56, 0.23 |
| ComboBox | Billed_To_Associate |  | DESTINATION_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.72, 0.97, 2.19, 0.20 |
| Label | Label26 | Sown At: |  |  |  | 0.04, 0.98, 0.64, 0.19 |
| ComboBox | Address |  | DESTINATION_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[MAIL_ADDR] FROM NMIS_ASSOCIATES;  |  | 0.72, 1.18, 2.19, 0.20 |
| ComboBox | Street Address |  | DESTINATION_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[STREET_ADDR] FROM NMIS_ASSOCIATES;  |  | 0.72, 1.39, 2.19, 0.20 |
| ComboBox | Combo20 |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[DELIVERED_TO_ASSOCIATE] FROM NMIS_TICKETS;  |  | 6.78, 1.39, 1.11, 0.20 |
| ComboBox | Combo21 |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[DESIRED_DATE] FROM NMIS_TICKETS;  |  | 6.78, 1.18, 1.11, 0.20 |
| Label | Label22 | Ship To: |  |  |  | 6.12, 1.39, 0.62, 0.20 |
| Label | Label23 | Ticket Date : |  |  |  | 5.86, 1.18, 0.88, 0.20 |
| ComboBox | Combo24 |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[EXT_DOC_REF] FROM NMIS_TICKETS;  |  | 6.78, 1.60, 1.11, 0.20 |
| Label | Label25 | Ref #: |  |  |  | 6.26, 1.60, 0.48, 0.20 |
| ComboBox | TICKET_CN |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[TKT_NO] FROM NMIS_TICKETS;  |  | 6.78, 0.97, 1.11, 0.20 |
| Label | TICKET_CN_Label | Ticket ID: |  |  |  | 6.02, 0.97, 0.72, 0.20 |
| ComboBox | City |  | DESTINATION_ASSOCIATE | SELECT [Associate_City_State_Zip].[ASSOCIATE], [Associate_City_State_Zip].[City_State_Zip_Mail] FROM Associate_City_State_Zip;  |  | 0.72, 1.60, 2.18, 0.20 |
| Label | Label54 | _________________________________________________________________________________________________________ |  |  |  | 0.00, 1.77, 7.95, 0.19 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label52 | _________________________________________________________________________________________________________ |  |  |  | 0.00, 0.18, 7.95, 0.19 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 4.57, 0.03, 0.59, 0.32 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 5.30, 0.03, 0.65, 0.33 |
| Label | Label18 | Source |  |  |  | 1.64, 0.19, 0.47, 0.17 |
| Label | Label55 | Job Code |  |  |  | 6.82, 0.17, 0.61, 0.17 |
| Label | Label80 | Agreement Lot ID |  |  |  | 0.02, 0.03, 0.77, 0.33 |
| Label | Label84 | Activity Date |  |  |  | 3.99, 0.03, 0.59, 0.32 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 0.07, 0.03, 2.08, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species") |  |  | 0.08, 0.04, 2.79, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES;  |  | 4.65, 0.03, 0.56, 0.21 |
| TextBox | ACTIVITY_UNITS |  | ABS_Activity_Units |  |  | 5.21, 0.03, 0.60, 0.21 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.83, 0.03, 0.43, 0.21 |
| TextBox | SOURCE_LOT_CN |  | ID_SOURCE |  |  | 0.96, 0.03, 3.00, 0.21 |
| Subform | NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport |  | Report.NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport (master: CN2 → child: ACTIVITY_ID_CN) |  |  | 6.33, 0.03, 1.61, 0.23 |
| TextBox | AGREEMENT_LOT_CN |  | Agreement_Lot_ID |  |  | 0.00, 0.03, 0.96, 0.21 |
| TextBox | Text83 |  | ACTIVITY_DATE |  |  | 3.99, 0.03, 0.65, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Sum(Abs([ACTIVITY_UNITS_TO_SUM])) |  |  | 4.88, 0.19, 0.93, 0.21 |
| ComboBox | Combo34 |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.83, 0.19, 0.43, 0.21 |
| Label | Label35 | Total Units: |  |  |  | 0.07, 0.08, 0.82, 0.20 |
| Label | Label79 | _____________ |  |  |  | 4.75, 0.01, 1.07, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 1.11, 3.46, 0.18 |
| ComboBox | CN |  | TICKET_CN | SELECT NMIS_TICKETS.CN, [FIRST_NAME] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS RIGHT JOIN NMIS_TICKETS ON NMIS_CONTACTS.[CN] = NMIS_TICKETS.[NURSERY_CONTACT_CN]; |  | 1.04, 0.37, 2.04, 0.20 |
| ComboBox | Combo42 | Phone: | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_PHONE_NUMBERS.PHONE_NUMBER FROM NMIS_PHONE_NUMBERS RIGHT JOIN (NMIS_CONTACTS RIGHT JOIN NMIS_TICKETS ON NMIS_CONTACTS.[CN] = NMIS_TICKETS.[NURSERY_CONTACT_CN]) ON NMIS_PHONE_NUMBERS.[CONTACT_CN] = NMIS_CONTACTS.[CN]; |  | 1.03, 0.58, 2.04, 0.20 |
| TextBox | Text44 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 0.04, 0.15, 2.50, 0.20 |
| Label | Label46 | Contact: |  |  |  | 0.28, 0.38, 0.68, 0.19 |
| ComboBox | Text47 | Comments: | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[NOTE] FROM NMIS_TICKETS;  |  | 0.92, 0.82, 6.58, 0.20 |
| Label | Label82 | _________________________________________________________________________________________________________ |  |  |  | 0.00, 0.00, 7.95, 0.19 |
