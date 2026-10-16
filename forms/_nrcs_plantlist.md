# Form: *nrcs_plantlist

**Caption:** *nrcs_plantlist subform  
**Record source:**

```sql
SELECT [*nrcs_plantlist].PLNTMSTR_SYMBOL, [*nrcs_plantlist].SCIENTIFIC_NAME, [*nrcs_plantlist].VERNACULAR, [*nrcs_plantlist].Accepted_Symbol, [*nrcs_plantlist].Synonym_Symbol, IIf([Forms]![*nrcs_plantlist]![Sort_By]="Symbol",[PLNTMSTR_SYMBOL],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Scientific Name",[Scientific_Name],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Common Name",[VERNACULAR],[PLNTMSTR_SYMBOL]))) AS SORT_BY FROM [*nrcs_plantlist] WHERE ((([*nrcs_plantlist].PLNTMSTR_SYMBOL) Like [Forms]![*nrcs_plantlist]![Like_Symbol] & "*")) ORDER BY IIf([Forms]![*nrcs_plantlist]![Sort_By]="Symbol",[PLNTMSTR_SYMBOL],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Scientific Name",[Scientific_Name],IIf([Forms]![*nrcs_plantlist]![Sort_By]="Common Name",[VERNACULAR],[PLNTMSTR_SYMBOL])));
```

**Order by:** `[_*nrcs_plantlist].[VERNACULAR]`  
**Backend tables referenced:** `*nrcs_plantlist`  
**Opened from (VBA):** `Form_NMIS_SPECIES`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line21 |  |  |  |  | 0.03, 0.47, 8.66, 0.00 |
| Label | Label20 | NRCS Plantlist |  |  |  | 3.35, 0.10, 2.12, 0.31 |
| TextBox | SELECTED_PLNTMSTR_SYMBOL |  |  |  |  | 2.62, 0.09, 0.75, 0.25 |
| TextBox | Like_Symbol | Symbol Like: |  |  | AfterUpdate | 1.19, 0.14, 0.83, 0.21 |
| CommandButton | Find | Find |  |  | Click | 2.15, 0.09, 0.46, 0.31 |
| CommandButton | Sort_By_Symbol | Symbol |  |  | Click | 0.15, 0.51, 0.72, 0.24 |
| TextBox | Sort_By | Sorted By: |  |  |  | 7.31, 0.14, 1.25, 0.21 |
| CommandButton | Sort_By_Scientific_Name | Scientific Name |  |  | Click | 0.91, 0.51, 3.52, 0.24 |
| CommandButton | Sort_By_Vernacular | Common Name |  |  | Click | 4.45, 0.51, 4.12, 0.24 |
| CommandButton | Command35 | Tip |  |  | Click | 6.02, 0.09, 0.38, 0.31 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PLNTMSTR_SYMBOL |  | PLNTMSTR_SYMBOL |  |  | 0.15, 0.03, 0.70, 0.20 |
| TextBox | SCIENTIFIC_NAME |  | SCIENTIFIC_NAME |  |  | 0.91, 0.03, 3.49, 0.20 |
| TextBox | VERNACULAR |  | VERNACULAR |  |  | 4.45, 0.03, 4.12, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Command35_Click()

    MsgBox "Click on the Column Heading to sort by that Column.", vbInformation
    
End Sub

Private Sub Find_Click()

    DoCmd.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Like_Symbol"
    DoCmd.Requery
    
End Sub

Private Sub Like_Symbol_AfterUpdate()

DoCmd.Requery

End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Like_Symbol = Plntmstr_Symbol
    
End Sub
Private Sub Sort_By_Symbol_Click()
On Error GoTo Err_Sort_By_Symbol_Click


    Sort_By = "Symbol"
    DoCmd.Requery

Exit_Sort_By_Symbol_Click:
    Exit Sub

Err_Sort_By_Symbol_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sort_By_Symbol_Click
    
End Sub
Private Sub Sort_By_Scientific_Name_Click()
On Error GoTo Err_Sort_By_Scientific_Name_Click

    Sort_By = "Scientific Name"
    DoCmd.Requery

Exit_Sort_By_Scientific_Name_Click:
    Exit Sub

Err_Sort_By_Scientific_Name_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sort_By_Scientific_Name_Click
    
End Sub
Private Sub Sort_By_Vernacular_Click()
On Error GoTo Err_Sort_By_Vernacular_Click

    Sort_By = "Common Name"
    DoCmd.Requery

Exit_Sort_By_Vernacular_Click:
    Exit Sub

Err_Sort_By_Vernacular_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sort_By_Vernacular_Click
    
End Sub
```
