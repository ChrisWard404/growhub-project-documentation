# Report: Processing_and_Shipping_Record_for_TP_Report

**Caption:** Processing and Shipping Record for TP Report  
**Record source:**

```sql
Processing_and_Shipping_for_TP_Record
```

**Grouping/sorting:** `ID`  
**Opened from (VBA):** `Form_Reports_Menu_Shipping Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label |                              ID |  |  |  | 0.00, 1.33, 1.28, 0.62 |
| Label | ID_SOURCE2_Label |                                                                                                 Source |  |  |  | 1.28, 1.33, 2.15, 0.62 |
| TextBox | PARENT_ASSOCIATE |  | Destination_Associate |  |  | 0.04, 1.02, 5.75, 0.29 |
| Label | Label32 | Nursery Management Information System |  |  |  | 4.90, 0.16, 2.81, 0.19 |
| Label | Label33 | Processing and Shipping Register |  |  |  | 5.22, 0.55, 2.91, 0.26 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 4.69, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 4.69, 0.00, 3.24, 0.16 |
| TextBox | Text18 |  | =Forms!Switchboard!FY_For_Reports |  |  | 4.59, 0.55, 0.58, 0.26 |
| Label | Label26 |                                                 Comments |  |  |  | 11.54, 1.33, 1.93, 0.62 |
| Label | Label29 | # of Bags/ Boxes |  |  |  | 3.96, 1.33, 0.54, 0.62 |
| Label | Label30 |        M's Packed |  |  |  | 4.50, 1.33, 0.56, 0.62 |
| Label | Label34 |        Ticket No. |  |  |  | 5.08, 1.33, 0.53, 0.62 |
| Label | Label35 |                       Out |  |  |  | 5.61, 1.33, 0.53, 0.62 |
| Label | Label36 |                        Bal |  |  |  | 6.15, 1.33, 0.53, 0.62 |
| Label | Label37 |        Ticket No. |  |  |  | 6.70, 1.33, 0.53, 0.62 |
| Label | Label38 |                       Out |  |  |  | 7.23, 1.33, 0.53, 0.62 |
| Label | Label39 |                        Bal |  |  |  | 7.76, 1.33, 0.53, 0.62 |
| Label | Label40 |        Ticket No. |  |  |  | 8.31, 1.33, 0.53, 0.62 |
| Label | Label41 |                       Out |  |  |  | 8.84, 1.33, 0.53, 0.62 |
| Label | Label42 |                        Bal |  |  |  | 9.38, 1.33, 0.53, 0.62 |
| Label | Label43 |        Ticket No. |  |  |  | 9.93, 1.33, 0.53, 0.62 |
| Label | Label44 |                       Out |  |  |  | 10.46, 1.33, 0.53, 0.62 |
| Label | Label45 |                        Bal |  |  |  | 10.99, 1.33, 0.53, 0.62 |
| Label | Label170 | Order Amt (M) |  |  |  | 3.43, 1.33, 0.53, 0.62 |
| Label | Label180 | N: = Nursery    C: = Client |  |  |  | 11.61, 1.78, 1.84, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID_SOURCE2 |  | SOURCE |  |  | 1.31, 0.23, 2.11, 0.00 |
| Rectangle | Box22 |  |  |  |  | 0.00, 0.00, 1.28, 0.40 |
| Rectangle | Box23 |  |  |  |  | 1.28, 0.00, 2.15, 0.40 |
| TextBox | NURSERY_NOTE |  | ALL_NOTES |  |  | 11.54, 0.00, 1.93, 0.40 |
| Label | Label60 |    |  |  |  | 3.96, 0.00, 0.54, 0.40 |
| Label | Label61 |          |  |  |  | 4.50, 0.00, 0.56, 0.40 |
| Label | Label62 |          |  |  |  | 5.08, 0.00, 0.53, 0.40 |
| Label | Label63 |                         |  |  |  | 5.61, 0.00, 0.53, 0.40 |
| Label | Label64 |                          |  |  |  | 6.15, 0.00, 0.53, 0.40 |
| Label | Label65 |          |  |  |  | 6.70, 0.00, 0.53, 0.40 |
| Label | Label66 |                         |  |  |  | 7.23, 0.00, 0.53, 0.40 |
| Label | Label67 |                          |  |  |  | 7.76, 0.00, 0.53, 0.40 |
| Label | Label68 |          |  |  |  | 8.31, 0.00, 0.53, 0.40 |
| Label | Label69 |                         |  |  |  | 8.84, 0.00, 0.53, 0.40 |
| Label | Label70 |                          |  |  |  | 9.38, 0.00, 0.53, 0.40 |
| Label | Label71 |          |  |  |  | 9.93, 0.00, 0.53, 0.40 |
| Label | Label72 |                         |  |  |  | 10.46, 0.00, 0.53, 0.40 |
| Label | Label73 |                          |  |  |  | 10.99, 0.00, 0.53, 0.40 |
| TextBox | Order |  | Order |  |  | 0.02, 0.00, 0.48, 0.00 |
| Label | Label172 |    |  |  |  | 3.43, 0.00, 0.53, 0.40 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  |  | 3.46, 0.21, 0.48, 0.19 |
| TextBox | Text179 |  | ACTIVITY_CODE |  |  | 3.46, 0.00, 0.48, 0.19 |
| TextBox | ID |  | ID |  |  | 0.00, 0.22, 1.28, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Now() |  |  | 0.04, 0.08, 3.50, 0.19 |
| TextBox | Text14 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 10.25, 0.08, 3.20, 0.21 |
| Line | Line74 |  |  |  |  | 0.04, 0.04, 13.46, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box184 |  |  |  |  | 0.00, 0.00, 1.28, 0.40 |
| Rectangle | Box185 |  |  |  |  | 1.28, 0.00, 2.15, 0.40 |
| Label | Label186 |    |  |  |  | 3.96, 0.00, 0.54, 0.40 |
| Label | Label187 |          |  |  |  | 4.50, 0.00, 0.56, 0.40 |
| Label | Label188 |          |  |  |  | 5.08, 0.00, 0.53, 0.40 |
| Label | Label189 |                         |  |  |  | 5.61, 0.00, 0.53, 0.40 |
| Label | Label190 |                          |  |  |  | 6.15, 0.00, 0.53, 0.40 |
| Label | Label191 |          |  |  |  | 6.70, 0.00, 0.53, 0.40 |
| Label | Label192 |                         |  |  |  | 7.23, 0.00, 0.53, 0.40 |
| Label | Label193 |                          |  |  |  | 7.76, 0.00, 0.53, 0.40 |
| Label | Label194 |          |  |  |  | 8.31, 0.00, 0.53, 0.40 |
| Label | Label195 |                         |  |  |  | 8.84, 0.00, 0.53, 0.40 |
| Label | Label196 |                          |  |  |  | 9.38, 0.00, 0.53, 0.40 |
| Label | Label197 |          |  |  |  | 9.93, 0.00, 0.53, 0.40 |
| Label | Label198 |                         |  |  |  | 10.46, 0.00, 0.53, 0.40 |
| Label | Label199 |                          |  |  |  | 10.99, 0.00, 0.53, 0.40 |
| Rectangle | Box200 |  |  |  |  | 11.54, 0.00, 1.93, 0.40 |
| Rectangle | Box201 |  |  |  |  | 0.00, 0.40, 1.28, 0.40 |
| Rectangle | Box202 |  |  |  |  | 1.28, 0.40, 2.15, 0.40 |
| Label | Label203 |    |  |  |  | 3.96, 0.40, 0.54, 0.40 |
| Label | Label204 |          |  |  |  | 4.50, 0.40, 0.56, 0.40 |
| Label | Label205 |          |  |  |  | 5.08, 0.40, 0.53, 0.40 |
| Label | Label206 |                         |  |  |  | 5.61, 0.40, 0.53, 0.40 |
| Label | Label207 |                          |  |  |  | 6.15, 0.40, 0.53, 0.40 |
| Label | Label208 |          |  |  |  | 6.70, 0.40, 0.53, 0.40 |
| Label | Label209 |                         |  |  |  | 7.23, 0.40, 0.53, 0.40 |
| Label | Label210 |                          |  |  |  | 7.76, 0.40, 0.53, 0.40 |
| Label | Label211 |          |  |  |  | 8.31, 0.40, 0.53, 0.40 |
| Label | Label212 |                         |  |  |  | 8.84, 0.40, 0.53, 0.40 |
| Label | Label213 |                          |  |  |  | 9.38, 0.40, 0.53, 0.40 |
| Label | Label214 |          |  |  |  | 9.93, 0.40, 0.53, 0.40 |
| Label | Label215 |                         |  |  |  | 10.46, 0.40, 0.53, 0.40 |
| Label | Label216 |                          |  |  |  | 10.99, 0.40, 0.53, 0.40 |
| Rectangle | Box217 |  |  |  |  | 11.54, 0.40, 1.93, 0.40 |
| Rectangle | Box218 |  |  |  |  | 0.00, 0.79, 1.28, 0.40 |
| Rectangle | Box219 |  |  |  |  | 1.28, 0.79, 2.15, 0.40 |
| Label | Label220 |    |  |  |  | 3.96, 0.79, 0.54, 0.40 |
| Label | Label221 |          |  |  |  | 4.50, 0.79, 0.56, 0.40 |
| Label | Label222 |          |  |  |  | 5.08, 0.79, 0.53, 0.40 |
| Label | Label223 |                         |  |  |  | 5.61, 0.79, 0.53, 0.40 |
| Label | Label224 |                          |  |  |  | 6.15, 0.79, 0.53, 0.40 |
| Label | Label225 |          |  |  |  | 6.70, 0.79, 0.53, 0.40 |
| Label | Label226 |                         |  |  |  | 7.23, 0.79, 0.53, 0.40 |
| Label | Label227 |                          |  |  |  | 7.76, 0.79, 0.53, 0.40 |
| Label | Label228 |          |  |  |  | 8.31, 0.79, 0.53, 0.40 |
| Label | Label229 |                         |  |  |  | 8.84, 0.79, 0.53, 0.40 |
| Label | Label230 |                          |  |  |  | 9.38, 0.79, 0.53, 0.40 |
| Label | Label231 |          |  |  |  | 9.93, 0.79, 0.53, 0.40 |
| Label | Label232 |                         |  |  |  | 10.46, 0.79, 0.53, 0.40 |
| Label | Label233 |                          |  |  |  | 10.99, 0.79, 0.53, 0.40 |
| Rectangle | Box234 |  |  |  |  | 11.54, 0.79, 1.93, 0.40 |
| Label | Label235 |    |  |  |  | 3.43, 0.00, 0.53, 0.40 |
| Label | Label236 |    |  |  |  | 3.43, 0.40, 0.53, 0.40 |
| Label | Label237 |    |  |  |  | 3.43, 0.79, 0.53, 0.40 |
| Rectangle | Box238 |  |  |  |  | 0.00, 1.19, 1.28, 0.40 |
| Rectangle | Box239 |  |  |  |  | 1.28, 1.19, 2.15, 0.40 |
| Label | Label240 |    |  |  |  | 3.96, 1.19, 0.54, 0.40 |
| Label | Label241 |          |  |  |  | 4.50, 1.19, 0.56, 0.40 |
| Label | Label242 |          |  |  |  | 5.08, 1.19, 0.53, 0.40 |
| Label | Label243 |                         |  |  |  | 5.61, 1.19, 0.53, 0.40 |
| Label | Label244 |                          |  |  |  | 6.15, 1.19, 0.53, 0.40 |
| Label | Label245 |          |  |  |  | 6.70, 1.19, 0.53, 0.40 |
| Label | Label246 |                         |  |  |  | 7.23, 1.19, 0.53, 0.40 |
| Label | Label247 |                          |  |  |  | 7.76, 1.19, 0.53, 0.40 |
| Label | Label248 |          |  |  |  | 8.31, 1.19, 0.53, 0.40 |
| Label | Label249 |                         |  |  |  | 8.84, 1.19, 0.53, 0.40 |
| Label | Label250 |                          |  |  |  | 9.38, 1.19, 0.53, 0.40 |
| Label | Label251 |          |  |  |  | 9.93, 1.19, 0.53, 0.40 |
| Label | Label252 |                         |  |  |  | 10.46, 1.19, 0.53, 0.40 |
| Label | Label253 |                          |  |  |  | 10.99, 1.19, 0.53, 0.40 |
| Rectangle | Box254 |  |  |  |  | 11.54, 1.19, 1.93, 0.40 |
| Rectangle | Box255 |  |  |  |  | 0.00, 1.58, 1.28, 0.40 |
| Rectangle | Box256 |  |  |  |  | 1.28, 1.58, 2.15, 0.40 |
| Label | Label257 |    |  |  |  | 3.96, 1.58, 0.54, 0.40 |
| Label | Label258 |          |  |  |  | 4.50, 1.58, 0.56, 0.40 |
| Label | Label259 |          |  |  |  | 5.08, 1.58, 0.53, 0.40 |
| Label | Label260 |                         |  |  |  | 5.61, 1.58, 0.53, 0.40 |
| Label | Label261 |                          |  |  |  | 6.15, 1.58, 0.53, 0.40 |
| Label | Label262 |          |  |  |  | 6.70, 1.58, 0.53, 0.40 |
| Label | Label263 |                         |  |  |  | 7.23, 1.58, 0.53, 0.40 |
| Label | Label264 |                          |  |  |  | 7.76, 1.58, 0.53, 0.40 |
| Label | Label265 |          |  |  |  | 8.31, 1.58, 0.53, 0.40 |
| Label | Label266 |                         |  |  |  | 8.84, 1.58, 0.53, 0.40 |
| Label | Label267 |                          |  |  |  | 9.38, 1.58, 0.53, 0.40 |
| Label | Label268 |          |  |  |  | 9.93, 1.58, 0.53, 0.40 |
| Label | Label269 |                         |  |  |  | 10.46, 1.58, 0.53, 0.40 |
| Label | Label270 |                          |  |  |  | 10.99, 1.58, 0.53, 0.40 |
| Rectangle | Box271 |  |  |  |  | 11.54, 1.58, 1.93, 0.40 |
| Rectangle | Box272 |  |  |  |  | 0.00, 1.98, 1.28, 0.40 |
| Rectangle | Box273 |  |  |  |  | 1.28, 1.98, 2.15, 0.40 |
| Label | Label274 |    |  |  |  | 3.96, 1.98, 0.54, 0.40 |
| Label | Label275 |          |  |  |  | 4.50, 1.98, 0.56, 0.40 |
| Label | Label276 |          |  |  |  | 5.08, 1.98, 0.53, 0.40 |
| Label | Label277 |                         |  |  |  | 5.61, 1.98, 0.53, 0.40 |
| Label | Label278 |                          |  |  |  | 6.15, 1.98, 0.53, 0.40 |
| Label | Label279 |          |  |  |  | 6.70, 1.98, 0.53, 0.40 |
| Label | Label280 |                         |  |  |  | 7.23, 1.98, 0.53, 0.40 |
| Label | Label281 |                          |  |  |  | 7.76, 1.98, 0.53, 0.40 |
| Label | Label282 |          |  |  |  | 8.31, 1.98, 0.53, 0.40 |
| Label | Label283 |                         |  |  |  | 8.84, 1.98, 0.53, 0.40 |
| Label | Label284 |                          |  |  |  | 9.38, 1.98, 0.53, 0.40 |
| Label | Label285 |          |  |  |  | 9.93, 1.98, 0.53, 0.40 |
| Label | Label286 |                         |  |  |  | 10.46, 1.98, 0.53, 0.40 |
| Label | Label287 |                          |  |  |  | 10.99, 1.98, 0.53, 0.40 |
| Rectangle | Box288 |  |  |  |  | 11.54, 1.98, 1.93, 0.40 |
| Label | Label289 |    |  |  |  | 3.43, 1.19, 0.53, 0.40 |
| Label | Label290 |    |  |  |  | 3.43, 1.58, 0.53, 0.40 |
| Label | Label291 |    |  |  |  | 3.43, 1.98, 0.53, 0.40 |
