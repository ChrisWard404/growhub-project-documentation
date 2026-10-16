# Report: Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List

**Grouping/sorting:** `Cost_Center`, `Reporting_Parent`, `ASSOCIATE`, `Product_for_Cycle`, `PLNTMSTR_SYMBOL`, `ORDER_CODE`, `LOT_ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | LOT ID |  |  |  | 0.23, 1.36, 0.71, 0.18 |
| Label | SOURCE_CODE_Label | SOURCE |  |  |  | 1.27, 1.36, 0.92, 0.18 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label | #Units |  |  |  | 6.10, 1.36, 0.50, 0.18 |
| Label | AMT_PER_UNIT_Label | Per Unit |  |  |  | 6.65, 1.36, 0.65, 0.18 |
| TextBox | Text23 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.69, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.69, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.56, 0.17, 2.78, 0.20 |
| TextBox | FY |  | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 2.00, 0.80, 4.00, 0.23 |
| Label | Label50 | Packed for Surplus Bid List |  |  |  | 2.38, 0.58, 3.20, 0.22 |
| Label | Label53 | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |  |  |  | 0.00, 1.50, 7.83, 0.20 |
| TextBox | Cost_Center |  | Cost_Center |  |  | 2.08, 1.05, 3.79, 0.26 |

## Section: GroupHeader4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Reporting_Parent |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.04, 0.01, 4.04, 0.23 |

## Section: GroupHeader5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo62 |  | ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; |  | 0.04, 0.00, 4.04, 0.23 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | OWNER |  | Product_for_Cycle |  |  | 0.04, 0.01, 2.71, 0.23 |
| TextBox | Text63 |  | CHARGE_PER_AMT |  |  | 3.07, 0.01, 1.29, 0.23 |
| Label | Label64 | /M |  |  |  | 4.29, 0.01, 0.60, 0.24 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | Species |  |  | 0.17, 0.00, 2.96, 0.23 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | LOT_ID |  |  | 0.20, 0.04, 0.00, 0.21 |
| TextBox | SOURCE_CODE |  | ID_SOURCE2 |  |  | 1.24, 0.04, 2.83, 0.21 |
| TextBox | Text29 |  | =Sum([PACKED]) |  |  | 7.08, 0.04, 0.71, 0.21 |
| Label | Label30 | Total Packed: |  |  |  | 6.15, 0.04, 0.85, 0.17 |
| TextBox | SEED_ZONE |  | SZ |  |  | 4.10, 0.04, 0.65, 0.21 |
| TextBox | Text59 |  | BZ |  |  | 4.75, 0.04, 0.65, 0.21 |
| TextBox | ORIGIN_ELEVATION |  | Elev |  |  | 5.42, 0.04, 0.57, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | SumOfNUMBER_OF_ACTIVITY_UNITS |  |  | 6.10, 0.00, 0.50, 0.19 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 6.65, 0.00, 0.50, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Date_Label |  | =Now() |  |  | 0.00, 0.02, 1.96, 0.21 |
| TextBox | Page_Label |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.85, 0.02, 0.96, 0.21 |
