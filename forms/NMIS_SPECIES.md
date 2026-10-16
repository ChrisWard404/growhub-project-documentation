# Form: NMIS_SPECIES

**Caption:** NMIS SPECIES  
**Record source:**

```sql
NMIS_SPECIES
```

**Backend tables referenced:** `NMIS_SPECIES`, `NMIS_SPECIES_GROUP`  
**Subforms/subreports:** `Form.NMIS_SOURCE_PRICE_LINKS subform`, `Form.NMIS_SPECIES subform`, `Form.NMIS_SPECIES_RETEST subform`, `Form.NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform`, `Form.NMIS_SOURCE_PRICE_RATES2 Subform`, `Form.NMIS_SOURCE_PRICE_RATES_BASE Subform`, `Form.NMIS_SOURCE_PROCESSING_LINKS`  
**Opens:** `Form:*nrcs_plantlist`, `Form:NMIS_SPECIES_CHECKLIST`, `Form:nmis_species_vs_nrcs_plantlist`, `Form:nmis_species_vs_nrcs_plantlist_by_group`, `Report:*nrcs_plantlist`, `Report:NMIS_SPECIES_CHECKLIST`, `Report:nmis_species_vs_nrcs_plantlist`, `Report:nmis_species_vs_nrcs_plantlist_by_group`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`, `Form_NMIS_AGREEMENTS_w_lot_lookup`, `Form_NMIS_SOURCE_LOTS_Bend`, `Form_NMIS_SOURCE_LOTS_INPUT`, `Form_xLookup_Tables_Menu`  
**Form events with code:** Current, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box128 |  |  |  |  | 0.04, 0.04, 4.21, 0.38 |
| CheckBox | DIVERSE | Non-Traditional? | DIVERSE |  |  | 1.38, 1.04, 0.17, 0.21 |
| TextBox | SPECIES_NO | Species No: | SPECIES_NO |  |  | 1.38, 1.25, 0.73, 0.20 |
| TextBox | SPECIES_ABBREVIATION | Abbrv: | SPECIES_ABBREVIATION |  |  | 1.38, 1.49, 0.75, 0.20 |
| TextBox | VERNACULAR | Common Name: | VERNACULAR |  | DblClick, Enter | 4.58, 0.50, 3.09, 0.20 |
| TextBox | GENUS | Genus: | GENUS |  |  | 4.58, 0.75, 1.57, 0.21 |
| TextBox | SPECIES | Species: | SPECIES |  |  | 4.58, 1.00, 1.57, 0.21 |
| TextBox | SUBSP | Subspecies: | SUBSP |  |  | 4.58, 1.25, 1.58, 0.20 |
| TextBox | VARIETY | Variety: | VARIETY |  |  | 4.58, 1.49, 1.57, 0.21 |
| ComboBox | SPECIES_GROUP | Group: | SPECIES_GROUP | NMIS_SPECIES_GROUP |  | 1.38, 0.75, 0.97, 0.20 |
| TextBox | PLNTMSTR_SYMBOL | Symbol: | PLNTMSTR_SYMBOL |  |  | 1.37, 0.50, 0.71, 0.20 |
| TextBox | Scientific_Name_Preview | Scientific Name Preview: | =[GENUS] & " " & [SPECIES] & IIf([SUBSP]>""," spp. " & [SUBSP],"") & IIf([VARIETY]>""," var. " & [VARIETY],"") |  |  | 2.38, 1.76, 4.77, 0.24 |
| ComboBox | VAR |  | VAR | "";"var." |  | 6.27, 1.49, 0.48, 0.21 |
| ComboBox | SPP |  | SPP | "";"spp." |  | 6.27, 1.25, 0.47, 0.21 |
| ComboBox | XGENUS |  | XGENUS | "";"X" |  | 6.27, 0.75, 0.47, 0.20 |
| ComboBox | XSPECIES |  | XSPECIES | "";"X" |  | 6.27, 1.00, 0.47, 0.20 |
| TabControl | TabCtl74 |  |  |  |  | 0.03, 2.04, 8.85, 4.16 |
| Page | Price Rates |  |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| Subform | NMIS_SOURCE_PRICE_LINKS subform |  | Form.NMIS_SOURCE_PRICE_LINKS subform (master: PLNTMSTR_SYMBOL → child: PLNTMSTR_SYMBOL) |  |  | 0.42, 2.64, 8.18, 3.39 |
| Label | Label118 |  Price Rate Code must be defined in Price Amount/Factor prior to use ---------------------------^^^^ |  |  |  | 0.42, 2.39, 5.71, 0.21 |
| Page | Local_NMIS_Species | Local NMIS Species |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| Rectangle | Box129 |  |  |  |  | 0.15, 2.33, 2.12, 0.42 |
| Subform | NMIS_SPECIES subform |  | Form.NMIS_SPECIES subform |  |  | 0.13, 2.79, 8.64, 3.27 |
| Label | Label101 | Local NMIS Species |  |  |  | 3.38, 2.39, 2.20, 0.31 |
| Line | Line14 |  |  |  |  | 0.30, 2.73, 8.04, 0.00 |
| TextBox | SELECTED_PLNTMSTR_SYMBOL |  |  |  |  | 5.76, 2.35, 0.75, 0.25 |
| TextBox | Like_Symbol | Symbol Like: |  |  | AfterUpdate, DblClick | 1.26, 2.43, 0.83, 0.21 |
| CommandButton | Find | Find |  |  | Click | 2.35, 2.39, 0.46, 0.31 |
| Page | NRCS_Plantlist | NRCS Plantlist |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| CommandButton | Open_NRCS_Plantlist | Open NRCS Plantlist |  |  | Click | 0.46, 2.69, 2.25, 0.28 |
| CommandButton | Local_vs_NRCS | Local vs NRCS Plantlist |  |  | Click | 3.38, 3.09, 2.25, 0.28 |
| CommandButton | Local_vs_NRCS_by_Group | Local vs NRCS Plantlist by Group |  |  | Click | 3.38, 3.39, 2.25, 0.28 |
| Rectangle | Box112 |  |  |  |  | 3.17, 2.52, 2.62, 1.29 |
| Label | Label114 | Reports |  |  |  | 4.21, 2.64, 0.56, 0.21 |
| Page | Species_Restest | Species Retest |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| Subform | NMIS_SPECIES_RETEST subform |  | Form.NMIS_SPECIES_RETEST subform (master: PLNTMSTR_SYMBOL → child: PLNTMSTR_SYMBOL) |  |  | 1.91, 2.89, 5.41, 2.00 |
| Label | Label79 | Species Retest |  |  |  | 4.01, 2.44, 1.68, 0.31 |
| Page | Oyjord Calibration |  |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| Subform | NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform |  | Form.NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS subform (master: PLNTMSTR_SYMBOL → child: PLNTMSTR_SYMBOL) |  |  | 2.98, 3.23, 3.92, 1.38 |
| Page | Price Amount/Factor |  |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| Subform | NMIS_SOURCE_PRICE_RATES2 Subform |  | Form.NMIS_SOURCE_PRICE_RATES2 Subform (master: plntmstr_symbol → child: plntmstr_symbol) |  |  | 0.96, 2.77, 6.65, 3.33 |
| Label | Label3 | Set $ Amt or Factor to 1 if using $ amounts in PRICE RATES BASE Table |  |  |  | 3.04, 2.35, 2.73, 0.37 |
| Page | Price Rates Base |  |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| Subform | NMIS_SOURCE_PRICE_RATES_BASE Subform |  | Form.NMIS_SOURCE_PRICE_RATES_BASE Subform |  |  | 2.29, 2.81, 4.05, 3.25 |
| Label | Label124 | Set Base Amt to 1 if using $ amounts in AMOUNT/FACTOR Table |  |  |  | 3.17, 2.35, 2.48, 0.37 |
| Page | Processing Rates |  |  |  |  | 0.12, 2.33, 8.67, 3.77 |
| Subform | NMIS_SOURCE_PROCESSING_LINKS |  | Form.NMIS_SOURCE_PROCESSING_LINKS (master: PLNTMSTR_SYMBOL → child: PLNTMSTR_SYMBOL) |  |  | 3.33, 2.64, 2.54, 2.52 |
| TextBox | ENTERED_BY | Entered By: | ENTERED_BY |  |  | 7.75, 1.29, 1.18, 0.00 |
| TextBox | ENTERED_DATE | Date Entered: | ENTERED_DATE |  |  | 7.75, 1.54, 0.68, 0.00 |
| CheckBox | HIDE |  | HIDE |  |  | 8.40, 1.06, 0.00, 0.00 |
| Label | Hide_In_Dropdowns_Label | Hide in Dropdowns: |  |  |  | 6.99, 1.03, 1.35, 0.20 |
| Label | Label28 | Species |  |  |  | 4.39, 0.07, 0.97, 0.31 |
| Line | Line48 |  |  |  |  | 0.08, 0.44, 8.79, 0.02 |
| CommandButton | Preview Species Checklist | Preview Species Checklist... |  |  | Click | 6.99, 0.07, 1.80, 0.29 |
| ComboBox | Like_Plntmstr_Symbol | Lookup Species Code: |  | SELECT NMIS_SPECIES.PLNTMSTR_SYMBOL, NMIS_SPECIES.SPECIES_NO, NMIS_SPECIES.SPECIES_ABBREVIATION, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name, NMIS_SPECIES.VERNACULAR FROM NMIS_SPECIES INNER JOIN NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL ORDER BY IIf([Forms]![NMIS_SPECIES]![Sort_By_Common_Name]=True,[NMIS_SPECIES].[Vernacular],[Scientific_Name]); | AfterUpdate, DblClick, Enter, Exit | 1.81, 0.12, 0.88, 0.21 |
| CheckBox | Sort_By_Common_Name | By Common  Name |  |  |  | 2.79, 0.16, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Find_Click()

    'DoCmd.Requery
    
End Sub

Private Sub Form_Current()
    
    'Like_Plntmstr_Symbol = PLNTMSTR_SYMBOL
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Plntmstr_Symbol"
    
End Sub

Private Sub Like_Plntmstr_Symbol_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[plntmstr_symbol] = '" & Me![Like_Plntmstr_Symbol] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Like_Plntmstr_Symbol_DblClick(Cancel As Integer)

    Like_Plntmstr_Symbol = Null
    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "plntmstr_symbol"
    
End Sub

Private Sub Like_Plntmstr_Symbol_Enter()

    Like_Plntmstr_Symbol.Requery
    
End Sub

Private Sub Like_Plntmstr_Symbol_Exit(Cancel As Integer)

    ' Find the record that matches the control.
    Dim rs As Object

    If Not IsNull(Like_Plntmstr_Symbol) Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[plntmstr_symbol] = '" & Me![Like_Plntmstr_Symbol] & "'"
        Me.Bookmark = rs.Bookmark
    End If

End Sub

Private Sub Like_Symbol_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Symbol_DblClick(Cancel As Integer)

    Like_Symbol = "*"
    DoCmd.Requery
    
End Sub

Private Sub Local_vs_NRCS_by_Group_Click()
On Error GoTo Err_Local_vs_NRCS_by_Group_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "nmis_species_vs_nrcs_plantlist_by_group"
    DoCmd.OpenQuery stDocName

Exit_Local_vs_NRCS_by_Group_Click:
    Exit Sub

Err_Local_vs_NRCS_by_Group_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Local_vs_NRCS_by_Group_Click
    
End Sub

Private Sub Local_vs_NRCS_Click()
On Error GoTo Err_Local_vs_NRCS_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "nmis_species_vs_nrcs_plantlist"
    DoCmd.OpenQuery stDocName
Exit_Local_vs_NRCS_Click:
    Exit Sub

Err_Local_vs_NRCS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Local_vs_NRCS_Click
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol.Locked = False
    
End Sub

Private Sub Plntmstr_Symbol_Enter()

    If Not IsNull([Plntmstr_Symbol]) Then
        [Plntmstr_Symbol].Locked = True
    Else
        [Plntmstr_Symbol].Locked = False
    End If
    
End Sub

Private Sub Plntmstr_Symbol_Exit(Cancel As Integer)

        [Plntmstr_Symbol].Locked = True

End Sub

Private Sub Preview_Species_Checklist_Click()
On Error GoTo Err_Preview_Species_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Species_Checklist_Click:
    Exit Sub

Err_Preview_Species_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Species_Checklist_Click
    
End Sub

Private Sub Open_NRCS_Plantlist_Click()
On Error GoTo Err_Open_NRCS_Plantlist_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "*nrcs_plantlist"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NRCS_Plantlist_Click:
    Exit Sub

Err_Open_NRCS_Plantlist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NRCS_Plantlist_Click
    
End Sub

Private Sub Text104_Change()

End Sub

Private Sub VERNACULAR_DblClick(Cancel As Integer)

    VERNACULAR.Locked = False
    
End Sub

Private Sub VERNACULAR_Enter()

    If IsNull(VERNACULAR) Then
        VERNACULAR.Locked = False
    Else
        VERNACULAR.Locked = True
    End If
    
End Sub
```
