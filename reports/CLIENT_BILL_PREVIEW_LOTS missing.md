# Report: CLIENT_BILL_PREVIEW_LOTS missing

**Caption:** CLIENT_BILL_Crosstab  
**Record source:**

```sql
CLIENT_BILL_PREVIEW_Crosstab
```

**Grouping/sorting:** `CLIENT`, `JOB_CODE`, `PRODUCT_DESC`, `LOT_ID`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label30 | CLIENT BILL REVIEW - Lots Processed - FY: |  |  |  | 3.50, 0.54, 2.86, 0.19 |
| TextBox | CLIENT | Client: | CLIENT |  |  | 0.67, 0.79, 0.62, 0.21 |
| Label | LOT_ID_Label | Nursery ID |  |  |  | 0.33, 1.00, 0.62, 0.54 |
| Label | CPROC  STANDARD_Label | Cntnr Proc |  |  |  | 1.62, 1.00, 0.54, 0.54 |
| Label | PACK  STANDARD_Label | Pack |  |  |  | 2.29, 1.00, 0.36, 0.54 |
| Label | PACK  SUBSPEC_Label | @Sub Spec |  |  |  | 2.79, 1.00, 0.54, 0.54 |
| Label | PACK  HIGRADE_Label | High Grade |  |  |  | 3.38, 1.00, 0.54, 0.54 |
| Label | PXPLT  STANDARD_Label | Xplt |  |  |  | 3.96, 1.00, 0.54, 0.54 |
| Label | PXPLT  SUBSPEC_Label | Xplt@ Sub |  |  |  | 4.54, 1.00, 0.54, 0.54 |
| Label | PXPLTO  STANDARD_Label | Hold |  |  |  | 1.04, 1.00, 0.54, 0.54 |
| Label | PXPLTO  SUBSPEC_Label | Green House |  |  |  | 5.71, 1.00, 0.54, 0.54 |
| Label | PXPLTP  STANDARD_Label | Xplt n  Pots |  |  |  | 5.12, 1.00, 0.54, 0.54 |
| Label | FDEST_Label | Field |  |  |  | 6.25, 1.00, 0.54, 0.54 |
| Label | PDEST_Label | Pre Cooler |  |  |  | 6.83, 1.00, 0.54, 0.54 |
| Label | PICKUP_Label | Pickup |  |  |  | 8.00, 1.00, 0.54, 0.54 |
| Label | SHIP_Label | Ship |  |  |  | 8.58, 1.00, 0.54, 0.54 |
| Line | Line40 |  |  |  |  | 0.12, 1.54, 10.28, 0.00 |
| Label | Label69 | Destruction |  |  |  | 5.70, 1.04, 2.26, 0.20 |
| Line | Line70 |  |  |  |  | 5.71, 1.04, 0.00, 0.50 |
| Line | Line71 |  |  |  |  | 8.01, 1.05, 0.00, 0.50 |
| Line | Line72 |  |  |  |  | 9.20, 1.04, 0.00, 0.50 |
| Label | Label73 | Transport |  |  |  | 8.00, 1.04, 1.12, 0.21 |
| Line | Line74 |  |  |  |  | 1.04, 1.04, 0.00, 0.50 |
| TextBox | Text75 |  | ASSOCIATE_NAME |  |  | 1.29, 0.79, 3.46, 0.21 |
| Label | Label77 | Processing Order and Product Grade  |  |  |  | 1.00, 1.04, 4.67, 0.20 |
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.79, 0.33, 2.56, 0.21 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 9.58, 0.00, 0.92, 0.00 |
| TextBox | REPORT_DATE |  | =Now() |  |  | 9.58, 0.17, 0.92, 0.00 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.83, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.71, 0.17, 2.78, 0.17 |
| Label | Label80 | Transplant |  |  |  | 9.21, 1.04, 1.12, 0.21 |
| TextBox | Text114 |  | =Forms!Switchboard!NMIS_FISCAL_YEAR_Current.Form!FISCAL_YEAR_NUMBER |  |  | 6.38, 0.54, 0.50, 0.21 |
| Label | Label116 |  Cooler |  |  |  | 7.42, 1.00, 0.54, 0.54 |
| Label | Label126 | in Pots |  |  |  | 9.79, 1.00, 0.54, 0.54 |
| Label | Label127 | @JHSN |  |  |  | 9.21, 1.00, 0.49, 0.53 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text43 | Job Code: | JOB_CODE |  |  | 0.88, 0.03, 1.62, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text45 | Product: | PRODUCT_DESC |  |  | 0.88, 0.03, 4.12, 0.19 |
| Line | Line66 |  |  |  |  | 5.71, 0.00, 0.00, 0.19 |
| Line | Line67 |  |  |  |  | 8.01, 0.03, 0.00, 0.19 |
| Line | Line68 |  |  |  |  | 9.20, 0.03, 0.00, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOT_ID |  | LOT_ID |  |  | 0.04, 0.00, 0.96, 0.00 |
| TextBox | CPROC  STANDARD |  | CPROC  STANDARD |  |  | 1.62, 0.00, 0.54, 0.00 |
| TextBox | PACK  STANDARD |  | PACK  STANDARD |  |  | 2.21, 0.00, 0.54, 0.00 |
| TextBox | PACK  SUBSPEC |  | PACK  SUBSPEC |  |  | 2.79, 0.00, 0.54, 0.00 |
| TextBox | PACK  HIGRADE |  | PACK  HIGRADE |  |  | 3.38, 0.00, 0.54, 0.00 |
| TextBox | PXPLT  STANDARD |  | PXPLT  STANDARD |  |  | 3.96, 0.00, 0.54, 0.00 |
| TextBox | PXPLT  SUBSPEC |  | PXPLT  SUBSPEC |  |  | 4.54, 0.00, 0.54, 0.00 |
| TextBox | HOLD |  | HOLD  STANDARD |  |  | 1.04, 0.00, 0.54, 0.00 |
| TextBox | CNDEST |  | CNDEST |  |  | 5.71, 0.00, 0.54, 0.00 |
| TextBox | PXPLTP  STANDARD |  | PXPLTP  STANDARD |  |  | 5.08, 0.00, 0.58, 0.00 |
| TextBox | FDEST |  | FDEST |  |  | 6.29, 0.00, 0.54, 0.00 |
| TextBox | PDEST |  | PDEST |  |  | 6.88, 0.00, 0.54, 0.00 |
| TextBox | PICKUP |  | PICKUP |  |  | 8.04, 0.00, 0.54, 0.00 |
| TextBox | SHIP |  | SHIP |  |  | 8.63, 0.00, 0.54, 0.00 |
| Line | Line62 |  |  |  |  | 5.71, 0.00, 0.00, 0.17 |
| Line | Line63 |  |  |  |  | 8.01, 0.00, 0.00, 0.17 |
| Line | Line64 |  |  |  |  | 9.20, 0.00, 0.00, 0.17 |
| Line | Line65 |  |  |  |  | 1.04, 0.00, 0.00, 0.17 |
| TextBox | Text125 |  | XPLTP |  |  | 9.83, 0.00, 0.54, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text48 |  | =Sum([CPROC  STANDARD]) |  |  | 1.62, 0.04, 0.54, 0.00 |
| TextBox | Text49 |  | =Sum([PACK  STANDARD]) |  |  | 2.21, 0.04, 0.54, 0.00 |
| TextBox | Text50 |  | =Sum([PACK  SUBSPEC]) |  |  | 2.79, 0.04, 0.54, 0.00 |
| TextBox | Text51 |  | =Sum([PACK  HIGRADE]) |  |  | 3.38, 0.04, 0.54, 0.00 |
| TextBox | Text52 |  | =Sum([PXPLT  STANDARD]) |  |  | 3.96, 0.04, 0.54, 0.00 |
| TextBox | Text53 |  | =Sum([PXPLT  SUBSPEC]) |  |  | 4.54, 0.04, 0.54, 0.00 |
| TextBox | Text54 |  | =Sum([HOLD  STANDARD]) |  |  | 1.04, 0.04, 0.54, 0.00 |
| TextBox | Text55 |  | =Sum([CNDEST]) |  |  | 5.71, 0.04, 0.54, 0.00 |
| TextBox | Text56 |  | =Sum([PXPLTP  STANDARD]) |  |  | 5.12, 0.04, 0.54, 0.00 |
| TextBox | Text57 |  | =Sum([FDEST]) |  |  | 6.29, 0.05, 0.54, 0.00 |
| TextBox | Text58 |  | =Sum([PDEST]) |  |  | 6.88, 0.05, 0.54, 0.00 |
| TextBox | Text59 |  | =Sum([PICKUP]) |  |  | 8.04, 0.05, 0.54, 0.00 |
| TextBox | Text60 |  | =Sum([SHIP]) |  |  | 8.63, 0.05, 0.54, 0.00 |
| Line | Line61 |  |  |  |  | 0.35, 0.00, 10.05, 0.00 |
| Label | Label79 | Product: |  |  |  | 0.00, 0.04, 0.96, 0.17 |
| TextBox | Text128 |  | =Sum([XPLTP]) |  |  | 9.83, 0.04, 0.54, 0.00 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text81 |  | =Sum([CPROC  STANDARD]) |  |  | 1.62, 0.04, 0.54, 0.00 |
| TextBox | Text82 |  | =Sum([PACK  STANDARD]) |  |  | 2.21, 0.04, 0.54, 0.00 |
| TextBox | Text83 |  | =Sum([PACK  SUBSPEC]) |  |  | 2.79, 0.04, 0.54, 0.00 |
| TextBox | Text84 |  | =Sum([PACK  HIGRADE]) |  |  | 3.38, 0.04, 0.54, 0.00 |
| TextBox | Text85 |  | =Sum([PXPLT  STANDARD]) |  |  | 3.96, 0.04, 0.54, 0.00 |
| TextBox | Text86 |  | =Sum([PXPLT  SUBSPEC]) |  |  | 4.54, 0.04, 0.54, 0.00 |
| TextBox | Text87 |  | =Sum([HOLD  STANDARD]) |  |  | 1.04, 0.04, 0.54, 0.00 |
| TextBox | Text88 |  | =Sum([PXPLTP  STANDARD]) |  |  | 5.12, 0.05, 0.54, 0.00 |
| TextBox | Text89 |  | =Sum([CNDEST]) |  |  | 5.71, 0.05, 0.54, 0.00 |
| TextBox | Text90 |  | =Sum([FDEST]) |  |  | 6.29, 0.05, 0.54, 0.00 |
| TextBox | Text91 |  | =Sum([PDEST]) |  |  | 6.88, 0.05, 0.54, 0.00 |
| TextBox | Text92 |  | =Sum([PICKUP]) |  |  | 8.04, 0.05, 0.54, 0.00 |
| TextBox | Text93 |  | =Sum([SHIP]) |  |  | 8.63, 0.05, 0.54, 0.00 |
| Line | Line94 |  |  |  |  | 1.00, 0.00, 9.40, 0.00 |
| Label | Label95 | Job Code  |  |  |  | 0.00, 0.05, 0.96, 0.17 |
| TextBox | Text129 |  | =Sum([XPLTP]) |  |  | 9.83, 0.04, 0.54, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text96 |  | =Sum([CPROC  STANDARD]) |  |  | 1.62, 0.08, 0.54, 0.00 |
| TextBox | Text97 |  | =Sum([PACK  STANDARD]) |  |  | 2.21, 0.08, 0.54, 0.00 |
| TextBox | Text98 |  | =Sum([PACK  SUBSPEC]) |  |  | 2.79, 0.08, 0.54, 0.00 |
| TextBox | Text99 |  | =Sum([PACK  HIGRADE]) |  |  | 3.38, 0.08, 0.54, 0.00 |
| TextBox | Text100 |  | =Sum([PXPLT  STANDARD]) |  |  | 3.96, 0.08, 0.54, 0.00 |
| TextBox | Text101 |  | =Sum([PXPLT  SUBSPEC]) |  |  | 4.54, 0.08, 0.54, 0.00 |
| TextBox | Text102 |  | =Sum([HOLD  STANDARD]) |  |  | 1.04, 0.08, 0.54, 0.00 |
| TextBox | Text103 |  | =Sum([CNDEST]) |  |  | 5.71, 0.08, 0.54, 0.00 |
| TextBox | Text104 |  | =Sum([PXPLTP  STANDARD]) |  |  | 5.12, 0.08, 0.54, 0.00 |
| TextBox | Text105 |  | =Sum([FDEST]) |  |  | 6.29, 0.08, 0.54, 0.00 |
| TextBox | Text106 |  | =Sum([PDEST]) |  |  | 6.88, 0.08, 0.54, 0.00 |
| TextBox | Text107 |  | =Sum([PICKUP]) |  |  | 8.04, 0.08, 0.54, 0.00 |
| TextBox | Text108 |  | =Sum([SHIP]) |  |  | 8.63, 0.08, 0.54, 0.00 |
| Line | Line109 |  |  |  |  | 1.00, 0.00, 9.40, 0.00 |
| Label | Label110 | Client Total: |  |  |  | 0.00, 0.08, 0.96, 0.17 |
| Line | Line111 |  |  |  |  | 1.00, 0.04, 9.40, 0.00 |
| TextBox | Text130 |  | =Sum([XPLTP]) |  |  | 9.83, 0.08, 0.54, 0.00 |
