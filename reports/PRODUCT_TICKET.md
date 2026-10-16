# Report: PRODUCT_TICKET

**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_PHONE_NUMBERS`, `NMIS_PHONE_TYPES`, `NMIS_TICKETS`  
**Subforms/subreports:** `Report.PRODUCT_TKT_LOTS subrep`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.46, 0.33, 2.79, 0.21 |
| TextBox | FISCAL_YEAR | Fiscal Year: | FY |  |  | 4.08, 0.75, 0.46, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.58, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.46, 0.17, 2.78, 0.17 |
| TextBox | Text31 |  | TKT_NAME |  |  | 2.46, 0.54, 2.79, 0.21 |
| TextBox | TKT_NO | Ticket Number: | TKT_NO |  |  | 1.29, 1.26, 0.96, 0.21 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  |  | 1.29, 1.05, 0.79, 0.21 |
| TextBox | EXT_DOC_REF |  | Reference |  |  | 1.29, 1.47, 1.79, 0.20 |
| Label | Label30 | Ticket Date: |  |  |  | 0.25, 1.05, 0.96, 0.21 |
| TextBox | CN |  | CN |  |  | 0.08, 0.75, 0.00, 0.21 |
| TextBox | CLIENT |  | CLIENT |  |  | 4.00, 1.26, 0.67, 0.21 |
| TextBox | CLIENT_PARENT |  | PARENT_NAME |  |  | 4.67, 1.05, 3.04, 0.21 |
| TextBox | DELIVERY_NAME |  | DELIVERY_NAME |  |  | 4.67, 1.47, 3.04, 0.20 |
| TextBox | Text35 |  | ASSOC_NAME |  |  | 4.67, 1.26, 3.04, 0.20 |
| Label | FOREST | Forest: |  |  |  | 3.33, 1.05, 0.62, 0.21 |
| Label | DISTRICT | District: |  |  |  | 3.33, 1.26, 0.62, 0.21 |
| Label | Label38 | Reference: |  |  |  | 0.25, 1.47, 0.96, 0.20 |
| Label | Label39 | Carrier: |  |  |  | 3.33, 1.47, 0.62, 0.21 |
| Label | Label26 | Nursery ID |  |  |  | 0.08, 2.01, 0.71, 0.21 |
| Label | Label27 | Source |  |  |  | 1.29, 2.01, 1.17, 0.21 |
| Label | Label28 | Number of Containers |  |  |  | 5.95, 1.88, 0.74, 0.34 |
| Label | Label29 | Amount |  |  |  | 6.88, 2.01, 0.71, 0.21 |
| Line | Line33 |  |  |  |  | 0.00, 1.90, 7.75, 0.00 |
| Rectangle | Box56 |  |  |  |  | 0.00, 1.05, 7.75, 1.18 |
| TextBox | CARRIER |  | CARRIER |  |  | 4.00, 1.47, 0.67, 0.21 |
| Label | Label58 | Container Type |  |  |  | 4.82, 1.89, 0.71, 0.33 |
| TextBox | Text71 |  | ="(" & [Reporting_Parent] & ")" |  |  | 4.00, 1.05, 0.67, 0.21 |
| TextBox | Reporting_Parent |  | Reporting_Parent |  |  | 1.33, 0.71, 0.00, 0.00 |
| ComboBox | Nursery_Contact_Main | Nursery Contact: | NURSERY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, [FIRST_NAME] & IIf(Not IsNull([first_name])," ") & [last_name] & " " & IIf([phone_type] Like "Cel*","Cell") & IIf([phone_type] Like "fax*","Fax") & " " & [phone_number] AS Contact, NMIS_PHONE_TYPES.PHONE_TYPE FROM NMIS_PHONE_TYPES RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_PHONE_NUMBERS ON NMIS_CONTACTS.CN = NMIS_PHONE_NUMBERS.CONTACT_CN) ON NMIS_PHONE_TYPES.CN = NMIS_PHONE_NUMBERS.PHONE_TYPE_CN WHERE (((NMIS_PHONE_TYPES.PHONE_TYPE) Like "*primary*")) ORDER BY NMIS_PHONE_TYPES.PHONE_TYPE DESC; |  | 1.29, 1.68, 3.11, 0.19 |
| ComboBox | Nursery_Contact_Cel |  | NURSERY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, IIf([phone_type] Like "Cel*","Cell:" & [phone_number]) AS Contact FROM NMIS_PHONE_TYPES RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_PHONE_NUMBERS ON NMIS_CONTACTS.CN = NMIS_PHONE_NUMBERS.CONTACT_CN) ON NMIS_PHONE_TYPES.CN = NMIS_PHONE_NUMBERS.PHONE_TYPE_CN; |  | 4.48, 1.68, 3.08, 0.19 |
| TextBox | Text79 |  | TKT_NO |  |  | 0.04, 0.04, 2.12, 0.46 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | PRODUCT_TKT_LOTS subrep |  | Report.PRODUCT_TKT_LOTS subrep (master: CN → child: TICKET_CN) |  |  | 0.00, 0.04, 7.75, 5.50 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text55 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.30, 0.04, 0.00, 0.00 |
| Line | Line69 |  |  |  |  | 0.00, 0.02, 7.67, 0.00 |
| TextBox | Text81 |  | TKT_NO |  |  | 5.58, 0.04, 2.12, 0.46 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NOTE |  | NOTE |  |  | 0.72, 0.04, 6.96, 0.00 |
| Label | Label49 | Client Contact Person: _______________________________________ |  |  |  | 0.00, 0.62, 4.98, 0.19 |
| Label | Label50 | Comments: |  |  |  | 0.00, 0.03, 7.62, 0.19 |
| Label | Label52 | Time of Departure: ______________________                                                Time of Arrival: _______________________ |  |  |  | 0.00, 0.87, 7.75, 0.21 |
| Label | Label53 | Bag Temperature @ Nursery: _________________                      Bag Temperature on Arrival: __________________ |  |  |  | 0.00, 1.16, 7.75, 0.21 |
| Label | Label67 | ___________________________________________________________________________________________________ |  |  |  | 0.00, 0.40, 7.74, 0.19 |
| Label | Label68 | Client Contact Phone: ___________________ |  |  |  | 4.80, 0.62, 2.92, 0.19 |
| Line | Line70 |  |  |  |  | 0.00, 0.00, 7.75, 0.00 |
| ComboBox | Combo77 |  | CONTACT_CN | SELECT NMIS_CONTACTS.CN, [FIRST_NAME] & IIf(Not IsNull([first_name])," ") & [last_name] AS Contact FROM NMIS_PHONE_TYPES RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_PHONE_NUMBERS ON NMIS_CONTACTS.CN = NMIS_PHONE_NUMBERS.CONTACT_CN) ON NMIS_PHONE_TYPES.CN = NMIS_PHONE_NUMBERS.PHONE_TYPE_CN; |  | 1.42, 0.60, 3.04, 0.19 |
| ComboBox | Combo42 |  | CN | SELECT NMIS_TICKETS.CN, NMIS_PHONE_NUMBERS.PHONE_NUMBER FROM NMIS_TICKETS LEFT JOIN (NMIS_PHONE_NUMBERS RIGHT JOIN NMIS_CONTACTS ON NMIS_PHONE_NUMBERS.[CONTACT_CN] = NMIS_CONTACTS.[CN]) ON NMIS_TICKETS.CONTACT_CN = NMIS_CONTACTS.CN; |  | 6.17, 0.60, 1.39, 0.20 |
