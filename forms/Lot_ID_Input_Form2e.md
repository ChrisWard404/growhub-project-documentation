# Form: Lot_ID_Input_Form2e

**Caption:** Seed Box Input  
**Backend tables referenced:** `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_SUBLOT_INDEX`  
**Opens:** `Report:seedbox_labels_0503572e`  
**Opened from (VBA):** `Form_Reports_Menu_Source Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Print Seedbox Label | Print 1 Seed Box Label |  |  | Click | 2.60, 4.84, 1.21, 0.49 |
| CommandButton | Preview/Print Box Labels | Preview/Print Labels |  |  |  | 0.94, 4.84, 1.21, 0.49 |
| Label | Label6 | Seed Box Labels |  |  |  | 1.17, 0.04, 2.47, 0.41 |
| ComboBox | ID1 | Enter Lot ID 1 |  | SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID; |  | 0.15, 0.98, 4.40, 0.61 |
| ComboBox | ID2 | Enter Lot ID 2 |  | SELECT NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS ORDER BY NMIS_SOURCE_LOTS.ID; |  | 0.15, 3.08, 4.40, 0.61 |
| TextBox | Loction1 | Storage Location: |  |  |  | 1.70, 1.64, 0.78, 0.24 |
| TextBox | Loction2 | Storage Location: |  |  | DblClick | 1.70, 3.79, 0.78, 0.24 |
| ComboBox | Sublot1 | Box #: |  | SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX; |  | 1.70, 1.93, 0.90, 0.24 |
| ComboBox | Sublot2 | Box #: |  | SELECT NMIS_SOURCE_SUBLOT_INDEX.INDEX AS [Box #], NMIS_SOURCE_SUBLOT_INDEX.SUBLOT AS [Box ID] FROM NMIS_SOURCE_SUBLOT_INDEX ORDER BY NMIS_SOURCE_SUBLOT_INDEX.INDEX; |  | 1.70, 4.08, 0.90, 0.24 |
| TextBox | Box_Weight1 | Box Weight: |  |  |  | 1.70, 2.23, 0.86, 0.24 |
| TextBox | Box_Weight2 | Box Weight: |  |  |  | 1.70, 4.39, 0.86, 0.24 |
| Rectangle | Box15 |  |  |  |  | 0.00, 0.52, 4.71, 2.07 |
| Rectangle | Box16 |  |  |  |  | 0.00, 2.65, 4.71, 2.07 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Loction2_DblClick(Cancel As Integer)
    Loction2 = Loction1
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "seedbox_labels_0503572e"

    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub

Private Sub Print_Seedbox_Label_Click()
On Error GoTo Err_Print_Seedbox_Label_Click

    Dim stDocName As String

    stDocName = "seedbox_labels_0503572e"

    DoCmd.OpenReport stDocName, acNormal

Exit_Print_Seedbox_Label_Click:
    Exit Sub

Err_Print_Seedbox_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Seedbox_Label_Click
    
End Sub
```
