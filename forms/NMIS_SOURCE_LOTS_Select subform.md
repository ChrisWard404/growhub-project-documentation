# Form: NMIS_SOURCE_LOTS_Select subform

**Caption:** NMIS_SOURCE_LOTS_Select2 subform  
**Record source:**

```sql
SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[NOTE], [NMIS_SOURCE_LOTS].[SOURCE_CODE], [NMIS_SOURCE_LOTS].[GEOGRAPHIC_LOCATION], [NMIS_SOURCE_LOTS].[CERT_CODE], [NMIS_SOURCE_LOTS].[PROAG_ELEVATION], [NMIS_SOURCE_LOTS].[DATE_COLLECTED], [NMIS_SOURCE_LOTS].[COLLECT_METHOD], [NMIS_SOURCE_LOTS].[ORIGIN_ELEVATION], [NMIS_SOURCE_LOTS].[BREEDING_ZONE], [NMIS_SOURCE_LOTS].[HUC], [NMIS_SOURCE_LOTS].[GENETIC_BASE], [NMIS_SOURCE_LOTS].[HABITAT], [NMIS_SOURCE_LOTS].[SEED_ZONE], [NMIS_SOURCE_LOTS].[STORED_FOR_ASSOCIATE], [NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE], [NMIS_SOURCE_LOTS].[COLLECTED_BY_ASSOCIATE], [NMIS_SOURCE_LOTS].[CATEGORY_CODE], [NMIS_SOURCE_LOTS].[PLNTMSTR_SYMBOL], [NMIS_SOURCE_LOTS].[ID], [NMIS_SOURCE_LOTS].[ID2], [NMIS_SOURCE_LOTS].[PRODUCT_CN], [NMIS_SOURCE_LOTS].[INSERTED_BY], [NMIS_SOURCE_LOTS].[INSERTED_DATE], [NMIS_SOURCE_LOTS].[INSERTED_INSTANCE], [NMIS_SOURCE_LOTS].[MODIFIED_BY], [NMIS_SOURCE_LOTS].[MODIFIED_DATE], [NMIS_SOURCE_LOTS].[MODIFIED_INSTANCE], [NMIS_SOURCE_LOTS].[TRANSFERRED_BY], [NMIS_SOURCE_LOTS].[TRANSFERRED_DATE], [NMIS_SOURCE_LOTS].[TRANSFERRED_INSTANCE] FROM NMIS_SOURCE_LOTS ORDER BY [NMIS_SOURCE_LOTS].[ID];
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  
**Embedded in:** `Form:NMIS_SOURCE_LOTS2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CN_Label | CN |  |  |  | 6.54, 0.03, 0.96, 0.20 |
| Label | NOTE_Label | Note |  |  |  | 6.54, 0.03, 1.62, 0.20 |
| Label | SOURCE_CODE_Label | Source Code |  |  |  | 0.75, 0.03, 2.38, 0.20 |
| Label | GEOGRAPHIC_LOCATION_Label | Geographic Location |  |  |  | 6.88, 0.03, 0.58, 0.20 |
| Label | CERT_CODE_Label | Cert Code |  |  |  | 7.58, 0.03, 0.38, 0.20 |
| Label | PROAG_ELEVATION_Label | Proag Elevation |  |  |  | 7.04, 0.03, 0.46, 0.20 |
| Label | DATE_COLLECTED_Label | Date Collected |  |  |  | 7.58, 0.03, 0.42, 0.20 |
| Label | COLLECT_METHOD_Label | Collection Method |  |  |  | 7.00, 0.03, 0.50, 0.20 |
| Label | ORIGIN_ELEVATION_Label | Origin Elevation |  |  |  | 6.92, 0.03, 0.46, 0.20 |
| Label | BREEDING_ZONE_Label | Breeding Zone |  |  |  | 6.21, 0.03, 1.08, 0.20 |
| Label | HUC_Label | HUC |  |  |  | 7.25, 0.03, 0.33, 0.20 |
| Label | GENETIC_BASE_Label | Genetic Base |  |  |  | 7.21, 0.03, 0.38, 0.20 |
| Label | HABITAT_Label | Habitat |  |  |  | 7.38, 0.03, 0.42, 0.20 |
| Label | SEED_ZONE_Label | Seed Zone |  |  |  | 7.36, 0.03, 0.83, 0.20 |
| Label | STORED_FOR_ASSOCIATE_Label | Stored For |  |  |  | 3.17, 0.03, 0.92, 0.20 |
| Label | STORED_AT_ASSOCIATE_Label | Stored At Associate |  |  |  | 7.25, 0.03, 0.83, 0.20 |
| Label | COLLECTED_BY_ASSOCIATE_Label | Collected By Associate |  |  |  | 7.21, 0.03, 0.83, 0.20 |
| Label | CATEGORY_CODE_Label | Category |  |  |  | 4.12, 0.03, 1.17, 0.20 |
| Label | PLNTMSTR_SYMBOL_Label | Species |  |  |  | 5.33, 0.03, 0.83, 0.20 |
| Label | ID_Label | ID |  |  |  | 0.04, 0.03, 0.67, 0.20 |
| Label | ID2_Label | "Old" ID |  |  |  | 6.96, 0.03, 0.42, 0.20 |
| Label | PRODUCT_CN_Label | PRODUCT_CN |  |  |  | 6.83, 0.03, 0.96, 0.20 |
| Label | INSERTED_BY_Label | Inserted By |  |  |  | 7.00, 0.03, 0.83, 0.20 |
| Label | INSERTED_DATE_Label | Inserted Date |  |  |  | 7.29, 0.03, 0.42, 0.20 |
| Label | INSERTED_INSTANCE_Label | Inserted Instance |  |  |  | 7.00, 0.03, 0.50, 0.20 |
| Label | MODIFIED_BY_Label | Modified By |  |  |  | 6.96, 0.03, 0.83, 0.20 |
| Label | MODIFIED_DATE_Label | Modified Date |  |  |  | 7.04, 0.03, 0.42, 0.20 |
| Label | MODIFIED_INSTANCE_Label | Modified Instance |  |  |  | 7.04, 0.03, 0.50, 0.20 |
| Label | TRANSFERRED_BY_Label | Transferred By |  |  |  | 6.96, 0.03, 0.83, 0.20 |
| Label | TRANSFERRED_DATE_Label | Transferred Date |  |  |  | 6.88, 0.03, 0.50, 0.20 |
| Label | TRANSFERRED_INSTANCE_Label | Transferred Instance |  |  |  | 6.83, 0.03, 1.41, 0.20 |
| TextBox | Selected_Lot_CN | Selected Lot: | =[CN] |  |  | 4.12, 0.00, 0.88, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN |  | CN |  |  | 6.54, 0.03, 0.96, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 6.54, 0.03, 1.62, 0.21 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 0.73, 0.03, 2.38, 0.20 |
| TextBox | GEOGRAPHIC_LOCATION |  | GEOGRAPHIC_LOCATION |  |  | 6.88, 0.03, 0.58, 0.20 |
| TextBox | CERT_CODE |  | CERT_CODE |  |  | 7.58, 0.03, 0.38, 0.20 |
| TextBox | PROAG_ELEVATION |  | PROAG_ELEVATION |  |  | 7.04, 0.03, 0.46, 0.20 |
| TextBox | DATE_COLLECTED |  | DATE_COLLECTED |  |  | 7.58, 0.03, 0.42, 0.20 |
| TextBox | COLLECT_METHOD |  | COLLECT_METHOD |  |  | 7.00, 0.03, 0.50, 0.20 |
| TextBox | ORIGIN_ELEVATION |  | ORIGIN_ELEVATION |  |  | 6.92, 0.03, 0.46, 0.20 |
| TextBox | BREEDING_ZONE |  | BREEDING_ZONE |  |  | 6.21, 0.03, 1.08, 0.20 |
| TextBox | HUC |  | HUC |  |  | 7.25, 0.03, 0.33, 0.20 |
| TextBox | GENETIC_BASE |  | GENETIC_BASE |  |  | 7.21, 0.03, 0.38, 0.20 |
| TextBox | HABITAT |  | HABITAT |  |  | 7.38, 0.03, 0.42, 0.20 |
| TextBox | SEED_ZONE |  | SEED_ZONE |  |  | 7.36, 0.03, 0.83, 0.20 |
| ComboBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 7.25, 0.03, 0.83, 0.20 |
| ComboBox | COLLECTED_BY_ASSOCIATE |  | COLLECTED_BY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 7.21, 0.03, 0.83, 0.20 |
| TextBox | ID |  | ID |  |  | 0.03, 0.03, 0.67, 0.20 |
| TextBox | ID2 |  | ID2 |  |  | 6.96, 0.03, 0.42, 0.20 |
| TextBox | PRODUCT_CN |  | PRODUCT_CN |  |  | 6.83, 0.03, 0.96, 0.20 |
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 7.00, 0.03, 0.83, 0.20 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 7.29, 0.03, 0.42, 0.20 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 7.00, 0.03, 0.50, 0.20 |
| TextBox | MODIFIED_BY |  | MODIFIED_BY |  |  | 6.96, 0.03, 0.83, 0.20 |
| TextBox | MODIFIED_DATE |  | MODIFIED_DATE |  |  | 7.04, 0.03, 0.42, 0.20 |
| TextBox | MODIFIED_INSTANCE |  | MODIFIED_INSTANCE |  |  | 7.04, 0.03, 0.50, 0.20 |
| TextBox | TRANSFERRED_BY |  | TRANSFERRED_BY |  |  | 6.96, 0.03, 0.83, 0.20 |
| TextBox | TRANSFERRED_DATE |  | TRANSFERRED_DATE |  |  | 6.88, 0.03, 0.50, 0.20 |
| TextBox | TRANSFERRED_INSTANCE |  | TRANSFERRED_INSTANCE |  |  | 6.83, 0.04, 1.41, 0.20 |
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 5.32, 0.03, 0.83, 0.20 |
| TextBox | CATEGORY_CODE |  | CATEGORY_CODE |  |  | 4.11, 0.03, 1.17, 0.20 |
| TextBox | STORED_FOR_ASSOCIATE |  | STORED_FOR_ASSOCIATE |  |  | 3.15, 0.03, 0.92, 0.20 |
