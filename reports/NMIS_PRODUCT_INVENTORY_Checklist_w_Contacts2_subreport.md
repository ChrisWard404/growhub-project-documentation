# Report: NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport

**Caption:** ***********************DBD subreport  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Embedded in:** `Report:NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line2 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NURSERY_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & "  " & [ASSOCIATE_NAME] AS ASSOCIATE_CODE_AND_NAME FROM NMIS_ASSOCIATES;  |  | 0.00, 0.00, 3.42, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line3 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
