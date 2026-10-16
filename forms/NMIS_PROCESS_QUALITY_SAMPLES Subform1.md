# Form: NMIS_PROCESS_QUALITY_SAMPLES Subform1

**Caption:** NMIS PROCESSING QUALITY  SAMPLES  
**Record source:**

```sql
SELECT NMIS_PROCESSING_QI_SAMPLES.* FROM NMIS_PROCESSING_QI_SAMPLES ORDER BY [NMIS_PROCESSING_QI_SAMPLES].[ORDER_CN], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_STATION], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_MODE], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_DATE], [NMIS_PROCESSING_QI_SAMPLES].[SAMPLE_TIME];
```

**Backend tables referenced:** `NMIS_ORDERS`, `NMIS_PROCESSING_QI_SAMPLES`  
**Embedded in:** `Form:NMIS_PROCESS_QUALITY_SAMPLES`  
**Opens:** `Form:NMIS_PROCESS_QUALITY_SAMPLES2`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SAMPLE_MODE | Sample Type: | SAMPLE_MODE |  |  | 1.42, 0.93, 0.23, 0.20 |
| TextBox | SAMPLE_STATION | Sample Station: | SAMPLE_STATION |  |  | 1.42, 0.68, 0.23, 0.20 |
| TextBox | SAMPLE_DATE | Pack Date: | SAMPLE_DATE |  |  | 1.41, 1.18, 0.64, 0.20 |
| TextBox | SAMPLE_TIME | Sample Time: | SAMPLE_TIME |  |  | 1.43, 1.43, 0.64, 0.20 |
| TextBox | SAMPLE_SIZE | Sample Size: | SAMPLE_SIZE |  |  | 1.41, 1.68, 0.64, 0.20 |
| TextBox | CALIPER_HALF | Caliper 1/2: | CALIPER_HALF |  |  | 4.96, 0.48, 0.39, 0.19 |
| TextBox | CALIPER | Caliper: | CALIPER |  |  | 4.96, 0.73, 0.39, 0.19 |
| TextBox | HEIGHT_HALF | Height 1/2: | HEIGHT_HALF |  |  | 4.96, 0.98, 0.39, 0.19 |
| TextBox | HEIGHT | Height: | HEIGHT |  |  | 4.96, 1.23, 0.39, 0.19 |
| TextBox | POOR_DEVELOPMENT | Poor Development: | POOR_DEVELOPMENT |  |  | 4.96, 1.48, 0.39, 0.19 |
| TextBox | OTHER_DEFECT | Other Defect: | OTHER_DEFECT |  |  | 4.96, 1.72, 0.39, 0.19 |
| TextBox | TOP_DISEASED | Diseased: | TOP_DISEASED |  |  | 7.17, 0.48, 0.30, 0.20 |
| TextBox | TOP_INSECT_DAMAGE | Insect Damage: | TOP_INSECT_DAMAGE |  |  | 7.17, 0.73, 0.30, 0.20 |
| TextBox | TOP_BOTTLE_BRUSH | Bottle Brush: | TOP_BOTTLE_BRUSH |  |  | 7.17, 0.98, 0.30, 0.20 |
| TextBox | TOP_MULTIPLE_TOPS | Multiple Tops: | TOP_MULTIPLE_TOPS |  |  | 7.17, 1.23, 0.30, 0.20 |
| TextBox | TOP_MECH_DAMAGE | Mechanical Damage: | TOP_MECH_DAMAGE |  |  | 7.17, 1.48, 0.30, 0.20 |
| TextBox | TOP_BURNT_NEEDLES | Burnt Needles: | TOP_BURNT_NEEDLES |  |  | 7.17, 1.73, 0.30, 0.20 |
| TextBox | ROOT_DISEASED | Diseased: | ROOT_DISEASED |  |  | 4.99, 2.61, 0.38, 0.22 |
| TextBox | ROOT_INSECT_DAMAGE | Insect Damage: | ROOT_INSECT_DAMAGE |  |  | 4.99, 2.86, 0.38, 0.22 |
| TextBox | ROOT_MECH_DAMAGE | Mechanical Damage: | ROOT_MECH_DAMAGE |  |  | 4.99, 3.11, 0.38, 0.22 |
| TextBox | ROOT_NAT_SHORT | Natural Short: | ROOT_NAT_SHORT |  |  | 4.99, 3.36, 0.38, 0.22 |
| TextBox | ROOT_SWEPT | Swept: | ROOT_SWEPT |  |  | 4.99, 3.61, 0.38, 0.22 |
| TextBox | PRUNE_INCIDENTALS | Prune:  | PRUNE_INCIDENTALS |  |  | 7.28, 2.63, 0.30, 0.20 |
| TextBox | PRUNE_LONG | Long: | PRUNE_LONG |  |  | 7.28, 2.89, 0.30, 0.20 |
| TextBox | PRUNE_LONG_MARGINAL | Long Marginal: | PRUNE_LONG_MARGINAL |  |  | 7.28, 3.14, 0.30, 0.20 |
| TextBox | PRUNE_SHORT | Short: | PRUNE_SHORT |  |  | 7.28, 3.39, 0.30, 0.20 |
| TextBox | PRUNE_SHORT_MARGINAL | Short Marginal: | PRUNE_SHORT_MARGINAL |  |  | 7.28, 3.64, 0.30, 0.20 |
| Rectangle | Box57 |  |  |  |  | 5.54, 0.12, 2.08, 1.88 |
| Label | Label58 | Tops |  |  |  | 6.24, 0.16, 0.62, 0.24 |
| Rectangle | Box59 |  |  |  |  | 3.36, 2.23, 2.08, 1.88 |
| Label | Label60 | Roots |  |  |  | 4.05, 2.27, 0.63, 0.24 |
| Rectangle | Box65 |  |  |  |  | 5.57, 2.23, 2.08, 1.88 |
| Label | Label66 | Prune |  |  |  | 6.25, 2.27, 0.65, 0.24 |
| Rectangle | Box67 |  |  |  |  | 3.35, 0.12, 2.08, 1.88 |
| Label | Label68 | Size |  |  |  | 4.03, 0.17, 0.64, 0.24 |
| Rectangle | Box76 |  |  |  |  | 0.17, 0.14, 2.08, 1.88 |
| ComboBox | ORDER_CN | Order ID: | ORDER_CN | SELECT [NMIS_ORDERS].[CN], Left$([CN],(Len([CN])-7)) AS [ORDER] FROM NMIS_ORDERS;  |  | 1.42, 0.29, 0.67, 0.20 |

## Code-behind (VBA)

```vb
Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub
```
