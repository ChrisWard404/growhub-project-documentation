# Form: Agreement_for_Source_Lot

**Caption:** Agreements for Source Lot  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.CN, Species_Products_with_SizeSpecString.Species_Products_String_Longest, Species_Products_with_SizeSpecString_1.Species_Products_String_Longest, NMIS_AGREEMENTS.BEGIN_FY, NMIS_AGREEMENTS.END_FY, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.SOURCE_REQUIRED, [Seed_Balance_for_Agreements_by_Source Query].[Sum Of ACTIVITY_UNITS], Source_Lot_ID_and_Source_string.ID_SOURCE2B FROM [Seed_Balance_for_Agreements_by_Source Query] RIGHT JOIN ((Species_Products_with_SizeSpecString AS Species_Products_with_SizeSpecString_1 RIGHT JOIN (Species_Products_with_SizeSpecString INNER JOIN (NMIS_AGREEMENTS LEFT JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) ON Species_Products_with_SizeSpecString_1.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_AGREEMENTS.SOURCE_LOT_CN = Source_Lot_ID_and_Source_string.CN) ON [Seed_Balance_for_Agreements_by_Source Query].SOURCE_LOT_CN = NMIS_AGREEMENTS.SOURCE_LOT_CN WHERE (((NMIS_AGREEMENTS.BEGIN_FY)=[Forms]![NMIS_AGREEMENTS]![BEGIN_FY]) AND ((NMIS_AGREEMENTS.SOURCE_LOT_CN)=[Forms]![NMIS_AGREEMENTS]![SOURCE_LOT_CN])) OR (((NMIS_AGREEMENT_LOTS.CN)=[Forms]![NMIS_AGREEMENTS]![SOURCE_LOT_CN]));
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`  
**Opened from (VBA):** `Form_NMIS_AGREEMENTS`, `Form_NMIS_AGREEMENTS_bu`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Client Associate |  |  |  | 0.16, 0.66, 1.03, 0.19 |
| Label | Label1 | Amount Req (M) |  |  |  | 6.58, 0.51, 0.60, 0.33 |
| Label | Label2 | Source Required |  |  |  | 7.23, 0.49, 0.65, 0.35 |
| Label | Label3 | Lot Balance: |  |  |  | 6.90, 0.14, 1.07, 0.25 |
| Label | Label4 | Stock Type |  |  |  | 1.24, 0.66, 4.40, 0.19 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 8.01, 0.14, 0.85, 0.24 |
| TextBox | ID_SOURCE | SOURCE: | ID_SOURCE2B |  |  | 1.10, 0.15, 4.25, 0.25 |
| Label | Label8 | Agreement Lot |  |  |  | 7.93, 0.66, 0.94, 0.19 |
| Label | Label9 | Begin FY |  |  |  | 5.70, 0.51, 0.39, 0.33 |
| Label | Label11 | End FY |  |  |  | 6.14, 0.51, 0.39, 0.33 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 6.58, 0.04, 0.60, 0.21 |
| TextBox | SOURCE_REQUIRED |  | SOURCE_REQUIRED |  |  | 7.23, 0.04, 0.65, 0.21 |
| TextBox | Species_Products_with_SizeSpecString.Species_Products_String_Longest |  | Species_Products_with_SizeSpecString.Species_Products_String_Longest |  |  | 1.24, 0.04, 4.40, 0.21 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 0.16, 0.04, 0.00, 0.21 |
| TextBox | ID |  | ID |  |  | 7.93, 0.04, 0.94, 0.21 |
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 5.70, 0.04, 0.38, 0.21 |
| TextBox | END_FY |  | END_FY |  |  | 6.14, 0.04, 0.39, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text6 |  | =Sum([SOURCE_REQUIRED]) |  |  | 7.13, 0.04, 0.75, 0.21 |
| Label | Label13 | Total Source Required: |  |  |  | 5.60, 0.06, 1.35, 0.19 |
