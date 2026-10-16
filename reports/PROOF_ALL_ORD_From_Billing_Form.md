# Report: PROOF_ALL_ORD_From_Billing_Form

**Grouping/sorting:** `AGR_LOT_CN`, `CLIENT_ASSOCIATE`, `ACTIVITY_CODE`, `O_CN`  
**Subforms/subreports:** `Report.PROOF_ALL_GRADE`  
**Embedded in:** `Report:PROOF_ALL_From_Billing_Form`, `Report:PROOF_ALL_From_Billing_Form_Product`, `Report:PROOF_ALL_From_Billing_Form_by_Species_Product`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Activity_Hours_Contract_Item |  | Activity_Hours_Contract_Item |  |  | 5.99, 0.00, 0.28, 0.16 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.53, 0.00, 0.56, 0.16 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 1.09, 0.00, 0.50, 0.16 |
| TextBox | SERVICES_STRING |  | SERVICES_STRING |  |  | 1.59, 0.00, 1.25, 0.16 |
| TextBox | SIZE |  | SIZE |  |  | 3.03, 0.00, 0.75, 0.16 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 3.78, 0.00, 0.45, 0.16 |
| TextBox | ORUN |  | ORUN |  |  | 4.22, 0.00, 0.43, 0.16 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 4.67, 0.02, 0.00, 0.15 |
| TextBox | PK_TREES |  | PK_TREES |  |  | 4.80, 0.00, 0.45, 0.16 |
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 5.78, 0.00, 0.45, 0.17 |
| Subform | PROOF_ALL_GRADE |  | Report.PROOF_ALL_GRADE (master: O_CN → child: ORDER_CN) |  |  | 5.42, 0.00, 0.56, 0.15 |
| TextBox | ORDER_ID |  | ORD_ID |  |  | 0.00, 0.00, 0.40, 0.16 |
| TextBox | Note |  | Note |  |  | 1.22, 0.16, 5.04, 0.00 |
| TextBox | Not_Standard_Spec |  | =IIf([SIZE]<>[Reports]![PROOF_ALL_From_Billing_Form]![SIZE],"k","") |  |  | 2.84, 0.00, 0.18, 0.16 |
| TextBox | Not_Req_Forest |  | =IIf([CLIENT_ASSOCIATE]<>[Reports]![PROOF_ALL_From_Billing_Form]![PROOF_ALL_AGR].[Report]![CLIENT_ASSOCIATE],"j") |  |  | 0.39, 0.00, 0.16, 0.16 |
| TextBox | Activity_Hours |  | Activity_Hours |  |  | 6.29, 0.00, 0.47, 0.16 |
| TextBox | Second_Sort |  | =IIf([Services_String] Like "*2nd*","l") |  |  | 5.24, 0.00, 0.18, 0.15 |
| TextBox | Text41 |  | =IIf([Services_String] Like "*DBLSRT*" And Not IsNull([Activity_Hours]),"m") |  |  | 6.75, 0.00, 0.17, 0.15 |
| TextBox | Higrade |  | Higrade |  |  | 2.47, 0.00, 0.38, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Orders |  | =Sum([ORDER_AMT]) |  |  | 3.78, 0.00, 0.45, 0.18 |
| TextBox | Sum_Packed |  | =Sum([PK_TREES]) |  |  | 4.67, 0.00, 0.59, 0.18 |
| Line | Line27 |  |  |  |  | 3.77, 0.00, 0.46, 0.00 |
| Line | Line28 |  |  |  |  | 4.79, 0.00, 0.46, 0.00 |
| TextBox | Sum_Activity_Hours |  | =Sum([Activity_Hours]) |  |  | 6.38, 0.00, 0.39, 0.18 |
| TextBox | Text39 |  | =Sum([Activity_Hours]) |  |  | 6.34, 0.00, 0.37, 0.01 |
| TextBox | PCTofReq |  | =Sum([PK_TREES])/[Reports]![PROOF_ALL_From_Billing_Form]![SumOfAMOUNT_REQUESTED] |  |  | 5.25, 0.00, 0.34, 0.18 |
| TextBox | PCTofNET |  | =Sum([PK_TREES])/[Reports]![PROOF_ALL_From_Billing_Form]![NET_INV] |  |  | 5.79, 0.00, 0.38, 0.18 |
| TextBox | PCTofReq Label |  | =IIf(Not IsNull([PCTofReq]),"Req") |  |  | 5.59, 0.00, 0.21, 0.19 |
| TextBox | Label47 |  | =IIf(Not IsNull([PCTofNET]),"Net") |  |  | 6.16, 0.00, 0.21, 0.19 |
| TextBox | Sum_Overrun |  | =Sum([ORUN]) |  |  | 4.21, 0.00, 0.42, 0.18 |
| Line | Line49 |  |  |  |  | 4.26, 0.00, 0.36, 0.00 |
