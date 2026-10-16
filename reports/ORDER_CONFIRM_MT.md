# Report: ORDER_CONFIRM_MT

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `TOTAL_DESC`, `Species_and_ReqSizeSpecString`, `DESCRIPTION`, `ID`, `ACTIVITY_CODE`, `ORDERS_CN`  
**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Report.ORDER_CONFIRM_MC`  
**Opened from (VBA):** `Form_NMIS_ORDER_COMFIRMATION_FORM`, `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR_NUMBER], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 5.00, 0.88, 0.67, 0.18 |
| Label | FISCAL_YEAR_Label | Fiscal Year: |  |  |  | 4.17, 0.88, 0.78, 0.17 |
| Label | Label66 | ORDER CONFIRMATION |  |  |  | 3.88, 0.67, 2.00, 0.17 |
| TextBox | Text83 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.88, 0.42, 2.00, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.62, 0.17, 2.78, 0.20 |
| TextBox | CLIENT_ASSOCIATE | Client: | CLIENT_ASSOCIATE |  |  | 0.67, 1.18, 0.75, 0.23 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.46, 1.18, 3.33, 0.23 |
| Rectangle | Box69 |  |  |  |  | 0.04, 1.17, 4.75, 0.25 |
| Label | Label94 | Gross (M) |  |  |  | 5.03, 1.46, 0.35, 0.29 |
| Label | Label95 | Order (M) |  |  |  | 6.17, 1.46, 0.33, 0.29 |
| Label | Label96 | Net (M) |  |  |  | 5.59, 1.46, 0.33, 0.29 |
| Label | Label97 | Client Sow Req |  |  |  | 4.38, 1.46, 0.53, 0.29 |
| Label | Label98 | Order Code |  |  |  | 3.88, 1.46, 0.33, 0.29 |
| Label | Label99 | Overrun Amt (M) |  |  |  | 6.64, 1.46, 0.43, 0.29 |
| Label | Label100 | Overrun All |  |  |  | 7.55, 1.46, 0.45, 0.29 |
| Label | Label101 | Grading Specifications |  |  |  | 8.09, 1.45, 1.13, 0.15 |
| Label | Label102 | Min |  |  |  | 8.09, 1.60, 0.22, 0.15 |
| Label | Label103 | Max |  |  |  | 8.47, 1.60, 0.24, 0.15 |
| Label | Label104 | Caliper |  |  |  | 8.84, 1.60, 0.38, 0.15 |
| Label | Label105 | Root Prune |  |  |  | 9.25, 1.46, 0.33, 0.29 |
| Label | Label106 | Desired Ship Date |  |  |  | 9.59, 1.47, 0.53, 0.28 |
| Label | Label107 | Agreement Lot ID |  |  |  | 0.08, 1.46, 0.58, 0.29 |
| Label | Label108 | Source |  |  |  | 1.00, 1.60, 0.39, 0.15 |
| Label | Label109 | Total (M) |  |  |  | 7.21, 1.46, 0.33, 0.29 |
| ComboBox | Combo178 |  | =[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for: " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.09, 0.06, 2.76, 0.21 |
| TextBox | Text94 |  | =IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Has_Desired_Date],"Selected for: Has Desired Ship Date") |  |  | 0.09, 0.28, 2.76, 0.19 |
| TextBox | Text125 |  | =IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol]<>"*","Selected for: " & [Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol]) |  |  | 0.09, 0.48, 2.76, 0.19 |
| TextBox | Text127 |  | =IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![NoFreeze],"Selected for: No Freeze") |  |  | 0.09, 0.68, 2.76, 0.19 |
| ComboBox | Combo129 |  | =[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Product_Group] | BPLANT;Selected for: Bareroot Plant;CPLANT;Selected for: Container Plant;*PLANT;Selected for: All Plants;NPROPAGULE;Selected for: Propagules |  | 0.09, 0.86, 2.76, 0.19 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TOTAL_DESC |  | TOTAL_DESC |  |  | 0.04, 0.00, 9.33, 0.23 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text89 |  | Species_and_ReqSizeSpecString |  |  | 0.08, 0.02, 8.02, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box110 |  |  |  |  | 0.00, 0.00, 10.32, 0.16 |
| TextBox | PC |  | PC |  |  | 6.33, 0.39, 1.62, 0.00 |
| TextBox | SC |  | SC |  |  | 8.75, 0.39, 1.59, 0.00 |
| TextBox | CLIENT_NOTE |  | CLIENT_NOTE |  |  | 0.79, 0.56, 3.75, 0.00 |
| TextBox | NURSERY_NOTE |  | NURSERY_NOTE |  |  | 5.58, 0.56, 3.46, 0.00 |
| Label | CLIENT_NOTE_Label | Client Note: |  |  |  | 0.04, 0.56, 0.71, 0.17 |
| Label | NURSERY_NOTE_Label | Nursery Note: |  |  |  | 4.71, 0.56, 0.83, 0.17 |
| Label | PC_Label | 1st Contact: |  |  |  | 5.64, 0.39, 0.67, 0.17 |
| Label | SC_Label | 2nd Contact: |  |  |  | 8.01, 0.39, 0.69, 0.17 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 3.80, 0.00, 0.53, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 5.92, 0.00, 0.58, 0.00 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 6.53, 0.00, 0.50, 0.00 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 8.46, 0.00, 0.39, 0.00 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 8.88, 0.00, 0.33, 0.00 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 9.24, 0.00, 0.34, 0.00 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  |  | 9.62, 0.00, 0.57, 0.00 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 4.35, 0.00, 0.50, 0.00 |
| TextBox | O_NET |  | O_NET |  |  | 5.40, 0.00, 0.50, 0.00 |
| TextBox | O_GROSS |  | O_GROSS |  |  | 4.88, 0.00, 0.50, 0.00 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 8.06, 0.00, 0.37, 0.00 |
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.04, 0.00, 3.75, 0.00 |
| TextBox | ORDERS_CN |  | ORDERS_CN |  |  | 0.08, 0.69, 0.88, 0.12 |
| Subform | ORDER_CONFIRM_MC |  | Report.ORDER_CONFIRM_MC (master: ORDERS_CN → child: ORDERS_CN) |  |  | 5.46, 0.81, 3.46, 0.21 |
| Label | Label79 | Job Codes: |  |  |  | 4.79, 0.81, 0.64, 0.15 |
| Label | Label80 | Special Services: |  |  |  | 0.04, 0.81, 1.04, 0.15 |
| TextBox | OVERRUN_ALL |  | ALL |  |  | 7.68, 0.00, 0.28, 0.00 |
| TextBox | Text90 |  | =Round([ORDER_AMT]+nz([OVERRUN_AMT],0),3) |  |  | 7.05, 0.00, 0.55, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 5.26, 0.39, 0.33, 0.00 |
| Label | Label112 | Pack Contract Item: |  |  |  | 4.18, 0.40, 1.04, 0.16 |
| TextBox | INSERTED_BY |  | Entered |  |  | 0.95, 0.40, 1.60, 0.16 |
| TextBox | Text92 |  | Modified |  |  | 2.55, 0.40, 1.60, 0.16 |
| TextBox | Text93 |  | ORDER_ID |  |  | 0.00, 0.40, 0.93, 0.16 |
| TextBox | BAP |  | BAP |  |  | 0.03, 0.19, 5.38, 0.19 |
| TextBox | ACTIVITY_NAME |  | ACTIVITY_NAME_Long |  |  | 1.08, 0.79, 3.67, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text49 |  | =Now() |  |  | 0.00, 0.08, 3.50, 0.18 |
| TextBox | Text50 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 9.12, 0.08, 1.17, 0.18 |
| Label | Label121 | Specs Lowered |  |  |  | 6.90, 0.06, 1.06, 0.20 |
| Label | Label122 | Specs Raised |  |  |  | 8.14, 0.06, 0.95, 0.20 |
| Label | Label123 | Total Order < Net |  |  |  | 3.83, 0.05, 1.21, 0.21 |
| Label | Label124 | Total Order > Net |  |  |  | 5.17, 0.05, 1.21, 0.21 |
