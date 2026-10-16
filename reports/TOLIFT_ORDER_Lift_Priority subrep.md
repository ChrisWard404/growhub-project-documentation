# Report: TOLIFT_ORDER_Lift_Priority subrep

**Caption:** NMIS_TOLIFT_ORDER subrep  
**Record source:**

```sql
SELECT [**TOLIFT_ORDER_TABLE].*, NMIS_ORDER_SERVICES_STRING.SERVICES_STRING, "RP: " & [ROOT_PRUNE_TARGET] AS RP, IIf(Not IsNull([DESIRED_DATE]),"Desired Date: ") & [DESIRED_DATE] AS DD, IIf([BE_AT_PACK],"Be At Pack") AS bap FROM (NMIS_ORDER_SERVICES_STRING INNER JOIN [**TOLIFT_ORDER_TABLE] ON NMIS_ORDER_SERVICES_STRING.ORDER_CN = [**TOLIFT_ORDER_TABLE].CN) INNER JOIN NMIS_ORDERS ON [**TOLIFT_ORDER_TABLE].CN = NMIS_ORDERS.CN;
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `ACTIVITY_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_ORDERS`  
**Subforms/subreports:** `Report.TOLIFT_CNOTE subrep`, `Report.TOLIFT_NNOTE subrep`  
**Embedded in:** `Report:Lifting_Priorities_detailed`, `Report:TOLIFT_BY_PRIORITY`, `Report:TOLIFT_BY_PRIORITY_ver2_not_in_use`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label27 | Client |  |  |  | 0.04, 0.00, 0.58, 0.17 |
| Label | Label28 | Order Amt |  |  |  | 1.84, 0.00, 0.72, 0.17 |
| Label | Label29 | O'run |  |  |  | 2.58, 0.00, 0.50, 0.17 |
| Label | Label30 | All |  |  |  | 3.10, 0.00, 0.25, 0.17 |
| Label | Label31 | Pack Amt |  |  |  | 3.35, 0.00, 0.65, 0.17 |
| Label | Label33 | Order Special Services |  |  |  | 4.17, 0.00, 2.25, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.07, 0.17, 0.58, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 2.05, 0.17, 0.50, 0.00 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 2.58, 0.17, 0.50, 0.00 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 3.19, 0.21, 0.00, 0.14 |
| TextBox | PACK |  | PACK |  |  | 3.51, 0.17, 0.50, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 4.17, 0.17, 0.67, 0.00 |
| TextBox | CN |  | CN |  |  | 4.88, 0.17, 0.54, 0.00 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 5.46, 0.17, 0.54, 0.00 |
| Subform | TOLIFT_CNOTE SUBREP |  | Report.TOLIFT_CNOTE subrep (master: CN → child: OC_CN) |  |  | 0.38, 0.32, 5.62, 0.01 |
| Subform | NMIS_TOLIFT_NNOTE subrep |  | Report.TOLIFT_NNOTE subrep (master: CN → child: ON_CN) |  |  | 0.21, 0.33, 5.78, 0.00 |
| TextBox | ORDER_SIZE_SPEC_STRING |  | ORDER_SIZE_SPEC_STRING |  |  | 0.71, 0.17, 0.70, 0.18 |
| TextBox | Text34 |  | SERVICES_STRING |  |  | 4.38, 0.17, 1.64, 0.00 |
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, "(" & [ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS A2 FROM NMIS_ASSOCIATES; |  | 0.04, 0.00, 6.50, 0.00 |
| TextBox | Root_Prune |  | RP |  |  | 1.46, 0.17, 0.54, 0.18 |
| TextBox | bap |  | bap |  |  | 3.89, 0.00, 0.95, 0.18 |
| TextBox | DESIRED_DATE |  | DD |  |  | 4.92, 0.00, 1.56, 0.18 |
