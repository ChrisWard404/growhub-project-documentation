# Form: NMIS_SOURCE_LOTS_Bend

**Caption:** NMIS SOURCE LOTS Bend  
**Record source:**

```sql
SELECT [*NMIS_SOURCE_LOTS_Bend].ID, [*NMIS_SOURCE_LOTS_Bend].SOURCE_CODE, [*NMIS_SOURCE_LOTS_Bend].STORED_AT_ASSOCIATE, [*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE, [*NMIS_SOURCE_LOTS_Bend].CN, [Seed_Balance_Bend Query].[Sum Of ACTIVITY_UNITS], [Seed_Balance_Bend Query].UNIT_CODE, [*NMIS_SOURCE_LOTS_Bend].PLNTMSTR_SYMBOL, NMIS_SPECIES.PLNTMSTR_SYMBOL FROM ([Seed_Balance_Bend Query] RIGHT JOIN [*NMIS_SOURCE_LOTS_Bend] ON [Seed_Balance_Bend Query].SOURCE_LOT_CN = [*NMIS_SOURCE_LOTS_Bend].CN) LEFT JOIN NMIS_SPECIES ON [*NMIS_SOURCE_LOTS_Bend].PLNTMSTR_SYMBOL = NMIS_SPECIES.PLNTMSTR_SYMBOL WHERE ((([*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOTS_Bend]![STORED_FOR_LIKE] & "*") AND (([*NMIS_SOURCE_LOTS_Bend].ID) Like [Forms]![NMIS_SOURCE_LOTS_Bend]![ID_LIKE] & "*")) ORDER BY [*NMIS_SOURCE_LOTS_Bend].STORED_FOR_ASSOCIATE, [*NMIS_SOURCE_LOTS_Bend].ID;
```

**Backend tables referenced:** `NMIS_SPECIES`  
**Opens:** `Form:Change_Bend_plntmstr_symbol`, `Form:Change_Bend_stored_for`, `Form:NMIS_SPECIES`  
**Opened from (VBA):** `Form_NMIS_AGREEMENTS`, `Form_NMIS_AGREEMENTS_bu`, `Form_NMIS_AGREEMENTS_w_lot_lookup`, `Form_NMIS_SOURCE_LOTS_INPUT`  
**Form events with code:** Close  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label8 | NMIS Source Lots BEND |  |  |  | 3.21, 0.17, 2.25, 0.58 |
| Label | Label9 | ID |  |  |  | 1.09, 1.00, 1.40, 0.20 |
| Label | Label10 | Source Code |  |  |  | 2.60, 1.00, 2.72, 0.20 |
| Label | Label11 | Stored At |  |  |  | 6.13, 1.00, 0.68, 0.20 |
| Label | Label12 | Stored For |  |  |  | 0.18, 1.00, 0.76, 0.20 |
| Label | Label16 | Bend Balance |  |  |  | 5.43, 0.88, 0.59, 0.35 |
| Label | Label18 | Bend Species Code |  |  |  | 6.89, 0.85, 0.93, 0.35 |
| TextBox | CN |  | CN |  |  | 5.96, 0.38, 0.65, 0.00 |
| Label | Label20 | Local Species Code |  |  |  | 7.94, 0.68, 0.94, 0.52 |
| TextBox | ID_LIKE | ID Like: |  |  | AfterUpdate, DblClick | 1.33, 0.29, 1.21, 0.21 |
| TextBox | STORED_FOR_LIKE | Stored for Like: |  |  | AfterUpdate, DblClick | 1.33, 0.58, 1.21, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | ID |  |  | 1.09, 0.03, 1.40, 0.21 |
| TextBox | SOURCE_CODE |  | SOURCE_CODE |  |  | 2.61, 0.03, 2.70, 0.21 |
| TextBox | STORED_AT_ASSOCIATE |  | STORED_AT_ASSOCIATE |  |  | 6.13, 0.03, 0.69, 0.21 |
| TextBox | STORED_FOR_ASSOCIATE |  | STORED_FOR_ASSOCIATE |  | DblClick | 0.18, 0.03, 0.78, 0.21 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Sum Of ACTIVITY_UNITS |  |  | 5.44, 0.03, 0.57, 0.20 |
| TextBox | PLNTMSTR_SYMBOL |  | *NMIS_SOURCE_LOTS_Bend.PLNTMSTR_SYMBOL |  |  | 6.90, 0.03, 0.93, 0.20 |
| TextBox | NMIS_SPECIES.PLNTMSTR_SYMBOL |  | NMIS_SPECIES.PLNTMSTR_SYMBOL |  |  | 7.95, 0.03, 0.93, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Run Bend_To_JHSN_Source Query | Click to Add Selected Lot To Source Lots |  |  | Click | 3.33, 0.08, 2.46, 0.58 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()

    'Dim stFormName As String
    
    'strFormName = "NMIS_SOURCE_LOTS_INPUT"
    
        'If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            'Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_TESTS Subform].Form.Requery
            'Forms![NMIS_SOURCE_LOTS_INPUT].[Source_Lot_Lookup].SetFocus
        'End If


End Sub

Private Sub ID_LIKE_AfterUpdate()

        DoCmd.Requery
    
End Sub

Private Sub ID_LIKE_DblClick(Cancel As Integer)

    ID_LIKE = "*"
    DoCmd.Requery
    
End Sub

Private Sub NMIS_SPECIES_PLNTMSTR_SYMBOL_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_SPECIES"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Change_Bend_plntmstr_symbol"
    
End Sub

Private Sub Run_Bend_To_JHSN_Source_Query_Click()
On Error GoTo Err_Run_Bend_To_JHSN_Source_Query_Click
     
    Dim stDocName As String
    Dim stDocName2 As String
    Dim stDocName3 As String
    Dim stFormName As String
    
    stDocName = "Bend_To_JHSN_Source"
    stDocName2 = "Bend_To_JHSN_Source2"
    stDocName3 = "Bend_To_JHSN_Source_Test"
    stDocName4 = "Bend_To_JHSN_Source_Test_Results"
    strFormName = "NMIS_AGREEMENTS"
    strFormName2 = "NMIS_SOURCE_LOTS_INPUT"
    
    If Me.NMIS_SPECIES_PLNTMSTR_SYMBOL > "" Then
        DoCmd.SetWarnings False
        If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            DoCmd.OpenQuery stDocName, acNormal, acEdit
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN].Requery
            If SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 Then
                Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup] = CN & "B"
                Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Requery
                Forms![NMIS_SOURCE_LOTS_INPUT].Requery
                Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].Requery
            End If
        Else
            DoCmd.OpenQuery stDocName2, acNormal, acEdit
            Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup] = CN & "B"
            Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Requery
            Forms![NMIS_SOURCE_LOTS_INPUT].Requery
            Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].Requery
        End If
        DoCmd.OpenQuery stDocName3, acNormal, acEdit
        DoCmd.OpenQuery stDocName4, acNormal, acEdit
    
        If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_TESTS Subform].Form.Requery
            Forms![NMIS_SOURCE_LOTS_INPUT].[Source_Lot_Lookup].SetFocus
        End If
    Else
        MsgBox "Unable to Add to Database. Check JHSN Species Code"
    End If
    DoCmd.SetWarnings True

Exit_Run_Bend_To_JHSN_Source_Query_Click:
    Exit Sub

Err_Run_Bend_To_JHSN_Source_Query_Click:
    
    DoCmd.SetWarnings True
    Resume Exit_Run_Bend_To_JHSN_Source_Query_Click
    
End Sub

Private Sub STORED_FOR_ASSOCIATE_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Change_Bend_stored_for"
    
End Sub

Private Sub STORED_FOR_LIKE_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub STORED_FOR_LIKE_DblClick(Cancel As Integer)

    STORED_FOR_LIKE = "*"
    DoCmd.Requery
    
End Sub
```
