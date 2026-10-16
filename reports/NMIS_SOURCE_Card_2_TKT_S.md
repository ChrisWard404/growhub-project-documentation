# Report: NMIS_SOURCE_Card_2_TKT_S

**Caption:** NMIS_SOURCE_LOTS  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM [NMIS_SOURCE_LastTestData3 Query] RIGHT JOIN (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON [NMIS_SOURCE_LastTestData3 Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]));
```

**Backend tables referenced:** `NMIS_SOURCE_LOTS`  
**Opened from (VBA):** `Form_Seed_Shipping_Ticket Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line62 |  |  |  |  | 0.23, 0.31, 7.62, 0.00 |
| Line | Line63 |  |  |  |  | 0.23, 0.33, 7.62, 0.00 |
| Line | Line64 |  |  |  |  | 7.85, 0.31, 0.00, 4.39 |
| Line | Line65 |  |  |  |  | 0.23, 0.31, 0.00, 4.39 |
| Line | Line66 |  |  |  |  | 0.23, 0.51, 7.62, 0.00 |
| Label | Label67 | Weights |  |  |  | 1.01, 0.33, 0.49, 0.18 |
| Line | Line68 |  |  |  |  | 2.23, 0.31, 0.00, 4.39 |
| Line | Line69 |  |  |  |  | 2.25, 0.31, 0.00, 4.39 |
| Line | Line70 |  |  |  |  | 0.73, 0.51, 0.00, 4.19 |
| Line | Line71 |  |  |  |  | 1.44, 0.51, 0.00, 4.19 |
| Line | Line73 |  |  |  |  | 2.99, 0.51, 0.00, 4.19 |
| Line | Line74 |  |  |  |  | 0.23, 0.69, 7.62, 0.00 |
| Label | Label75 | Bag/Box |  |  |  | 0.23, 0.50, 0.49, 0.18 |
| Label | Label76 | Wt. |  |  |  | 0.96, 0.50, 0.25, 0.18 |
| Label | Label77 | Cert. No. |  |  |  | 1.52, 0.50, 0.54, 0.18 |
| Label | Label78 | Date |  |  |  | 2.45, 0.50, 0.30, 0.18 |
| Line | Line79 |  |  |  |  | 3.75, 0.51, 0.00, 4.19 |
| Line | Line80 |  |  |  |  | 4.52, 0.51, 0.00, 4.19 |
| Line | Line81 |  |  |  |  | 5.29, 0.51, 0.00, 4.19 |
| Label | Label82 | Inventory |  |  |  | 4.71, 0.33, 0.57, 0.18 |
| Label | Label83 | Lb Rec'd |  |  |  | 3.16, 0.50, 0.51, 0.18 |
| Label | Label84 | Lb Issued |  |  |  | 3.88, 0.50, 0.55, 0.18 |
| Label | Label85 | Lb Bal. |  |  |  | 4.68, 0.50, 0.43, 0.18 |
| Label | Label86 | Activity |  |  |  | 6.22, 0.51, 0.47, 0.18 |
| Line | Line87 |  |  |  |  | 0.23, 1.02, 7.62, 0.00 |
| Line | Line100 |  |  |  |  | 0.23, 1.35, 7.62, 0.00 |
| Line | Line101 |  |  |  |  | 0.23, 1.69, 7.62, 0.00 |
| Line | Line102 |  |  |  |  | 0.23, 2.02, 7.62, 0.00 |
| Line | Line103 |  |  |  |  | 0.23, 2.35, 7.62, 0.00 |
| Line | Line104 |  |  |  |  | 0.23, 2.69, 7.62, 0.00 |
| Line | Line105 |  |  |  |  | 0.23, 3.02, 7.62, 0.00 |
| Line | Line106 |  |  |  |  | 0.23, 3.35, 7.62, 0.00 |
| Line | Line107 |  |  |  |  | 0.23, 3.69, 7.62, 0.00 |
| Line | Line108 |  |  |  |  | 0.23, 4.02, 7.62, 0.00 |
| Line | Line109 |  |  |  |  | 0.23, 4.35, 7.62, 0.00 |
| Line | Line110 |  |  |  |  | 0.23, 4.69, 7.62, 0.00 |
| TextBox | SOURCE | Source: | SOURCE |  |  | 2.15, 0.08, 3.62, 0.21 |
| TextBox | ID | ID: | ID |  |  | 6.24, 0.03, 1.60, 0.26 |
| Label | Label69 | Loc: |  |  |  | 0.23, 0.06, 0.29, 0.23 |
