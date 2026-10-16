# Form: NMIS_ASSOCIATES subform1

**Caption:** NMIS_ASSOCIATES subform1  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.PARENT_ASSOCIATE, NMIS_ASSOCIATES.STORAGE_ASSOCIATE FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Embedded in:** `Form:NMIS_ASSOCIATES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_Label | Associate |  |  |  | 0.04, 0.04, 0.75, 0.20 |
| Label | ASSOCIATE_NAME_Label | Associate Name |  |  |  | 0.83, 0.04, 2.83, 0.20 |
| Label | PARENT_ASSOCIATE_Label | Parent Associate |  |  |  | 3.71, 0.04, 2.41, 0.20 |
| Label | STORAGE_ASSOCIATE_Label | Storage Associate |  |  |  | 6.18, 0.04, 2.37, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.04, 0.03, 0.75, 0.20 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.83, 0.03, 2.83, 0.20 |
| ComboBox | PARENT_ASSOCIATE |  | PARENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 3.71, 0.03, 2.41, 0.20 |
| ComboBox | STORAGE_ASSOCIATE |  | STORAGE_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 6.18, 0.03, 2.37, 0.20 |
