# Report: oyjord_calibration_checklist

**Caption:** Calibration Checklist  
**Grouping/sorting:** `SOWING_GROUP`, `NMIS_SOURCE_LOTS.ID`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_SOURCE_LOTS`  
**Opened from (VBA):** `Form_Oyjord_Calibration`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_CODE_Label | Seed Lot ID |  |  |  | 0.96, 1.19, 0.97, 0.22 |
| Label | SOURCE_REQUIRED_Label | # Trays |  |  |  | 5.80, 1.04, 0.38, 0.36 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.71, 0.16, 2.81, 0.19 |
| TextBox | Text91 | Oyjord Calibration Checklist | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.49, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.49, 0.00, 3.24, 0.16 |
| Label | Label130 | CG |  |  |  | 2.96, 1.21, 0.42, 0.20 |
| Label | Label131 | Travel/ Rev  |  |  |  | 5.20, 1.04, 0.56, 0.36 |
| Label | Label132 | Total Wet Weight |  |  |  | 3.40, 1.04, 0.74, 0.36 |
| Label | Label133 | Rev Weight |  |  |  | 4.56, 1.04, 0.62, 0.36 |
| Label | Label177 |  Date |  |  |  | 0.00, 1.20, 0.95, 0.21 |
| Label | Label187 | # Revs |  |  |  | 4.17, 1.04, 0.39, 0.36 |
| Label | Label189 | Comments |  |  |  | 6.62, 1.21, 1.36, 0.20 |
| TextBox | Text303 |  | ="fy " & [Forms]![Oyjord_Calibration]![Begin_fy] |  |  | 2.46, 0.75, 3.30, 0.26 |
| Label | Label385 | Agreement Lot ID |  |  |  | 1.96, 1.04, 0.99, 0.36 |
| Label | Label468 | funl set |  |  |  | 6.22, 1.04, 0.38, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Source_lot_ID |  | NMIS_SOURCE_LOTS.ID |  |  | 0.96, 0.00, 0.99, 0.31 |
| TextBox | SOWING_GROUP |  | SG |  |  | 2.96, 0.00, 0.44, 0.31 |
| TextBox | Date |  | Date |  |  | 0.00, 0.00, 0.96, 0.31 |
| Rectangle | Box328 |  |  |  |  | 5.79, 0.00, 0.39, 0.31 |
| Rectangle | Box193 |  |  |  |  | 4.56, 0.00, 0.61, 0.31 |
| TextBox | Comments |  | Comments |  |  | 6.59, 0.00, 1.36, 0.31 |
| TextBox | CALIBRATION_SOURCE_UNITS |  | CALIBRATION_SOURCE_UNITS |  |  | 3.40, 0.00, 0.75, 0.31 |
| TextBox | CALIBRATION_REVS_USED |  | cru |  |  | 4.15, 0.00, 0.41, 0.31 |
| TextBox | CALIBRATION_TRAVEL_PER_REV |  | CALIBRATION_TRAVEL_PER_REV |  |  | 5.19, 0.00, 0.61, 0.31 |
| TextBox | Agreement_Lot_ID |  | NMIS_AGREEMENT_LOTS.ID |  |  | 1.95, 0.00, 1.01, 0.31 |
| TextBox | CALIBRATION_REV_SOURCE_UNITS |  | CALIBRATION_REV_SOURCE_UNITS |  |  | 4.55, 0.00, 0.62, 0.31 |
| TextBox | NUMBER_CALIBRATION_CONTAINERS |  | NUMBER_CALIBRATION_CONTAINERS |  |  | 5.79, 0.00, 0.38, 0.31 |
| TextBox | CALIBRATION_FUNNEL_SETTING_ID |  | CALIBRATION_FUNNEL_SETTING_ID |  |  | 6.19, 0.00, 0.40, 0.31 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.02, 1.99, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.11, 0.02, 2.87, 0.16 |
| Line | Line22 |  |  |  |  | 0.00, 0.00, 7.97, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text386 |  |  |  |  | 0.96, 0.00, 0.99, 0.31 |
| TextBox | Text387 |  |  |  |  | 2.96, 0.00, 0.44, 0.31 |
| TextBox | Text388 |  |  |  |  | 0.00, 0.00, 0.96, 0.31 |
| Rectangle | Box389 |  |  |  |  | 5.79, 0.00, 0.38, 0.31 |
| Rectangle | Box390 |  |  |  |  | 4.55, 0.00, 0.62, 0.31 |
| TextBox | Text391 |  |  |  |  | 6.59, 0.00, 1.36, 0.31 |
| TextBox | Text392 |  |  |  |  | 3.40, 0.00, 0.75, 0.31 |
| TextBox | Text393 |  |  |  |  | 4.15, 0.00, 0.41, 0.31 |
| TextBox | Text394 |  |  |  |  | 5.18, 0.00, 0.61, 0.31 |
| TextBox | Text395 |  |  |  |  | 1.95, 0.00, 1.01, 0.31 |
| TextBox | Text416 |  |  |  |  | 0.96, 0.31, 0.99, 0.31 |
| TextBox | Text417 |  |  |  |  | 2.96, 0.31, 0.44, 0.31 |
| TextBox | Text418 |  |  |  |  | 0.00, 0.31, 0.96, 0.31 |
| Rectangle | Box419 |  |  |  |  | 5.79, 0.31, 0.38, 0.31 |
| Rectangle | Box420 |  |  |  |  | 4.55, 0.31, 0.62, 0.31 |
| TextBox | Text421 |  |  |  |  | 6.59, 0.31, 1.36, 0.31 |
| TextBox | Text422 |  |  |  |  | 3.40, 0.31, 0.75, 0.31 |
| TextBox | Text423 |  |  |  |  | 4.15, 0.31, 0.41, 0.31 |
| TextBox | Text424 |  |  |  |  | 5.18, 0.31, 0.61, 0.31 |
| TextBox | Text425 |  |  |  |  | 1.95, 0.31, 1.01, 0.31 |
| TextBox | Text426 |  |  |  |  | 0.96, 0.62, 0.99, 0.31 |
| TextBox | Text427 |  |  |  |  | 2.96, 0.62, 0.44, 0.31 |
| TextBox | Text428 |  |  |  |  | 0.00, 0.63, 0.96, 0.31 |
| Rectangle | Box429 |  |  |  |  | 5.79, 0.62, 0.38, 0.31 |
| Rectangle | Box430 |  |  |  |  | 4.55, 0.62, 0.62, 0.31 |
| TextBox | Text431 |  |  |  |  | 6.59, 0.62, 1.36, 0.31 |
| TextBox | Text432 |  |  |  |  | 3.40, 0.62, 0.75, 0.31 |
| TextBox | Text433 |  |  |  |  | 4.15, 0.62, 0.41, 0.31 |
| TextBox | Text434 |  |  |  |  | 5.18, 0.62, 0.61, 0.31 |
| TextBox | Text435 |  |  |  |  | 1.95, 0.62, 1.01, 0.31 |
| TextBox | Text436 |  |  |  |  | 0.96, 0.94, 0.99, 0.31 |
| TextBox | Text437 |  |  |  |  | 2.96, 0.94, 0.44, 0.31 |
| TextBox | Text438 |  |  |  |  | 0.00, 0.94, 0.96, 0.31 |
| Rectangle | Box439 |  |  |  |  | 5.79, 0.94, 0.38, 0.31 |
| Rectangle | Box440 |  |  |  |  | 4.55, 0.94, 0.62, 0.31 |
| TextBox | Text441 |  |  |  |  | 6.59, 0.94, 1.36, 0.31 |
| TextBox | Text442 |  |  |  |  | 3.40, 0.94, 0.75, 0.31 |
| TextBox | Text443 |  |  |  |  | 4.15, 0.94, 0.41, 0.31 |
| TextBox | Text444 |  |  |  |  | 5.18, 0.94, 0.61, 0.31 |
| TextBox | Text445 |  |  |  |  | 1.95, 0.94, 1.01, 0.31 |
| TextBox | Text446 |  |  |  |  | 0.96, 1.25, 0.99, 0.31 |
| TextBox | Text447 |  |  |  |  | 2.96, 1.25, 0.44, 0.31 |
| TextBox | Text448 |  |  |  |  | 0.00, 1.25, 0.96, 0.31 |
| Rectangle | Box449 |  |  |  |  | 5.79, 1.25, 0.38, 0.31 |
| Rectangle | Box450 |  |  |  |  | 4.55, 1.25, 0.62, 0.31 |
| TextBox | Text451 |  |  |  |  | 6.59, 1.25, 1.36, 0.31 |
| TextBox | Text452 |  |  |  |  | 3.40, 1.25, 0.75, 0.31 |
| TextBox | Text453 |  |  |  |  | 4.15, 1.25, 0.41, 0.31 |
| TextBox | Text454 |  |  |  |  | 5.18, 1.25, 0.61, 0.31 |
| TextBox | Text455 |  |  |  |  | 1.95, 1.25, 1.01, 0.31 |
| TextBox | Text456 |  |  |  |  | 0.96, 1.56, 0.99, 0.31 |
| TextBox | Text457 |  |  |  |  | 2.96, 1.56, 0.44, 0.31 |
| TextBox | Text458 |  |  |  |  | 0.00, 1.56, 0.96, 0.31 |
| Rectangle | Box459 |  |  |  |  | 5.79, 1.56, 0.38, 0.31 |
| Rectangle | Box460 |  |  |  |  | 4.55, 1.56, 0.62, 0.31 |
| TextBox | Text461 |  |  |  |  | 6.59, 1.56, 1.36, 0.31 |
| TextBox | Text462 |  |  |  |  | 3.40, 1.56, 0.75, 0.31 |
| TextBox | Text463 |  |  |  |  | 4.15, 1.56, 0.41, 0.31 |
| TextBox | Text464 |  |  |  |  | 5.18, 1.56, 0.61, 0.31 |
| TextBox | Text465 |  |  |  |  | 1.95, 1.56, 1.01, 0.31 |
| Rectangle | Box471 |  |  |  |  | 6.18, 0.00, 0.42, 0.31 |
| Rectangle | Box472 |  |  |  |  | 6.18, 0.31, 0.42, 0.31 |
| Rectangle | Box473 |  |  |  |  | 6.18, 0.62, 0.42, 0.31 |
| Rectangle | Box474 |  |  |  |  | 6.18, 0.94, 0.42, 0.31 |
| Rectangle | Box475 |  |  |  |  | 6.18, 1.25, 0.42, 0.31 |
| Rectangle | Box476 |  |  |  |  | 6.18, 1.56, 0.42, 0.31 |
