# Report: SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport

**Caption:** EXTRACTION_BY_MGMT_CODE subreport  
**Record source:**

```sql
SELECT [**Seed_Billing_Table].Income_Mgmt_Code, Sum([**Seed_Billing_Table].CHARGE) AS SumOfCHARGE, [**Seed_Billing_Table].Billing_Associate FROM [**Seed_Billing_Table] WHERE ((([**Seed_Billing_Table].MC) Not Like "*No*Ch*")) GROUP BY [**Seed_Billing_Table].Income_Mgmt_Code, [**Seed_Billing_Table].Billing_Associate HAVING ((([**Seed_Billing_Table].Billing_Associate) Like [Forms]![Seed_Non_WCF_Billing_Report]![Like_Client] & "*"));
```

**Grouping/sorting:** `BILLING_ASSOCIATE`, `Income_Mgmt_Code`  
**Embedded in:** `Report:Seed_Sales_Billing`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Hourly_Charges_Label | Amount |  |  |  | 1.15, 0.21, 0.83, 0.17 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.09, 0.21, 0.71, 0.17 |
| Label | Label10 | Income Distribution: |  |  |  | 0.11, 0.03, 1.73, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Hourly_Charges |  | SumOfCHARGE |  |  | 1.11, 0.00, 0.78, 0.19 |
| TextBox | MGMT_CODE |  | Income_MGMT_CODE |  |  | 0.08, 0.00, 0.90, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Sum([SumOfCHARGE]) |  |  | 1.11, 0.20, 0.78, 0.19 |
| Label | Label12 | _________ |  |  |  | 1.14, 0.01, 0.74, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
