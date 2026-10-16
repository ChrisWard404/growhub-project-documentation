# Form: NMIS_PROCESS_QUALITY_SAMPLES Subform2

**Caption:** Process_Quality subform9  
**Record source:**

```sql
SELECT NMIS_PROCESSING_QI_SAMPLES.* FROM NMIS_PROCESSING_QI_SAMPLES ORDER BY NMIS_PROCESSING_QI_SAMPLES.SAMPLE_STATION, NMIS_PROCESSING_QI_SAMPLES.SAMPLE_MODE, NMIS_PROCESSING_QI_SAMPLES.SAMPLE_DATE, NMIS_PROCESSING_QI_SAMPLES.SAMPLE_TIME;
```

**Backend tables referenced:** `NMIS_PROCESSING_QI_SAMPLES`  
**Embedded in:** `Form:NMIS_PROCESS_QUALITY_SAMPLES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SAMPLE_MODE_Label | Sample Type |  |  |  | 0.62, 0.26, 0.49, 0.35 |
| Label | SAMPLE_STATION_Label |  Sample Station |  |  |  | 0.04, 0.26, 0.56, 0.35 |
| Label | SAMPLE_DATE_Label | Pack Date |  |  |  | 1.13, 0.26, 0.62, 0.35 |
| Label | SAMPLE_TIME_Label | SampleTime |  |  |  | 1.77, 0.26, 0.50, 0.35 |
| Label | SAMPLE_SIZE_Label | Sample Size |  |  |  | 2.30, 0.26, 0.52, 0.35 |
| Label | CALIPER_HALF_Label | Cal 1/2 |  |  |  | 2.84, 0.26, 0.34, 0.35 |
| Label | CALIPER_Label |     Cal |  |  |  | 3.20, 0.26, 0.34, 0.35 |
| Label | HEIGHT_HALF_Label | Ht 1/2 |  |  |  | 3.57, 0.26, 0.35, 0.35 |
| Label | HEIGHT_Label |       Ht |  |  |  | 3.94, 0.26, 0.34, 0.35 |
| Label | POOR_DEVELOPMENT_Label | Poor Devp |  |  |  | 4.30, 0.26, 0.40, 0.35 |
| Label | OTHER_DEFECT_Label | Other Defect |  |  |  | 4.73, 0.26, 0.53, 0.35 |
| Label | TOP_DISEASED_Label |   Diseased |  |  |  | 5.28, 0.26, 0.65, 0.35 |
| Label | TOP_INSECT_DAMAGE_Label |  Insect |  |  |  | 5.95, 0.26, 0.41, 0.35 |
| Label | TOP_BOTTLE_BRUSH_Label | Bottle Brush |  |  |  | 6.37, 0.26, 0.45, 0.35 |
| Label | TOP_MULTIPLE_TOPS_Label |  Multiple |  |  |  | 6.84, 0.26, 0.51, 0.35 |
| Label | TOP_MECH_DAMAGE_Label |   Mech |  |  |  | 7.37, 0.26, 0.41, 0.36 |
| Label | TOP_BURNT_NEEDLES_Label | Burnt Needles |  |  |  | 7.80, 0.26, 0.53, 0.35 |
| Label | ROOT_DISEASED_Label |  Disease |  |  |  | 8.35, 0.26, 0.55, 0.35 |
| Label | ROOT_INSECT_DAMAGE_Label |   Insect  |  |  |  | 8.91, 0.26, 0.47, 0.35 |
| Label | ROOT_MECH_DAMAGE_Label |    Mech |  |  |  | 9.40, 0.26, 0.43, 0.35 |
| Label | ROOT_NAT_SHORT_Label | Nat Short |  |  |  | 9.85, 0.26, 0.40, 0.35 |
| Label | ROOT_SWEPT_Label |  Swept |  |  |  | 10.28, 0.26, 0.43, 0.35 |
| Label | PRUNE_INCIDENTALS_Label |   Incidentals |  |  |  | 10.72, 0.26, 0.74, 0.35 |
| Label | PRUNE_LONG_Label |    Long |  |  |  | 11.48, 0.26, 0.41, 0.35 |
| Label | PRUNE_LONG_MARGINAL_Label |  Long Marginal |  |  |  | 11.90, 0.26, 0.58, 0.35 |
| Label | PRUNE_SHORT_Label |  Short |  |  |  | 12.50, 0.26, 0.39, 0.35 |
| Label | PRUNE_SHORT_MARGINAL_Label | Short Marginal |  |  |  | 12.90, 0.26, 0.63, 0.35 |
| Label | Label58 | Top:  |  |  |  | 5.27, 0.04, 3.06, 0.20 |
| Label | Label59 | Root:  |  |  |  | 8.35, 0.04, 2.35, 0.20 |
| Label | Label60 | Prune:  |  |  |  | 10.73, 0.04, 2.80, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sample Type |  | SAMPLE_MODE |  |  | 0.61, 0.04, 0.49, 0.20 |
| TextBox | Station |  | SAMPLE_STATION |  |  | 0.03, 0.04, 0.56, 0.20 |
| TextBox | Date |  | SAMPLE_DATE |  |  | 1.12, 0.04, 0.62, 0.20 |
| TextBox | Time |  | SAMPLE_TIME |  |  | 1.77, 0.04, 0.50, 0.20 |
| TextBox | Size |  | SAMPLE_SIZE |  |  | 2.29, 0.04, 0.52, 0.20 |
| TextBox | 1/2 Cal |  | CALIPER_HALF |  |  | 2.83, 0.04, 0.34, 0.20 |
| TextBox | Cal |  | CALIPER |  |  | 3.20, 0.04, 0.34, 0.20 |
| TextBox | 1/2 Ht |  | HEIGHT_HALF |  |  | 3.57, 0.04, 0.34, 0.20 |
| TextBox | Ht |  | HEIGHT |  |  | 3.93, 0.04, 0.34, 0.20 |
| TextBox | Poor Dev |  | POOR_DEVELOPMENT |  |  | 4.30, 0.04, 0.40, 0.20 |
| TextBox | Other |  | OTHER_DEFECT |  |  | 4.72, 0.04, 0.53, 0.20 |
| TextBox | Disease |  | TOP_DISEASED |  |  | 5.28, 0.04, 0.64, 0.20 |
| TextBox | Ins Dmg |  | TOP_INSECT_DAMAGE |  |  | 5.95, 0.04, 0.41, 0.20 |
| TextBox | Bttl Brsh |  | TOP_BOTTLE_BRUSH |  |  | 6.38, 0.04, 0.45, 0.20 |
| TextBox | Multi Top |  | TOP_MULTIPLE_TOPS |  |  | 6.85, 0.04, 0.51, 0.20 |
| TextBox | Mec. Dmg |  | TOP_MECH_DAMAGE |  |  | 7.38, 0.04, 0.40, 0.20 |
| TextBox | Brnt Ndls |  | TOP_BURNT_NEEDLES |  |  | 7.80, 0.04, 0.53, 0.20 |
| TextBox | Rt Dis |  | ROOT_DISEASED |  |  | 8.36, 0.04, 0.55, 0.20 |
| TextBox | ROOT_INSECT_DAMAGE |  | ROOT_INSECT_DAMAGE |  |  | 8.92, 0.04, 0.47, 0.20 |
| TextBox | Mch Dmg |  | ROOT_MECH_DAMAGE |  |  | 9.41, 0.04, 0.43, 0.20 |
| TextBox | Nat Shrt |  | ROOT_NAT_SHORT |  |  | 9.86, 0.04, 0.40, 0.20 |
| TextBox | Swpt Rts |  | ROOT_SWEPT |  |  | 10.28, 0.04, 0.42, 0.20 |
| TextBox | Incidental |  | PRUNE_INCIDENTALS |  |  | 10.73, 0.04, 0.73, 0.20 |
| TextBox | Long |  | PRUNE_LONG |  |  | 11.48, 0.04, 0.40, 0.20 |
| TextBox | Lng Marg |  | PRUNE_LONG_MARGINAL |  |  | 11.91, 0.04, 0.58, 0.20 |
| TextBox | Short |  | PRUNE_SHORT |  |  | 12.50, 0.04, 0.39, 0.20 |
| TextBox | Shrt Marg |  | PRUNE_SHORT_MARGINAL |  |  | 12.91, 0.04, 0.63, 0.20 |
