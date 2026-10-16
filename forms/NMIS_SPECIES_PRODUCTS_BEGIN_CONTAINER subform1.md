# Form: NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1

**Caption:** NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1  
**Record source:**

```sql
SELECT NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.SPECIES_PRODUCT_CN, NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.BEGIN_CONTAINER, NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.CELLS_PER_CONTAINER FROM NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER;
```

**Embedded in:** `Form:NMIS_AGREEMENT_LOTS`, `Form:NMIS_AGREEMENT_LOTS_Review_Only`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_CONTAINER_Label | Begin Container |  |  |  | 0.13, 0.04, 1.07, 0.17 |
| Label | CELLS_PER_CONTAINER_Label | Cells/Container |  |  |  | 1.27, 0.04, 0.95, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BEGIN_CONTAINER |  | BEGIN_CONTAINER |  |  | 0.13, 0.04, 1.08, 0.00 |
| TextBox | CELLS_PER_CONTAINER |  | CELLS_PER_CONTAINER |  |  | 1.27, 0.04, 0.92, 0.00 |
