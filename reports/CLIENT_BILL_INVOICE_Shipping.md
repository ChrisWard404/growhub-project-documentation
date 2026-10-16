# Report: CLIENT_BILL_INVOICE_Shipping

**Grouping/sorting:** `Reporting_Parent`, `CLIENT`, `JC`, `Bill_Group`, `PRIORITY`, `CAT`, `Bill_Code_n_Desc`, `TYPE`, `PRODUCT`, `ID`  
**Backend tables referenced:** `NMIS_CONTACTS`  
**Opened from (VBA):** `Form_Client_Bill_Menu`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| Label | Text29 | Shipping Only  Invoice |  |  |  | 3.03, 0.54, 1.93, 0.23 |
| TextBox | Like_Client |  | Like_Client |  |  | 5.79, 0.17, 0.92, 0.21 |
| TextBox | Bill_Date | Invoice Date: | =Date() |  |  | 6.52, 0.56, 1.42, 0.20 |
| TextBox | Bill Period | Invoice Period: | =[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date] |  |  | 6.52, 0.35, 1.43, 0.20 |
| ComboBox | Combo178 |  | =[Forms]![Client_Bill_Menu]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.04, 0.33, 2.36, 0.21 |
| Line | Line106 |  |  |  |  | 0.00, 1.03, 7.96, 0.00 |
| TextBox | Text49 |  | ="Selected for Like Jobcode: " & [Forms]![Client_Bill_Menu]![LikeJobCode] & "  AND NOT Like Job code: " & [Forms]![Client_Bill_Menu]![NotLikeJC] |  |  | 1.43, 0.78, 5.17, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PARENT_NAME |  | PARENT_NAME |  |  | 0.04, 0.00, 3.88, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client_Code | Client: | CLIENT |  |  | 0.54, 0.00, 0.79, 0.21 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.38, 0.00, 3.88, 0.21 |
| TextBox | Job_Code | Job Code: | JC |  |  | 6.38, 0.00, 1.54, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | [ID] |  |  | 0.00, 0.00, 1.06, 0.00 |
| TextBox | UNITS |  | SumOfUNITS |  |  | 5.08, 0.00, 0.68, 0.00 |
| TextBox | TYPE |  | TYPE |  |  | 5.92, 0.00, 0.25, 0.00 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 6.18, 0.00, 0.75, 0.00 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 6.99, 0.00, 0.97, 0.00 |
| TextBox | ID_SOURCE |  | [ID_SOURCE] |  |  | 1.12, 0.00, 3.92, 0.00 |
| TextBox | Text78 |  | =IIf(IsNull([CHARGE_PER_UNIT]),"Undefined","") |  |  | 6.19, 0.00, 0.75, 0.00 |
| TextBox | bc |  | BC |  |  | 0.00, 0.00, 0.58, 0.00 |
| TextBox | bd |  | BD |  |  | 0.59, 0.00, 1.66, 0.00 |
| TextBox | Prod |  | prod |  |  | 2.27, 0.00, 2.29, 0.00 |
| TextBox | ct |  | ct |  |  | 4.56, 0.00, 0.50, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =IIf([priority]=1,Sum([SumOfUnits])) |  |  | 5.08, 0.00, 0.68, 0.02 |
| TextBox | Text32 |  | =IIf([priority]=1,[Type]) |  |  | 5.92, 0.00, 0.25, 0.02 |
| TextBox | Text33 |  | =IIf([priority]=1,[CHARGE_PER_UNIT]) |  |  | 6.18, 0.00, 0.75, 0.02 |
| TextBox | Text34 |  | =IIf([priority]=1,Sum([ITEM_COST])) |  |  | 6.99, 0.00, 0.97, 0.02 |
| TextBox | Text107 |  | =IIf(Not IsNull([PRODUCT_CAT]),[PRODUCT_CAT] & IIf([Priority]=1," " & [BILL_DESC_LONG])) |  |  | 0.04, 0.00, 5.00, 0.02 |

## Section: GroupFooter6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text118 |  | =IIf([priority]>1,Sum([SumOfUnits])) |  |  | 5.09, 0.00, 0.68, 0.02 |
| TextBox | Text119 |  | =IIf([priority]>1,[Type]) |  |  | 5.93, 0.00, 0.25, 0.02 |
| TextBox | Text120 |  | =IIf([priority]>1,[CHARGE_PER_UNIT]) |  |  | 6.19, 0.00, 0.75, 0.02 |
| TextBox | Text121 |  | =IIf([priority]>1,Sum([ITEM_COST])) |  |  | 7.00, 0.00, 0.97, 0.02 |
| TextBox | Text123 |  | =IIf(IsNull([PRODUCT_CAT]),[bc] & "  " & [bd] & " Totals") |  |  | 0.00, 0.00, 4.17, 0.02 |
| TextBox | CAT |  | CAT |  |  | 4.43, 0.00, 0.62, 0.02 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text96 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.02, 1.04, 0.20 |
| TextBox | Text97 |  | =IIf([priority]=1,Sum([SumOfUNITS])) |  |  | 4.72, 0.02, 1.04, 0.20 |
| ComboBox | Combo98 |  | Bill_Group | 1;"Product Total Charges";2;"Non-Product Total Charges" |  | 0.00, 0.02, 1.96, 0.20 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text58 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.06, 1.04, 0.20 |
| Line | Line59 |  |  |  |  | 6.96, 0.05, 0.00, 0.00 |
| Label | Label60 | Total Charges for Jobcode: |  |  |  | 0.00, 0.10, 1.83, 0.18 |
| TextBox | JC |  | JC |  |  | 1.86, 0.10, 1.39, 0.18 |
| Line | Line61 |  |  |  |  | 6.96, 0.03, 0.00, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =[ASSOCIATE_NAME] & " Total Charges" |  |  | 0.00, 0.10, 5.08, 0.20 |
| TextBox | Text111 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.06, 1.04, 0.20 |
| Line | Line112 |  |  |  |  | 6.96, 0.05, 0.00, 0.00 |
| Line | Line113 |  |  |  |  | 6.96, 0.03, 0.00, 0.00 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | =[PARENT_NAME] & " Total Charges" |  |  | 0.00, 0.06, 5.08, 0.20 |
| TextBox | Text114 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.06, 1.04, 0.20 |
| Line | Line115 |  |  |  |  | 6.96, 0.05, 0.00, 0.00 |
| Line | Line116 |  |  |  |  | 6.96, 0.03, 0.00, 0.00 |
| Label | Label74 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.28, 7.92, 0.19 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line57 |  |  |  |  | 6.96, 0.00, 0.00, 0.00 |
| TextBox | Text127 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.03, 1.04, 0.20 |
| Line | Line128 |  |  |  |  | 6.96, 0.02, 0.00, 0.00 |
| Line | Line129 |  |  |  |  | 6.96, 0.00, 0.00, 0.00 |
| Label | Label130 | Total Charges: |  |  |  | 0.00, 0.00, 1.83, 0.18 |
| TextBox | Text130 |  | =IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FALURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.") |  |  | 0.00, 0.42, 7.71, 0.02 |
| Line | Line133 |  |  |  |  | 0.00, 0.32, 7.93, 0.00 |
