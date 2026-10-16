# Report: NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport

**Caption:** NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport  
**Record source:**

```sql
SELECT NMIS_CLIENT_MGMT_CODES.AGREEMENT_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, [MGMT_CODE] & " " & (Round([MGMT_CODE_PCT]*[Reports]![Seed_Bank_Work_Order]![Seed_Bank_Work_Order subreport].[Report]![AMOUNT_REQUESTED]/[Reports]![Seed_Bank_Work_Order]![TOTAL_REQUEST],2)) & "%" AS Jobcode_and_pct, [Reports]![Seed_Bank_Work_Order]![Seed_Bank_Work_Order subreport].[Report]![AMOUNT_REQUESTED]/[Reports]![Seed_Bank_Work_Order]![TOTAL_REQUEST]*100 AS Expr1 FROM NMIS_CLIENT_MGMT_CODES;
```

**Backend tables referenced:** `NMIS_CLIENT_MGMT_CODES`  
**Embedded in:** `Report:Seed_Bank_Work_Order subreport`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGREEMENT_CN |  | AGREEMENT_CN |  |  | 1.81, 0.01, 0.33, 0.00 |
| TextBox | MGMT_CODE |  | Jobcode_and_pct |  |  | 0.59, 0.00, 1.09, 0.20 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.00, 0.00, 0.59, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
