# Form: NMIS_PROCESS_LABELS_SELECTED_CLIENT1

**Caption:** NMIS_PROCESS_LABELS_SELECTED_CLIENT1  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, "Slected Client: " & [ASSOCIATE_NAME] AS Selected FROM NMIS_ASSOCIATES;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE_NAME |  | Selected |  |  | 2.79, 0.04, 2.67, 0.25 |
