# Form: Lot_ID_Input_Form2d

**Caption:** Seed Box Input  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`  
**Opens:** `Report:Seedbox_Labels`, `Report:Seedbox_Mini_Labels`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Print Seedbox Label | Print 1 Seed Box Label |  |  | Click | 2.38, 2.96, 1.21, 0.49 |
| CommandButton | Preview/Print Box Labels | Preview/Print Labels |  |  |  | 0.71, 2.96, 1.21, 0.49 |
| Label | Label6 | Seed Box Mini Labels |  |  |  | 0.55, 0.07, 3.25, 0.41 |
| ComboBox | ID1 | Enter Lot ID 1 |  | SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;  |  | 0.06, 1.13, 4.40, 0.61 |
| ComboBox | ID2 | Enter Lot ID 2 |  | SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;  |  | 0.06, 2.23, 4.40, 0.61 |

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

    stDocName = "Seedbox_Mini_Labels"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Seed_Box_Minilable_MT Query2d"
    DoCmd.OpenQuery "Seed_Box_Minilable_AP Query2d"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acNormal

Exit_Print_Seedbox_Label_Click:
    Exit Sub

Err_Print_Seedbox_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Seedbox_Label_Click
    
End Sub
Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "Seedbox_Mini_Labels"
    
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Seed_Box_Minilable_MT Query2d"
        DoCmd.OpenQuery "Seed_Box_Minilable_AP Query2d"
        DoCmd.SetWarnings True
    
        DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub
```
