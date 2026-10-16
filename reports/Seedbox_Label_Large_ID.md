# Report: Seedbox_Label_Large_ID

**Caption:** Seedbox_Labels  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]));
```

**Grouping/sorting:** `CN`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS_INPUT`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | STORED_FOR_ASSOCIATE |  | STORED_FOR_ASSOCIATE |  |  | 0.00, 3.12, 0.75, 0.24 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.75, 3.12, 5.00, 0.24 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 0.00, 3.59, 5.71, 0.25 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.00, 3.37, 0.72, 0.23 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 3.17, 3.36, 2.44, 0.23 |
| TextBox | Text41 |  | Scientific_Name |  |  | 0.72, 3.36, 2.44, 0.23 |
| TextBox | Text42 |  | ID |  |  | 0.00, 2.00, 5.79, 1.17 |
| TextBox | Text43 |  | STORED_FOR_ASSOCIATE |  |  | 0.00, 1.12, 0.75, 0.24 |
| TextBox | Text44 |  | ASSOCIATE_NAME |  |  | 0.75, 1.12, 4.96, 0.24 |
| TextBox | Text45 |  | SOURCE_CODE |  |  | 0.00, 1.59, 5.71, 0.25 |
| TextBox | Text46 |  | PLNTMSTR_SYMBOL |  |  | 0.00, 1.37, 0.72, 0.23 |
| TextBox | Text47 |  | VERNACULAR |  |  | 3.17, 1.36, 2.44, 0.23 |
| TextBox | Text48 |  | Scientific_Name |  |  | 0.72, 1.36, 2.44, 0.23 |
| TextBox | Text49 |  | ID |  |  | 0.00, 0.00, 5.79, 1.17 |
