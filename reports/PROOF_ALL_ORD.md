# Report: PROOF_ALL_ORD

**Caption:** PROOF_ALL_ORD subrep  
**Record source:**

```sql
SELECT [**proof_all_ord].*, IIf(Left$(nz([Reports]![PROOF_ALL]![Show_Notes],"N"),1)="Y",IIf(Not IsNull([Client_Note]),"C: " & [Client_note] & " ")) & IIf(Left$(nz([Reports]![PROOF_ALL]![Show_Notes],"N"),1)="Y",IIf(Not IsNull([Nursery_Note]),"N: " & [Nursery_note])) AS [Note] FROM [**proof_all_ord] INNER JOIN NMIS_ORDERS ON [**proof_all_ord].O_CN = NMIS_ORDERS.CN;
```

**Grouping/sorting:** `AGR_LOT_CN`, `CLIENT_ASSOCIATE`, `ACTIVITY_CODE`, `O_CN`  
**Backend tables referenced:** `NMIS_ORDERS`  
**Subforms/subreports:** `Report.PROOF_ALL_GRADE`  
**Embedded in:** `Report:PROOF_ALL`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.53, 0.00, 0.46, 0.16 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.99, 0.00, 0.50, 0.16 |
| TextBox | SERVICES_STRING |  | SERVICES_STRING |  |  | 1.49, 0.00, 1.25, 0.16 |
| TextBox | SIZE |  | SIZE |  |  | 2.93, 0.00, 0.75, 0.16 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 3.68, 0.00, 0.45, 0.16 |
| TextBox | ORUN |  | ORUN |  |  | 4.11, 0.00, 0.40, 0.16 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 4.53, 0.02, 0.00, 0.15 |
| TextBox | PK_TREES |  | PK_TREES |  |  | 4.70, 0.00, 0.45, 0.16 |
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 5.68, 0.00, 0.46, 0.17 |
| Subform | PROOF_ALL_GRADE |  | Report.PROOF_ALL_GRADE (master: O_CN → child: ORDER_CN) |  |  | 5.31, 0.00, 0.56, 0.15 |
| TextBox | ORDER_ID |  | ORD_ID |  |  | 0.00, 0.00, 0.40, 0.16 |
| TextBox | Note |  | Note |  |  | 1.11, 0.16, 5.04, 0.00 |
| TextBox | Not_Standard_Spec |  | =IIf([SIZE]<>[Reports]![PROOF_ALL]![SIZE],"k","") |  |  | 2.74, 0.00, 0.18, 0.16 |
| TextBox | Not_Req_Forest |  | =IIf((Left$([CLIENT_ASSOCIATE],4) & "00")<>[Reports]![PROOF_ALL]![Sort],"j") |  |  | 0.39, 0.00, 0.16, 0.16 |
| TextBox | Activity_Hours |  | Activity_Hours |  |  | 6.06, 0.00, 0.47, 0.16 |
| TextBox | Second_Sort |  | =IIf([Services_String] Like "*2nd*","l") |  |  | 5.14, 0.00, 0.18, 0.15 |
| TextBox | Activity_Hours_Contract_Item |  | Activity_Hours_Contract_Item |  |  | 5.89, 0.00, 0.28, 0.16 |
| TextBox | Text41 |  | =IIf([Services_String] Like "*DBLSRT*","m") |  |  | 6.52, 0.00, 0.17, 0.15 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Orders |  | =Sum([ORDER_AMT]) |  |  | 3.68, 0.00, 0.45, 0.18 |
| TextBox | Sum_Packed |  | =Sum([PK_TREES]) |  |  | 4.70, 0.00, 0.45, 0.18 |
| Line | Line27 |  |  |  |  | 3.67, 0.00, 0.46, 0.00 |
| Line | Line28 |  |  |  |  | 4.69, 0.00, 0.46, 0.00 |
| TextBox | Sum_Activity_Hours |  | =Sum([Activity_Hours]) |  |  | 5.91, 0.00, 0.63, 0.18 |
| TextBox | Text39 |  | =Sum([Activity_Hours]) |  |  | 6.17, 0.00, 0.37, 0.01 |
