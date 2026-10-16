# Report: seed_combo_ticket

**Grouping/sorting:** `TICKET_CN`, `CATEGORY_CODE`, `DIVERSE`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `CN2`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_CONTACTS`, `NMIS_COUNTRIES`, `NMIS_PHONE_NUMBERS`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Opened from (VBA):** `Form_Seed_Shipping_Ticket Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Source Combo Ticket |  |  |  | 3.02, 0.56, 1.97, 0.23 |
| ComboBox | Billed_To_Associate |  | DESTINATION_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.68, 0.86, 3.54, 0.19 |
| ComboBox | Street Address |  | DESTINATION_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.SHIP_ADDR FROM NMIS_ASSOCIATES; |  | 0.68, 1.05, 3.54, 0.19 |
| ComboBox | Combo21 |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[DESIRED_DATE] FROM NMIS_TICKETS;  |  | 6.78, 1.07, 1.11, 0.20 |
| Label | Label23 | Ticket Date : |  |  |  | 5.74, 1.07, 1.00, 0.20 |
| ComboBox | TICKET_CN |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[TKT_NO] FROM NMIS_TICKETS;  |  | 6.78, 0.86, 1.11, 0.20 |
| Label | TICKET_CN_Label | Ticket ID: |  |  |  | 6.02, 0.86, 0.72, 0.20 |
| ComboBox | City_State_Zip |  | DESTINATION_ASSOCIATE | SELECT Associate_City_State_Zip.ASSOCIATE, Associate_City_State_Zip.City_State_Zip_Ship FROM Associate_City_State_Zip; |  | 0.68, 1.24, 3.53, 0.19 |
| Label | Label54 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 1.77, 7.91, 0.19 |
| ComboBox | Country |  | DESTINATION_ASSOCIATE | SELECT Associate_City_State_Zip.ASSOCIATE, IIf(IsNull([COUNTRY_CODE]) Or [COUNTRY_CODE]="US","",[COUNTRY_NAME] & " " & [SHIP_ZIPCODE]) AS NO_USA FROM NMIS_COUNTRIES RIGHT JOIN Associate_City_State_Zip ON NMIS_COUNTRIES.COUNTRY_CODE = Associate_City_State_Zip.COUNTRY ORDER BY Associate_City_State_Zip.ASSOCIATE; |  | 0.68, 1.43, 3.53, 0.19 |
| ComboBox | Combo87 |  | TICKET_CN | SELECT NMIS_TICKETS.CN, "Ticket ID: " & [TKT_NO] AS TkID FROM NMIS_TICKETS; |  | 0.00, 0.00, 1.88, 0.26 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_LOT_CN_Label | Source ID |  |  |  | 0.07, 0.03, 0.70, 0.17 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 3.97, 0.03, 0.93, 0.17 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 5.12, 0.03, 0.99, 0.17 |
| Label | Label18 | Source |  |  |  | 1.21, 0.03, 0.47, 0.17 |
| Label | Label52 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.10, 7.91, 0.19 |
| Label | Label55 | Comments |  |  |  | 6.77, 0.02, 0.70, 0.18 |

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
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES;  |  | 4.14, 0.03, 0.81, 0.21 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 5.01, 0.03, 0.81, 0.21 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.83, 0.03, 0.43, 0.21 |
| TextBox | Combo19 |  | SOURCE |  |  | 1.09, 0.04, 3.00, 0.20 |
| TextBox | SOURCE_LOT_CN |  | ID |  |  | 0.07, 0.04, 1.01, 0.20 |
| TextBox | Note |  | NOTE |  |  | 6.29, 0.03, 1.66, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Sum([Activity_Units]) |  |  | 4.88, 0.19, 0.93, 0.21 |
| ComboBox | Combo34 |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.83, 0.19, 0.43, 0.21 |
| Label | Label35 | Total Units: |  |  |  | 0.07, 0.08, 0.82, 0.20 |
| Label | Label79 | _____________ |  |  |  | 4.75, 0.01, 1.07, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.94, 1.33, 2.13, 0.18 |
| ComboBox | CN |  | TICKET_CN | SELECT NMIS_TICKETS.CN, [FIRST_NAME] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS RIGHT JOIN NMIS_TICKETS ON NMIS_CONTACTS.[CN] = NMIS_TICKETS.[NURSERY_CONTACT_CN]; |  | 1.04, 0.41, 2.04, 0.20 |
| ComboBox | Combo42 | Phone: | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_PHONE_NUMBERS.PHONE_NUMBER FROM NMIS_PHONE_NUMBERS RIGHT JOIN (NMIS_CONTACTS RIGHT JOIN NMIS_TICKETS ON NMIS_CONTACTS.[CN] = NMIS_TICKETS.[NURSERY_CONTACT_CN]) ON NMIS_PHONE_NUMBERS.[CONTACT_CN] = NMIS_CONTACTS.[CN]; |  | 1.03, 0.62, 2.04, 0.20 |
| TextBox | Text44 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 0.04, 0.19, 3.04, 0.20 |
| Label | Label46 | Contact: |  |  |  | 0.28, 0.42, 0.68, 0.19 |
| ComboBox | Text47 | Comments: | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[NOTE] FROM NMIS_TICKETS; |  | 0.88, 0.84, 6.96, 0.37 |
| Label | Label80 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.00, 7.91, 0.19 |
| Line | Line81 |  |  |  |  | 0.01, 0.83, 7.92, 0.00 |
| Line | Line82 |  |  |  |  | 0.00, 1.23, 7.95, 0.00 |
| ComboBox | Combo85 |  | TICKET_CN | SELECT NMIS_TICKETS.CN, "Ticket ID: " & [TKT_NO] AS TkID FROM NMIS_TICKETS; |  | 6.08, 1.25, 1.88, 0.26 |
