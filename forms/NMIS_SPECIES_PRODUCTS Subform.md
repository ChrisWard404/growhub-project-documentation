# Form: NMIS_SPECIES_PRODUCTS Subform

**Caption:** NMIS_SPECIES_PRODUCTS subform  
**Record source:**

```sql
NMIS_SPECIES_PRODUCTS
```

**Order by:** `NMIS_SPECIES_PRODUCTS.AGE_STRING`  
**Backend tables referenced:** `NMIS_SPECIES_PRODUCTS`, `NMIS_UNITS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 0.88, 0.04, 0.73, 0.19 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="G")) ORDER BY NMIS_UNITS.UNIT_CODE;  |  | 0.04, 0.04, 0.73, 0.19 |
