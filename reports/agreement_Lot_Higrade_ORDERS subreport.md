# Report: agreement_Lot_Higrade_ORDERS subreport

**Caption:** agreement_Lot_Higrade_ORDERS subreport  
**Embedded in:** `Report:Agreement_Lot_Destroy_Checklist subreport`, `Report:Agreement_Lot_Higrade_Checklist subreport`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | AGREEMENT_LOT_CN_Label | Client |  |  |  | 0.00, 0.00, 0.46, 0.18 |
| Label | ACTIVITY_CODE_Label | Code |  |  |  | 0.47, 0.00, 0.42, 0.18 |
| Label | OVERRUN_AMT_Label | Over |  |  |  | 1.48, 0.00, 0.40, 0.18 |
| Label | ORDER_AMT_Label | Order |  |  |  | 1.00, 0.00, 0.48, 0.18 |
| Label | OVERRUN_ALL_Label | All |  |  |  | 2.33, 0.00, 0.25, 0.18 |
| Label | Label18 | Total |  |  |  | 1.92, 0.00, 0.40, 0.18 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line12 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AGREEMENT_LOT_CN |  | CLIENT_ASSOCIATE |  |  | 0.01, 0.00, 0.46, 0.00 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.51, 0.00, 0.43, 0.00 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  |  | 1.43, 0.00, 0.46, 0.00 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 0.95, 0.00, 0.48, 0.00 |
| CheckBox | OVERRUN_ALL |  | OVERRUN_ALL |  |  | 2.38, 0.00, 0.00, 0.00 |
| TextBox | Text16 |  | AGREEMENT_LOT_CN |  |  | 2.92, 0.00, 0.00, 0.16 |
| TextBox | Text19 |  | =nz([ORDER_AMT],0)+nz([OVERRUN_AMT],0) |  |  | 1.86, 0.00, 0.46, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line13 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
