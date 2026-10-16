# Form: SOURCE_CODE_TYPE Subform

**Caption:** SOURCE_CODE_TYPE Subform  
**Record source:**

```sql
SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.SOURCE_CODE_TYPE FROM NMIS_ASSOCIATES;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Embedded in:** `Form:NMIS_SOURCE_LOTS_INPUT`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_Label | Associate |  |  |  | 0.04, 0.04, 0.88, 0.20 |
| Label | SOURCE_CODE_TYPE_Label | Source Code Type |  |  |  | 0.97, 0.04, 2.03, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE |  | ASSOCIATE |  |  | 0.04, 0.04, 0.88, 0.20 |
| ComboBox | SOURCE_CODE_TYPE |  | SOURCE_CODE_TYPE | R1;R5;R6;R9;BLM |  | 0.97, 0.04, 2.03, 0.20 |
