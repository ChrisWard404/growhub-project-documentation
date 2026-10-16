# Report: Seedbox_Labels3

**Caption:** Seedbox_Labels  
**Record source:**

```sql
SELECT NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]));
```

**Grouping/sorting:** `CN`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Pounds Remaining |  |  |  | 3.16, 1.10, 1.08, 0.20 |
| TextBox | LOCATION |  |  |  |  | 0.00, 2.30, 1.46, 0.31 |
| Label | ID_Label | Seed ID: |  |  |  | 0.00, 0.33, 0.60, 0.15 |
| TextBox | ID |  | ID |  |  | 0.00, 0.33, 5.79, 0.68 |
| Label | STORED_FOR_ASSOCIATE_Label | Forest: |  |  |  | 0.00, 1.70, 0.50, 0.16 |
| TextBox | STORED_FOR_ASSOCIATE |  | STORED_FOR_ASSOCIATE |  |  | 0.00, 1.86, 0.75, 0.24 |
| TextBox | ASSOCIATE_NAME |  | ASSOCIATE_NAME |  |  | 0.75, 1.86, 2.38, 0.24 |
| Label | SOURCE_CODE_Label | Source Code: |  |  |  | 0.00, 3.42, 0.96, 0.18 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 0.00, 3.59, 5.71, 0.25 |
| Label | LOCATION_Label | Storage Location: |  |  |  | 0.00, 2.13, 1.00, 0.17 |
| TextBox | Text21 |  | ID |  |  | 0.00, 2.85, 3.08, 0.50 |
| Label | Label22 |      Date            Pounds          Init |  |  |  | 3.17, 1.27, 2.22, 2.19 |
| Line | Line23 |  |  |  |  | 3.17, 2.02, 2.23, 0.00 |
| Line | Line24 |  |  |  |  | 3.93, 1.27, 0.00, 2.20 |
| Line | Line25 |  |  |  |  | 4.90, 1.27, 0.00, 2.20 |
| Line | Line27 |  |  |  |  | 3.17, 2.31, 2.22, 0.00 |
| Line | Line28 |  |  |  |  | 3.17, 2.60, 2.22, 0.00 |
| Line | Line29 |  |  |  |  | 3.17, 2.89, 2.22, 0.00 |
| Line | Line31 |  |  |  |  | 3.17, 1.73, 2.22, 0.00 |
| TextBox | blankbox |  |  |  |  | 1.46, 2.30, 1.46, 0.31 |
| Line | Line35 |  |  |  |  | 3.16, 1.43, 2.23, 0.00 |
| Line | Line36 |  |  |  |  | 3.16, 3.18, 2.23, 0.00 |
| TextBox | Text39 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 0.42, 0.00, 4.79, 0.32 |
| Label | PLNTMSTR_SYMBOL_Label | Species: |  |  |  | 0.00, 1.06, 0.58, 0.16 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.00, 1.22, 0.72, 0.23 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 0.72, 1.45, 2.44, 0.23 |
| TextBox | Text41 |  | Scientific_Name |  |  | 0.72, 1.22, 2.44, 0.23 |
