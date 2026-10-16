# Report: SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport

**Grouping/sorting:** `BILLING_ASSOCIATE`, `Management_Code`  
**Embedded in:** `Report:Seed_Non_WCF_Billing`, `Report:Seed_Non_WCF_Billing2`, `Report:Seed_Non_WCF_Billing3`, `Report:Seed_Non_WCF_Billing_MT`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Hourly_Charges_Label | Amount |  |  |  | 1.48, 0.21, 0.83, 0.17 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.04, 0.21, 0.71, 0.17 |
| Label | Label10 | Charge to: |  |  |  | 0.03, 0.03, 0.74, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Hourly_Charges |  | SumOfCHARGE |  |  | 1.34, 0.00, 0.88, 0.19 |
| TextBox | MGMT_CODE |  | Management_Code |  |  | 0.03, 0.00, 1.30, 0.21 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Sum([SumOfCHARGE]) |  |  | 1.33, 0.21, 0.88, 0.19 |
| Label | Label12 | _________ |  |  |  | 1.48, 0.02, 0.74, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
