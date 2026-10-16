# Report: PRODUCT_TKT_LOTS_PULL subrep

**Grouping/sorting:** `TICKET_CN`, `LOCATION`, `Agreement_Lot_ID_and_Source`, `ID_SUBLOT`, `ORDER_ID_ACTIVITY`, `CONTAINERS`  
**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_UNITS`  
**Embedded in:** `Report:PRODUCT_PULL_ticket`  

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text53 |  | LOCATION_DESC |  |  | 0.00, 0.00, 2.43, 0.23 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.02, 0.02, 4.20, 0.17 |
| TextBox | Text30 |  | =Sum([CONTAINERS]) |  |  | 6.04, 0.03, 0.45, 0.17 |
| TextBox | Text31 |  | =Sum([TREES]) |  |  | 6.77, 0.03, 0.62, 0.17 |
| ComboBox | Text32 |  | NMIS_ID_LOCATIONS.UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 4.38, 0.03, 1.62, 0.17 |
| TextBox | Product_Unit |  | Product_Unit |  |  | 7.41, 0.03, 0.32, 0.17 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTAINERS |  | CONTAINERS |  |  | 3.92, 0.00, 0.38, 0.16 |
| TextBox | SPCL_SVCS |  | SPCL_SVCS |  |  | 1.49, 0.00, 2.43, 0.16 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 4.50, 0.00, 0.46, 0.16 |
| TextBox | TREES |  | TREES |  |  | 5.17, 0.00, 0.62, 0.16 |
| TextBox | ORDER |  | ORDER_ID_ACTIVITY |  |  | 0.16, 0.00, 1.32, 0.16 |
| TextBox | TICKET_CN |  | TICKET_CN |  |  | 6.81, 0.00, 0.71, 0.16 |
| TextBox | TKT_NAME |  | TKT_NAME |  |  | 6.14, 0.00, 0.62, 0.16 |
| Label | Label26 | @ |  |  |  | 4.29, 0.00, 0.19, 0.15 |
| Label | Label27 | = |  |  |  | 5.00, 0.00, 0.19, 0.15 |
| TextBox | Check_Client |  | =IIf([ORDER_FOREST]<>Mid$(NZ([Reports]![PRODUCT_PULL_TICKET]![Reporting_Parent],"      "),3,2),"l") |  |  | 0.00, 0.00, 0.16, 0.16 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line25 |  |  |  |  | 0.00, 0.03, 7.75, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text47 |  | =Sum([CONTAINERS]) |  |  | 6.04, 0.00, 0.45, 0.19 |
| Line | Line49 |  |  |  |  | 0.00, 0.21, 7.75, 0.00 |
| TextBox | Text50 |  | ="Total containers for " & [Tkt_No] |  |  | 0.54, 0.00, 3.83, 0.19 |
