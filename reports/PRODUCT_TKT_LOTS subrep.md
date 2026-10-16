# Report: PRODUCT_TKT_LOTS subrep

**Grouping/sorting:** `TICKET_CN`, `Cat`, `PRODUCT_DESC2`, `Product_Unit`, `Scientific_Name`, `Agreement_Lot_ID_and_Source`, `NMIS_ID_LOCATIONS.UNIT_CODE`, `ID_SUBLOT`, `ORDER_ID_ACTIVITY`, `CONTAINERS`  
**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_UNITS`  
**Embedded in:** `Report:PRODUCT_TICKET`  

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Cat |  | Cat | B;Bareroot;C;Container;N;Native Propagule |  | 0.00, 0.02, 3.56, 0.20 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC2 |  |  | 0.04, 0.00, 2.46, 0.00 |
| Line | Line24 |  |  |  |  | 0.00, 0.18, 7.75, 0.00 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Scientific_Name |  | Scientific_Name |  |  | 0.08, 0.00, 2.50, 0.20 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 2.71, 0.00, 3.00, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.17, 0.03, 4.20, 0.19 |
| TextBox | Text30 |  | =Sum([CONTAINERS]) |  |  | 6.04, 0.03, 0.45, 0.19 |
| TextBox | Text31 |  | =Sum([TREES]) |  |  | 6.77, 0.03, 0.62, 0.19 |
| ComboBox | Text32 |  | NMIS_ID_LOCATIONS.UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 4.38, 0.03, 1.62, 0.19 |
| TextBox | Product_Unit |  | Product_Unit |  |  | 7.41, 0.03, 0.32, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTAINERS |  | CONTAINERS |  |  | 3.89, 0.00, 0.43, 0.16 |
| TextBox | SPCL_SVCS |  | SPCL_SVCS |  |  | 1.91, 0.00, 1.93, 0.16 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 4.48, 0.00, 0.55, 0.16 |
| TextBox | TREES |  | TREES |  |  | 5.14, 0.00, 0.66, 0.16 |
| TextBox | ORDER |  | ORDER_ID_ACTIVITY |  |  | 0.16, 0.00, 1.06, 0.16 |
| TextBox | TICKET_CN |  | TICKET_CN |  |  | 6.81, 0.00, 0.71, 0.16 |
| TextBox | TKT_NAME |  | TKT_NAME |  |  | 6.14, 0.00, 0.62, 0.16 |
| Label | Label26 | @ |  |  |  | 4.31, 0.00, 0.19, 0.17 |
| Label | Label27 | = |  |  |  | 5.04, 0.00, 0.11, 0.15 |
| TextBox | Check_Client |  | =IIf([ORDER_FOREST]<>Mid$(NZ([Reports]![PRODUCT_TICKET]![Reporting_Parent],"      "),3,2),"l") |  |  | 0.00, 0.00, 0.16, 0.16 |
| TextBox | NOTE |  | Activity_Note |  |  | 5.81, 0.01, 1.94, 0.16 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 1.24, 0.00, 0.64, 0.16 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line25 |  |  |  |  | 0.00, 0.03, 7.75, 0.00 |

## Section: GroupFooter3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text33 |  | =Sum([CONTAINERS]) |  |  | 6.04, 0.01, 0.45, 0.19 |
| TextBox | Text34 |  | =Sum([TREES]) |  |  | 6.77, 0.01, 0.62, 0.19 |
| Line | Line45 |  |  |  |  | 0.00, 0.24, 7.75, 0.00 |
| TextBox | Text46 |  | Product_Unit |  |  | 7.41, 0.00, 0.32, 0.21 |
| ComboBox | Combo53 |  | NMIS_ID_LOCATIONS.UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, [UNIT_DESC] & " Totals" AS UD_total FROM NMIS_UNITS; |  | 3.12, 0.02, 2.79, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text40 |  | =Sum([CONTAINERS]) |  |  | 6.04, 0.00, 0.45, 0.21 |
| TextBox | Text41 |  | =Sum([TREES]) |  |  | 6.77, 0.00, 0.62, 0.21 |
| TextBox | Text43 |  | Product_Unit |  |  | 7.41, 0.00, 0.32, 0.21 |
| TextBox | Text44 |  | ="Totals for " & [PRODUCT_DESC2] |  |  | 0.33, 0.02, 5.12, 0.19 |

## Section: GroupFooter6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text63 |  | =Sum([CONTAINERS]) |  |  | 5.88, 0.00, 0.62, 0.21 |
| TextBox | Text64 |  | =Sum([TREES]) |  |  | 6.62, 0.00, 0.77, 0.21 |
| TextBox | Text65 |  | ="Totals for " |  |  | 0.22, 0.01, 0.91, 0.20 |
| ComboBox | Combo67 |  | Cat | B;Bareroot;C;Container;N;Native Propagule |  | 1.14, 0.01, 3.56, 0.20 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text47 |  | =Sum([CONTAINERS]) |  |  | 6.04, 0.00, 0.45, 0.19 |
| Line | Line49 |  |  |  |  | 0.00, 0.21, 7.75, 0.00 |
| TextBox | Text50 |  | ="Totals for Ticket " & [Tkt_No] |  |  | 0.00, 0.00, 3.83, 0.19 |
| TextBox | Text56 |  | =Sum([TREES]) |  |  | 6.62, 0.00, 0.77, 0.21 |
| TextBox | Text57 |  | Product_Unit |  |  | 7.41, 0.00, 0.32, 0.21 |
| Line | Line58 |  |  |  |  | 0.00, 0.00, 7.75, 0.00 |
