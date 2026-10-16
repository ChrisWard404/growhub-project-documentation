# Report: Seed_Bank_Stratification_Record

**Grouping/sorting:** `StockType_Vernacular`, `Forest`, `Agreement_Lot_ID`  
**Opened from (VBA):** `Form_Seed_Sow_Withdrawal_Ticket Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_CODE_Label | Forest |  |  |  | 2.44, 1.00, 0.64, 0.20 |
| Label | SOURCE_REQUIRED_Label | Shelf Location |  |  |  | 6.99, 0.83, 0.90, 0.36 |
| Label | Label32 | Nursery Management Information System |  |  |  | 4.14, 0.16, 2.81, 0.19 |
| TextBox | Text91 | Agreement Lot Stratification Record | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.93, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 3.93, 0.00, 3.24, 0.16 |
| Label | Label130 | Lbs Seed  |  |  |  | 3.16, 0.83, 0.64, 0.36 |
| Label | Label131 | No. Bags  |  |  |  | 6.48, 0.83, 0.51, 0.36 |
| Label | Label132 | Soak Date |  |  |  | 3.85, 0.83, 0.65, 0.36 |
| Label | Label133 | Drydown Date |  |  |  | 5.11, 0.83, 0.69, 0.36 |
| Label | Label177 |   Ageement   Lot ID   |  |  |  | 1.32, 0.83, 1.11, 0.36 |
| Label | Label187 | Hours Soak  |  |  |  | 4.50, 0.83, 0.61, 0.36 |
| Label | Label188 | Date Out |  |  |  | 5.83, 1.00, 0.62, 0.20 |
| Label | Label189 | Remarks |  |  |  | 7.89, 0.83, 2.36, 0.36 |
| Line | Line299 |  |  |  |  | 1.33, 1.25, 8.92, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_CLASS |  | StockType_Vernacular |  |  | 3.38, 0.00, 4.14, 0.29 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Forest |  | Forest |  |  | 2.44, 0.00, 0.64, 0.31 |
| TextBox | ABS_Activity_Units |  | ABS_Activity_Units |  |  | 3.07, 0.00, 0.72, 0.31 |
| TextBox | Agreement_Lot_ID |  | Agreement_Lot_ID |  |  | 1.32, 0.00, 1.12, 0.31 |
| Rectangle | Box191 |  |  |  |  | 3.79, 0.00, 0.71, 0.31 |
| Rectangle | Box192 |  |  |  |  | 4.50, 0.00, 0.61, 0.31 |
| Rectangle | Box193 |  |  |  |  | 5.11, 0.00, 0.69, 0.31 |
| Rectangle | Box194 |  |  |  |  | 5.80, 0.00, 0.68, 0.31 |
| Rectangle | Box195 |  |  |  |  | 6.48, 0.00, 0.51, 0.31 |
| Rectangle | Box196 |  |  |  |  | 6.99, 0.00, 0.90, 0.31 |
| TextBox | Text238 |  | Agreement_Lot_ID_Unknown |  |  | 7.89, 0.00, 2.36, 0.31 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 1.33, 0.03, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.31, 0.03, 5.93, 0.16 |
| Line | Line22 |  |  |  |  | 1.34, 0.00, 8.91, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box239 |  |  |  |  | 3.80, 0.31, 0.71, 0.31 |
| Rectangle | Box240 |  |  |  |  | 4.51, 0.31, 0.61, 0.31 |
| Rectangle | Box241 |  |  |  |  | 5.12, 0.31, 0.69, 0.31 |
| Rectangle | Box242 |  |  |  |  | 5.81, 0.31, 0.68, 0.31 |
| Rectangle | Box243 |  |  |  |  | 6.49, 0.31, 0.51, 0.31 |
| Rectangle | Box244 |  |  |  |  | 7.00, 0.31, 0.90, 0.31 |
| Rectangle | Box245 |  |  |  |  | 7.90, 0.31, 2.36, 0.31 |
| Rectangle | Box246 |  |  |  |  | 1.33, 0.31, 1.12, 0.31 |
| Rectangle | Box247 |  |  |  |  | 2.45, 0.31, 0.64, 0.31 |
| Rectangle | Box248 |  |  |  |  | 3.08, 0.31, 0.72, 0.31 |
| Rectangle | Box249 |  |  |  |  | 3.80, 0.62, 0.71, 0.31 |
| Rectangle | Box250 |  |  |  |  | 4.51, 0.62, 0.61, 0.31 |
| Rectangle | Box251 |  |  |  |  | 5.12, 0.62, 0.69, 0.31 |
| Rectangle | Box252 |  |  |  |  | 5.81, 0.62, 0.68, 0.31 |
| Rectangle | Box253 |  |  |  |  | 6.49, 0.62, 0.51, 0.31 |
| Rectangle | Box254 |  |  |  |  | 7.00, 0.62, 0.90, 0.31 |
| Rectangle | Box255 |  |  |  |  | 7.90, 0.62, 2.36, 0.31 |
| Rectangle | Box256 |  |  |  |  | 1.33, 0.62, 1.12, 0.31 |
| Rectangle | Box257 |  |  |  |  | 2.45, 0.62, 0.64, 0.31 |
| Rectangle | Box258 |  |  |  |  | 3.08, 0.62, 0.72, 0.31 |
| Rectangle | Box259 |  |  |  |  | 3.80, 0.94, 0.71, 0.31 |
| Rectangle | Box260 |  |  |  |  | 4.51, 0.94, 0.61, 0.31 |
| Rectangle | Box261 |  |  |  |  | 5.12, 0.94, 0.69, 0.31 |
| Rectangle | Box262 |  |  |  |  | 5.81, 0.94, 0.68, 0.31 |
| Rectangle | Box263 |  |  |  |  | 6.49, 0.94, 0.51, 0.31 |
| Rectangle | Box264 |  |  |  |  | 7.00, 0.94, 0.90, 0.31 |
| Rectangle | Box265 |  |  |  |  | 7.90, 0.94, 2.36, 0.31 |
| Rectangle | Box266 |  |  |  |  | 1.33, 0.94, 1.12, 0.31 |
| Rectangle | Box267 |  |  |  |  | 2.45, 0.94, 0.64, 0.31 |
| Rectangle | Box268 |  |  |  |  | 3.08, 0.94, 0.72, 0.31 |
| Rectangle | Box269 |  |  |  |  | 3.80, 1.25, 0.71, 0.31 |
| Rectangle | Box270 |  |  |  |  | 4.51, 1.25, 0.61, 0.31 |
| Rectangle | Box271 |  |  |  |  | 5.12, 1.25, 0.69, 0.31 |
| Rectangle | Box272 |  |  |  |  | 5.81, 1.25, 0.68, 0.31 |
| Rectangle | Box273 |  |  |  |  | 6.49, 1.25, 0.51, 0.31 |
| Rectangle | Box274 |  |  |  |  | 7.00, 1.25, 0.90, 0.31 |
| Rectangle | Box275 |  |  |  |  | 7.90, 1.25, 2.36, 0.31 |
| Rectangle | Box276 |  |  |  |  | 1.33, 1.25, 1.12, 0.31 |
| Rectangle | Box277 |  |  |  |  | 2.45, 1.25, 0.64, 0.31 |
| Rectangle | Box278 |  |  |  |  | 3.08, 1.25, 0.72, 0.31 |
| Rectangle | Box279 |  |  |  |  | 3.80, 1.56, 0.71, 0.31 |
| Rectangle | Box280 |  |  |  |  | 4.51, 1.56, 0.61, 0.31 |
| Rectangle | Box281 |  |  |  |  | 5.12, 1.56, 0.69, 0.31 |
| Rectangle | Box282 |  |  |  |  | 5.81, 1.56, 0.68, 0.31 |
| Rectangle | Box283 |  |  |  |  | 6.49, 1.56, 0.51, 0.31 |
| Rectangle | Box284 |  |  |  |  | 7.00, 1.56, 0.90, 0.31 |
| Rectangle | Box285 |  |  |  |  | 7.90, 1.56, 2.36, 0.31 |
| Rectangle | Box286 |  |  |  |  | 1.33, 1.56, 1.12, 0.31 |
| Rectangle | Box287 |  |  |  |  | 2.45, 1.56, 0.64, 0.31 |
| Rectangle | Box288 |  |  |  |  | 3.08, 1.56, 0.72, 0.31 |
| Rectangle | Box289 |  |  |  |  | 3.80, 1.88, 0.71, 0.31 |
| Rectangle | Box290 |  |  |  |  | 4.51, 1.88, 0.61, 0.31 |
| Rectangle | Box291 |  |  |  |  | 5.12, 1.88, 0.69, 0.31 |
| Rectangle | Box292 |  |  |  |  | 5.81, 1.88, 0.68, 0.31 |
| Rectangle | Box293 |  |  |  |  | 6.49, 1.88, 0.51, 0.31 |
| Rectangle | Box294 |  |  |  |  | 7.00, 1.88, 0.90, 0.31 |
| Rectangle | Box295 |  |  |  |  | 7.90, 1.88, 2.36, 0.31 |
| Rectangle | Box296 |  |  |  |  | 1.33, 1.88, 1.12, 0.31 |
| Rectangle | Box297 |  |  |  |  | 2.45, 1.88, 0.64, 0.31 |
| Rectangle | Box298 |  |  |  |  | 3.08, 1.88, 0.72, 0.31 |
