# Report: **Seedbox_Labels_blm_sc_change

**Caption:** Seedbox Labels  
**Record source:**

```sql
SELECT [ID] & "   " & [source_code] AS ID_SC FROM NMIS_SOURCE_LOTS WHERE (((NMIS_SOURCE_LOTS.SOURCE_CODE_OLD) Is Not Null) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL)=[species_code])) GROUP BY [ID] & "   " & [source_code] ORDER BY [ID] & "   " & [source_code];
```

**Backend tables referenced:** `NMIS_SOURCE_LOTS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_CODE |  | ID_SC |  |  | 0.04, 0.01, 5.38, 0.25 |
