# Form: Agreement_Lot_ID_Change_Form

**Caption:** Agreement Lot ID Change  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.ID_ORIGINAL FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.CN)=[Forms]![NMIS_ID_LOCATIONS_FORM_Husky]![Agreement_Lot_CN]));
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Opens:** `Report:Seedbox_Labels`  
**Opened from (VBA):** `Form_NMIS_ID_LOCATIONS_FORM_Husky`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label6 | Enter ID Change |  |  |  | 1.12, 0.07, 2.56, 0.41 |
| TextBox | ID |  | ID |  | AfterUpdate, Change | 0.14, 1.14, 4.49, 0.61 |
| TextBox | ID_ORIGINAL | Origional ID: | ID_ORIGINAL |  |  | 3.42, 0.83, 0.00, 0.00 |
| TextBox | ID_BACKUP | ID Backup: |  |  |  | 1.46, 0.58, 0.00, 0.00 |
| TextBox | ID_ORIGINAL_BACKUP | ID_ORGINAL Backup: |  |  |  | 1.46, 0.82, 0.00, 0.00 |
| CommandButton | Close_with_ID_Change | Change ID |  |  | Click | 2.59, 2.04, 1.17, 0.39 |
| CommandButton | Close_without_ID_Change | Cancel |  |  | Click | 1.20, 2.04, 1.17, 0.39 |

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
Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub

Private Sub Close_without_ID_Change_Click()
On Error GoTo Err_Close_without_ID_Change_Click


    ID = ID_BACKUP
    ID_ORIGINAL = ID_ORIGINAL_BACKUP
    DoCmd.Close

Exit_Close_without_ID_Change_Click:
    Exit Sub

Err_Close_without_ID_Change_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_without_ID_Change_Click
    
End Sub

Private Sub Form_Close()

    Forms![NMIS_ID_LOCATIONS_FORM_Husky]![AGREEMENT_LOT_CN].Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Close_with_ID_Change.Visible = False
    ID_BACKUP = ID
    ID_ORIGINAL_BACKUP = ID_ORIGINAL
    
End Sub

Private Sub ID_AfterUpdate()

    ID_ORIGINAL = ID_BACKUP
    
End Sub

Private Sub Close_with_ID_Change_Click()
On Error GoTo Err_Close_with_ID_Change_Click

    DoCmd.Close

Exit_Close_with_ID_Change_Click:
    Exit Sub

Err_Close_with_ID_Change_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_with_ID_Change_Click
    
End Sub

Private Sub ID_Change()

    Close_with_ID_Change.Visible = True
    
End Sub
```
