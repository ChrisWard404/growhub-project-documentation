# Form: Change_Bend_stored_for

**Caption:** Change Bend plntmstr Symbol  
**Record source:**

```sql
SELECT [*NMIS_SOURCE_LOTS_Bend].ID, [*NMIS_SOURCE_LOTS_Bend].SOURCE_CODE, [*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE FROM [*NMIS_SOURCE_LOTS_Bend] WHERE ((([*NMIS_SOURCE_LOTS_Bend].ID)=[Forms]![NMIS_SOURCE_LOTS_Bend]![ID]));
```

**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS_Bend`  
**Form events with code:** Close  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label6 | Change Bend Stored For |  |  |  | 1.36, 0.21, 2.77, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Source ID | ID |  |  | 0.04, 0.44, 1.19, 0.21 |
| TextBox | SOURCE_CODE | Source Code | SOURCE_CODE |  |  | 1.29, 0.44, 2.83, 0.21 |
| TextBox | PLNTMSTR_SYMBOL | Stored For | STORED_FOR_ASSOCIATE |  |  | 4.21, 0.44, 1.02, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()

    Forms![NMIS_SOURCE_LOTS_Bend].Requery
    
End Sub
```
