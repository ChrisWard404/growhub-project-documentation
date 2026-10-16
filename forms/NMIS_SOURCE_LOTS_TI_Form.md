# Form: NMIS_SOURCE_LOTS_TI_Form

**Backend tables referenced:** `NMIS_SOURCE_LOTS`, `NMIS_STATES`  
**Opens:** `Form:NMIS_SOURCE_LOTS`, `Form:NMIS_SOURCE_SPP_WORKSHEET_ticket`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label46 | Source Lots TI |  |  |  | 2.00, 0.06, 1.91, 0.35 |
| Line | Line47 |  |  |  |  | 0.08, 0.76, 5.76, 0.00 |
| CommandButton | SaveAndClose | Close |  |  | Click | 5.33, 0.04, 0.47, 0.28 |
| ComboBox | CN_SOURCE_LOT | Source Lot: | CN_SOURCE_LOT | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS; |  | 1.06, 0.49, 2.56, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PEDIGREE | Pedigree: | PEDIGREE |  |  | 4.89, 0.82, 0.68, 0.20 |
| TextBox | TOP5 | Top5: | TOP5 |  |  | 1.25, 1.07, 0.91, 0.20 |
| TextBox | FAMILY | Family: | FAMILY |  |  | 4.88, 0.10, 0.36, 0.20 |
| TextBox | CYCLE_TI | Cycle TI: | CYCLE_TI |  |  | 4.89, 0.34, 0.37, 0.20 |
| TextBox | PHASE | Phase: | PHASE |  |  | 4.89, 0.58, 0.38, 0.20 |
| TextBox | STAND | Stand: | STAND |  |  | 1.25, 0.34, 0.68, 0.20 |
| Rectangle | Box48 |  |  |  |  | 0.12, 0.04, 5.75, 2.75 |
| Label | Label50 | R-R-C-P: |  |  |  | 0.51, 1.32, 0.65, 0.21 |
| TextBox | RESISTANCE_TYPE | Restistance type: | RESISTANCE_TYPE |  |  | 4.89, 1.07, 0.68, 0.20 |
| TextBox | RESISTANCE_LEVEL | Resistance Level: | RESISTANCE_LEVEL |  |  | 4.89, 1.32, 0.68, 0.20 |
| TextBox | CROSS_TYPE | Cross Type: | CROSS_TYPE |  |  | 1.25, 0.10, 0.71, 0.21 |
| TextBox | TREE | Tree No.: | TREE |  | AfterUpdate | 1.25, 0.58, 2.12, 0.20 |
| TextBox | NURSERY_REP |  | NURSERY_REP |  |  | 1.25, 1.32, 0.00, 0.20 |
| TextBox | STATE_FOREIGN | Foreign State: | STATE_FOREIGN |  |  | 1.25, 1.82, 0.63, 0.20 |
| ComboBox | STATE | State: | STATE | SELECT NMIS_STATES.STATE, [State_code] & " -" & [STATE_NAME] AS SN FROM NMIS_STATES ORDER BY [State_code] & " -" & [STATE_NAME]; |  | 1.25, 1.56, 2.13, 0.21 |
| TextBox | ACCESSION | Accession: | ACCESSION |  | AfterUpdate | 1.25, 0.83, 2.13, 0.20 |
| TextBox | RATING | Rating: | RATING |  |  | 4.90, 1.58, 0.65, 0.20 |
| TextBox | RATING_YEAR | Rating Year: | RATING_YEAR |  |  | 4.90, 1.84, 0.65, 0.20 |
| TextBox | NOTE | Note: | NOTE |  |  | 1.25, 2.10, 4.34, 0.60 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ID_ACTIVITY_CN_DblClick(Cancel As Integer)

    ID_ACTIVITY_CN.Locked = False
    
End Sub

Private Sub ID_ACTIVITY_CN_Enter()
    
    If IsNull(ID_ACTIVITY_CN) Then
        ID_ACTIVITY_CN.Locked = False
    Else
        ID_ACTIVITY_CN.Locked = True
    End If
    
End Sub

Private Sub Open_SPP_Calculator_Click()

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET_ticket"
    
End Sub

Private Sub ACCESSION_AfterUpdate()

    Forms![NMIS_SOURCE_LOTS_INPUT]![ACCESSION].Requery
    
End Sub


Private Sub SaveAndClose_Click()
On Error GoTo Err_SaveAndClose_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS"
    DoCmd.RunMacro ""
    'DoCmd.Save
    DoCmd.Close
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_SaveAndClose_Click:
    Exit Sub

Err_SaveAndClose_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_SaveAndClose_Click
    
End Sub

Private Sub TREE_AfterUpdate()

    Forms![NMIS_SOURCE_LOTS_INPUT]![TREE].Requery
    
End Sub
```
