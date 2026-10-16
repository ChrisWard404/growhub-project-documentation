# Report: ACCOMPLISHMENT_REPORT

**Caption:** Accomplishment Report  
**Record source:**

```sql
SELECT [ACCOMPLISHMENT ct].REGION, [ACCOMPLISHMENT ct].CC, [ACCOMPLISHMENT ct].TYN, [ACCOMPLISHMENT ct].[Total Of AMOUNT], [ACCOMPLISHMENT ct].CDEST, [ACCOMPLISHMENT_NumLots ct].CDEST, [ACCOMPLISHMENT ct].FDEST, [ACCOMPLISHMENT_NumLots ct].FDEST, [ACCOMPLISHMENT ct].PDEST, [ACCOMPLISHMENT_NumLots ct].PDEST, [ACCOMPLISHMENT ct].PICKUP, [ACCOMPLISHMENT_NumLots ct].PICKUP, [ACCOMPLISHMENT ct].SDEST, [ACCOMPLISHMENT_NumLots ct].SDEST, [ACCOMPLISHMENT ct].SHIP, [ACCOMPLISHMENT_NumLots ct].SHIP, [ACCOMPLISHMENT ct].XFERTO, [ACCOMPLISHMENT_NumLots ct].XFERTO, [ACCOMPLISHMENT ct].XPLT, [ACCOMPLISHMENT_NumLots ct].XPLT, [ACCOMPLISHMENT ct].XPLTP, [ACCOMPLISHMENT_NumLots ct].XPLTP FROM [ACCOMPLISHMENT ct] INNER JOIN [ACCOMPLISHMENT_NumLots ct] ON ([ACCOMPLISHMENT ct].[Total Of AMOUNT] = [ACCOMPLISHMENT_NumLots ct].[Total Of AMOUNT]) AND ([ACCOMPLISHMENT ct].REGION = [ACCOMPLISHMENT_NumLots ct].REGION) AND ([ACCOMPLISHMENT ct].CC = [ACCOMPLISHMENT_NumLots ct].CC) AND ([ACCOMPLISHMENT ct].TYN = [ACCOMPLISHMENT_NumLots ct].TYN);
```

**Grouping/sorting:** `CC`, `TYN`, `REGION`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Reports_Menu_Misc Subform`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Accomplishment Report |  |  |  | 3.04, 0.79, 2.12, 0.21 |
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.79, 0.33, 2.56, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.83, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.71, 0.17, 2.78, 0.17 |
| TextBox | Text114 |  | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 4.25, 0.54, 0.50, 0.21 |
| Label | Text34 | Fiscal Year |  |  |  | 3.46, 0.54, 0.79, 0.21 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CDEST_Label | Cooler |  |  |  | 3.10, 0.25, 0.64, 0.20 |
| Label | FDEST_Label | Field |  |  |  | 1.71, 0.25, 0.67, 0.20 |
| Label | PDEST_Label | Pre-Cooler |  |  |  | 2.33, 0.25, 0.71, 0.20 |
| Label | PICKUP_Label | Pickup |  |  |  | 3.83, 0.25, 0.79, 0.20 |
| Label | SHIP_Label | Ship |  |  |  | 4.67, 0.25, 0.74, 0.20 |
| Label | XFERTO_Label | Transfer to New Lot |  |  |  | 5.50, 0.08, 0.77, 0.37 |
| Label | XPLT_Label | To Field |  |  |  | 6.31, 0.25, 0.74, 0.20 |
| Label | XPLTP_Label | To Pots |  |  |  | 7.15, 0.25, 0.75, 0.20 |
| Line | Line21 |  |  |  |  | 0.00, 0.46, 7.99, 0.00 |
| Label | Label23 | Destroy |  |  |  | 1.71, 0.04, 2.08, 0.20 |
| Label | Label24 | Distribution |  |  |  | 3.83, 0.04, 1.62, 0.20 |
| Label | Label25 | Transplant |  |  |  | 6.31, 0.04, 1.58, 0.20 |
| Line | Line26 |  |  |  |  | 3.83, 0.04, 0.00, 0.42 |
| Line | Line27 |  |  |  |  | 5.47, 0.04, 0.00, 0.42 |
| Line | Line28 |  |  |  |  | 6.31, 0.04, 0.00, 0.42 |
| Line | Line32 |  |  |  |  | 1.71, 0.25, 3.77, 0.00 |
| Line | Line33 |  |  |  |  | 6.31, 0.25, 1.68, 0.00 |
| Label | Label35 | Region |  |  |  | 0.00, 0.25, 1.56, 0.20 |
| Line | Line48 |  |  |  |  | 1.57, 0.04, 0.00, 0.42 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Cost_Center |  | CC | B;Bareroot;C;Container;CT;Container Contract;BR;Bareroot Contract |  | 0.00, 0.02, 3.22, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | TreeYN |  | TYN | T;Tree;N;Non-Tree |  | 0.02, 0.04, 1.95, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text36 |  | ACCOMPLISHMENT ct.CDEST |  |  | 3.09, 0.00, 0.43, 0.00 |
| TextBox | Text37 |  | ACCOMPLISHMENT ct.FDEST |  |  | 1.56, 0.00, 0.53, 0.00 |
| TextBox | Text38 |  | ACCOMPLISHMENT ct.PDEST |  |  | 2.39, 0.00, 0.42, 0.00 |
| TextBox | Text39 |  | ACCOMPLISHMENT ct.PICKUP |  |  | 3.83, 0.00, 0.49, 0.00 |
| TextBox | Text40 |  | ACCOMPLISHMENT ct.SHIP |  |  | 4.65, 0.00, 0.53, 0.00 |
| TextBox | Text41 |  | ACCOMPLISHMENT ct.XFERTO |  |  | 5.50, 0.00, 0.53, 0.00 |
| TextBox | Text42 |  | ACCOMPLISHMENT ct.XPLT |  |  | 6.31, 0.00, 0.53, 0.00 |
| TextBox | Text43 |  | ACCOMPLISHMENT ct.XPLTP |  |  | 7.15, 0.00, 0.53, 0.00 |
| Line | Line44 |  |  |  |  | 3.83, 0.00, 0.00, 0.20 |
| Line | Line45 |  |  |  |  | 5.47, 0.00, 0.00, 0.20 |
| Line | Line46 |  |  |  |  | 6.31, 0.00, 0.00, 0.20 |
| Line | Line49 |  |  |  |  | 1.57, 0.00, 0.00, 0.20 |
| ComboBox | Text47 |  | region | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.01, 0.01, 1.55, 0.16 |
| TextBox | Text83 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.PICKUP]),"/" & [ACCOMPLISHMENT_NumLots ct.PICKUP]) |  |  | 4.33, 0.00, 0.28, 0.00 |
| TextBox | Text84 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.FDEST]),"/" & [ACCOMPLISHMENT_NumLots ct.FDEST]) |  |  | 2.09, 0.00, 0.28, 0.00 |
| TextBox | Text85 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.PDEST]),"/" & [ACCOMPLISHMENT_NumLots ct.PDEST]) |  |  | 2.81, 0.00, 0.28, 0.00 |
| TextBox | Text86 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.CDEST]),"/" & [ACCOMPLISHMENT_NumLots ct.CDEST]) |  |  | 3.53, 0.00, 0.28, 0.00 |
| TextBox | Text87 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.SHIP]),"/" & [ACCOMPLISHMENT_NumLots ct.SHIP]) |  |  | 5.18, 0.00, 0.32, 0.00 |
| TextBox | Text88 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.XFERTO]),"/" & [ACCOMPLISHMENT_NumLots ct.XFERTO]) |  |  | 6.03, 0.00, 0.28, 0.00 |
| TextBox | Text89 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.XPLT]),"/" & [ACCOMPLISHMENT_NumLots ct.XPLT]) |  |  | 6.88, 0.00, 0.28, 0.00 |
| TextBox | Text90 |  | =IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.XPLTP]),"/" & [ACCOMPLISHMENT_NumLots ct.XPLTP]) |  |  | 7.70, 0.00, 0.28, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo60 |  | TYN | T;Tree Subtotals;N;Non-Tree Subtotals |  | 0.02, 0.03, 1.33, 0.20 |
| TextBox | Text61 |  | =Sum([ACCOMPLISHMENT ct].[CDEST]) |  |  | 3.09, 0.06, 0.43, 0.00 |
| TextBox | Text62 |  | =Sum([ACCOMPLISHMENT ct].[FDEST]) |  |  | 1.44, 0.06, 0.64, 0.00 |
| TextBox | Text63 |  | =Sum([ACCOMPLISHMENT ct].[PDEST]) |  |  | 2.34, 0.06, 0.48, 0.00 |
| TextBox | Text64 |  | =Sum([ACCOMPLISHMENT ct].[PICKUP]) |  |  | 3.82, 0.06, 0.49, 0.00 |
| TextBox | Text65 |  | =Sum([ACCOMPLISHMENT ct].[SHIP]) |  |  | 4.64, 0.06, 0.54, 0.00 |
| TextBox | Text66 |  | =Sum([ACCOMPLISHMENT ct].[XFERTO]) |  |  | 5.54, 0.06, 0.49, 0.00 |
| TextBox | Text67 |  | =Sum([ACCOMPLISHMENT ct].[XPLT]) |  |  | 6.30, 0.06, 0.54, 0.00 |
| TextBox | Text68 |  | =Sum([ACCOMPLISHMENT ct].[XPLTP]) |  |  | 7.18, 0.06, 0.50, 0.00 |
| Line | Line81 |  |  |  |  | 1.31, 0.00, 6.69, 0.00 |
| TextBox | Text91 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])) |  |  | 4.33, 0.06, 0.31, 0.00 |
| TextBox | Text92 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.FDEST])) |  |  | 2.09, 0.06, 0.28, 0.00 |
| TextBox | Text93 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PDEST])) |  |  | 2.81, 0.06, 0.28, 0.00 |
| TextBox | Text94 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.CDEST])) |  |  | 3.53, 0.06, 0.28, 0.00 |
| TextBox | Text95 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.SHIP])) |  |  | 5.18, 0.06, 0.32, 0.00 |
| TextBox | Text96 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])) |  |  | 6.03, 0.06, 0.28, 0.00 |
| TextBox | Text97 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLT])) |  |  | 6.88, 0.06, 0.28, 0.00 |
| TextBox | Text98 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])) |  |  | 7.70, 0.06, 0.28, 0.00 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo59 |  | CC | B;Bareroot Subtotals;C;Container Subtotals;CT;Container Contract;BR;Bareroot Contract |  | 0.02, 0.03, 1.41, 0.20 |
| TextBox | Text72 |  | =Sum([ACCOMPLISHMENT ct].[CDEST]) |  |  | 3.10, 0.06, 0.43, 0.00 |
| TextBox | Text73 |  | =Sum([ACCOMPLISHMENT ct].[FDEST]) |  |  | 1.45, 0.06, 0.64, 0.00 |
| TextBox | Text74 |  | =Sum([ACCOMPLISHMENT ct].[PDEST]) |  |  | 2.35, 0.06, 0.48, 0.00 |
| TextBox | Text75 |  | =Sum([ACCOMPLISHMENT ct].[PICKUP]) |  |  | 3.83, 0.06, 0.49, 0.00 |
| TextBox | Text76 |  | =Sum([ACCOMPLISHMENT ct].[SHIP]) |  |  | 4.65, 0.06, 0.54, 0.00 |
| TextBox | Text77 |  | =Sum([ACCOMPLISHMENT ct].[XFERTO]) |  |  | 5.54, 0.06, 0.49, 0.00 |
| TextBox | Text78 |  | =Sum([ACCOMPLISHMENT ct.XPLT]) |  |  | 6.31, 0.06, 0.54, 0.00 |
| TextBox | Text79 |  | =Sum([ACCOMPLISHMENT ct].[XPLTP]) |  |  | 7.18, 0.06, 0.50, 0.00 |
| Line | Line80 |  |  |  |  | 1.31, 0.00, 6.69, 0.00 |
| TextBox | Text116 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])) |  |  | 4.33, 0.06, 0.31, 0.00 |
| TextBox | Text117 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.FDEST])) |  |  | 2.09, 0.06, 0.28, 0.00 |
| TextBox | Text118 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PDEST])) |  |  | 2.81, 0.06, 0.28, 0.00 |
| TextBox | Text119 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.CDEST])) |  |  | 3.53, 0.06, 0.28, 0.00 |
| TextBox | Text120 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.SHIP])) |  |  | 5.18, 0.06, 0.32, 0.00 |
| TextBox | Text121 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])) |  |  | 6.03, 0.06, 0.28, 0.00 |
| TextBox | Text122 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLT])) |  |  | 6.88, 0.06, 0.28, 0.00 |
| TextBox | Text123 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])) |  |  | 7.70, 0.06, 0.28, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.00, 0.17, 3.50, 0.19 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.17, 3.50, 0.19 |
| Line | Line22 |  |  |  |  | 0.00, 0.17, 7.99, 0.00 |
| TextBox | Text132 |  | ="/number = Number of lots" |  |  | 3.25, 0.17, 1.62, 0.16 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CDEST |  | =Sum([ACCOMPLISHMENT ct].[CDEST]) |  |  | 3.10, 0.18, 0.43, 0.00 |
| TextBox | FDEST |  | =Sum([ACCOMPLISHMENT ct].[FDEST]) |  |  | 1.45, 0.18, 0.64, 0.00 |
| TextBox | PDEST |  | =Sum([ACCOMPLISHMENT ct].[PDEST]) |  |  | 2.35, 0.18, 0.48, 0.00 |
| TextBox | PICKUP |  | =Sum([ACCOMPLISHMENT ct].[PICKUP]) |  |  | 3.83, 0.18, 0.49, 0.00 |
| TextBox | SHIP |  | =Sum([ACCOMPLISHMENT ct].[SHIP]) |  |  | 4.65, 0.18, 0.54, 0.00 |
| TextBox | XFERTO |  | =Sum([ACCOMPLISHMENT ct].[XFERTO]) |  |  | 5.54, 0.18, 0.49, 0.00 |
| TextBox | XPLT |  | =Sum([ACCOMPLISHMENT ct].[XPLT]) |  |  | 6.31, 0.18, 0.54, 0.00 |
| TextBox | XPLTP |  | =Sum([ACCOMPLISHMENT ct].[XPLTP]) |  |  | 7.18, 0.18, 0.50, 0.00 |
| Line | Line29 |  |  |  |  | 3.83, 0.00, 0.00, 0.42 |
| Line | Line30 |  |  |  |  | 5.47, 0.00, 0.00, 0.42 |
| Line | Line31 |  |  |  |  | 6.31, 0.00, 0.00, 0.42 |
| Line | Line50 |  |  |  |  | 1.31, 0.00, 6.58, 0.00 |
| Line | Line52 |  |  |  |  | 1.57, 0.00, 0.00, 0.42 |
| Label | Label82 | Totals |  |  |  | 0.02, 0.15, 0.46, 0.20 |
| TextBox | Text124 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])) |  |  | 4.32, 0.18, 0.31, 0.00 |
| TextBox | Text125 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.FDEST])) |  |  | 2.08, 0.18, 0.28, 0.00 |
| TextBox | Text126 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PDEST])) |  |  | 2.80, 0.18, 0.28, 0.00 |
| TextBox | Text127 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.CDEST])) |  |  | 3.52, 0.18, 0.28, 0.00 |
| TextBox | Text128 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.SHIP])) |  |  | 5.17, 0.18, 0.32, 0.00 |
| TextBox | Text129 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])) |  |  | 6.02, 0.18, 0.28, 0.00 |
| TextBox | Text130 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLT])) |  |  | 6.86, 0.18, 0.28, 0.00 |
| TextBox | Text131 |  | =IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])) |  |  | 7.69, 0.18, 0.28, 0.00 |
