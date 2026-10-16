# Form: NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform

**Caption:** NMIS_LOCATIONS  
**Record source:**

```sql
SELECT [NMIS_LOCATIONS].[LOCATION], [NMIS_LOCATIONS].[INDEX_MAX], [NMIS_LOCATIONS].[LOCATION_DESC], [NMIS_LOCATIONS].[NOTE], [NMIS_LOCATIONS].[LOCATION_TYPE], [NMIS_LOCATIONS].[Index], [NMIS_LOCATIONS].[CN], [NMIS_LOCATIONS].[NURSERY_ASSOCIATE], [NMIS_LOCATIONS].[LOCATION_TYPE] FROM NMIS_LOCATIONS;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_LOCATIONS`, `NMIS_LOCATION_TYPES`  
**Embedded in:** `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS`, `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS2`, `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS3`, `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS4`, `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS_ID_LOC`, `Form:NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_Label | Location |  |  |  | 0.07, 0.04, 0.68, 0.20 |
| Label | INDEX_MAX_Label | Index Max |  |  |  | 0.83, 0.04, 0.76, 0.20 |
| Label | LOCATION_DESC_Label | Description |  |  |  | 1.70, 0.04, 1.20, 0.20 |
| Label | NOTE_Label | Note |  |  |  | 2.98, 0.04, 3.71, 0.20 |
| TextBox | CN |  | CN |  |  | 3.38, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 5.08, 0.04, 0.00, 0.00 |
| ComboBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES;  |  | 2.00, 0.08, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION |  | LOCATION |  | Change | 0.07, 0.03, 0.68, 0.20 |
| TextBox | INDEX_MAX |  | INDEX_MAX |  |  | 0.83, 0.03, 0.76, 0.20 |
| TextBox | LOCATION_DESC |  | LOCATION_DESC |  |  | 1.70, 0.03, 1.20, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 2.98, 0.03, 3.71, 0.20 |
| ComboBox | LOCATION_TYPE |  | LOCATION_TYPE | SELECT [NMIS_LOCATION_TYPES].[LOCATION_TYPE], [NMIS_LOCATION_TYPES].[LOCATION_TYPE_DESC] FROM NMIS_LOCATION_TYPES;  |  | 3.67, 0.03, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If IsNull([CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub
```
