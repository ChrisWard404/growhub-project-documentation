# Report: NMIS_CLIENT_MGMT_CODES2 subreport

**Caption:** NMIS_CLIENT_MGMT_CODES subreport  
**Record source:**

```sql
SELECT [EXTRACTION_BY_MGMT_CODE].[SOURCE_LOT_CN], Sum([EXTRACTION_BY_MGMT_CODE].[Hourly_Charges]) AS SumOfHourly_Charges, Sum([EXTRACTION_BY_MGMT_CODE].[SumOfCHARGE_USED_FOR_ACTIVITY]) AS SumOfSumOfCHARGE_USED_FOR_ACTIVITY, [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE_N_PCT], [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE], Sum(IIf([HOURLY_CHARGES]>0,[HOURLY_CHARGES],0)+IIf([SumOfCHARGE_USED_FOR_ACTIVITY]>0,[SumOfCHARGE_USED_FOR_ACTIVITY],0)) AS SUM_Of_CHARGES FROM EXTRACTION_BY_MGMT_CODE GROUP BY [EXTRACTION_BY_MGMT_CODE].[SOURCE_LOT_CN], [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE_N_PCT], [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE] HAVING (((Sum(IIf([HOURLY_CHARGES]>0,[HOURLY_CHARGES],0)+IIf([SumOfCHARGE_USED_FOR_ACTIVITY]>0,[SumOfCHARGE_USED_FOR_ACTIVITY],0)))>0));
```

**Grouping/sorting:** `MGMT_CODE_N_PCT`  
**Embedded in:** `Report:Seed_Extraction_Billing`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line4 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE_N_PCT |  |  | 1.89, 0.00, 1.34, 0.19 |
| TextBox | SumOfCHARGE_PER_ACTIVITY_OVERRIDE |  | SumOfSumOfCHARGE_USED_FOR_ACTIVITY |  |  | 1.13, 0.00, 0.51, 0.19 |
| TextBox | Hourly_Charges |  | SumOfHourly_Charges |  |  | 0.06, 0.00, 0.73, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line5 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
