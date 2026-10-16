# Report: SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport

**Grouping/sorting:** `BILLING_ASSOCIATE`, `Income_Mgmt_Code`  
**Embedded in:** `Report:Seed_Non_WCF_Billing`, `Report:Seed_Non_WCF_Billing2`, `Report:Seed_Non_WCF_Billing3`, `Report:Seed_Non_WCF_Billing_MT`  

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
| TextBox | Hourly_Charges |  | SumOfCHARGE |  |  | 1.02, 0.00, 0.87, 0.19 |
| TextBox | MGMT_CODE |  | Income_MGMT_CODE |  |  | 0.08, 0.00, 0.90, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Sum([SumOfCHARGE]) |  |  | 1.02, 0.20, 0.87, 0.19 |
| Label | Label12 | _________ |  |  |  | 1.14, 0.01, 0.74, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
