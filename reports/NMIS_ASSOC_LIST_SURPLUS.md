# Report: NMIS_ASSOC_LIST_SURPLUS

**Caption:** NMIS_ASSOC_LIST_SURPLUS  
**Record source:**

```sql
NMIS_ASSOC_LIST_SURPLUS Query
```

**Grouping/sorting:** `ASSOCIATE`  
**Subforms/subreports:** `Report.NMIS_ASSOC_PHONE subrep`  
**Opened from (VBA):** `Form_Reports_Menu_Maintenance Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | SURPLUS CLIENTS TELEPHONE LIST |  |  |  | 2.00, 0.04, 3.75, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.00, 0.04, 0.79, 0.21 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 1.00, 0.04, 2.00, 0.21 |
| TextBox | DEPARTMENT |  | DEPARTMENT |  |  | 3.25, 0.04, 2.00, 0.21 |
| TextBox | ADDRESS |  | ADDRESS |  |  | 1.00, 0.25, 3.46, 0.21 |
| TextBox | CITY |  | CSZ |  |  | 1.00, 0.46, 3.42, 0.21 |
| Subform | NMIS_ASSOC_PHONE subrep |  | Report.NMIS_ASSOC_PHONE subrep (master: ASSOCIATE → child: ASSOCIATE) |  |  | 5.50, 0.04, 2.43, 0.17 |
| Line | Line24 |  |  |  |  | 0.00, 0.00, 7.90, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text17 |  | =Now() |  |  | 0.04, 0.08, 3.50, 0.20 |
| TextBox | Text18 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.46, 0.08, 3.50, 0.20 |
