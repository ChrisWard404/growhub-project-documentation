# Report: Lifting_Priorities_Client_Associate Subreport

**Caption:** Field_tag_agreements subreport  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, "(" & [Associate] & ")  " & [ASSOCIATE_NAME] & " - " & [CLIENT_ASSOCIATE] & " " & [AMOUNT_REQUESTED] & "M" AS CLIENT_ASSOCIATE_STRING FROM NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE);
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`  
**Embedded in:** `Report:Lifting_Priorties_Specs`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE_STRING |  |  | 0.01, 0.00, 3.49, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
