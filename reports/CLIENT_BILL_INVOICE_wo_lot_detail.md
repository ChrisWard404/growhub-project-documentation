# Report: CLIENT_BILL_INVOICE_wo_lot_detail

**Grouping/sorting:** `Reporting_Parent`, `CLIENT`, `JC`, `Bill_Group`, `PRIORITY`, `CAT`, `Bill_Code_n_Desc`, `TYPE`, `PRODUCT`, `CHARGE_PER_UNIT`  
**Backend tables referenced:** `NMIS_CONTACTS`  
**Subforms/subreports:** `Report.Client_Bill_Income_Dist_Client_Jobcode_Subform`, `Report.Client_Bill_Income_Dist_Client_Subform`, `Report.Client_Bill_Client_MGMT_Code subreport`, `Report.Client_Bill_Income_Dist_Client_Parent_Subform`, `Report.Client_Bill_Billing_Parent_MGMT_Code subreport`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Client_Code | Client: | CLIENT |  |  | 0.62, 0.79, 0.79, 0.21 |
| TextBox | Job_Code | Job Code: | JC |  |  | 6.42, 0.99, 1.54, 0.21 |
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.46, 0.79, 3.88, 0.21 |
| TextBox | PARENT_NAME |  | PARENT_NAME |  |  | 1.46, 1.00, 3.88, 0.20 |
| Label | Text29 | Stock and Services Invoice |  |  |  | 2.90, 0.54, 2.20, 0.23 |
| TextBox | Like_Client |  | Like_Client |  |  | 5.79, 0.17, 0.92, 0.21 |
| TextBox | Bill_Date | Invoice Date: | =Date() |  |  | 6.50, 0.71, 1.42, 0.20 |
| TextBox | Bill Period | Invoice Period: | =[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date] |  |  | 6.50, 0.50, 1.43, 0.20 |
| Line | Line106 |  |  |  |  | 0.00, 1.26, 7.96, 0.00 |
| ComboBox | Combo178 |  | =[Forms]![Client_Bill_Menu]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.04, 0.33, 2.36, 0.21 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRIORITY_NAME |  | PRIORITY_NAME |  |  | 0.00, 0.00, 3.00, 0.19 |
| Label | BILL_CODE_Label | Invoice |  |  |  | 0.00, 0.18, 0.53, 0.20 |
| Label | BILL_DESC_Label | Description |  |  |  | 0.54, 0.18, 4.62, 0.20 |
| Line | Line29 |  |  |  |  | 0.02, 0.39, 7.93, 0.00 |
| TextBox | Text99 |  | =IIf([priority]=1,"Units") |  |  | 5.24, 0.18, 0.51, 0.20 |
| TextBox | Text101 |  | =IIf([priority]=1,"Type") |  |  | 5.79, 0.17, 0.36, 0.21 |
| TextBox | Text102 |  | =IIf([priority]=1,"$/Unit") |  |  | 6.25, 0.18, 0.54, 0.20 |
| TextBox | Text103 |  | =IIf([priority]=1,"Bill Amount") |  |  | 6.96, 0.18, 0.89, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | [ID] |  |  | 0.00, 0.00, 1.06, 0.00 |
| TextBox | UNITS |  | SumOfUNITS |  |  | 5.08, 0.00, 0.68, 0.00 |
| TextBox | TYPE |  | TYPE |  |  | 5.92, 0.00, 0.25, 0.00 |
| TextBox | CHARGE_PER_UNIT |  | CPU |  |  | 6.18, 0.00, 0.75, 0.00 |
| TextBox | ITEM_COST |  | ITEM_COST |  |  | 6.99, 0.00, 0.97, 0.00 |
| TextBox | ID_SOURCE |  | [ID_SOURCE] |  |  | 1.12, 0.00, 3.92, 0.00 |
| TextBox | Text78 |  | =IIf(IsNull([CHARGE_PER_UNIT]),"Undefined","") |  |  | 6.19, 0.00, 0.75, 0.00 |
| TextBox | bc |  | BC |  |  | 0.00, 0.00, 0.58, 0.00 |
| TextBox | bd |  | BD |  |  | 0.59, 0.00, 1.66, 0.00 |
| TextBox | Prod |  | prod |  |  | 2.27, 0.00, 2.29, 0.00 |
| TextBox | ct |  | ct |  |  | 4.56, 0.00, 0.50, 0.00 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =IIf([priority]=1,Sum([SumOfUnits])) |  |  | 5.08, 0.01, 0.76, 0.02 |
| TextBox | Text32 |  | =IIf([priority]=1,[Type]) |  |  | 5.92, 0.01, 0.25, 0.02 |
| TextBox | Text33 |  | =IIf([priority]=1,[CPU]) |  |  | 6.18, 0.01, 0.75, 0.02 |
| TextBox | Text34 |  | =IIf([priority]=1,Sum([ITEM_COST])) |  |  | 6.99, 0.01, 0.97, 0.02 |
| TextBox | Text107 |  | =IIf(Not IsNull([PRODUCT_CAT]),[PRODUCT_CAT] & IIf([Priority]=1," " & [BILL_DESC_LONG])) |  |  | 0.04, 0.01, 5.00, 0.02 |
| TextBox | Chg_Override_Note |  | Chg_Override_Note |  |  | 1.23, 0.05, 5.58, 0.01 |

## Section: GroupFooter6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text118 |  | =IIf([priority]>1,Sum([SumOfUnits])) |  |  | 5.09, 0.00, 0.76, 0.02 |
| TextBox | Text119 |  | =IIf([priority]>1,[Type]) |  |  | 5.93, 0.00, 0.25, 0.02 |
| TextBox | Text120 |  | =IIf([priority]>1,[CPU]) |  |  | 6.19, 0.00, 0.75, 0.02 |
| TextBox | Text121 |  | =IIf([priority]>1,Sum([ITEM_COST])) |  |  | 7.00, 0.00, 0.97, 0.02 |
| TextBox | Text123 |  | =[bc] & "  " & [bd] & " Totals" |  |  | 0.00, 0.00, 4.17, 0.02 |

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
| Subform | Client_Bill_Income_Dist_Subform |  | Report.Client_Bill_Income_Dist_Client_Jobcode_Subform (master: JC → child: JC) |  |  | 2.90, 0.36, 2.22, 0.04 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =[ASSOCIATE_NAME] & " Total Charges" |  |  | 0.00, 0.10, 5.08, 0.20 |
| Subform | Child81 |  | Report.Client_Bill_Income_Dist_Client_Subform (master: CLIENT → child: CLIENT) |  |  | 2.90, 0.35, 2.22, 0.05 |
| Subform | Child83 |  | Report.Client_Bill_Client_MGMT_Code subreport (master: CLIENT → child: CLIENT) |  |  | 0.00, 0.35, 2.84, 0.05 |
| TextBox | Text111 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.06, 1.04, 0.20 |
| Line | Line112 |  |  |  |  | 6.96, 0.05, 0.00, 0.00 |
| Line | Line113 |  |  |  |  | 6.96, 0.03, 0.00, 0.00 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | =[PARENT_NAME] & " Total Charges" |  |  | 0.00, 0.06, 5.08, 0.20 |
| Subform | Child82 |  | Report.Client_Bill_Income_Dist_Client_Parent_Subform (master: Reporting_Parent → child: Reporting_Parent) |  |  | 2.90, 1.23, 2.22, 0.18 |
| Subform | Child84 |  | Report.Client_Bill_Billing_Parent_MGMT_Code subreport (master: Reporting_Parent → child: Reporting_Parent) |  |  | 0.00, 1.23, 2.84, 0.18 |
| TextBox | Text114 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.06, 1.04, 0.20 |
| Line | Line115 |  |  |  |  | 6.96, 0.05, 0.00, 0.00 |
| Line | Line116 |  |  |  |  | 6.96, 0.03, 0.00, 0.00 |
| Label | Label74 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 0.28, 7.92, 0.19 |
| Label | Label75 | __________________________________________________ |  |  |  | 4.24, 0.65, 3.70, 0.19 |
| TextBox | Text76 |  | =[Forms]![Client_Bill_Menu]![Title_Line] |  |  | 4.31, 0.89, 3.61, 0.21 |
| Label | Label108 | ___________________________________________________________________________________________________________ |  |  |  | 0.00, 1.00, 7.92, 0.19 |
| TextBox | Text117 |  | =[Forms]![Client_Bill_Menu]![Signature_Line] |  |  | 4.31, 0.53, 3.61, 0.21 |
| TextBox | Text130 |  | =IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FAILURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.") |  |  | 0.00, 1.56, 7.71, 0.02 |
| Line | Line133 |  |  |  |  | 0.00, 1.46, 7.93, 0.00 |
