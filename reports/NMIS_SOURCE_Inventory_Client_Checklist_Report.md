# Report: NMIS_SOURCE_Inventory_Client_Checklist_Report

**Caption:** NMIS_SOURCE_Inventory  
**Grouping/sorting:** `Parent`, `ASSOCIATE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  
**Opened from (VBA):** `Form_Seed_Inventory_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.57, 0.16, 2.81, 0.19 |
| Label | Label33 | Source Client Checklist Report |  |  |  | 2.77, 0.56, 2.41, 0.18 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.35, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.35, 0.00, 3.24, 0.16 |
| Label | ID_Label | Client |  |  |  | 0.28, 0.82, 0.61, 0.18 |
| Line | Line21 |  |  |  |  | 0.00, 1.05, 7.94, 0.01 |
| Label | Label44 | Balance |  |  |  | 3.21, 0.82, 0.58, 0.18 |
| Label | Label48 | Client |  |  |  | 4.27, 0.82, 0.61, 0.18 |
| Label | Label49 | Balance |  |  |  | 7.06, 0.82, 0.64, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Text43 |  | ASSOCIATE | SELECT NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, [STORED_FOR_ASSOCIATE] & " " & [ASSOCIATE_NAME] AS [asc] FROM NMIS_SOURCE_LOTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE GROUP BY NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, [STORED_FOR_ASSOCIATE] & " " & [ASSOCIATE_NAME]; |  | 0.00, 0.02, 3.03, 0.21 |
| TextBox | Balance |  | Balance |  |  | 3.00, 0.02, 0.76, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.33, 0.05, 3.50, 0.18 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.33, 0.05, 3.50, 0.18 |
| Line | Line22 |  |  |  |  | 0.29, 0.02, 7.54, 0.00 |
