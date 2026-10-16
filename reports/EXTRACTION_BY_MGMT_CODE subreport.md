# Report: EXTRACTION_BY_MGMT_CODE subreport

**Caption:** EXTRACTION_BY_MGMT_CODE subreport  
**Grouping/sorting:** `BILLING_ASSOCIATE`, `Management_Code`  
**Embedded in:** `Report:Seed_Extraction_Billing`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Hourly_Charges_Label | Amount |  |  |  | 1.15, 0.20, 0.83, 0.17 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.09, 0.20, 0.71, 0.17 |
| Label | Label10 | Charge to: |  |  |  | 0.08, 0.03, 0.74, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Hourly_Charges |  | Amount |  |  | 1.11, 0.00, 0.78, 0.19 |
| TextBox | MGMT_CODE |  | Management_Code |  |  | 0.08, 0.00, 0.90, 0.19 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text11 |  | =Sum([AMOUNT]) |  |  | 1.11, 0.18, 0.78, 0.19 |
| Label | Label12 | _________ |  |  |  | 1.14, 0.01, 0.74, 0.17 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
