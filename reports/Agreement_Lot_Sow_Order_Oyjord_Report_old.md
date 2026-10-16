# Report: Agreement_Lot_Sow_Order_Oyjord_Report_old

**Caption:** AGREEMENT_LOT_SOWING_ORDER  
**Grouping/sorting:** `Cost_Center`, `SOWING_ORDER`, `SowGroup`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `Major_Client`, `SOURCE`, `SIZE_SPEC_STRING`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.00, 1.21, 0.88, 0.33 |
| Line | Line31 |  |  |  |  | 0.00, 1.57, 10.39, 0.00 |
| Label | Label87 | Gear |  |  |  | 4.33, 1.36, 0.33, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.63, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.42, 0.00, 3.24, 0.16 |
| TextBox | Text102 |  | PageHeader |  |  | 1.04, 0.78, 8.12, 0.24 |
| TextBox | Cost_Center |  | CCHeader |  |  | 2.62, 0.55, 4.83, 0.23 |
| Label | Label155 | Total Weight |  |  |  | 1.11, 1.21, 0.47, 0.33 |
| Label | Label156 | Total Bed Length |  |  |  | 1.66, 1.06, 0.47, 0.48 |
| Label | Label157 | Weight 3 Revs |  |  |  | 2.20, 1.21, 0.52, 0.33 |
| Label | Label158 | Travel per Rev |  |  |  | 2.78, 1.06, 0.45, 0.48 |
| Label | Label159 | Variable Ratio Mark |  |  |  | 3.33, 1.06, 0.52, 0.48 |
| Label | Label160 | Turns past Mark |  |  |  | 3.86, 1.06, 0.45, 0.48 |
| Label | Label161 | Funnel Set/ Throttle |  |  |  | 4.68, 1.06, 0.52, 0.48 |
| Label | Label162 | Actual Bed Length |  |  |  | 5.20, 1.06, 0.52, 0.48 |
| Label | Label163 | Start Bed |  |  |  | 6.01, 1.21, 0.38, 0.33 |
| Label | Label164 | End Bed |  |  |  | 6.67, 1.21, 0.38, 0.33 |
| Label | Label165 | Comments |  |  |  | 8.21, 1.36, 0.70, 0.18 |
| Label | Label172 | Client |  |  |  | 9.80, 1.36, 0.40, 0.18 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | =[Vernacular_With_Code] & " " & [SPECIES_PRODUCT_DESC] |  |  | 0.00, 0.00, 6.50, 0.26 |
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 7.42, 0.04, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | NMIS_AGREEMENT_LOTS_ID |  |  | 0.00, 0.00, 1.07, 0.26 |
| TextBox | CALIBRATION_REV_SOURCE_UNITS |  | CALIBRATION_REV_SOURCE_UNITS |  |  | 2.23, 0.00, 0.48, 0.26 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 1.62, 0.00, 0.61, 0.26 |
| TextBox | CALIBRATION_SOURCE_UNITS |  | CALIBRATION_SOURCE_UNITS |  |  | 1.07, 0.00, 0.56, 0.26 |
| TextBox | TURNS |  | TURNS |  |  | 3.85, 0.00, 0.47, 0.26 |
| TextBox | CALIBRATION_TRAVEL_PER_REV |  | CALIBRATION_TRAVEL_PER_REV |  |  | 2.71, 0.00, 0.66, 0.26 |
| TextBox | ZMAX |  | ZMAX |  |  | 3.36, 0.00, 0.49, 0.26 |
| TextBox | CALIBRATION_FUNNEL_SETTING_ID |  | CALIBRATION_FUNNEL_SETTING_ID |  |  | 4.72, 0.00, 0.41, 0.26 |
| TextBox | GEAR |  | GEAR |  |  | 4.33, 0.00, 0.39, 0.26 |
| TextBox | Text167 |  |  |  |  | 7.23, 0.00, 2.35, 0.26 |
| TextBox | Text169 |  |  |  |  | 6.53, 0.00, 0.70, 0.26 |
| TextBox | Text170 |  |  |  |  | 5.83, 0.00, 0.70, 0.26 |
| TextBox | Text171 |  |  |  |  | 5.14, 0.00, 0.70, 0.26 |
| TextBox | Text173 |  | Major_Client |  |  | 9.58, 0.00, 0.79, 0.26 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.08, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 3.51, 0.08, 3.28, 0.18 |
| Line | Line30 |  |  |  |  | 0.00, 0.00, 10.30, 0.00 |
| TextBox | SowGroup |  | Pagefooter |  |  | 7.89, 0.00, 2.50, 0.26 |
