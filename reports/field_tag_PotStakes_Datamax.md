# Report: field_tag_PotStakes_Datamax

**Caption:** Pot Stakes with Nursery ID's - DataMax  
**Record source:**

```sql
Field_tag_pairs Query
```

**Grouping/sorting:** `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `SIZE_SPEC_STRING`, `Major_Client`, `SOURCE_CODE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Report.Field_tag_agreements subreport`  
**Opened from (VBA):** `Form_Field_Tags`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.04, 0.06, 1.79, 0.43 |
| Subform | Field_tag_agreements subreport |  | Report.Field_tag_agreements subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 2.96, 0.15, 1.01, 0.35 |
| TextBox | Text248 |  | =[Forms]![Field_Tags]![Date] |  |  | 2.14, 0.21, 0.78, 0.00 |
| TextBox | Text164 | Spe: | PLNTMSTR_SYMBOL |  |  | 2.15, 0.09, 0.78, 0.00 |
| Label | Label44 | Spec: |  |  |  | 1.81, 0.31, 0.33, 0.16 |
| ComboBox | Text163 |  | SPECIES_PRODUCT_CN | SELECT [Size_Spec_String Query].[CN], [Size_Spec_String Query].[SIZE_SPEC_STRING] FROM [Size_Spec_String Query];  |  | 2.15, 0.31, 0.92, 0.00 |
| Label | Label307 | Date: |  |  |  | 1.82, 0.21, 0.31, 0.16 |
| TextBox | Text303 |  | AKA |  |  | 4.08, 0.35, 0.93, 0.00 |
| ComboBox | PREVIOUS_NURSERY_ASSOCIATE |  | PREVIOUS_NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 4.04, 0.21, 1.11, 0.00 |
