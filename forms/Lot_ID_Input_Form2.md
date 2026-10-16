# Form: Lot_ID_Input_Form2

**Caption:** Seed Box Input  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_SUBLOT_INDEX`  
**Opens:** `Report:Seedbox_Labels`, `Report:seedbox_labels_050357s`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS`, `Form_NMIS_SOURCE_LOTS_INPUT`, `Form_Reports_Menu_Source Subform`, `Form_Seed_Shipping_Ticket Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Print Seedbox Label | Print Seed Box Labels |  |  | Click | 2.82, 3.27, 1.23, 0.49 |
| CommandButton | Preview/Print Box Labels | Preview Seed Box Labels |  |  |  | 0.92, 3.27, 1.23, 0.49 |
| Label | Label6 | Seed Box Labels |  |  |  | 1.12, 0.29, 2.55, 0.41 |
| ComboBox | ID | Enter Lot ID |  | SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID; |  | 0.20, 1.19, 4.49, 0.61 |
| TextBox | Loction | Storage Location: |  |  |  | 1.61, 1.88, 0.78, 0.24 |
| TextBox | Full_Box_Weight | Full Box Weight: |  |  |  | 3.94, 2.53, 0.86, 0.24 |
| ComboBox | Label_Style | Label Style: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)="061019" Or (NMIS_ASSOCIATES.ASSOCIATE)="050357")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 0.79, 0.04, 1.83, 0.00 |
| TextBox | Odd_Weight | Odd Weight: |  |  |  | 3.94, 2.91, 0.86, 0.24 |
| Rectangle | Box20 |  |  |  |  | 0.04, 2.17, 4.83, 0.67 |
| ComboBox | First_Full_Box_Sublot | First Full Box #: |  | SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX; |  | 1.54, 2.23, 0.90, 0.24 |
| ComboBox | Last_Full_Box_Sublot | Last Full Box #: |  | SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX; |  | 1.54, 2.53, 0.90, 0.24 |
| ComboBox | Odd_Box_Sublot_ID | Odd Box #: |  | SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX; | Enter | 1.54, 2.91, 0.90, 0.24 |

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

Private Sub Odd_Box_Sublot_ID_Enter()

    If IsNull(Odd_Box_Sublot_ID) Then
        Odd_Box_Sublot_ID = Last_Full_Box_Sublot + 1
    End If
    
End Sub

Private Sub Print_Seedbox_Label_Click()
On Error GoTo Err_Print_Seedbox_Label_Click

    Dim stDocName As String

    If Label_Style = "050357" Then
    stDocName = "seedbox_labels_050357s"
    Else
        stDocName = "Seedbox_Labels"
    End If
    
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

    If Not IsNull(ID) Then
        If Label_Style = "050357" Then
        stDocName = "seedbox_labels_050357s"
        Else
            stDocName = "Seedbox_Labels"
        End If
    DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Enter a Lot ID", vbInformation
        DoCmd.GoToControl "ID"
    End If

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub
```
