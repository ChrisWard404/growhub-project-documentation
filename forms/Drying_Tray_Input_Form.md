# Form: Drying_Tray_Input_Form

**Caption:** Drying Tray Input Form  
**Opens:** `Form:xPlease_Be_Patient_Message`, `Report:PROPAGULE_HARVEST_DRYING_BIN`, `Report:PROPAGULE_HARVEST_DRYING_BIN_Label`, `Report:PROPAGULE_HARVEST_DRYING_BIN_Single_Tray`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`, `Form_xNative_Propagule_Harvest_Menu`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Drying Tray Form |  |  |  | 2.12, 0.12, 1.77, 0.28 |
| CommandButton | Preview_Drying_Tray_Form | Click to PREVIEW Drying Tray Form |  |  | Click | 2.32, 2.93, 1.11, 0.88 |
| CommandButton | Preview_Drying_Tray_Label | Click to Preview Drying Tray Label |  |  | Click | 0.84, 2.93, 1.16, 0.88 |
| TextBox | Initials | Initials/Notes: |  |  |  | 1.86, 2.11, 3.90, 0.31 |
| TextBox | Date: | Date: |  |  |  | 1.86, 1.38, 0.00, 0.31 |
| TextBox | Number_Of_Trays | # of Trays: |  |  | Exit | 1.86, 1.74, 0.00, 0.31 |
| ComboBox | Harvest_Method | Harvest Method: |  | "Direct Combine";"Pickup Combine";"Swath & Catch";Tote;Hand;Stripper;Bale;"Other" |  | 1.85, 2.48, 3.92, 0.24 |
| ComboBox | Lot_ID | Lot ID: |  | SELECT [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID, [**PROPAGULE_HARVEST_DRYING_BIN_Select].MinOfLOCATION FROM [**PROPAGULE_HARVEST_DRYING_BIN_Select] ORDER BY [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID; | AfterUpdate, Change, Enter | 1.86, 0.64, 1.19, 0.30 |
| ComboBox | Begin_Location_Lot_ID | Begin Location: |  | SELECT [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID, [**PROPAGULE_HARVEST_DRYING_BIN_Select].MinOfLOCATION, [**PROPAGULE_HARVEST_DRYING_BIN_Select].ID FROM [**PROPAGULE_HARVEST_DRYING_BIN_Select] ORDER BY [**PROPAGULE_HARVEST_DRYING_BIN_Select].MinOfLOCATION; | Change | 1.86, 1.01, 1.19, 0.30 |
| TextBox | End_Container |  |  |  |  | 5.02, 1.75, 0.48, 0.30 |
| TextBox | Begin_Container | Beg: |  |  |  | 3.72, 1.75, 0.49, 0.30 |
| Label | Label18 | End: |  |  |  | 4.41, 1.75, 0.55, 0.30 |
| CommandButton | Print_Drying_Tray_Form |  Click to PRINT Drying Tray Form |  |  | Click | 3.79, 2.93, 1.11, 0.88 |
| TextBox | Sublot | Sublot: |  |  |  | 4.00, 0.64, 0.49, 0.30 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Begin_Location_Change()

    Lot_ID = ""
    
End Sub

Private Sub Begin_Location_Enter()

    If IsNull(Lot_ID) Then
        Lot_ID = "*"
    End If

End Sub

Private Sub Begin_Location_Lot_ID_Change()

        Lot_ID = ""
        
End Sub

Private Sub Form_Open(Cancel As Integer)
    
    DoCmd.OpenForm "xPlease_Be_Patient_Message"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "PROPAGULE_HARVEST_DRYING_BIN_Select"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.SetWarnings True

End Sub

Private Sub Lot_ID_AfterUpdate()
        
    Begin_Location_Lot_ID = ""
    Number_Of_Trays = ""
    BEGIN_CONTAINER = ""
    End_Container = ""
    
End Sub

Private Sub Lot_ID_Change()
    
    Begin_Location_Lot_ID = ""
    Number_Of_Trays = ""
    BEGIN_CONTAINER = ""
    End_Container = ""
    
End Sub

Private Sub Lot_ID_Enter()

    If IsNull(Begin_Location) Then
        Begin_Location = "*"
    End If
    
End Sub

Private Sub Number_Of_Trays_Exit(Cancel As Integer)

    If Number_Of_Trays <> "" Then
        Number_Of_Trays = Abs(Number_Of_Trays)
        BEGIN_CONTAINER = 1
        End_Container = Number_Of_Trays
    Else
        BEGIN_CONTAINER = ""
        End_Container = ""
    End If
    
End Sub

Private Sub Preview_Drying_Tray_Form_Click()
    
    If Lot_ID = "" And Begin_Location_Lot_ID = "" Then
        MsgBox "Enter Lot ID or Beg Location"
    Else
        Dim stDocName As String

        stDocName = "PROPAGULE_HARVEST_DRYING_BIN"
        '***
        If (Number_Of_Trays) = "" Then
            stDocName = "PROPAGULE_HARVEST_DRYING_BIN_Single_Tray"
        Else
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "**Propagule_Tray_Tag_Number_drop"
            DoCmd.OpenQuery "**Propagule_Tray_Tag_Number_Create"
            If Number_Of_Trays = 1 Then
                total_trays = 2
            Else
                total_trays = Number_Of_Trays
            End If
            For c = 1 To total_trays
                DoCmd.OpenQuery "NMIS_PROCESS_PROPAGULE_TRAY_TAG_AT"
            Next c
            DoCmd.SetWarnings True
            stDocName = "PROPAGULE_HARVEST_DRYING_BIN"
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If

End Sub

Private Sub Preview_Drying_Tray_Label_Click()
    
    If Lot_ID = "" And Begin_Location_Lot_ID = "" Then
        MsgBox "Enter Lot ID or Beg Location"
    Else
        Dim stDocName As String

        stDocName = "PROPAGULE_HARVEST_DRYING_BIN_Label"
        '***
        If (Number_Of_Trays) = "" Then
            stDocName = "PROPAGULE_HARVEST_DRYING_BIN_Single_Tray"
        Else
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "**Propagule_Tray_Tag_Number_drop"
            DoCmd.OpenQuery "**Propagule_Tray_Tag_Number_Create"
            If Number_Of_Trays = 1 Then
                total_trays = 2
            Else
                total_trays = Number_Of_Trays
            End If
            For c = 1 To total_trays
                DoCmd.OpenQuery "NMIS_PROCESS_PROPAGULE_TRAY_TAG_AT"
            Next c
            DoCmd.SetWarnings True
            stDocName = "PROPAGULE_HARVEST_DRYING_BIN_Label"
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If

    'Dim stDocName As String

    'stDocName = "PROPAGULE_HARVEST_DRYING_BIN_Label"
    
    'MsgBox "Check Printer Switchbox Setting is on Label Printer"
    'DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Print_Drying_Tray_Form_Click()
    
    If Lot_ID = "" And Begin_Location_Lot_ID = "" Then
        MsgBox "Enter Lot ID or Beg Location"
    Else
        Dim stDocName As String

        stDocName = "PROPAGULE_HARVEST_DRYING_BIN"
        '***
        If (Number_Of_Trays) = "" Then
            stDocName = "PROPAGULE_HARVEST_DRYING_BIN_Single_Tray"
        Else
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "**Propagule_Tray_Tag_Number_drop"
            DoCmd.OpenQuery "**Propagule_Tray_Tag_Number_Create"
            If Number_Of_Trays = 1 Then
                total_trays = 2
            Else
                total_trays = Number_Of_Trays
            End If
            For c = 1 To total_trays
                DoCmd.OpenQuery "NMIS_PROCESS_PROPAGULE_TRAY_TAG_AT"
            Next c
            DoCmd.SetWarnings True
            stDocName = "PROPAGULE_HARVEST_DRYING_BIN"
        End If
    
        DoCmd.OpenReport stDocName, acNormal
    End If

End Sub
```
