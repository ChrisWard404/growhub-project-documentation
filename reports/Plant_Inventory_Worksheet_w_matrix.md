# Report: Plant_Inventory_Worksheet_w_matrix

**Grouping/sorting:** `B_or_C`, `MinOfLOCATION`, `MaxOfDIST_FROM_BED_BEG`, `Age_Class`, `ID`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Report.Plant_Inventory_Worksheet_Field_Location_Index Subform`, `Report.Plant_Inventory_Worksheet_Client_Associate Subreport`, `Report.Plant_Inventory_Size_Matrix_Blank_Subreport`  
**Opened from (VBA):** `Form_Plant_Inventory_Worksheets Form`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.59, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.38, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.38, 0.00, 3.24, 0.16 |
| TextBox | Text94 |  | =IIf([B_or_C]="B","Bareroot ","Container ") & "Inventory Worksheet" |  |  | 2.00, 0.55, 4.00, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label37 | 16 ____\|____     __,__\|__,__   41 ____\|____    __,__\|__,__      66 ____\|____    __,__\|__,__     91 ____\|____   __,__\|__,__ 17 ____\|____     __,__\|__,__   42 ____\|____    __,__\|__,__      67 ____\|____    __,__\|__,__     92 ____\|____   __,__\|__,__ 18 ____\|____     __,__\|__,__   43 ____\|____    __,__\|__,__      68 ____\|____    __,__\|__,__     93 ____\|____   __,__\|__,__ 19 ____\|____     __,__\|__,__   44 ____\|____    __,__\|__,__      69 ____\|____    __,__\|__,__     94 ____\|____   __,__\|__,__ 20 ____\|____     __,__\|__,__   45 ____\|____    __,__\|__,__      70 ____\|____    __,__\|__,__     95 ____\|____   __,__\|__,__ 21 ____\|____     __,__\|__,__   46 ____\|____    __,__\|__,__      71 ____\|____    __,__\|__,__     96 ____\|____   __,__\|__,__ 22 ____\|____     __,__\|__,__   47 ____\|____    __,__\|__,__      72 ____\|____    __,__\|__,__     97 ____\|____   __,__\|__,__ 23 ____\|____     __,__\|__,__   48 ____\|____    __,__\|__,__      73 ____\|____    __,__\|__,__     98 ____\|____   __,__\|__,__ 24 ____\|____     __,__\|__,__   49 ____\|____    __,__\|__,__      74 ____\|____    __,__\|__,__     99 ____\|____   __,__\|__,__ 25 ____\|____     __,__\|__,__   50 ____\|____    __,__\|__,__      75 ____\|____    __,__\|__,__   100 ____\|____   __,__\|__,__ |  |  |  | 0.25, 6.44, 7.59, 1.71 |
| Label | CLIENT_ASSOCIATE_Label | Client Associate(s): |  |  |  | 3.16, 0.28, 1.35, 0.19 |
| Subform | Plant_Inventory_Worksheet_Field_Location_Index Subform |  | Report.Plant_Inventory_Worksheet_Field_Location_Index Subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 6.24, 0.31, 1.65, 2.48 |
| Label | Label48 | Location |  |  |  | 6.21, 0.14, 0.49, 0.16 |
| Label | Label50 | Begin Index |  |  |  | 6.79, 0.01, 0.38, 0.28 |
| Label | Label56 | End Index |  |  |  | 7.20, 0.01, 0.35, 0.28 |
| Rectangle | Box53 |  |  |  |  | 0.20, 3.55, 7.67, 4.65 |
| Subform | Plant_Inventory_Worksheet_Client_Associate Subreport |  | Report.Plant_Inventory_Worksheet_Client_Associate Subreport (master: CN → child: AGREEMENT_LOT_CN) |  |  | 3.15, 0.49, 3.02, 1.75 |
| Label | Label30 | ******************************************************* Inventory Notes ***************************************************** |  |  |  | 0.00, 2.94, 7.88, 0.19 |
| Line | Line19 |  |  |  |  | 0.00, 2.86, 7.87, 0.01 |
| Label | Label72 | Gross (m): _____ |  |  |  | 4.54, 2.29, 1.58, 0.23 |
| Label | Label73 | Net (m): _____ |  |  |  | 4.71, 2.57, 1.42, 0.23 |
| Label | Label33 | Distance Between Plots:  ____ |  |  |  | 1.73, 3.33, 2.05, 0.19 |
| Label | Label34 | Starting Point: ____ |  |  |  | 0.18, 3.33, 1.35, 0.19 |
| Label | Label67 | Additional Plots: ____ |  |  |  | 4.20, 3.11, 1.50, 0.19 |
| Label | Label69 | Distance Between Plots:  ____ |  |  |  | 5.74, 3.33, 2.05, 0.19 |
| Label | Label70 | Starting Point: ____ |  |  |  | 4.20, 3.33, 1.35, 0.19 |
| Label | Label25 |   1 ____\|____     __,__\|__,__   26 ____\|____    __,__\|__,__      51 ____\|____    __,__\|__,__     76 ____\|____   __,__\|__,__   2 ____\|____     __,__\|__,__   27 ____\|____    __,__\|__,__      52 ____\|____    __,__\|__,__     77 ____\|____   __,__\|__,__   3 ____\|____     __,__\|__,__   28 ____\|____    __,__\|__,__      53 ____\|____    __,__\|__,__     78 ____\|____   __,__\|__,__   4 ____\|____     __,__\|__,__   29 ____\|____    __,__\|__,__      54 ____\|____    __,__\|__,__     79 ____\|____   __,__\|__,__   5 ____\|____     __,__\|__,__   30 ____\|____    __,__\|__,__      55 ____\|____    __,__\|__,__     80 ____\|____   __,__\|__,__   6 ____\|____     __,__\|__,__   31 ____\|____    __,__\|__,__      56 ____\|____    __,__\|__,__     81 ____\|____   __,__\|__,__   7 ____\|____     __,__\|__,__   32 ____\|____    __,__\|__,__      57 ____\|____    __,__\|__,__     82 ____\|____   __,__\|__,__   8 ____\|____     __,__\|__,__   33 ____\|____    __,__\|__,__      58 ____\|____    __,__\|__,__     83 ____\|____   __,__\|__,__   9 ____\|____     __,__\|__,__   34 ____\|____    __,__\|__,__      59 ____\|____    __,__\|__,__     84 ____\|____   __,__\|__,__ 10 ____\|____     __,__\|__,__   35 ____\|____    __,__\|__,__      60 ____\|____    __,__\|__,__     85 ____\|____   __,__\|__,__ 11 ____\|____     __,__\|__,__   36 ____\|____    __,__\|__,__      61 ____\|____    __,__\|__,__     86 ____\|____   __,__\|__,__ 12 ____\|____     __,__\|__,__   37 ____\|____    __,__\|__,__      62 ____\|____    __,__\|__,__     87 ____\|____   __,__\|__,__ 13 ____\|____     __,__\|__,__   38 ____\|____    __,__\|__,__      63 ____\|____    __,__\|__,__     88 ____\|____   __,__\|__,__ 14 ____\|____     __,__\|__,__   39 ____\|____    __,__\|__,__      64 ____\|____    __,__\|__,__     89 ____\|____   __,__\|__,__ 15 ____\|____     __,__\|__,__   40 ____\|____    __,__\|__,__      65 ____\|____    __,__\|__,__     90 ____\|____   __,__\|__,__ |  |  |  | 0.25, 3.94, 7.59, 2.58 |
| Label | Label76 | COUNT        No GOES                         -         + |  |  |  | 0.51, 3.59, 1.62, 0.37 |
| Label | Label78 | COUNT        No GOES                        -         + |  |  |  | 2.41, 3.59, 1.62, 0.37 |
| Label | Label79 | COUNT        No GOES                        -         + |  |  |  | 4.38, 3.59, 1.64, 0.37 |
| Label | Label80 | COUNT      No GOES                       -        + |  |  |  | 6.35, 3.59, 1.48, 0.36 |
| Label | Label26 | Inventory Crew ____ Comments: |  |  |  | 0.20, 8.25, 2.19, 0.19 |
| Label | Label63 | Inventoried By: ___________________________________________ |  |  |  | 2.35, 9.00, 4.43, 0.19 |
| Label | Label64 | Inventory Date: _____________ |  |  |  | 0.19, 9.00, 2.10, 0.19 |
| Label | Label68 | Husky #: _____ |  |  |  | 6.82, 9.00, 1.12, 0.19 |
| Label | Label133 |  Lot ID: |  |  |  | 0.38, 9.42, 0.32, 0.31 |
| TextBox | Text134 |  | Client_and_ID |  |  | 0.68, 9.45, 2.77, 0.28 |
| Label | Label47 | Ctnrs  |  |  |  | 7.55, 0.15, 0.35, 0.15 |
| Subform | Plant_Inventory_Size_Matrix_Blank_Subreport |  | Report.Plant_Inventory_Size_Matrix_Blank_Subreport |  |  | 0.41, 9.75, 7.09, 0.23 |
| TextBox | Text86 | Plots: | Plots |  |  | 2.12, 2.59, 0.55, 0.23 |
| TextBox | Text88 | Distance Between: | DistBetween |  |  | 3.93, 2.59, 0.58, 0.23 |
| TextBox | Text92 | Size Sample: | INV_SIZE_SAMPLE |  |  | 3.93, 2.33, 0.58, 0.23 |
| Label | ID_Label |  Lot ID: |  |  |  | 0.00, 0.29, 0.32, 0.35 |
| Label | TOTAL_REQUEST_Label | Total Request(M): |  |  |  | 0.00, 1.88, 1.16, 0.19 |
| Label | Label22 | Source: |  |  |  | 0.00, 0.95, 0.54, 0.19 |
| TextBox | ID |  | Client_and_ID |  |  | 0.31, 0.33, 2.77, 0.32 |
| TextBox | TOTAL_REQUEST |  | FirstOfTOTAL_REQUEST |  |  | 1.18, 1.86, 0.62, 0.23 |
| ComboBox | Combo21 |  | SOURCE_LOT_CN | SELECT Source_Lot_ID_and_Source_string.CN, Source_Lot_ID_and_Source_string.SOURCE FROM Source_Lot_ID_and_Source_string;  |  | 0.00, 1.14, 3.11, 0.23 |
| ComboBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, Species_Products_with_SizeSpecString.Species_Products_String_Long FROM NMIS_AGREEMENT_LOTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN=Species_Products_with_SizeSpecString.CN;  |  | 0.00, 1.63, 3.17, 0.19 |
| Label | Label52 | Group: |  |  |  | 0.00, 1.41, 0.46, 0.19 |
| ComboBox | Combo58 |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL=NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL);  |  | 0.00, 0.69, 3.11, 0.23 |
| TextBox | Text59 | Grow Unit: | UNIT_CODE |  |  | 1.92, 2.33, 1.06, 0.23 |
| Label | Label61 | Sown For(M): |  |  |  | 0.00, 2.13, 0.95, 0.19 |
| TextBox | Text62 |  | FirstOfActual_Sow_Calculated |  |  | 1.18, 2.11, 0.62, 0.23 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, "(" & [ID] & ")" AS ID2 FROM NMIS_SOURCE_LOTS;  |  | 0.58, 0.96, 2.49, 0.17 |
| TextBox | Age_Class_Condensed |  | Age_Class |  |  | 0.46, 1.39, 2.67, 0.23 |
| TextBox | Text96 | Year: | =[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_TEXT] |  |  | 0.42, 2.35, 0.58, 0.23 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 0.09, 3.04, 0.18 |
| TextBox | Text85 |  | Client_and_ID |  |  | 4.95, 0.00, 2.92, 0.34 |
| Line | Line124 |  |  |  |  | 0.00, 0.01, 7.92, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT2"
    DoCmd.SetWarnings True
    
End Sub
```
