# Form: NMIS_ID_LOCATIONS subform1

**Caption:** NMIS_ID_LOCATIONS subform1  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.*, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN ORDER BY NMIS_LOCATIONS.LOCATION;
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_UNITS`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_AGREEMENT_LOTS_Review_Only`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_bu3`, `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_orig`  
**Form events with code:** AfterDelConfirm, AfterInsert, AfterUpdate  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_CN_Label | Location |  |  |  | 0.03, 0.05, 0.91, 0.37 |
| Label | BEGIN_DATE_Label | Begin Date |  |  |  | 2.22, 0.05, 0.58, 0.37 |
| Label | BEGIN_INDEX_Label | Begin Index |  |  |  | 3.46, 0.05, 0.47, 0.37 |
| Label | END_INDEX_Label | End Index |  |  |  | 3.97, 0.05, 0.47, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 0.97, 0.05, 0.70, 0.37 |
| TextBox | Index |  | Index |  |  | 0.21, 0.05, 0.00, 0.00 |
| Label | Label25 | Comments |  |  |  | 4.97, 0.05, 3.80, 0.37 |
| Label | Label27 | Sublot# |  |  |  | 1.71, 0.05, 0.47, 0.37 |
| Label | Label35 | End Date |  |  |  | 2.84, 0.05, 0.58, 0.37 |
| Label | Label38 | Index Mult. |  |  |  | 4.47, 0.05, 0.47, 0.37 |
| TextBox | CN |  | CN |  |  | 1.98, 0.05, 0.00, 0.00 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 3.67, 0.12, 0.74, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LOCATION_CN |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION, NMIS_LOCATIONS.LOCATION_TYPE FROM NMIS_LOCATIONS ORDER BY NMIS_LOCATIONS.LOCATION;  | Exit | 0.00, 0.04, 0.95, 0.20 |
| TextBox | BEGIN_DATE |  | BEGIN_DATE |  |  | 2.22, 0.03, 0.58, 0.20 |
| TextBox | BEGIN_INDEX |  | BEGIN_INDEX |  | Exit | 3.46, 0.03, 0.47, 0.20 |
| TextBox | END_INDEX |  | END_INDEX |  | Exit | 3.97, 0.03, 0.47, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER, NMIS_UNITS.UNIT_TYPE FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE) In ("G","STORE","LC"))) ORDER BY NMIS_UNITS.UNIT_CODE;  |  | 0.97, 0.03, 0.71, 0.20 |
| TextBox | DIST_FROM_BED_BEG |  | DIST_FROM_BED_BEG |  |  | 5.64, 0.04, 0.62, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 4.97, 0.03, 3.79, 0.20 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.71, 0.03, 0.47, 0.19 |
| TextBox | END_DATE |  | END_DATE |  |  | 2.84, 0.03, 0.58, 0.20 |
| TextBox | INDEX_INCREMENT |  | INDEX_INCREMENT |  | Enter | 4.47, 0.03, 0.47, 0.20 |

## Code-behind (VBA)

```vb
Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If
    
End Sub

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    
End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    
End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub
```
