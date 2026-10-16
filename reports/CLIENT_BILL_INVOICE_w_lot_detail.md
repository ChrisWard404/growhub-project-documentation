# Report: CLIENT_BILL_INVOICE_w_lot_detail

**Grouping/sorting:** `Reporting_Parent`, `CLIENT`, `JC`, `Bill_Group`, `PRIORITY`, `CAT`, `Bill_Code_n_Desc`, `TYPE`, `PRODUCT`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`  
**Subforms/subreports:** `Report.Client_Bill_Income_Dist_Client_Jobcode_Subform`, `Report.Client_Bill_Income_Dist_Client_Subform`, `Report.Client_Bill_Client_MGMT_Code subreport`, `Report.Client_Bill_Income_Dist_Client_Parent_Subform`, `Report.Client_Bill_Billing_Parent_MGMT_Code subreport`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client_Code | Client: | CLIENT |  |  | 0.54, 1.05, 0.79, 0.21 |
| TextBox | Job_Code | Job Code: | JC |  |  | 6.38, 1.25, 1.58, 0.21 |
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.38, 1.05, 3.88, 0.21 |
| TextBox | PARENT_NAME |  | [PARENT_NAME] |  |  | 1.38, 1.26, 3.88, 0.20 |
| Label | Text29 | Stock and Services Invoice |  |  |  | 2.90, 0.54, 2.20, 0.23 |
| TextBox | Like_Client |  | Like_Client |  |  | 6.21, 0.08, 0.92, 0.21 |
| TextBox | Bill_Date | Invoice Date: | =Date() |  |  | 6.42, 0.97, 1.42, 0.20 |
| TextBox | Bill Period | Invoice Period: | =[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date] |  |  | 6.42, 0.76, 1.43, 0.20 |
| ComboBox | Combo178 |  | =[Forms]![Client_Bill_Menu]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.04, 0.33, 2.36, 0.21 |
| Line | Line106 |  |  |  |  | 0.00, 1.46, 7.94, 0.00 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRIORITY_NAME |  | PRIORITY_NAME |  |  | 0.00, 0.00, 3.42, 0.19 |
| Label | BILL_CODE_Label | Bill |  |  |  | 0.00, 0.18, 0.54, 0.20 |
| Label | BILL_DESC_Label | Description |  |  |  | 0.54, 0.18, 4.62, 0.20 |
| Line | Line29 |  |  |  |  | 0.00, 0.39, 7.93, 0.00 |
| TextBox | Text99 |  | =IIf([priority]=1,"Units") |  |  | 5.24, 0.18, 0.51, 0.20 |
| TextBox | Text101 |  | =IIf([priority]=1,"Type") |  |  | 5.76, 0.18, 0.36, 0.20 |
| TextBox | Text102 |  | =IIf([priority]=1,"$/Unit") |  |  | 6.19, 0.18, 0.54, 0.20 |
| TextBox | Text103 |  | =IIf([priority]=1,"Bill Amount") |  |  | 6.96, 0.18, 0.89, 0.20 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BILL_DESC |  | =IIf([Priority]=1,[BILL_DESC_LONG]) |  |  | 0.66, 0.01, 4.68, 0.00 |
| TextBox | BILL_CODE |  | BCProd |  |  | 0.00, 0.00, 0.65, 0.01 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT |  | PRODUCT_CAT |  |  | 0.00, 0.00, 4.17, 0.01 |
| TextBox | Check_PMC |  | Check_PMC |  |  | 4.42, 0.00, 3.42, 0.01 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | [ID] |  |  | 0.00, 0.00, 1.06, 0.04 |
| TextBox | UNITS |  | SumOfUNITS |  |  | 5.05, 0.00, 0.78, 0.04 |
| TextBox | TYPE |  | TYPE |  |  | 5.83, 0.00, 0.27, 0.04 |
| TextBox | CHARGE_PER_UNIT |  | CPU |  |  | 6.03, 0.00, 0.76, 0.04 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 7.05, 0.00, 0.90, 0.04 |
| TextBox | ID_SOURCE |  | ID_Source2 |  |  | 1.12, 0.00, 3.92, 0.04 |
| TextBox | Text78 |  | =IIf(IsNull([CPU]),"Undefined","") |  |  | 6.11, 0.00, 0.66, 0.02 |
| TextBox | bd |  | BD |  |  | 0.86, 0.00, 2.82, 0.04 |
| TextBox | Prod |  | prod |  |  | 2.27, 0.00, 2.29, 0.04 |
| TextBox | ct |  | ct |  |  | 4.56, 0.00, 0.47, 0.04 |
| TextBox | Text124 |  | =IIf([OVERRIDE]="AT","TR") |  |  | 6.79, 0.01, 0.24, 0.02 |
| TextBox | Chg_Override_Note |  | Chg_Override_Note |  |  | 1.38, 0.06, 5.58, 0.01 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =IIf([priority]=1,Sum([SumOfUnits])) |  |  | 5.11, 0.00, 0.68, 0.01 |
| TextBox | Text32 |  | =IIf([priority]=1,[Type]) |  |  | 5.83, 0.00, 0.25, 0.01 |
| TextBox | Text34 |  | =IIf([priority]=1,Sum([ITEM_COST])) |  |  | 7.05, 0.00, 0.90, 0.01 |
| TextBox | Text107 |  | =IIf(Not IsNull([PRODUCT_CAT]),[PRODUCT_CAT] & " Totals") |  |  | 0.11, 0.00, 4.17, 0.01 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text96 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.02, 1.04, 0.20 |
| TextBox | Text97 |  | =IIf([priority]=1,Sum([SumOfUNITS])) |  |  | 4.75, 0.02, 1.04, 0.20 |
| ComboBox | Combo98 |  | Bill_Group | 1;"Product Total Charges";2;"Non-Product Total Charges" |  | 0.00, 0.02, 1.96, 0.20 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text58 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.16, 1.04, 0.20 |
| Label | Label60 | Total Charges for Jobcode: |  |  |  | 0.00, 0.20, 1.83, 0.18 |
| TextBox | JC |  | JC |  |  | 1.86, 0.20, 1.39, 0.18 |
| Subform | Client_Bill_Income_Dist_Subform |  | Report.Client_Bill_Income_Dist_Client_Jobcode_Subform (master: JC → child: JC) |  |  | 3.35, 0.42, 2.22, 0.04 |
| Label | Label121 | ------------------------ |  |  |  | 6.91, 0.02, 1.05, 0.12 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =[ASSOCIATE_NAME] & " Total Charges" |  |  | 0.00, 0.17, 5.08, 0.20 |
| Subform | Child81 |  | Report.Client_Bill_Income_Dist_Client_Subform (master: CLIENT → child: CLIENT) |  |  | 3.35, 0.43, 2.22, 0.05 |
| Subform | Child83 |  | Report.Client_Bill_Client_MGMT_Code subreport (master: CLIENT → child: CLIENT) |  |  | 0.00, 0.43, 3.37, 0.05 |
| TextBox | Text111 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.14, 1.04, 0.20 |
| Label | Label122 | ------------------------ |  |  |  | 6.91, 0.00, 1.05, 0.12 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | =[PARENT_NAME] & " Total Charges" |  |  | 0.00, 0.14, 5.08, 0.20 |
| Subform | Child82 |  | Report.Client_Bill_Income_Dist_Client_Parent_Subform (master: Reporting_Parent → child: Reporting_Parent) |  |  | 3.35, 1.32, 2.22, 0.18 |
| Subform | Child84 |  | Report.Client_Bill_Billing_Parent_MGMT_Code subreport (master: Reporting_Parent → child: Reporting_Parent) |  |  | 0.00, 1.32, 3.33, 0.18 |
| TextBox | Text114 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.14, 1.04, 0.20 |
| Label | Label74 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.33, 7.92, 0.19 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.24, 0.73, 3.70, 0.19 |
| TextBox | Text76 |  | =[Forms]![Client_Bill_Menu]![Title_Line] |  |  | 4.31, 0.97, 3.61, 0.21 |
| Label | Label108 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 1.07, 7.92, 0.19 |
| TextBox | Text117 |  | =[Forms]![Client_Bill_Menu]![Signature_Line] |  |  | 4.31, 0.61, 3.61, 0.21 |
| Label | Label123 | ------------------------ |  |  |  | 6.91, 0.00, 1.05, 0.12 |
| TextBox | Text130 |  | =IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FAILURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.") |  |  | 0.11, 1.64, 7.71, 0.00 |
| Line | Line133 |  |  |  |  | 0.04, 1.57, 7.88, 0.00 |
| ComboBox | Billing_Extractory |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] | SELECT NMIS_ASSOCIATES.ASSOCIATE, IIf([Forms]![Client_Bill_Menu]![RemitTo],"USDA Forest Service, " & [ASSOCIATE_NAME]) AS AN FROM NMIS_ASSOCIATES; |  | 1.38, 2.12, 4.13, 0.20 |
| ComboBox | Combo49 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, IIf([Forms]![Client_Bill_Menu]![RemitTo],[MAIL_ADDRESS_LINE1]) AS MA1 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 1.38, 2.33, 2.66, 0.20 |
| ComboBox | Combo50 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, IIf([Forms]![Client_Bill_Menu]![RemitTo],[MAIL_ADDRESS_LINE2]) AS MA2 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 1.38, 2.54, 2.66, 0.20 |
| ComboBox | Nursery_City |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] | SELECT NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS.ASSOCIATE, IIf([Forms]![Client_Bill_Menu]![RemitTo],[MAIL_ADDRESS_LINE3]) AS MA3 FROM NMIS_ASSOCIATES_MAIL_N_SHIP_ADDRESS; |  | 1.38, 2.75, 2.65, 0.20 |
| TextBox | Text134 |  | =IIf([Forms]![Client_Bill_Menu]![RemitTo],"Remit Payment to:") |  |  | 0.04, 2.12, 1.29, 0.20 |
| TextBox | Text135 |  | =[Forms]![Client_Bill_Menu]![Comments] |  |  | 0.17, 0.54, 7.75, 0.04 |
| TextBox | Text136 |  | =IIf([Forms]![Client_Bill_Menu]![RemitTo],"MAKE CHECK PAYABLE TO: FOREST SERVICE") |  |  | 0.04, 1.67, 4.46, 0.20 |
| TextBox | Text137 |  | =IIf([Forms]![Client_Bill_Menu]![RemitTo],"INCULDE FMMI BILL NUMBER WITH PAYMENT") |  |  | 0.04, 1.90, 4.46, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line127 |  |  |  |  | 0.00, 0.01, 7.93, 0.00 |
| TextBox | Text128 |  | =Now() |  |  | 0.00, 0.01, 3.12, 0.21 |
