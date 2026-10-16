# Form: Associate_Species_Input

**Caption:** Report Input  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Report Input  |  |  |  | 1.96, 0.08, 1.30, 0.27 |
| TextBox | Like_Client | Associate: |  |  |  | 2.85, 1.72, 0.79, 0.20 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| TextBox | Parent_Associate | Parent Associate: |  |  |  | 2.85, 1.41, 0.79, 0.20 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 2.85, 2.03, 0.80, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Report_Click()
    If IsNull([BEGIN_FY]) Or IsNull([END_FY]) Then
        MsgBox "You must enter both beginning and ending dates."
        DoCmd.GoToControl "Begin_FY"
    Else
        If [END_FY] <> "*" Then
            If ([BEGIN_FY] > [END_FY]) Then
                MsgBox "Ending FY must be greater than Beginning FY."
                DoCmd.GoToControl "Begin_FY"
            End If
        Else
            Me.Visible = False
        End If
    End If

End Sub
```
