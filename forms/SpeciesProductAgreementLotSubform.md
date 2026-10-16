# Form: SpeciesProductAgreementLotSubform

**Caption:** NMIS TREATMENT PRODUCTS  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENT_LOTS.INSERTED_BY, NMIS_AGREEMENT_LOTS.INSERTED_DATE, NMIS_AGREEMENT_LOTS.MODIFIED_BY, NMIS_AGREEMENT_LOTS.MODIFIED_DATE FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.END_FY DESC , NMIS_AGREEMENT_LOTS.ID;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Embedded in:** `Form:NMIS_SPECIES_PRODUCTS Form`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | TREATMENT_PRODUCT_ID_Label | Agreement Lot ID |  |  |  | 0.11, 0.44, 1.77, 0.20 |
| Label | TREATMENT_PRODUCT_DESC_Label |  Begin FY |  |  |  | 1.93, 0.44, 0.70, 0.20 |
| Label | Label8 | Agreement Lots |  |  |  | 2.73, 0.03, 2.54, 0.31 |
| Line | Line9 |  |  |  |  | 0.12, 0.39, 7.58, 0.00 |
| Label | Label10 |  End FY |  |  |  | 2.67, 0.44, 0.71, 0.20 |
| Label | Label14 |  Inserted By |  |  |  | 3.43, 0.44, 1.26, 0.20 |
| Label | Label16 |  Modified By |  |  |  | 5.42, 0.44, 1.27, 0.20 |
| Label | Label18 | Date |  |  |  | 4.74, 0.44, 0.64, 0.20 |
| Label | Label20 | Date |  |  |  | 6.72, 0.44, 0.64, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | TREATMENT_PRODUCT_ID |  | ID |  |  | 0.12, 0.02, 1.75, 0.20 |
| TextBox | TREATMENT_PRODUCT_DESC |  | BEGIN_FY |  |  | 1.94, 0.02, 0.70, 0.20 |
| TextBox | Text11 |  | End_FY |  |  | 2.69, 0.02, 0.70, 0.20 |
| TextBox | Text15 |  | Inserted_by |  |  | 3.43, 0.02, 1.27, 0.20 |
| TextBox | Text17 |  | Modified_by |  |  | 5.43, 0.02, 1.27, 0.20 |
| TextBox | Text19 |  | Inserted_Date |  |  | 4.75, 0.02, 0.64, 0.20 |
| TextBox | Text21 |  | Modified_Date |  |  | 6.73, 0.02, 0.64, 0.20 |
