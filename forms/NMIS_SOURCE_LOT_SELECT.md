# Form: NMIS_SOURCE_LOT_SELECT

**Caption:** NMIS source Lot History Report  
**Record source:**

```sql
Link_Table
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Form.NMIS_SOURCE_LOTS_REPORT subform`  
**Opens:** `Report:NMIS_SOURCE_LOTS_REPORT_All_Tests`, `Report:NMIS_SOURCE_LOTS_REPORT_Last_Test_Only`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label4 | NMIS Source Lot History |  |  |  | 1.38, 0.09, 2.73, 0.31 |
| Line | Line5 |  |  |  |  | 0.00, 0.50, 5.42, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_LOT_ID_SELECT Label | Source Lot ID: |  |  |  | 1.36, 0.80, 1.00, 0.21 |
| ComboBox | SOURCE_LOT_ID_SELECT |  |  | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_LOTS.DATE_COLLECTED, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE AS [Stored At], [Seed_Balance Query].[Sum Of ACTIVITY_UNITS] AS Balance FROM [Seed_Balance Query] INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN ORDER BY IIf([NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE]=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],0,1), NMIS_SOURCE_LOTS.ID; | Enter | 2.46, 0.80, 1.44, 0.20 |
| CommandButton | NMIS_SOURCE_LOT_REPORT_CREATE | Click to Preview Source Lot History Report |  |  | Click | 2.33, 1.55, 0.99, 0.53 |
| Subform | NMIS_SOURCE_LOTS_REPORT subform |  | Form.NMIS_SOURCE_LOTS_REPORT subform (master: Link1_Text → child: CN) |  |  | 3.46, 1.10, 1.87, 0.67 |
| TextBox | Link1_Text |  | =[SOURCE_LOT_ID_SELECT] |  |  | 4.25, 0.56, 0.71, 0.25 |
| Label | Label16 | Like Client: |  |  |  | 1.55, 0.30, 0.81, 0.21 |
| ComboBox | Like Client |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) WHERE (((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SOURCE_LOT_SELECT]![Like_Plntmstr_Symbol] & "*")) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | Enter | 2.46, 0.30, 0.88, 0.20 |
| Label | Label18 | Like Species: |  |  |  | 1.41, 0.55, 0.95, 0.21 |
| ComboBox | Like_Plntmstr_Symbol |  |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES.SPECIES_ABBREVIATION, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES.VERNACULAR FROM (NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL) INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) WHERE (((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOT_SELECT]![Like Client] & "*")) GROUP BY NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES.SPECIES_ABBREVIATION, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES.VERNACULAR ORDER BY NMIS_SPECIES.PLNTMSTR_SYMBOL; | Enter | 2.46, 0.55, 0.88, 0.21 |
| CheckBox | Include_All_Tests |  |  |  |  | 2.46, 1.12, 0.00, 0.00 |
| Label | Include_All_Tests Label | Include All Tests: |  |  |  | 1.18, 1.08, 1.19, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Like_Client_Enter()

    If Like_Plntmstr_Symbol = "na" Then
        Like_Plntmstr_Symbol = "*"
    End If
    SOURCE_LOT_ID_SELECT = Null
    Like_Client.Requery
    
End Sub

Private Sub Like_Plntmstr_Symbol_Enter()
    
    If Like_Client = "na" Then
        Like_Client = "*"
    End If
    SOURCE_LOT_ID_SELECT = Null
    Like_Plntmstr_Symbol.Requery
    
End Sub

Private Sub NMIS_SOURCE_LOT_REPORT_CREATE_Click()

On Error GoTo Err_NMIS_SOURCE_LOT_REPORT_CREATE_Click

Dim stDocName As String

If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] <> _
    [NMIS_SOURCE_LOTS_REPORT subform].Form![STORED_AT_ASSOCIATE] Then
    MsgBox "NOT STORED HERE"
Else
    If Include_All_Tests Then
        stDocName = "NMIS_SOURCE_LOTS_REPORT_All_Tests"
    Else
        stDocName = "NMIS_SOURCE_LOTS_REPORT_Last_Test_Only"
    End If
    DoCmd.OpenReport stDocName, acPreview
End If
    
    
Exit_NMIS_SOURCE_LOT_REPORT_CREATE_Click:
    Exit Sub

Err_NMIS_SOURCE_LOT_REPORT_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_LOT_REPORT_CREATE_Click
    
End Sub

Private Sub SOURCE_LOT_ID_SELECT_Enter()

    Like_Plntmstr_Symbol = "na"
    Like_Client = "na"
End Sub
```
