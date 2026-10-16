# Report: ORDER_CONFIRM_NURSERY

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `ID`, `ACTIVITY_CODE`, `ORDERS_CN`  
**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Subforms/subreports:** `Report.ORDER_CONFIRM_MC`  
**Opened from (VBA):** `Form_NMIS_ORDER_COMFIRMATION_FORM`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR_NUMBER], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 5.00, 0.75, 0.67, 0.18 |
| Label | FISCAL_YEAR_Label | Fiscal Year: |  |  |  | 4.17, 0.75, 0.78, 0.17 |
| Label | Label66 | NURSERY - ORDER CONFIRMATION |  |  |  | 3.75, 0.58, 2.54, 0.17 |
| TextBox | Text83 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.62, 0.38, 2.79, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.62, 0.17, 2.78, 0.20 |
| TextBox | CLIENT_ASSOCIATE | Client: | CLIENT_ASSOCIATE |  |  | 0.58, 1.04, 0.58, 0.00 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.25, 1.04, 3.58, 0.00 |
| Rectangle | Box69 |  |  |  |  | 0.00, 1.00, 4.88, 0.25 |
| Label | Label94 | Gross (M) |  |  |  | 5.08, 1.27, 0.33, 0.29 |
| Label | Label95 | Order (M) |  |  |  | 6.17, 1.27, 0.33, 0.29 |
| Label | Label96 | Net (M) |  |  |  | 5.62, 1.27, 0.33, 0.29 |
| Label | Label97 | Client Sow Req |  |  |  | 4.34, 1.27, 0.53, 0.29 |
| Label | Label98 | Order Code |  |  |  | 3.81, 1.27, 0.33, 0.29 |
| Label | Label99 | Overrun Amt (M) |  |  |  | 6.65, 1.27, 0.43, 0.29 |
| Label | Label100 | Overrun All |  |  |  | 7.65, 1.27, 0.43, 0.29 |
| Label | Label101 | Grading Specifications |  |  |  | 8.21, 1.26, 1.13, 0.15 |
| Label | Label102 | Min |  |  |  | 8.21, 1.41, 0.22, 0.15 |
| Label | Label103 | Max |  |  |  | 8.59, 1.41, 0.24, 0.15 |
| Label | Label104 | Caliper |  |  |  | 8.96, 1.41, 0.38, 0.15 |
| Label | Label105 | Root Prune |  |  |  | 9.38, 1.27, 0.33, 0.29 |
| Label | Label106 | Desired Ship Date |  |  |  | 9.72, 1.27, 0.53, 0.28 |
| Label | Label107 | Agreement Lot ID |  |  |  | 0.02, 1.27, 0.58, 0.29 |
| Label | Label108 | Source |  |  |  | 0.93, 1.41, 0.39, 0.15 |
| Label | Label89 | Total Amt (M) |  |  |  | 7.19, 1.27, 0.43, 0.29 |
| ComboBox | Combo178 |  | =[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Contact_CN] | SELECT NMIS_CONTACTS.CN, "Selected for: " & [First_Name] & " " & [LAST_NAME] AS Name FROM NMIS_CONTACTS;  |  | 0.04, 0.04, 3.07, 0.22 |
| TextBox | Text94 |  | =IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Has_Desired_Date],"Selected for: Has Desired Ship Date") |  |  | 0.04, 0.26, 3.08, 0.20 |
| TextBox | Text125 |  | =IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol]<>"*","Selected for: " & [Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol]) |  |  | 0.04, 0.46, 3.06, 0.19 |
| TextBox | Text127 |  | =IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![NoFreeze],"Selected for: No Freeze") |  |  | 0.04, 0.65, 2.76, 0.19 |
| ComboBox | Combo129 |  | =[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Product_Group] | BPLANT;Selected for: Bareroot Plant;CPLANT;Selected for: Container Plant;*PLANT;Selected for: All Plants;NPROPAGULE;Selected for: Propagules |  | 0.04, 0.84, 2.76, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box110 |  |  |  |  | 0.00, 0.00, 10.25, 0.16 |
| TextBox | CLIENT_NOTE |  | CLIENT_NOTE |  |  | 0.79, 0.55, 3.75, 0.00 |
| TextBox | NURSERY_NOTE |  | NURSERY_NOTE |  |  | 5.58, 0.55, 3.46, 0.00 |
| Label | CLIENT_NOTE_Label | Client Note: |  |  |  | 0.04, 0.55, 0.71, 0.17 |
| Label | NURSERY_NOTE_Label | Nursery Note: |  |  |  | 4.71, 0.55, 0.83, 0.17 |
| TextBox | ORDERS_CN |  | ORDERS_CN |  |  | 0.04, 0.68, 0.88, 0.12 |
| Subform | ORDER_CONFIRM_MC |  | Report.ORDER_CONFIRM_MC (master: ORDERS_CN → child: ORDERS_CN) |  |  | 5.54, 0.72, 3.38, 0.18 |
| Label | Label79 | Job Codes: |  |  |  | 4.79, 0.72, 0.72, 0.15 |
| Label | Label80 | Special Services: |  |  |  | 0.04, 0.75, 1.04, 0.15 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 3.76, 0.00, 0.53, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 5.96, 0.00, 0.58, 0.00 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 6.57, 0.00, 0.50, 0.00 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  |  | 8.54, 0.00, 0.39, 0.00 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  |  | 8.99, 0.00, 0.33, 0.00 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 9.36, 0.00, 0.34, 0.00 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  |  | 9.72, 0.00, 0.52, 0.00 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 4.33, 0.00, 0.50, 0.00 |
| TextBox | O_NET |  | O_NET |  |  | 5.46, 0.00, 0.50, 0.00 |
| TextBox | O_GROSS |  | O_GROSS |  |  | 4.95, 0.00, 0.50, 0.00 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  |  | 8.10, 0.00, 0.36, 0.00 |
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.00, 0.00, 3.75, 0.00 |
| TextBox | OVERRUN_ALL |  | ALL |  |  | 7.77, 0.00, 0.28, 0.00 |
| TextBox | Text90 |  | =Round([ORDER_AMT]+nz([OVERRUN_AMT],0),3) |  |  | 7.11, 0.00, 0.50, 0.00 |
| TextBox | PC |  | PC |  |  | 6.35, 0.39, 1.45, 0.00 |
| TextBox | SC |  | SC |  |  | 8.57, 0.39, 1.66, 0.00 |
| Label | PC_Label | 1st Contact: |  |  |  | 5.65, 0.39, 0.67, 0.17 |
| Label | SC_Label | 2nd Contact: |  |  |  | 7.84, 0.39, 0.71, 0.17 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 5.25, 0.39, 0.33, 0.00 |
| Label | Label112 | Pack Contract Item: |  |  |  | 4.17, 0.40, 1.04, 0.16 |
| TextBox | INSERTED_BY |  | Entered |  |  | 0.95, 0.39, 1.60, 0.00 |
| TextBox | Text92 |  | Modified |  |  | 2.55, 0.39, 1.60, 0.00 |
| TextBox | Text93 |  | ORDER_ID |  |  | 0.00, 0.39, 0.93, 0.00 |
| TextBox | BAP |  | BAP |  |  | 0.00, 0.19, 5.38, 0.19 |
| TextBox | ACTIVITY_NAME |  | ACTIVITY_NAME_L |  |  | 1.09, 0.72, 3.70, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text49 |  | =Now() |  |  | 0.00, 0.08, 3.50, 0.18 |
| TextBox | Text50 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.71, 0.08, 3.50, 0.18 |
