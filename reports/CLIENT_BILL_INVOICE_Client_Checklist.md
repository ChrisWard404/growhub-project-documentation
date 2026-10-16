# Report: CLIENT_BILL_INVOICE_Client_Checklist

**Grouping/sorting:** `Reporting_Parent`, `CLIENT`, `JC`, `Bill_Group`, `PRIORITY`, `CAT`, `Bill_Code_n_Desc`, `TYPE`, `PRODUCT`, `ID`  
**Backend tables referenced:** `NMIS_CONTACTS`  
**Subforms/subreports:** `Report.Client_Bill_Income_Dist_Client_Parent_Subform`, `Report.Client_Bill_Billing_Parent_MGMT_Code subreport`, `Report.Client_Bill_Billing_Parent_MGMT_Code subreport`, `Report.Client_Bill_Income_Dist_sum_Subform`  
**Opened from (VBA):** `Form_Client_Bill_Menu`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| Label | Text29 | Stock and Services Invoice Checklist |  |  |  | 2.51, 0.54, 2.97, 0.23 |
| TextBox | Like_Client |  | Like_Client |  |  | 0.62, 0.58, 0.92, 0.21 |
| TextBox | Bill_Date | Invoice Date: | =Date() |  |  | 6.67, 0.80, 1.25, 0.20 |
| TextBox | Bill Period | Invoice Period: | =[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date] |  |  | 6.67, 0.59, 1.25, 0.20 |
| Line | Line106 |  |  |  |  | 0.00, 1.23, 7.96, 0.00 |
| TextBox | Text39 |  | ="Selected for Like Client: " & [Forms]![Client_Bill_Menu]![Like_Client] |  |  | 2.60, 0.79, 2.79, 0.20 |
| ComboBox | Combo178 |  | =[Forms]![Client_Bill_Menu]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.00, 0.33, 2.36, 0.21 |
| TextBox | Text49 |  | ="Selected for Like Jobcode: " & [Forms]![Client_Bill_Menu]![LikeJobCode] & "  AND NOT Like Job code: " & [Forms]![Client_Bill_Menu]![NotLikeJC] |  |  | 1.44, 1.02, 5.17, 0.20 |

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

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | [PARENT_NAME] |  |  | 0.00, 0.02, 7.96, 0.20 |
| Subform | Child82 |  | Report.Client_Bill_Income_Dist_Client_Parent_Subform (master: Reporting_Parent → child: Reporting_Parent) |  |  | 2.90, 0.24, 2.22, 0.18 |
| Subform | Child84 |  | Report.Client_Bill_Billing_Parent_MGMT_Code subreport (master: Reporting_Parent → child: Reporting_Parent) |  |  | 0.00, 0.24, 2.84, 0.18 |
| TextBox | Text114 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.02, 1.04, 0.20 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Child127 |  | Report.Client_Bill_Billing_Parent_MGMT_Code subreport |  |  | 0.00, 0.57, 2.84, 0.18 |
| Subform | Child128 |  | Report.Client_Bill_Income_Dist_sum_Subform |  |  | 2.90, 0.57, 2.22, 0.18 |
| TextBox | Text129 |  | ="Grand Total" |  |  | 0.00, 0.30, 7.96, 0.20 |
| TextBox | Text130 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.30, 1.04, 0.20 |
| TextBox | Text131 |  | =IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FALURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.") |  |  | 0.00, 0.14, 7.71, 0.02 |
| Line | Line133 |  |  |  |  | 0.00, 0.04, 7.93, 0.00 |
