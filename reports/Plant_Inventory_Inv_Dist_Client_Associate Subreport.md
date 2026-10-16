# Report: Plant_Inventory_Inv_Dist_Client_Associate Subreport

**Caption:** Field_tag_agreements subreport  
**Record source:**

```sql
SELECT [NMIS_AGREEMENTS].[AGREEMENT_LOT_CN], [ASSOCIATE_NAME] & " - " & [CLIENT_ASSOCIATE] & " " & [AMOUNT_REQUESTED] & "M" AS CLIENT_ASSOCIATE_STRING FROM NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_AGREEMENTS].[CLIENT_ASSOCIATE]) AND ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_AGREEMENTS].[CLIENT_ASSOCIATE]);
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`  
**Embedded in:** `Report:Plant_inventory_Rpt_Size_Matrix`, `Report:Plant_inventory_Rpt_Size_Matrix_Group_pct_only_new`, `Report:Plant_inventory_Rpt_Size_Matrix_pct_only`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label62 | Client(s): |  |  |  | 0.00, 0.00, 0.92, 0.23 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE_STRING |  |  | 0.01, 0.00, 2.66, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
