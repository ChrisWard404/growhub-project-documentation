# Form: Lot_ID_Input_Form

**Caption:** Lot_ID_Input_Form  
**Opens:** `Report:Seedbox_Labels`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS`, `Form_NMIS_SOURCE_LOTS2`, `Form_NMIS_SOURCE_LOTS_INPUT`, `Form_NMIS_SOURCE_LOTS_bu`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID | Enter Lot ID |  |  |  | 0.42, 1.57, 3.17, 0.62 |
| CommandButton | preview Seedbox Label | Preview Seed Box Label |  |  | Click | 0.71, 2.45, 0.95, 0.42 |
| CommandButton | Print Seedbox Label | Print 1 Seed Box Label |  |  | Click | 2.33, 2.45, 0.96, 0.42 |
| Label | Label5 | Seed Box Labels |  |  |  | 0.79, 0.25, 2.55, 0.41 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.SendObject acReport, stDocName

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub
Private Sub preview_Seedbox_Label_Click()
On Error GoTo Err_preview_Seedbox_Label_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.OpenReport stDocName, acPreview

Exit_preview_Seedbox_Label_Click:
    Exit Sub

Err_preview_Seedbox_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_Seedbox_Label_Click
    
End Sub
Private Sub Print_Seedbox_Label_Click()
On Error GoTo Err_Print_Seedbox_Label_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.OpenReport stDocName, acNormal

Exit_Print_Seedbox_Label_Click:
    Exit Sub

Err_Print_Seedbox_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Seedbox_Label_Click
    
End Sub
```
