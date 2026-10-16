# Report: Oyjord_Calibration_Checklist_bu

**Caption:** Strafification Recordr  
**Grouping/sorting:** `SOWING_GROUP`, `ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_CODE_Label | Seed ID |  |  |  | 0.98, 1.21, 1.01, 0.20 |
| Label | SOURCE_REQUIRED_Label | # Trays |  |  |  | 5.05, 1.04, 0.42, 0.36 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.71, 0.16, 2.81, 0.19 |
| TextBox | Text91 | Agreement Lot Oyjord Calibration Checklist | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.49, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.49, 0.00, 3.24, 0.16 |
| Label | Label130 | CG |  |  |  | 2.00, 1.21, 0.42, 0.20 |
| Label | Label131 | Travel/ Rev  |  |  |  | 4.30, 1.04, 0.75, 0.36 |
| Label | Label132 | Total Wet Weight |  |  |  | 2.44, 1.04, 0.74, 0.36 |
| Label | Label133 | Rev Weight |  |  |  | 3.60, 1.04, 0.71, 0.36 |
| Label | Label177 |  Date |  |  |  | 0.04, 1.20, 0.95, 0.21 |
| Label | Label187 | # Revs |  |  |  | 3.21, 1.04, 0.39, 0.36 |
| Label | Label189 | Comments |  |  |  | 5.49, 1.21, 2.45, 0.20 |
| TextBox | Text303 |  | ="fy " & [Forms]![Oyjord_Calibration]![Begin_fy] |  |  | 2.46, 0.75, 3.30, 0.26 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Forest |  | ID |  |  | 1.00, 0.00, 0.99, 0.31 |
| TextBox | ABS_Activity_Units |  | SOWING_GROUP |  |  | 2.00, 0.00, 0.44, 0.31 |
| TextBox | Agreement_Lot_ID |  | Date |  |  | 0.04, 0.00, 0.96, 0.31 |
| Rectangle | Box328 |  |  |  |  | 5.03, 0.00, 0.45, 0.31 |
| Rectangle | Box193 |  |  |  |  | 3.60, 0.00, 0.71, 0.31 |
| TextBox | Text238 |  | Comments |  |  | 5.49, 0.00, 2.45, 0.31 |
| TextBox | Text299 |  | CALIBRATION_SOURCE_UNITS |  |  | 2.44, 0.00, 0.75, 0.31 |
| TextBox | Text300 |  | CALIBRATION_REVS_USED |  |  | 3.19, 0.00, 0.41, 0.31 |
| TextBox | Text301 |  | CALIBRATION_TRAVEL_PER_REV |  |  | 4.32, 0.00, 0.70, 0.31 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 1.32, 0.02, 1.99, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.09, 0.02, 2.87, 0.16 |
| Line | Line22 |  |  |  |  | 0.05, 0.00, 7.87, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text337 |  |  |  |  | 4.32, 0.00, 0.70, 0.31 |
| TextBox | Text336 |  |  |  |  | 3.19, 0.00, 0.41, 0.31 |
| TextBox | Text335 |  |  |  |  | 2.44, 0.00, 0.75, 0.31 |
| TextBox | Text334 |  |  |  |  | 5.49, 0.00, 2.45, 0.31 |
| Rectangle | Box333 |  |  |  |  | 3.60, 0.00, 0.71, 0.31 |
| Rectangle | Box332 |  |  |  |  | 5.03, 0.00, 0.45, 0.31 |
| TextBox | Text331 |  |  |  |  | 0.04, 0.00, 0.96, 0.31 |
| TextBox | Text330 |  |  |  |  | 2.00, 0.00, 0.44, 0.31 |
| TextBox | Text329 |  |  |  |  | 1.00, 0.00, 0.99, 0.31 |
| TextBox | Text338 |  |  |  |  | 4.32, 0.31, 0.70, 0.31 |
| TextBox | Text339 |  |  |  |  | 3.19, 0.31, 0.41, 0.31 |
| TextBox | Text340 |  |  |  |  | 2.44, 0.31, 0.75, 0.31 |
| TextBox | Text341 |  |  |  |  | 5.49, 0.31, 2.45, 0.31 |
| Rectangle | Box342 |  |  |  |  | 3.60, 0.31, 0.71, 0.31 |
| Rectangle | Box343 |  |  |  |  | 5.03, 0.31, 0.45, 0.31 |
| TextBox | Text344 |  |  |  |  | 0.04, 0.31, 0.96, 0.31 |
| TextBox | Text345 |  |  |  |  | 2.00, 0.31, 0.44, 0.31 |
| TextBox | Text346 |  |  |  |  | 1.00, 0.31, 0.99, 0.31 |
| TextBox | Text347 |  |  |  |  | 4.32, 0.62, 0.70, 0.31 |
| TextBox | Text348 |  |  |  |  | 3.19, 0.62, 0.41, 0.31 |
| TextBox | Text349 |  |  |  |  | 2.44, 0.62, 0.75, 0.31 |
| TextBox | Text350 |  |  |  |  | 5.49, 0.62, 2.45, 0.31 |
| Rectangle | Box351 |  |  |  |  | 3.60, 0.62, 0.71, 0.31 |
| Rectangle | Box352 |  |  |  |  | 5.03, 0.62, 0.45, 0.31 |
| TextBox | Text353 |  |  |  |  | 0.04, 0.63, 0.96, 0.31 |
| TextBox | Text354 |  |  |  |  | 2.00, 0.62, 0.44, 0.31 |
| TextBox | Text355 |  |  |  |  | 1.00, 0.62, 0.99, 0.31 |
| TextBox | Text356 |  |  |  |  | 4.32, 0.94, 0.70, 0.31 |
| TextBox | Text357 |  |  |  |  | 3.19, 0.94, 0.41, 0.31 |
| TextBox | Text358 |  |  |  |  | 2.44, 0.94, 0.75, 0.31 |
| TextBox | Text359 |  |  |  |  | 5.49, 0.94, 2.45, 0.31 |
| Rectangle | Box360 |  |  |  |  | 3.60, 0.94, 0.71, 0.31 |
| Rectangle | Box361 |  |  |  |  | 5.03, 0.94, 0.45, 0.31 |
| TextBox | Text362 |  |  |  |  | 0.04, 0.94, 0.96, 0.31 |
| TextBox | Text363 |  |  |  |  | 2.00, 0.94, 0.44, 0.31 |
| TextBox | Text364 |  |  |  |  | 1.00, 0.94, 0.99, 0.31 |
| TextBox | Text365 |  |  |  |  | 4.32, 1.25, 0.70, 0.31 |
| TextBox | Text366 |  |  |  |  | 3.19, 1.25, 0.41, 0.31 |
| TextBox | Text367 |  |  |  |  | 2.44, 1.25, 0.75, 0.31 |
| TextBox | Text368 |  |  |  |  | 5.49, 1.25, 2.45, 0.31 |
| Rectangle | Box369 |  |  |  |  | 3.60, 1.25, 0.71, 0.31 |
| Rectangle | Box370 |  |  |  |  | 5.03, 1.25, 0.45, 0.31 |
| TextBox | Text371 |  |  |  |  | 0.04, 1.25, 0.96, 0.31 |
| TextBox | Text372 |  |  |  |  | 2.00, 1.25, 0.44, 0.31 |
| TextBox | Text373 |  |  |  |  | 1.00, 1.25, 0.99, 0.31 |
| TextBox | Text374 |  |  |  |  | 4.32, 1.56, 0.70, 0.31 |
| TextBox | Text375 |  |  |  |  | 3.19, 1.56, 0.41, 0.31 |
| TextBox | Text376 |  |  |  |  | 2.44, 1.56, 0.75, 0.31 |
| TextBox | Text377 |  |  |  |  | 5.49, 1.56, 2.45, 0.31 |
| Rectangle | Box378 |  |  |  |  | 3.60, 1.56, 0.71, 0.31 |
| Rectangle | Box379 |  |  |  |  | 5.03, 1.56, 0.45, 0.31 |
| TextBox | Text380 |  |  |  |  | 0.04, 1.56, 0.96, 0.31 |
| TextBox | Text381 |  |  |  |  | 2.00, 1.56, 0.44, 0.31 |
| TextBox | Text382 |  |  |  |  | 1.00, 1.56, 0.99, 0.31 |
