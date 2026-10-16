# Form: H_ASF_from_source

**Caption:** ASF  
**Record source:**

```sql
SELECT NMIS_SOURCE_PERFORMANCE.*, IIf(IsNull([PRODUCT_CLASS]),"Unknown",[PRODUCT_CLASS]) AS PC FROM NMIS_PRODUCTS RIGHT JOIN (NMIS_SOURCE_PERFORMANCE LEFT JOIN NMIS_SPECIES_PRODUCTS ON NMIS_SOURCE_PERFORMANCE.SPECIES_PRODUCT_CN = NMIS_SPECIES_PRODUCTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_SOURCE_PERFORMANCE.SOURCE_CN)=[Forms]![NMIS_SOURCE_LOTS]![SOURCE_LOT_CN])) ORDER BY NMIS_SOURCE_PERFORMANCE.BEGIN_FY, NMIS_SOURCE_PERFORMANCE.END_FY, NMIS_SOURCE_PERFORMANCE.LOT_ID;
```

**Backend tables referenced:** `NMIS_PRODUCTS`, `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_PERFORMANCE`, `NMIS_SPECIES_PRODUCTS`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Adjusted Sowing Factor |  |  |  | 5.38, 0.12, 2.46, 0.27 |
| Line | Line12 |  |  |  |  | 0.05, 0.54, 12.15, 0.00 |
| Label | Label22 | Source ID: |  |  |  | 0.19, 0.18, 0.75, 0.21 |
| Label | Label23 | Begin FY |  |  |  | 0.44, 0.64, 0.45, 0.36 |
| TextBox | SOURCE_ID |  | SOURCE_ID |  |  | 1.00, 0.15, 1.77, 0.28 |
| Label | Label24 | Lot ID |  |  |  | 1.42, 0.64, 1.12, 0.38 |
| Label | Label25 | Gross Calc |  |  |  | 5.94, 0.64, 0.72, 0.38 |
| Label | Label26 |  Gross Inv  |  |  |  | 6.70, 0.64, 0.72, 0.38 |
| Label | Label27 |  Net   Calc  |  |  |  | 8.11, 0.64, 0.74, 0.38 |
| Label | Label28 |     Net   Inv |  |  |  | 8.90, 0.64, 0.74, 0.38 |
| Label | Label29 | Location |  |  |  | 9.68, 0.64, 0.99, 0.38 |
| Label | Label31 | Use |  |  |  | 0.07, 0.64, 0.32, 0.38 |
| Label | Label32 | Est. Cont. |  |  |  | 10.71, 0.64, 0.50, 0.36 |
| Label | Label33 | Act. Cont. |  |  |  | 11.25, 0.64, 0.50, 0.36 |
| Label | Label34 | Type |  |  |  | 11.79, 0.64, 0.41, 0.38 |
| Label | Label35 | Product Class |  |  |  | 2.58, 0.64, 1.12, 0.38 |
| Label | Label36 |  ASF Used |  |  |  | 5.50, 0.64, 0.40, 0.36 |
| Label | Label38 | Perfor- mance |  |  |  | 7.46, 0.64, 0.61, 0.38 |
| Label | Label46 |  HF1 Used |  |  |  | 4.19, 0.64, 0.40, 0.36 |
| Label | Label48 |  HF2 Used |  |  |  | 4.62, 0.64, 0.40, 0.36 |
| Label | Label50 |  HF3 Used |  |  |  | 5.06, 0.64, 0.40, 0.36 |
| Label | Label52 |  Ger Used |  |  |  | 3.75, 0.64, 0.40, 0.36 |
| Label | Label54 | End FY |  |  |  | 0.93, 0.64, 0.45, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | BEGIN_FY |  | BEGIN_FY |  |  | 0.45, 0.03, 0.45, 0.23 |
| TextBox | LOT_ID |  | LOT_ID |  |  | 1.42, 0.03, 1.10, 0.24 |
| TextBox | Gross_Calc |  | Gross_Calc |  |  | 5.94, 0.03, 0.70, 0.23 |
| TextBox | Inv_Gross |  | GROSS_INV |  |  | 6.70, 0.03, 0.70, 0.23 |
| TextBox | Net_Calc |  | Net_Calc |  |  | 8.11, 0.03, 0.72, 0.23 |
| TextBox | Inv_Net |  | NET_INV |  |  | 8.90, 0.03, 0.72, 0.23 |
| TextBox | Loc |  | Loc |  |  | 9.68, 0.03, 0.97, 0.24 |
| CheckBox | USED |  | USE |  | AfterUpdate | 0.19, 0.09, 0.00, 0.00 |
| TextBox | Est_Grow_Containers |  | Est_Grow_Containers |  |  | 10.71, 0.03, 0.50, 0.23 |
| TextBox | Act_Grow_Containers |  | Act_Cont |  |  | 11.25, 0.03, 0.50, 0.23 |
| TextBox | BorC |  | BorC |  |  | 11.79, 0.03, 0.38, 0.24 |
| TextBox | PRODUCT_CLASS |  | PC |  |  | 2.58, 0.03, 1.10, 0.24 |
| TextBox | ASF_USED |  | HARVEST_ASF_ADJUSTMENT |  |  | 5.50, 0.03, 0.40, 0.22 |
| TextBox | Performance |  | =Round([Inv_Gross]/[Gross_Calc]*100,2) |  |  | 7.47, 0.03, 0.57, 0.23 |
| TextBox | Perf_Used |  | =Round(([Inv_Gross]/[Gross_Calc]*Abs([USED]))*100,2) |  |  | 2.79, 0.04, 0.87, 0.21 |
| TextBox | USE |  | =Abs([USED]) |  |  | 9.96, 0.04, 0.87, 0.21 |
| TextBox | HF1_USED |  | HARVEST_FACTOR_1 |  |  | 4.19, 0.03, 0.40, 0.22 |
| TextBox | HF2_USED |  | HARVEST_FACTOR_2 |  |  | 4.62, 0.03, 0.40, 0.22 |
| TextBox | HF3_USED |  | HARVEST_FACTOR_3 |  |  | 5.06, 0.03, 0.40, 0.22 |
| TextBox | Text53 |  | SOURCE_GERM_PCT |  |  | 3.75, 0.03, 0.40, 0.22 |
| TextBox | Text55 |  | END_FY |  |  | 0.94, 0.03, 0.45, 0.23 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AVERAGE_ASF |  | =IIf(Abs(Sum([use]))>0,Round(Sum(Round(([GROSS_INV]/[Gross_Calc]*Abs([USE]))*100,2))/Sum(Abs([USE])),2),"NA") |  | DblClick | 7.17, 0.06, 0.87, 0.21 |
| TextBox | USE_SUM |  | =Sum([USE]) |  |  | 10.85, 0.04, 0.87, 0.21 |
| Label | Label45 | Average Performance: |  |  |  | 5.53, 0.06, 1.55, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub AVERAGE_ASF_DblClick(Cancel As Integer)

    Forms![NMIS_AGREEMENT_LOTS]![HARVEST_ASF_ADJUSTMENT] = Round(AVERAGE_ASF, 0)
    
End Sub

Private Sub USED_AfterUpdate()

    USE_SUM.Requery
    AVERAGE_ASF.Requery
    Requery

End Sub
```
