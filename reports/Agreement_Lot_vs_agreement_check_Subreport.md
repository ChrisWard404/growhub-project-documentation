# Report: Agreement_Lot_vs_agreement_check_Subreport

**Record source:**

```sql
NMIS_AGREEMENTS
```

**Order by:** `NMIS_AGREEMENTS.Index DESC`  
**Backend tables referenced:** `NMIS_AGREEMENTS`  
**Embedded in:** `Report:NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label7 | Client |  |  |  | 45.50, 0.00, 0.64, 0.21 |
| Label | Label8 | Adj Req |  |  |  | 1.53, 0.00, 0.61, 0.21 |
| Label | Label9 | Orig Req |  |  |  | 0.76, 0.00, 0.74, 0.21 |
| Label | Label19 | Comments |  |  |  | 2.22, 0.00, 0.78, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION |  | CLIENT_ASSOCIATE |  |  | 0.04, 0.01, 0.67, 0.18 |
| TextBox | Sublot |  | AMOUNT_REQUESTED |  |  | 1.54, 0.01, 0.54, 0.18 |
| TextBox | UNIT_CODE |  | ORIG_AMOUNT_REQUESTED |  |  | 0.77, 0.01, 0.67, 0.18 |
| TextBox | NOTE |  | NOTE |  |  | 2.22, 0.01, 4.67, 0.18 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line17 |  |  |  |  | 0.00, 0.04, 6.86, 0.00 |
