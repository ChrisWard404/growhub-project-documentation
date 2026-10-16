# Report: CLIENT_BILL_INVOICE_Checklist

**Caption:** Client Bill Checklist  
**Grouping/sorting:** `Reporting_Parent`, `CLIENT`  
**Backend tables referenced:** `NMIS_CONTACTS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.33, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.60, 0.17 |
| Label | Text29 | Stock and Services Bill Checklist |  |  |  | 2.67, 0.54, 2.66, 0.23 |
| TextBox | Like_Client |  | Like_Client |  |  | 5.79, 0.17, 0.92, 0.21 |
| TextBox | Bill_Date |  | ="Billing Date: " & Date() |  |  | 2.67, 1.00, 2.67, 0.20 |
| TextBox | Bill Period |  | ="Billing Period: " & [Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date] |  |  | 2.67, 0.78, 2.66, 0.20 |
| Line | Line106 |  |  |  |  | 0.00, 1.26, 7.96, 0.00 |
| ComboBox | Combo178 |  | =[Forms]![Client_Bill_Menu]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.04, 0.33, 2.36, 0.21 |

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

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text54 |  | =[ASSOCIATE_NAME] & " (" & [client] & ")" |  |  | 0.00, 0.04, 5.08, 0.20 |
| TextBox | Text111 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.00, 1.04, 0.20 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | =[PARENT_NAME] & " (" & [Reporting_Parent] & ")" & " Total Charges" |  |  | 0.31, 0.06, 5.08, 0.20 |
| TextBox | Text114 |  | =Sum([ITEM_COST]) |  |  | 6.92, 0.06, 1.04, 0.20 |
| Line | Line115 |  |  |  |  | 6.96, 0.05, 0.00, 0.00 |
| Line | Line116 |  |  |  |  | 6.96, 0.03, 0.00, 0.00 |
| Line | Line127 |  |  |  |  | 0.00, 0.33, 7.96, 0.00 |
