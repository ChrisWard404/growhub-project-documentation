# Report: NMIS_AGREEMENT_LOT_Checklist

**Caption:** NMIS_AGREEMENT_LOT_Checklist  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[ID], [NMIS_AGREEMENT_LOTS].[SOURCE_LOT_CN], [NMIS_AGREEMENT_LOTS].[TOTAL_REQUEST], [NMIS_AGREEMENT_LOTS].[SOURCE_REQUIRED], [NMIS_AGREEMENTS].[AGREEMENT_LOT_CN], [NMIS_AGREEMENTS].[CLIENT_ASSOCIATE], [NMIS_AGREEMENTS].[AMOUNT_REQUESTED], [NMIS_AGREEMENT_LOTS].[CN] FROM NMIS_AGREEMENT_LOTS LEFT JOIN NMIS_AGREEMENTS ON [NMIS_AGREEMENT_LOTS].[CN]=[NMIS_AGREEMENTS].[AGREEMENT_LOT_CN];
```

**Grouping/sorting:** `ID`  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.63, 0.16, 2.81, 0.19 |
| Label | Label33 | Agreement Lot Checklist |  |  |  | 3.04, 0.55, 2.00, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.42, 0.00, 3.24, 0.16 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_Label | Agreement Lot ID |  |  |  | 0.04, 0.04, 0.75, 0.33 |
| Label | SOURCE_LOT_CN_Label | Source Lot ID |  |  |  | 0.82, 0.04, 0.58, 0.33 |
| Label | TOTAL_REQUEST_Label | Total Request |  |  |  | 4.34, 0.04, 0.60, 0.33 |
| Label | CLIENT_ASSOCIATE_Label | Client Associate |  |  |  | 5.32, 0.19, 1.75, 0.17 |
| Label | AMOUNT_REQUESTED_Label | Agreement Request |  |  |  | 7.22, 0.08, 0.78, 0.32 |
| Line | Line18 |  |  |  |  | 0.00, 0.00, 8.00, 0.00 |
| Line | Line19 |  |  |  |  | 0.00, 0.43, 7.97, 0.00 |
| Label | Label22 | Source Code |  |  |  | 1.62, 0.20, 2.27, 0.17 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 0.12, 0.07, 0.62, 0.21 |
| TextBox | TOTAL_REQUEST |  | TOTAL_REQUEST |  |  | 4.34, 0.07, 0.60, 0.21 |
| ComboBox | SOURCE_LOT_CN |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 0.83, 0.07, 0.57, 0.20 |
| Line | Line20 |  |  |  |  | 0.04, 0.04, 5.35, 0.00 |
| ComboBox | Combo21 |  | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[SOURCE_CODE] FROM NMIS_SOURCE_LOTS;  |  | 1.60, 0.07, 2.33, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 7.42, 0.00, 0.41, 0.21 |
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 5.33, 0.00, 1.75, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Now() |  |  | 0.04, 0.17, 3.50, 0.18 |
| TextBox | Text16 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.76, 0.17, 3.17, 0.18 |
