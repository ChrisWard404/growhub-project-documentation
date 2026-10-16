# Report: seed_shipping_ticket

**Grouping/sorting:** `TICKET_CN`, `ACTIVITY_CODE`, `CATEGORY_CODE`, `PLNTMSTR_SYMBOL`, `SOURCE_CODE`, `ID`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CATEGORIES`, `NMIS_CONTACTS`, `NMIS_COUNTRIES`, `NMIS_ID_ACTIVITIES`, `NMIS_PHONE_NUMBERS`, `NMIS_TICKETS`, `NMIS_UNITS`  
**Subforms/subreports:** `Report.NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport`  
**Opened from (VBA):** `Form_Seed_Shipping_Ticket Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.60, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| Label | Label24 | Source Ticket |  |  |  | 3.04, 0.56, 1.93, 0.23 |
| ComboBox | Billed_To_Associate |  | DESTINATION_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 0.68, 0.83, 3.54, 0.19 |
| Label | Label26 | Ship To: |  |  |  | 0.04, 0.84, 0.60, 0.19 |
| ComboBox | Street Address |  | DESTINATION_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.SHIP_ADDR FROM NMIS_ASSOCIATES; |  | 0.68, 1.02, 3.54, 0.19 |
| ComboBox | Combo20 |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[DELIVERED_TO_ASSOCIATE] FROM NMIS_TICKETS;  |  | 6.58, 1.25, 1.36, 0.20 |
| ComboBox | Combo21 |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[DESIRED_DATE] FROM NMIS_TICKETS;  |  | 6.58, 1.04, 1.36, 0.20 |
| Label | Label22 | Ship To: |  |  |  | 5.92, 1.25, 0.62, 0.20 |
| Label | Label23 | Ship Date : |  |  |  | 5.76, 1.04, 0.78, 0.20 |
| ComboBox | Combo24 |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[EXT_DOC_REF] FROM NMIS_TICKETS;  |  | 6.58, 1.46, 1.36, 0.20 |
| Label | Label25 | Ref #: |  |  |  | 6.06, 1.46, 0.48, 0.20 |
| ComboBox | TICKET_CN |  | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[TKT_NO] FROM NMIS_TICKETS;  |  | 6.58, 0.83, 1.36, 0.20 |
| Label | TICKET_CN_Label | Ticket ID: |  |  |  | 5.82, 0.83, 0.72, 0.20 |
| ComboBox | City_State_Zip |  | DESTINATION_ASSOCIATE | SELECT Associate_City_State_Zip.ASSOCIATE, Associate_City_State_Zip.City_State_Zip_Ship FROM Associate_City_State_Zip; |  | 0.68, 1.21, 3.53, 0.19 |
| ComboBox | Country |  | DESTINATION_ASSOCIATE | SELECT Associate_City_State_Zip.ASSOCIATE, IIf(IsNull([COUNTRY_CODE]) Or [COUNTRY_CODE]="US","",[COUNTRY_NAME] & " " & [SHIP_ZIPCODE]) AS NO_USA FROM NMIS_COUNTRIES RIGHT JOIN Associate_City_State_Zip ON NMIS_COUNTRIES.COUNTRY_CODE = Associate_City_State_Zip.COUNTRY ORDER BY Associate_City_State_Zip.ASSOCIATE; |  | 0.68, 1.40, 3.53, 0.19 |
| Line | Line84 |  |  |  |  | 0.04, 1.82, 7.92, 0.00 |
| ComboBox | Client Contact |  | TICKET_CN | SELECT NMIS_TICKETS.CN, [FIRST_NAME] & " " & [LAST_NAME] AS Name FROM NMIS_TICKETS LEFT JOIN NMIS_CONTACTS ON NMIS_TICKETS.CONTACT_CN = NMIS_CONTACTS.CN; |  | 0.68, 1.59, 2.78, 0.20 |
| Label | Label86 | Contact: |  |  |  | 0.01, 1.59, 0.65, 0.19 |
| ComboBox | Combo87 |  | TICKET_CN | SELECT NMIS_TICKETS.CN, "Ticket ID: " & [TKT_NO] AS TkID FROM NMIS_TICKETS; |  | 0.00, 0.00, 1.88, 0.26 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_LOT_CN_Label | Source ID |  |  |  | 0.07, 0.03, 0.70, 0.17 |
| Label | ACTIVITY_CODE_Label | Owner |  |  |  | 3.71, 0.03, 0.75, 0.18 |
| Label | ACTIVITY_UNITS_Label | Activity Units |  |  |  | 5.12, 0.03, 0.99, 0.17 |
| Label | Label18 | Source |  |  |  | 1.21, 0.03, 0.47, 0.17 |
| Label | Label51 | No. Ctrs |  |  |  | 4.55, 0.03, 0.53, 0.17 |
| Label | Label52 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.07, 7.91, 0.19 |
| Label | Label55 | Job Code |  |  |  | 6.82, 0.03, 0.61, 0.17 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text39 |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, "Purpose: " & [Activity_Code] & "  " & [Activity_Code_No] & "-" & [Activity_Name] AS Purpose FROM NMIS_ACTIVITY_CODES; |  | 0.08, 0.04, 7.62, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, "Category: " & "(" & [Category_code] & ") " & [CATEGORY_DESC] AS Cat FROM NMIS_CATEGORIES; |  | 0.07, 0.03, 3.47, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_UNITS |  | ABS_Activity_Units |  |  | 5.01, 0.03, 0.81, 0.21 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.83, 0.03, 0.43, 0.21 |
| TextBox | Combo19 |  | SOURCE |  |  | 1.09, 0.04, 2.59, 0.20 |
| TextBox | SOURCE_LOT_CN |  | ID |  |  | 0.07, 0.04, 1.01, 0.20 |
| TextBox | NMIS_ID_ACTIVITIES.AMT_PER_UNIT |  | NMIS_ID_ACTIVITIES.AMT_PER_UNIT |  |  | 4.54, 0.04, 0.40, 0.20 |
| Subform | NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport |  | Report.NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport (master: CN2 → child: ACTIVITY_ID_CN) |  |  | 6.29, 0.02, 1.67, 0.23 |
| TextBox | ACTIVITY_CODE |  | STORED_FOR_ASSOCIATE |  |  | 3.70, 0.03, 0.81, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Sum([ABS_Activity_Units]) |  |  | 5.04, 0.19, 0.78, 0.21 |
| ComboBox | Combo34 |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 5.83, 0.19, 0.43, 0.21 |
| Label | Label35 | Total Units: |  |  |  | 0.07, 0.08, 0.82, 0.20 |
| Label | Label79 | _____     _________ |  |  |  | 4.44, 0.01, 1.45, 0.19 |
| TextBox | Text90 |  | =Sum(Nz([NMIS_ID_ACTIVITIES.AMT_PER_UNIT],0)) |  |  | 4.53, 0.19, 0.44, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.97, 1.34, 2.08, 0.18 |
| ComboBox | CN |  | TICKET_CN | SELECT NMIS_TICKETS.CN, [FIRST_NAME] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS RIGHT JOIN NMIS_TICKETS ON NMIS_CONTACTS.[CN] = NMIS_TICKETS.[NURSERY_CONTACT_CN]; |  | 1.04, 0.41, 2.04, 0.20 |
| ComboBox | Combo42 | Phone: | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_PHONE_NUMBERS.PHONE_NUMBER FROM NMIS_PHONE_NUMBERS RIGHT JOIN (NMIS_CONTACTS RIGHT JOIN NMIS_TICKETS ON NMIS_CONTACTS.[CN] = NMIS_TICKETS.[NURSERY_CONTACT_CN]) ON NMIS_PHONE_NUMBERS.[CONTACT_CN] = NMIS_CONTACTS.[CN]; |  | 1.03, 0.62, 2.04, 0.20 |
| TextBox | Text44 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 0.04, 0.19, 3.04, 0.20 |
| Label | Label46 | Contact: |  |  |  | 0.28, 0.42, 0.68, 0.19 |
| ComboBox | Text47 | Comments: | TICKET_CN | SELECT [NMIS_TICKETS].[CN], [NMIS_TICKETS].[NOTE] FROM NMIS_TICKETS; |  | 0.88, 0.84, 6.96, 0.37 |
| Label | Label80 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.00, 7.91, 0.19 |
| Line | Line81 |  |  |  |  | 0.01, 0.83, 7.92, 0.00 |
| Line | Line82 |  |  |  |  | 0.00, 1.23, 7.95, 0.00 |
| ComboBox | Combo89 |  | TICKET_CN | SELECT NMIS_TICKETS.CN, "Ticket ID: " & [TKT_NO] AS TkID FROM NMIS_TICKETS; |  | 6.00, 1.25, 1.96, 0.26 |
