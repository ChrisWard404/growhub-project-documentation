# Form: NMIS_LOCATIONS Subform

**Caption:** NMIS_LOCATIONS  
**Record source:**

```sql
SELECT NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.INDEX_MAX, NMIS_LOCATIONS.LOCATION_DESC, NMIS_LOCATIONS.NOTE, NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.Index, NMIS_LOCATIONS.CN, NMIS_LOCATIONS.NURSERY_ASSOCIATE, NMIS_LOCATIONS.SOW_DIRECTION, NMIS_LOCATIONS.ZONE, IIf([Note] Like "*HIST*","Yes","No") AS Historical FROM NMIS_LOCATIONS WHERE (((IIf([Note] Like "*HIST*","Yes","No")) Like IIf([Forms]![NMIS_LOCATION_TYPES]![Hide_Historical],"No","*"))) ORDER BY NMIS_LOCATIONS.LOCATION;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_LOCATIONS`, `NMIS_LOCATION_TYPES`  
**Embedded in:** `Form:NMIS_LOCATION_TYPES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_Label | Location |  |  |  | 0.04, 0.04, 0.93, 0.20 |
| Label | INDEX_MAX_Label | Index Max |  |  |  | 1.00, 0.04, 0.70, 0.20 |
| Label | LOCATION_DESC_Label | Description |  |  |  | 1.73, 0.04, 1.89, 0.21 |
| Label | NOTE_Label | Note |  |  |  | 3.66, 0.04, 3.10, 0.21 |
| TextBox | CN |  | CN |  |  | 3.96, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 5.67, 0.04, 0.00, 0.00 |
| ComboBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 2.00, 0.08, 0.00, 0.00 |
| Label | Label18 | Sow Dir |  |  |  | 6.81, 0.04, 0.51, 0.21 |
| Label | Loc_Type label | Lcation Type |  |  |  | 7.35, 0.04, 1.04, 0.21 |
| Label | Label24 | Zone |  |  |  | 8.42, 0.04, 0.51, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOCATION |  | LOCATION |  |  | 0.04, 0.03, 0.93, 0.25 |
| TextBox | INDEX_MAX |  | INDEX_MAX |  |  | 1.00, 0.03, 0.70, 0.25 |
| TextBox | LOCATION_DESC |  | LOCATION_DESC |  |  | 1.73, 0.03, 1.89, 0.25 |
| TextBox | NOTE |  | NOTE |  |  | 3.66, 0.03, 3.10, 0.25 |
| ComboBox | LOCATION_TYPE |  | LOCATION_TYPE | SELECT NMIS_LOCATION_TYPES.LOCATION_TYPE, NMIS_LOCATION_TYPES.LOCATION_TYPE_DESC FROM NMIS_LOCATION_TYPES;  |  | 4.25, 0.03, 0.00, 0.00 |
| TextBox | SOW_DIRECTION |  | SOW_DIRECTION |  |  | 6.82, 0.03, 0.50, 0.25 |
| TextBox | Loc_type |  | LOCATION_TYPE |  | DblClick, Enter | 7.37, 0.03, 1.01, 0.25 |
| TextBox | Zone |  | ZONE |  |  | 8.43, 0.03, 0.50, 0.25 |

## Code-behind (VBA)

```vb
Private Sub Loc_type_DblClick(Cancel As Integer)

    Loc_type.Locked = False
    
End Sub

Private Sub Loc_type_Enter()
    If IsNull(Loc_type) Then
        Loc_type.Locked = False
    Else
        Loc_type.Locked = True
    End If
    
End Sub
```
