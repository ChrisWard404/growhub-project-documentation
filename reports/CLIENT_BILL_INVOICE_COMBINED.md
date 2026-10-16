# Report: CLIENT_BILL_INVOICE_COMBINED

**Grouping/sorting:** `Bill_Status`, `CATEGORY_CODE`, `PRIORITY`, `TYPE`, `PRODUCT`, `BILL_CODE`, `BILL_DESC`  
**Backend tables referenced:** `NMIS_CATEGORIES`, `NMIS_CONTACTS`  
**Subforms/subreports:** `Report.Client_Bill_Income_Dist_Summary_Bill_Stat_Subform`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| TextBox | Text21 |  | ="Invoice Summary for Invoicing Period " & [Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date] |  |  | 1.62, 0.55, 5.17, 0.20 |
| Line | Line37 |  |  |  |  | 0.04, 1.18, 7.84, 0.00 |
| TextBox | Text39 |  | ="Selected for Like Client: " & [Forms]![Client_Bill_Menu]![Like_Client] |  |  | 2.61, 0.76, 2.79, 0.20 |
| ComboBox | Combo178 |  | =[Forms]![Client_Bill_Menu]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.33, 2.36, 0.21 |
| TextBox | Text49 |  | ="Selected for Like Jobcode: " & [Forms]![Client_Bill_Menu]![LikeJobCode] & "  AND NOT Like Job code: " & [Forms]![Client_Bill_Menu]![NotLikeJC] |  |  | 1.62, 0.97, 5.17, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Bill_Status | Billing Status: | Bill_Status |  |  | 1.00, 0.00, 1.92, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CAT |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 0.05, 0.00, 3.04, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRIORITY_NAME |  | PRIORITY_NAME |  |  | 0.04, 0.01, 3.00, 0.21 |
| Label | BILL_CODE_Label | Bill |  |  |  | 2.34, 0.26, 0.46, 0.20 |
| Label | BILL_DESC_Label | Description |  |  |  | 2.95, 0.26, 1.75, 0.20 |
| Label | UNITS_Label | Units |  |  |  | 5.26, 0.26, 0.51, 0.20 |
| Label | TYPE_Label | Type |  |  |  | 5.79, 0.26, 0.38, 0.20 |
| Label | CHARGE_PER_UNIT_Label | $/Unit |  |  |  | 6.22, 0.26, 0.54, 0.20 |
| Label | ITEM_COST_Label | Bill Amount |  |  |  | 6.93, 0.26, 0.88, 0.20 |
| Line | Line29 |  |  |  |  | 0.10, 0.47, 7.75, 0.00 |
| Label | Label36 | Product |  |  |  | 0.00, 0.25, 2.25, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BILL_CODE |  | BILL_CODE |  |  | 2.34, 0.00, 0.58, 0.20 |
| TextBox | PRODUCT |  | PRODUCT |  |  | 0.03, 0.00, 2.29, 0.20 |
| TextBox | BILL_DESC |  | BILL_DESC |  |  | 2.95, 0.00, 2.14, 0.20 |
| TextBox | UNITS |  | SumOfUNITS |  |  | 5.04, 0.00, 0.73, 0.20 |
| TextBox | TYPE |  | TYPE |  |  | 5.84, 0.00, 0.25, 0.20 |
| TextBox | CHARGE_PER_UNIT |  | CPU |  |  | 6.05, 0.00, 0.83, 0.20 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 6.93, 0.00, 0.97, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Sum([ITEM_COST]) |  |  | 6.43, 0.01, 1.47, 0.00 |
| Line | Line34 |  |  |  |  | 6.77, 0.00, 1.04, 0.00 |
| Label | Label35 | TOTAL: |  |  |  | 4.09, 0.00, 0.60, 0.18 |
| TextBox | Text41 |  | =Sum([SumOfUNITS]) |  |  | 4.79, 0.00, 0.98, 0.20 |
| Line | Line42 |  |  |  |  | 4.91, 0.00, 0.89, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | =Sum([ITEM_COST]) |  |  | 6.43, 0.01, 1.47, 0.18 |
| Label | Label49 | Sub Total: |  |  |  | 5.58, 0.01, 0.83, 0.18 |
| ComboBox | Combo50 |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES; |  | 3.22, 0.01, 2.25, 0.18 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Child44 |  | Report.Client_Bill_Income_Dist_Summary_Bill_Stat_Subform (master: Bill_Status → child: Bill_Status) |  |  | 0.00, 0.04, 2.22, 0.18 |
| TextBox | Text45 |  | =Sum([ITEM_COST]) |  |  | 6.44, 0.04, 1.47, 0.00 |
| Label | Label46 | TOTAL: |  |  |  | 4.10, 0.04, 0.69, 0.18 |
| Line | Line47 |  |  |  |  | 6.90, 0.00, 1.04, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text51 |  | =Date() & "   " & Time() |  |  | 0.00, 0.02, 2.00, 0.00 |
| TextBox | Text53 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.54, 0.02, 1.35, 0.00 |
| Line | Line54 |  |  |  |  | 0.00, 0.00, 7.94, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text130 |  | =IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FALURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.") |  |  | 0.00, 0.19, 7.71, 0.02 |
| Line | Line133 |  |  |  |  | 0.00, 0.07, 7.90, 0.00 |
