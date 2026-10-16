# Report: Agreement_Lot_Sow_Order_Oyjord_Report

**Grouping/sorting:** `Cost_Center`, `SOWING_ORDER`, `SowGroup`, `PRODUCT_DESC`, `PLNTMSTR_SYMBOL`, `SPECIES_PRODUCT_DESC`, `Major_Client`, `SOURCE`, `SIZE_SPEC_STRING`  
**Subforms/subreports:** `Report.Agreement_Lot_Sow_Order_Oyjord_Sub_Report`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_AGREEMENT_LOTS_ID_Label | Agreement Lot ID |  |  |  | 0.00, 1.21, 1.01, 0.33 |
| Line | Line31 |  |  |  |  | 0.00, 1.57, 10.53, 0.00 |
| Label | Label87 | Gear |  |  |  | 4.91, 1.36, 0.33, 0.18 |
| Label | Label32 | Nursery Management Information System |  |  |  | 3.76, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.54, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.54, 0.00, 3.24, 0.16 |
| TextBox | Text102 |  | PageHeader |  |  | 1.17, 0.78, 8.12, 0.24 |
| TextBox | Cost_Center |  | CCHeader |  |  | 2.75, 0.55, 4.83, 0.23 |
| Label | Label155 | Total Weight |  |  |  | 1.24, 1.21, 0.47, 0.33 |
| Label | Label156 | Total Bed Length |  |  |  | 1.78, 1.06, 0.47, 0.48 |
| Label | Label157 | Weight 3 Revs |  |  |  | 2.32, 1.21, 0.52, 0.33 |
| Label | Label158 | Travel per Rev |  |  |  | 2.91, 1.06, 0.45, 0.48 |
| Label | Label159 | Variable Ratio Mark |  |  |  | 3.94, 1.06, 0.52, 0.48 |
| Label | Label160 | Turns past Mark |  |  |  | 4.46, 1.06, 0.45, 0.48 |
| Label | Label161 | Funnel Set/ Throttle |  |  |  | 5.25, 1.06, 0.52, 0.48 |
| Label | Label162 | Actual Bed Length |  |  |  | 5.78, 1.06, 0.52, 0.48 |
| Label | Label163 | Start Bed |  |  |  | 6.55, 1.21, 0.38, 0.33 |
| Label | Label164 | End Bed |  |  |  | 7.21, 1.21, 0.38, 0.33 |
| Label | Label165 | Comments |  |  |  | 8.33, 1.36, 0.70, 0.18 |
| Label | Label172 | Major Client |  |  |  | 9.73, 1.36, 0.77, 0.18 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | =[Vernacular_With_Code] & " " & [SPECIES_PRODUCT_DESC] |  |  | 0.12, 0.00, 6.50, 0.26 |
| TextBox | SPECIES_PRODUCT_DESC |  | SPECIES_PRODUCT_DESC |  |  | 7.54, 0.04, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | NMIS_AGREEMENT_LOTS_ID |  |  | 0.00, 0.01, 1.21, 0.44 |
| TextBox | CALIBRATION_REV_SOURCE_UNITS |  | CALIBRATION_REV_SOURCE_UNITS |  |  | 2.35, 0.01, 0.48, 0.44 |
| TextBox | EST_CONTAINERS_REQUIRED |  | EST_CONTAINERS_REQUIRED |  |  | 1.75, 0.01, 0.61, 0.44 |
| TextBox | CALIBRATION_SOURCE_UNITS |  | CALIBRATION_SOURCE_UNITS |  |  | 1.20, 0.01, 0.56, 0.44 |
| TextBox | CALIBRATION_TRAVEL_PER_REV |  | CALIBRATION_TRAVEL_PER_REV |  |  | 2.83, 0.01, 0.66, 0.44 |
| TextBox | CALIBRATION_FUNNEL_SETTING_ID |  | CALIBRATION_FUNNEL_SETTING_ID |  |  | 5.24, 0.01, 0.41, 0.44 |
| TextBox | Text167 |  |  |  |  | 7.75, 0.01, 1.96, 0.44 |
| TextBox | Text169 |  |  |  |  | 7.05, 0.01, 0.70, 0.44 |
| TextBox | Text170 |  |  |  |  | 6.35, 0.01, 0.70, 0.44 |
| TextBox | Text171 |  |  |  |  | 5.66, 0.01, 0.70, 0.44 |
| TextBox | Text173 |  | Major_Client |  |  | 9.71, 0.01, 0.81, 0.44 |
| Subform | Agreement_Lot_Sow_Order_Oyjord_Sub_Report |  | Report.Agreement_Lot_Sow_Order_Oyjord_Sub_Report |  |  | 3.50, 0.01, 1.75, 0.44 |
| TextBox | Text181 |  | NUMBER_CALIBRATION_CONTAINERS |  |  | 7.76, 0.03, 0.00, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.12, 0.08, 2.12, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.96, 0.05, 1.91, 0.18 |
| Line | Line30 |  |  |  |  | 0.00, 0.00, 10.43, 0.00 |
| TextBox | SowGroup |  | Pagefooter |  |  | 8.01, 0.00, 2.50, 0.26 |
| Label | Label178 | Preferred Settings |  |  |  | 2.38, 0.04, 1.25, 0.20 |
| Label | Label179 | Alternate Settings |  |  |  | 3.64, 0.04, 1.25, 0.20 |
