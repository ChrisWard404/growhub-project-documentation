# Legacy NMIS VBA (modules of reachable screens + standard modules) (part 1 of 2)

Code-behind for reachable forms/reports plus all standard modules. Module names are Form_<form>, Report_<report> or the module name.

## Module: Activity_Transactions_Form_Open Module

```vb
Option Compare Database

Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_INVENTORY()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal, "", "", , acNormal
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Activity_Code = "LOTINV"

End Sub
Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_LIFTING()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal, "", "", , acNormal
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Activity_Code = "FAMLF"

End Sub
Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING()
    
    Dim VarX As Variant
    VarX = DLookup("[CN]", "NMIS_LOCATIONS", "Location = 'Cooler'")
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal, "", "", , acNormal
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Activity_Code = "PACK"
    Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Default_Location = VarX

End Sub
Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_ALL()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM", acNormal

End Sub
```

## Module: Converted Macro- SPCL_SVCS_STRING Macro

```vb
Option Compare Database

'------------------------------------------------------------
' SPCL_SVCS_STRING_Macro
'
'------------------------------------------------------------
Function SPCL_SVCS_STRING_Macro()
On Error GoTo SPCL_SVCS_STRING_Macro_Err

    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit


SPCL_SVCS_STRING_Macro_Exit:
    Exit Function

SPCL_SVCS_STRING_Macro_Err:
    MsgBox Error$
    Resume SPCL_SVCS_STRING_Macro_Exit

End Function
```

## Module: Error_Messages

```vb
Option Compare Database

Public Sub Label_click_error()
    DoCmd.OpenForm "xLabel_Click_Error"
End Sub
```

## Module: Form_*nrcs_plantlist

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

## Module: Form_Agreement_Lot_ID_Change_Form

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

## Module: Form_Agreement_Lot_ID_Change_from_Tags0 Form

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

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open


    ID_BACKUP = ID
    ID_ORIGINAL_BACKUP = ID_ORIGINAL
    Close_with_ID_Change.Visible = False
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    'MsgBox Err.DESCRIPTION
    MsgBox "Not a Valid Lot ID", vbCritical
    DoCmd.Close
    Resume Exit_Form_Open
    
End Sub

Private Sub ID_AfterUpdate()

    ID_ORIGINAL = ID_BACKUP
    
End Sub

Private Sub Close_with_ID_Change_Click()
On Error GoTo Err_Close_with_ID_Change_Click

    Forms![Field_Tags]![Find_Lot] = ID
    Forms![Field_Tags]![Find_Lot].Requery
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

## Module: Form_Agreement_Lot_ID_Change_from_Tags1 Form

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

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open


    ID_BACKUP = ID
    ID_ORIGINAL_BACKUP = ID_ORIGINAL
    Close_with_ID_Change.Visible = False
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    'MsgBox Err.DESCRIPTION
    MsgBox "Not a Valid Lot ID", vbCritical
    DoCmd.Close
    Resume Exit_Form_Open
    
End Sub

Private Sub ID_AfterUpdate()

    ID_ORIGINAL = ID_BACKUP
    
End Sub

Private Sub Close_with_ID_Change_Click()
On Error GoTo Err_Close_with_ID_Change_Click

    Forms![Field_Tags]![Lot_ID_1] = ID
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

## Module: Form_Agreement_Lot_ID_Change_from_Tags2 Form

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

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open


    ID_BACKUP = ID
    ID_ORIGINAL_BACKUP = ID_ORIGINAL
    Close_with_ID_Change.Visible = False
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    'MsgBox Err.DESCRIPTION
    MsgBox "Not a Valid Lot ID", vbCritical
    DoCmd.Close
    Resume Exit_Form_Open
    
End Sub

Private Sub ID_AfterUpdate()

    ID_ORIGINAL = ID_BACKUP
    
End Sub

Private Sub Close_with_ID_Change_Click()
On Error GoTo Err_Close_with_ID_Change_Click

    Forms![Field_Tags]![Lot_ID_2] = ID
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

## Module: Form_Agreement_Lot_ID_Change_from_Tags3 Form

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

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open


    ID_BACKUP = ID
    ID_ORIGINAL_BACKUP = ID_ORIGINAL
    Close_with_ID_Change.Visible = False
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    'MsgBox Err.DESCRIPTION
    MsgBox "Not a Valid Lot ID", vbCritical
    DoCmd.Close
    Resume Exit_Form_Open
    
End Sub

Private Sub ID_AfterUpdate()

    ID_ORIGINAL = ID_BACKUP
    
End Sub

Private Sub Close_with_ID_Change_Click()
On Error GoTo Err_Close_with_ID_Change_Click

    Forms![Field_Tags]![Lot_ID_3] = ID
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

## Module: Form_Agreement_Lot_ID_Change_from_Tags4 Form

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

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open


    ID_BACKUP = ID
    ID_ORIGINAL_BACKUP = ID_ORIGINAL
    Close_with_ID_Change.Visible = False
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    'MsgBox Err.DESCRIPTION
    MsgBox "Not a Valid Lot ID", vbCritical
    DoCmd.Close
    Resume Exit_Form_Open
    
End Sub

Private Sub ID_AfterUpdate()

    ID_ORIGINAL = ID_BACKUP
    
End Sub

Private Sub Close_with_ID_Change_Click()
On Error GoTo Err_Close_with_ID_Change_Click

    Forms![Field_Tags]![Lot_ID_4] = ID
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

## Module: Form_Agreement_Lot_ID_Change_from_Tags5 Form

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

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open


    ID_BACKUP = ID
    ID_ORIGINAL_BACKUP = ID_ORIGINAL
    Close_with_ID_Change.Visible = False
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    'MsgBox Err.DESCRIPTION
    MsgBox "Not a Valid Lot ID", vbCritical
    DoCmd.Close
    Resume Exit_Form_Open
    
End Sub

Private Sub ID_AfterUpdate()

    ID_ORIGINAL = ID_BACKUP
    
End Sub

Private Sub Close_with_ID_Change_Click()
On Error GoTo Err_Close_with_ID_Change_Click

    Forms![Field_Tags]![Lot_ID_5] = ID
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

## Module: Form_Associate_Input

```vb
Option Compare Database

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub
```

## Module: Form_Associate_Mail_Label_Input

```vb
Option Compare Database

Private Sub ASSOCIATE_Lookup_AfterUpdate()

    Like_Client = ASSOCIATE_Lookup
    
End Sub

Private Sub ASSOCIATE_Lookup_by_Name_AfterUpdate()

    Like_Client = ASSOCIATE_Lookup_by_Name
    
End Sub

Private Sub ASSOCIATE_Lookup_by_Name_Enter()

    ASSOCIATE_Lookup = Null
    
End Sub

Private Sub ASSOCIATE_Lookup_Enter()

    
    ASSOCIATE_Lookup_by_Name = Null
    
End Sub

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub
```

## Module: Form_Associate_Mail_Label_Input_shipping

```vb
Option Compare Database

Private Sub ASSOCIATE_Lookup_AfterUpdate()

    Like_Client = ASSOCIATE_Lookup
    
End Sub

Private Sub ASSOCIATE_Lookup_by_Name_AfterUpdate()

    Like_Client = ASSOCIATE_Lookup_by_Name
    
End Sub

Private Sub ASSOCIATE_Lookup_by_Name_Enter()

    ASSOCIATE_Lookup = Null
    
End Sub

Private Sub ASSOCIATE_Lookup_Enter()

    
    ASSOCIATE_Lookup_by_Name = Null
    
End Sub

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub
```

## Module: Form_BeginFY_EndFY_Associate_Species_Input

```vb
Option Compare Database

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   'Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)

    'Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        COLLECT_METHOD.Visible = True
    Else
        COLLECT_METHOD.Visible = False
    End If
    
End Sub

Private Sub Preview_Report_Click()

    'If IsNull([BEGIN_FY]) Or IsNull([END_FY]) Then
        'MsgBox "You must enter both beginning and ending dates."
        'DoCmd.GoToControl "Begin_FY"
    'Else
        'If [END_FY] <> "*" Then
            'If ([BEGIN_FY] > [END_FY]) Then
                'MsgBox "Ending FY must be greater than Beginning FY."
                'DoCmd.GoToControl "Begin_FY"
            'End If
        'Else
            Me.Visible = False
        'End If
    'End If

End Sub
```

## Module: Form_BeginFY_EndFY_Associate_Species_Input_Inv_SPD

```vb
Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Diverse_AfterUpdate()
    
    Data_Processed = False
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)

    Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        COLLECT_METHOD.Visible = True
    Else
        COLLECT_METHOD.Visible = False
    End If
    
End Sub


Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet" ', acPreview
    'If Not Excel_Message_Viewed Then
        'MsgBox "Click on the Print Previw Tab, Select Excel from the data section and select Export Data with Formatting and Layout in the export window to save as a Spreadsheet in desired folder"
        'Excel_Message_Viewed = True
    'End If
    
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click

End Sub
```

## Module: Form_CLIENT_BILLING_PREVIEW_BILLING

```vb
Option Compare Database

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    DoCmd.SetWarnings True

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click



End Sub

Private Sub Preview_Special_Services_Report_Click()
On Error GoTo Err_Preview_Special_Services_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_1"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_SVCS_CODES_APPEND"
    
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS_SVCS"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Special_Services_Report_Click:
    Exit Sub

Err_Preview_Special_Services_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Special_Services_Report_Click


End Sub

Private Sub Preview_Ticket_Activity_Report_Click()

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_TICKETS"
    DoCmd.OpenReport stDocName, acPreview

End Sub
```

## Module: Form_CLIENT_BILLING_PREVIEW_BILLING2

```vb
Option Compare Database

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    DoCmd.SetWarnings True

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS2"
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click



End Sub

Private Sub Preview_Special_Services_Report_Click()
On Error GoTo Err_Preview_Special_Services_Report_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS delete"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_1_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SVCS_2_2"
    DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_SVCS_CODES_APPEND"
    
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_LOTS_SVCS2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Special_Services_Report_Click:
    Exit Sub

Err_Preview_Special_Services_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Special_Services_Report_Click


End Sub

Private Sub Preview_Ticket_Activity_Report_Click()

    Dim stDocName As String

    stDocName = "CLIENT_BILL_PREVIEW_TICKETS2"
    DoCmd.OpenReport stDocName, acPreview

End Sub
```

## Module: Form_Change_Bend_stored_for

```vb
Option Compare Database

Private Sub Form_Close()

    Forms![NMIS_SOURCE_LOTS_Bend].Requery
    
End Sub
```

## Module: Form_Client_Bill_Menu

```vb
Option Compare Database

Private Sub Begin_Date_AfterUpdate()
    
    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillBarerootDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillBarerootHoldDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
  
End Sub

Private Sub BillContainerDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillContainerHoldDeposit_AfterUpdate()

    Client_Bill_Data_Processed = False
  
End Sub

Private Sub BillLowGermSurcharge_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillPvwProc_Click()
On Error GoTo Err_BillPvwProc_Click

    DoCmd.OpenForm "CLIENT_BILLING_PREVIEW_BILLING2"
    '  turns warning (about to update/delete...) off
    'DoCmd.SetWarnings False

    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    'DoCmd.SetWarnings True

    'Dim stDocName As String

    'tDocName = "CLIENT_BILL_PREVIEW_LOTS"
    'DoCmd.OpenReport stDocName, acPreview


Exit_BillPvwProc_Click:
    Exit Sub

Err_BillPvwProc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BillPvwProc_Click
    
End Sub

Private Sub BillQP1C_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub BillSmallLotSurcharge_AfterUpdate()

    Client_Bill_Data_Processed = False
    
End Sub

Private Sub CliBilInv_Lot_Detail_Click()
On Error GoTo Err_CliBilInv_Lot_Detail_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at" ' PACK, CPROC, PXPLT
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at" 'PDEST, FDEST, SDEST, CNDEST
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at" 'DBLSRT, SCSL, SCG1, SCG2, SCND
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at" 'Storage containers
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    'DoCmd.OpenQuery "CLIENT_BILL_3-3c at" 'Bed Feet Surcharge non-traditional 1+0
    DoCmd.OpenQuery "CLIENT_BILL_4 at" 'Container loading
    DoCmd.OpenQuery "CLIENT_BILL_5 at" 'CDEST
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at" 'Transplanting Nursery Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at" 'Transplanting Client Owned Foreign Source
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at" 'Transplanting Hand
    DoCmd.OpenQuery "CLIENT_BILL_7 at" 'TSO Billing
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at" 'Foreign Source Transplanting Old no longer used.
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_w_lot_detail"
    DoCmd.OpenReport stDocName, acPreview
    

Exit_CliBilInv_Lot_Detail_Click:
    Exit Sub

Err_CliBilInv_Lot_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_Lot_Detail_Click
    
End Sub

Private Sub CliBilInv_Lot_Detail_spd_Click()
On Error GoTo Err_CliBilInv_Lot_Detail_spd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_bill_invoice_w_lot_detail_spd"
    DoCmd.OpenQuery stDocName
    
Exit_CliBilInv_Lot_Detail_spd_Click:
    Exit Sub

Err_CliBilInv_Lot_Detail_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_Lot_Detail_spd_Click
    
End Sub

Private Sub CliBilInv_wo_Lot_Detail_spd_Click()
On Error GoTo Err_CliBilInv_wo_Lot_Detail_spd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_bill_invoice_wo_lot_detail_spd"
    DoCmd.OpenQuery stDocName
    
Exit_CliBilInv_wo_Lot_Detail_spd_Click:
    Exit Sub

Err_CliBilInv_wo_Lot_Detail_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_wo_Lot_Detail_spd_Click
    
End Sub

Private Sub CliBillInv_Click()
On Error GoTo Err_CliBillInv_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_wo_lot_detail"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillInv_Click:
    Exit Sub

Err_CliBillInv_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillInv_Click
    
End Sub

Private Sub CliBillShip_Click()
On Error GoTo Err_CliBillShip_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_Shipping"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillShip_Click:
    Exit Sub

Err_CliBillShip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillShip_Click
    
End Sub

Private Sub CliBilSummary_by_Client_Click()
On Error GoTo Err_CliBilSummary_by_Client_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    'DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_Client_Checklist"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
Exit_CliBilSummary_by_Client_Click:
    Exit Sub

Err_CliBilSummary_by_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilSummary_by_Client_Click
End Sub

Private Sub CliBilSummary_Click()

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
End Sub

Private Sub CliBilSummary_spd_Click()
On Error GoTo Err_CliBilSummary_spd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED_spd"
    DoCmd.OpenQuery stDocName
    
Exit_CliBilSummary_spd_Click:
    Exit Sub

Err_CliBilSummary_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilSummary_spd_Click
    
End Sub

Private Sub Client_Bill_Checklist_Click()
On Error GoTo Err_Client_Bill_Checklist_Click

    Dim stDocName As String

    stDocName = "Client_Bill_Invoice_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Client_Bill_Checklist_Click:
    Exit Sub

Err_Client_Bill_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Checklist_Click
   

End Sub

Private Sub Client_Billing_Summary_Click()
On Error GoTo Err_Client_Billing_Summary_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at" ' PACK, CPROC, PXPLT
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at" 'PDEST, FDEST, SDEST
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at" 'DBLSRT, SCSL, SCG1, SCG2, SCND
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at" 'Storage containers
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    'DoCmd.OpenQuery "CLIENT_BILL_3-3c at" 'Bed Feet Surcharge non-traditional 1+0
    DoCmd.OpenQuery "CLIENT_BILL_4 at" 'Container loading
    DoCmd.OpenQuery "CLIENT_BILL_5 at" 'CDEST
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at" 'Transplanting Nursery Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at" 'Transplanting Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at" 'Transplanting Hand
    DoCmd.OpenQuery "CLIENT_BILL_7 at" 'TSO Billing
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at" 'Foreign Source Transplanting Old no longer used.
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED2"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
        
Exit_Client_Billing_Summary_Click:
    Exit Sub

Err_Client_Billing_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Billing_Summary_Click
    
End Sub

Private Sub Client_Billing_Summary_Detail_Click()
On Error GoTo Err_Client_Billing_Summary_Detail_Click
'  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at" ' PACK, CPROC, PXPLT
    'DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at" 'PDEST, FDEST, SDEST
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at" 'DBLSRT, SCSL, SCG1, SCG2, SCND
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at" 'Storage containers
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    'DoCmd.OpenQuery "CLIENT_BILL_3-3c at" 'Bed Feet Surcharge non-traditional 1+0
    DoCmd.OpenQuery "CLIENT_BILL_4 at" 'Container loading
    DoCmd.OpenQuery "CLIENT_BILL_5 at" 'CDEST
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at" 'Transplanting Nursery Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at" 'Transplanting Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at" 'Transplanting Hand
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_7 at" 'TSO Billing
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at" 'Foreign Source Transplanting Old no longer used.
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ(SCLG1, SCLG2)
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
    
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    

Exit_Client_Billing_Summary_Detail_Click:
    Exit Sub

Err_Client_Billing_Summary_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Billing_Summary_Detail_Click
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub End_Date_AfterUpdate()
    
    Client_Bill_Data_Processed = False
    
End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If [BEGIN_DATE] > [END_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
        MsgBox BEGIN_DATE
        MsgBox END_DATE
        DoCmd.GoToControl "end_date"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        [BillContainerDeposit] = True
        BillSmallLotSurcharge = True
        BillLowGermSurcharge = True
        [SurchargePCT] = 100
        [BillQP1C] = True
        If Forms![Switchboard]![FY_For_Reports] < 2019 Then
            [BillContainerHoldDeposit] = False
            [BillBarerootDeposit] = False
            [BillBarerootHoldDeposit] = False
        Else
            [BillContainerHoldDeposit] = True
            [BillBarerootDeposit] = True
            [BillBarerootHoldDeposit] = True
        End If
    Else
        [BillContainerDeposit] = False
        [BillContainerHoldDeposit] = False
        [BillBarerootDeposit] = False
        [BillBarerootHoldDeposit] = False
        BillSmallLotSurcharge = False
        BillLowGermSurcharge = False
        [SurchargePCT] = ""
        [BillQP1C] = False
    End If
    
End Sub

Private Sub IncomeDistributionSpd_Click()
On Error GoTo Err_IncomeDistributionSpd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_Bill_Invoice_Client_Checklist_Income_Dist"
    DoCmd.OpenQuery stDocName
    
Exit_IncomeDistributionSpd_Click:
    Exit Sub

Err_IncomeDistributionSpd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_IncomeDistributionSpd_Click
End Sub

Private Sub InvoiceSumSpd_Click()
On Error GoTo Err_InvoiceSumSpd_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_1b at" 'bills qplug transplant first cycle from LOTINV
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1b at" 'bills qplug transplant first cycle surcharge for low germ/small lot
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-3 at" 'Bills Client for Hourly
    DoCmd.OpenQuery "CLIENT_BILL_3-3c at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6 at" 'Transplanting to Pots
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1b at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1c at" 'Striking Client Owned
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_7_3 at" 'Tickets with Foreign Source shipping only"
    'DoCmd.OpenQuery "CLIENT_BILL_8 at"
    
    'Bill for Deposits and surcharges
    
    If [BillContainerDeposit] Then
        DoCmd.OpenQuery "CLIENT_BILL_9 at" 'Container Deposit
    End If
    If [BillContainerHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d2 at" 'Container Holdover Deposit
    End If
    If [BillBarerootDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_9b at" 'Bareroot Deposit
    End If
    If [BillBarerootHoldDeposit] Then
    DoCmd.OpenQuery "CLIENT_BILL_6-1d at" 'Bareroot Holdover Deposit
    End If
    
    If [BillSmallLotSurcharge] Then
        DoCmd.OpenQuery "CLIENT_BILL_9-1 at" 'Container Deposit Small Container SCSL < 2000
        DoCmd.OpenQuery "CLIENT_BILL_9-2 at" 'Container Deposit Large Container SCSL < 200 (MT251, TP49, TP414)
    End If
    If [BillLowGermSurcharge] Then
        'DoCmd.OpenQuery "CLIENT_BILL_9-3 at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG1, SCLG2)
        DoCmd.OpenQuery "CLIENT_BILL_9-3b at" 'Container Deposit Low Germ (changed to all lots low germ surcharge)(SCLG3)
    End If
    
    If [BillQP1C] Then
        DoCmd.OpenQuery "CLIENT_BILL_10 at" 'Qplug Transplant 1st Cycle
        'DoCmd.OpenQuery "CLIENT_BILL_10-1 at" 'Qplug Transplant 1st Cycle SCSL < 2000
        'DoCmd.OpenQuery "CLIENT_BILL_10-3 at" 'Qplug Transplant 1st Cycle Low Germ
    End If
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "Client_Bill_Billing_Parent_MGMT_Code_Query"
    stDocName2 = "Client_Bill_Billing_Parent_MGMT_Code_MT_Query"
    DoCmd.OpenQuery stDocName
    DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName2
    DoCmd.SetWarnings True
    
Exit_InvoiceSumSpd_Click:
    Exit Sub

Err_InvoiceSumSpd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_InvoiceSumSpd_Click
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub NMIS_ORDER_BILL_ADJUSTMENTS_Click()
'NMIS_ORDER_BILL_ADJUSTMENTS
On Error GoTo Err_NMIS_ORDER_BILL_ADJUSTMENTS_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDER_BILL_ADJUSTMENTS"
        
    Client_Bill_Data_Processed = False
    
    DoCmd.OpenForm stDocName, acNormal, "", "", , acNormal
    
Exit_NMIS_ORDER_BILL_ADJUSTMENTS_Click:
    Exit Sub

Err_NMIS_ORDER_BILL_ADJUSTMENTS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDER_BILL_ADJUSTMENTS_Click
End Sub

Private Sub Open_NMIS_AGREEMENTS_Click()
On Error GoTo Err_Open_NMIS_AGREEMENTS_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS"
    DoCmd.OpenForm stDocName

Exit_Open_NMIS_AGREEMENTS_Click:
    Exit Sub

Err_Open_NMIS_AGREEMENTS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_AGREEMENTS_Click
   
End Sub

Private Sub Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click()
On Error GoTo Err_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click

    Dim stDocName As String

    stDocName = "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_What_It_Is_MT Query", acNormal
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, acNormal, "", "", , acNormal
    
Exit_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click:
    Exit Sub

Err_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM_FOR_PROCESSING_Click
End Sub

Private Sub Open_NMIS_Order_Review_Form_Click()
On Error GoTo Err_Open_NMIS_Order_Review_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Open_NMIS_PROCESSING_ORDERS_Review"
    
    Client_Bill_Data_Processed = False
    DoCmd.RunMacro stDocName

Exit_Open_NMIS_Order_Review_Form_Click:
    Exit Sub

Err_Open_NMIS_Order_Review_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Order_Review_Form_Click
   
End Sub

Private Sub Open_NMIS_Product_Charges_Form_Click()
On Error GoTo Err_Open_NMIS_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES2"
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Product_Charges_Form_Click:
    Exit Sub

Err_Open_NMIS_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Product_Charges_Form_Click
    
End Sub

Private Sub Open_NMIS_Review_All_Pack_Data_Report_Click()
On Error GoTo Err_Open_NMIS_Review_All_Pack_Data_Report_Click

    Dim stDocName As String

    stDocName = "PROOF_ALL_From_Billing_Form"
    DoCmd.OpenReport stDocName, acPreview

Exit_Open_NMIS_Review_All_Pack_Data_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_All_Pack_Data_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_All_Pack_Data_Report_Click
   
End Sub

Private Sub Open_NMIS_Review_Pack_Status_Report_Click()
On Error GoTo Err_Open_NMIS_Review_Pack_Status_Report_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Open_NMIS_Review_Pack_Status_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_Pack_Status_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_Pack_Status_Report_Click
   
End Sub

Private Sub Open_NMIS_Review_Stock_Destroyed_Report_Click()
On Error GoTo Err_Open_NMIS_Review_Stock_Destroyed_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Destroy_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Open_NMIS_Review_Stock_Destroyed_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_Stock_Destroyed_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_Stock_Destroyed_Report_Click
   
End Sub

Private Sub Open_NMIS_Review_Stock_Higraded_Report_Click()
On Error GoTo Err_Open_NMIS_Review_Stock_Higraded_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Higrade_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Open_NMIS_Review_Stock_Higraded_Report_Click:
    Exit Sub

Err_Open_NMIS_Review_Stock_Higraded_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Review_Stock_Higraded_Report_Click
   
End Sub

Private Sub Open_NMIS_Ship_Ticket_Form_Click()
On Error GoTo Err_Open_NMIS_Ship_Ticket_Form_Click

DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
    DoCmd.OpenQuery "NMIS_Product_ship Ticket_multiple_orders_mt"
    DoCmd.SetWarnings True

    Dim stDocName As String
    stDocName = "NMIS_SHIPPING_TICKET subform"

    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_NMIS_Ship_Ticket_Form_Click:
    Exit Sub

Err_Open_NMIS_Ship_Ticket_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Ship_Ticket_Form_Click
   
End Sub

Private Sub Open_NMIS_TSO_Form_Click()
On Error GoTo Err_Open_NMIS_TSO_Form_Click

    Dim stDocName As String
    stDocName = "NMIS_TICKETS_charge_per_ticket1"

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_mt"
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_NMIS_TSO_Form_Click:
    Exit Sub

Err_Open_NMIS_TSO_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_TSO_Form_Click
   
End Sub
Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "CLIENT_BILL_Table_Edit"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub
```

## Module: Form_Contract_Payment_Estimate_Invoice

```vb
Option Compare Database

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub FY_DblClick(Cancel As Integer)
    [FY].Locked = False
    MsgBox "FY is now UNLOCKED for Editing."
End Sub

Private Sub FY_Exit(Cancel As Integer)
        [FY].Locked = True
End Sub

Private Sub CONTRACT_NO_Change()

    If Contract_No = "New Contract" Then
    
        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        
        [Forms]![Contract_Payment_Estimate_Invoice]![Contract_No] = Null
        DoCmd.OpenForm stDocName ', , , , acFormAdd
        DoCmd.GoToRecord , , acNewRec
        Contract_No.Locked = False
        Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
        Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        
        
    End If
    
End Sub

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)

        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        stLinkCriteria = "[CONTRACT_NO]=" & "'" & _
                            Forms![Contract_Payment_Estimate_Invoice]![Contract_No] & "'"
        If Not IsNull(Contract_No) Then
            DoCmd.OpenForm stDocName, , , stLinkCriteria
            Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
            Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        Else
            [Forms]![Contract_Payment_Estimate_Invoice]![Contract_No] = Null
            DoCmd.OpenForm stDocName ', , , , acFormAdd
            DoCmd.GoToRecord , , acNewRec
            Contract_No.Locked = False
            Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
            Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        End If
    
End Sub

Private Sub CONTRACT_NO_Enter()

    If Not IsNull(Contract_No) Then
        Contract_No.Locked = True
    Else
        Contract_No.Locked = False
    End If
    
End Sub

Private Sub CONTRACT_NO_Exit(Cancel As Integer)

    Contract_No.Locked = True
    
    If IsNull(Project_Name) Then
        Project_Name = PROJECT
    End If
    
End Sub

Private Sub ESTIMATE_NO_DblClick(Cancel As Integer)

    ESTIMATE_NO.Locked = False
    
End Sub

Private Sub ESTIMATE_NO_Enter()

    If Not IsNull(ESTIMATE_NO) Then
        ESTIMATE_NO.Locked = True
    Else
        ESTIMATE_NO.Locked = False
    End If
    
End Sub

Private Sub ESTIMATE_NO_Exit(Cancel As Integer)

    ESTIMATE_NO.Locked = True
    
End Sub

Private Sub CONTRACT_NO_GotFocus()

    Contract_No.Requery
    
End Sub

Private Sub Contract_Payment_Estimate_Invoice_Main_subform_Enter()

    If IsNull(Contract_No) Then
        MsgBox "Must Select a Contract No. First."
        [Contract_No].SetFocus
    End If
      
End Sub

Private Sub Contract_Payment_Estimate_Invoice_subform1_Enter()

    If [Just_Opened] = True Then
        [Just_Opened] = False
    Else
        If IsNull(Contract_No) Then
            MsgBox "Must Select a Contract No. First"
            [Contract_No].SetFocus
        End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Contract_no"

End Sub

Private Sub Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Click()

    Dim stDocName As String

    stDocName = "CONTRACT_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub View_Contract_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CONTRACT_NO] = '" & Me![View_Contract] & "'"
    Me.Bookmark = rs.Bookmark
     
End Sub

Private Sub Processing_Calcs_Click()
    
    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenForm stDocName
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![Contract_No]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![BEGIN_DATE] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![BEGIN_DATE]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![END_DATE] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![END_DATE]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No].Locked = True
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![BEGIN_DATE].Locked = True
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![END_DATE].Locked = True
    'DoCmd.GoToControl "Preview_Process_Pay_Calculations_Report"
  
End Sub

Private Sub Update_Lift_Items_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Lift_CItems1_mt"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Lift_CItems"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Totals"
    DoCmd.SetWarnings True
    [Contract_Payment_Estimate_Invoice subform1].Form![Total_Earned_to_Date].Requery
    
End Sub

Private Sub Update_Pack_Items_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_MT"
    'DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Deduct_At"
    'DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Reduction_AT"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Cull_Adjust_At"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_incremental_AT"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Pack_CItems"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Totals"
    DoCmd.SetWarnings True
    [Contract_Payment_Estimate_Invoice subform1].Form![Total_Earned_to_Date].Requery

End Sub

Private Sub VIEW_FY_Change()

    Contract_No = Null
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    Contract_No = Null
    Contract_No.Requery
    
End Sub
```

## Module: Form_Contract_Payment_Estimate_Invoice subform1

```vb
Option Compare Database

Private Sub Form_Current()
    If IsNull([DATE_SIGNED]) Then
        Changes.Locked = False
        Contract.Locked = False
        Contract_No.Locked = False
        ESTIMATE_NO.Locked = False
        ESTIMATE_NO_PREVIOUS.Locked = False
        FISCAL_YEAR.Locked = False
        Item.Locked = False
        Item_No.Locked = False
        Level.Locked = False
        Prev_Est.Locked = False
        Rev_Tot.Locked = False
        sort.Locked = False
        This_Est.Locked = False
        Total_Earned_to_Date.Locked = False
        Total_To_Date.Locked = False
        UNIT.Locked = False
        Unit_Price.Locked = False
        
    Else
        Changes.Locked = True
        Contract.Locked = True
        Contract_No.Locked = True
        ESTIMATE_NO.Locked = True
        ESTIMATE_NO_PREVIOUS.Locked = True
        FISCAL_YEAR.Locked = True
        Item.Locked = True
        Item_No.Locked = True
        Level.Locked = True
        Prev_Est.Locked = True
        Rev_Tot.Locked = True
        sort.Locked = True
        This_Est.Locked = True
        Total_Earned_to_Date.Locked = True
        Total_To_Date.Locked = True
        UNIT.Locked = True
        Unit_Price.Locked = True
    End If
    
End Sub

Private Sub Item_Enter()

    Item.Requery
    
End Sub

Private Sub Item_No_Enter()

    Item_No.Requery
    
End Sub

Private Sub This_Est_DblClick(Cancel As Integer)

End Sub

Private Sub This_Est_Exit(Cancel As Integer)

    If Not IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![END_DATE]) Then
        If (IsNull(Prev_Est) And IsNull(This_Est)) Then
            'do nothing
        Else
            'If IsNull(Total_To_Date) Then
            If Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![INDEFINITE_QUANTITY] = False Then
                Total_To_Date = Round(Nz(Prev_Est, 0), 3) + Round(Nz(This_Est, 0), 3)
            End If
            'End If
            'If Not IsNull(Total_To_Date) And IsNull(Total_Earned_to_Date) Then
            Total_Earned_to_Date = Round((Nz(This_Est, 0) + Nz(Prev_Est, 0)) * Nz(Unit_Price, 1) + 0.00001, 2)
            'End If
            DoCmd.GoToRecord , , acNext
        End If
    End If
    
End Sub

Private Sub This_Est_LostFocus()

    If Not IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![END_DATE]) Then
        If (IsNull(Prev_Est) And IsNull(This_Est)) Then
            'do nothing
        Else
            'If IsNull(Total_To_Date) Then
            If Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![INDEFINITE_QUANTITY] = False Then
                Total_To_Date = Round(Nz(Prev_Est, 0), 3) + Round(Nz(This_Est, 0), 3)
            End If
            'End If
            'If Not IsNull(Total_To_Date) And IsNull(Total_Earned_to_Date) Then
            Total_Earned_to_Date = Round((Nz(This_Est, 0) + Nz(Prev_Est, 0)) * Nz(Unit_Price, 1) + 0.001, 2)
            'End If
            'DoCmd.GoToRecord , , acNext
        End If
    End If
    
End Sub

Private Sub Total_Earned_to_Date_DblClick(Cancel As Integer)
    
    Total_Earned_to_Date = Nz(Total_Earned_to_Date_Calc, 0)
   
End Sub

Private Sub Total_To_Date_DblClick(Cancel As Integer)
    
    Total_To_Date = Nz(Total_To_Date_Calc, 0)
    
End Sub

Private Sub Total_To_Date_Exit(Cancel As Integer)

    If Not IsNull(Total_To_Date) And IsNull(Total_Earned_to_Date) Then
        Total_Earned_to_Date = Round(Total_To_Date * Nz(Unit_Price, 1) + 0.001, 2)
    End If
    
End Sub
```

## Module: Form_Contract_Payment_Estimate_Invoice_Main_subform

```vb
Option Compare Database

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub FY_DblClick(Cancel As Integer)

    [FY].Locked = False
    MsgBox "FY is now UNLOCKED for Editing."
    
End Sub

Private Sub FY_Exit(Cancel As Integer)

        [FY].Locked = True
        
End Sub

Private Sub BEGIN_DATE_DblClick(Cancel As Integer)
    
    BEGIN_DATE.Locked = False

End Sub

Private Sub BEGIN_DATE_Enter()

    If Not IsNull(BEGIN_DATE) Then
        BEGIN_DATE.Locked = True
    End If
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)
    
    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    Else
                        PREVIOUS_PAYMENTS = 0
                    End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub CONTRACT_NO_Enter()

    If Not IsNull(Contract_No) Then
        Contract_No.Locked = True
    Else
        Contract_No.Locked = False
    End If
    
End Sub

Private Sub CONTRACT_NO_Exit(Cancel As Integer)

    Contract_No.Locked = True
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub CONTRACT_NO_LostFocus()

    Contract_No.Locked = True
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub DATE_SIGNED_Enter()

    If Not IsNull(DATE_SIGNED) Then
        DATE_SIGNED.Locked = True
    Else
        DATE_SIGNED.Locked = False
    End If
    
End Sub

Private Sub END_DATE_Enter()
    
    If ESTIMATE_NO > 0 Then
        If Not IsNull(BEGIN_DATE) Then
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    PREVIOUS_PAYMENTS = PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    'If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    'Else
                        'PREVIOUS_PAYMENTS = 0
                    'End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub END_DATE_GotFocus()

    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    Else
                        PREVIOUS_PAYMENTS = 0
                    End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub END_DATE_LostFocus()

    If Not IsNull(BEGIN_DATE) Then
        If [ESTIMATE_NO] >= 1 Then
            BEGIN_DATE.Locked = True
            If INDEFINITE_QUANTITY = False Then
                If IsNull(PREVIOUS_PAYMENTS) Then
                    If IsLoaded("Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![Previous_Payments] ") Then
                        PREVIOUS_PAYMENTS = Forms![Contract_Payment_Estimate_Invoice]![NMIS_CONTRACT_PAYMENT_ESTIMATE_INVOICE subform2].Form![PREVIOUS_PAYMENTS]
                    Else
                        PREVIOUS_PAYMENTS = 0
                    End If
                End If
            End If
            If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
                Project_Name = PROJECT
            End If
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Form![Level]) Then
                If ESTIMATE_NO >= 1 Then
                    If IsNull(ESTIMATE_NO_PREVIOUS) Then
                     ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
                    End If
                    DoCmd.SetWarnings False
                    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_ESTIMATE"
                    DoCmd.SetWarnings True
                    Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice subform1].Requery
                End If
            End If
        End If
    End If
   
End Sub

Private Sub ESTIMATE_NO_Enter()

    If Not IsNull(ESTIMATE_NO) Then
        ESTIMATE_NO.Locked = True
    Else
        ESTIMATE_NO.Locked = False
    End If
    
End Sub

Private Sub ESTIMATE_NO_Exit(Cancel As Integer)

    ESTIMATE_NO.Locked = True
    
    If ESTIMATE_NO > 0 Then
            ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
    End If
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Click()

    Dim stDocName As String

    stDocName = "CONTRACT_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub View_Contract_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CONTRACT_NO] = '" & Me![View_Contract] & "'"
    Me.Bookmark = rs.Bookmark
     
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    View_Contract.Requery
    
End Sub

Private Sub ESTIMATE_NO_LostFocus()

    ESTIMATE_NO.Locked = True
    
    If ESTIMATE_NO > 0 Then
            ESTIMATE_NO_PREVIOUS = ESTIMATE_NO - 1
    End If
    
    If (IsNull(Project_Name) And Not IsNull(Contract_No)) Then
        Project_Name = [PROJECT]
    End If
    
End Sub

Private Sub Form_Current()

    If IsNull(DATE_SIGNED) Then
        BEGIN_DATE.Locked = False
        Contract_No.Locked = False
        DATE_SIGNED.Locked = False
        DEDUCTION.Locked = False
        DISCOUNT_PCT.Locked = False
        END_DATE.Locked = False
        ESTIMATE_NO.Locked = False
        ESTIMATE_NO_PREVIOUS.Locked = False
        INCREASES_DECREASES.Locked = False
        Net_Contract_Amount.Locked = False
        PREVIOUS_PAYMENTS.Locked = False
        PROJECT.Locked = False
        Project_Name.Locked = False
        REMARKS.Locked = False
        
    Else
        BEGIN_DATE.Locked = True
        Contract_No.Locked = True
        DATE_SIGNED.Locked = True
        DEDUCTION.Locked = True
        DISCOUNT_PCT.Locked = True
        END_DATE.Locked = True
        ESTIMATE_NO.Locked = True
        ESTIMATE_NO_PREVIOUS.Locked = True
        INCREASES_DECREASES.Locked = True
        Net_Contract_Amount.Locked = True
        PREVIOUS_PAYMENTS.Locked = True
        PROJECT.Locked = True
        Project_Name.Locked = True
        REMARKS.Locked = True
        RETENTION_PCT.Locked = True
    End If
 
End Sub

Private Sub New_Estimate_Click()

    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "BEGIN_DATE"
    
    
End Sub
```

## Module: Form_Contract_Work_Order

```vb
Option Compare Database

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub FY_DblClick(Cancel As Integer)
    [FY].Locked = False
    MsgBox "FY is now UNLOCKED for Editing."
End Sub

Private Sub FY_Exit(Cancel As Integer)
        [FY].Locked = True
End Sub

Private Sub Select_CONTRACT_NO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CONTRACT_NO] = '" & Me![Select_CONTRACT_NO] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Select_CONTRACT_NO_Change()

    If Select_CONTRACT_NO = "New Contract" Then
    
        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        
        [Forms]![Contract_Work_Order]![Select_CONTRACT_NO] = Null
        DoCmd.OpenForm stDocName ', , , , acFormAdd
        DoCmd.GoToRecord , , acNewRec
        Contract_No.Locked = False
        Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
        Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        
        
    End If
    
End Sub

Private Sub Select_CONTRACT_NO_DblClick(Cancel As Integer)

        Dim stDocName As String
        Dim stLinkCriteria As String

        stDocName = "NMIS_CONTRACTS"
        stLinkCriteria = "[CONTRACT_NO]=" & "'" & _
                            Forms![Contract_Payment_Estimate_Invoice]![Select_CONTRACT_NO] & "'"
        If Not IsNull(Select_CONTRACT_NO) Then
            DoCmd.OpenForm stDocName, , , stLinkCriteria
            Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
            Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        Else
            [Forms]![Contract_Payment_Estimate_Invoice]![Select_CONTRACT_NO] = Null
            DoCmd.OpenForm stDocName ', , , , acFormAdd
            DoCmd.GoToRecord , , acNewRec
            Contract_No.Locked = False
            Forms![NMIS_CONTRACTS]![View_Contract].Visible = False
            Forms![NMIS_CONTRACTS]![View_FY].Visible = False
        End If
    
End Sub

Private Sub CONTRACT_NO_Enter()

    If Not IsNull(Contract_No) Then
        Contract_No.Locked = True
    Else
        Contract_No.Locked = False
    End If
    
End Sub

Private Sub CONTRACT_NO_Exit(Cancel As Integer)

    Contract_No.Locked = True
    
    If IsNull(Project_Name) Then
        Project_Name = PROJECT
    End If
    
End Sub

Private Sub ESTIMATE_NO_DblClick(Cancel As Integer)

    ESTIMATE_NO.Locked = False
    
End Sub

Private Sub ESTIMATE_NO_Enter()

    If Not IsNull(ESTIMATE_NO) Then
        ESTIMATE_NO.Locked = True
    Else
        ESTIMATE_NO.Locked = False
    End If
    
End Sub

Private Sub ESTIMATE_NO_Exit(Cancel As Integer)

    ESTIMATE_NO.Locked = True
    
End Sub

Private Sub Select_CONTRACT_NO_GotFocus()

    Select_CONTRACT_NO.Requery
    
End Sub

Private Sub Contract_Payment_Estimate_Invoice_Main_subform_Enter()

    If IsNull(Contract_No) Then
        MsgBox "Must Select a Contract No. First."
        [Contract_No].SetFocus
    End If
      
End Sub

Private Sub Contract_Payment_Estimate_Invoice_subform1_Enter()

    If [Just_Opened] = True Then
        [Just_Opened] = False
    Else
        If IsNull(Contract_No) Then
            MsgBox "Must Select a Contract No. First"
            [Contract_No].SetFocus
        End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Select_CONTRACT_NO"

End Sub

Private Sub Preview_CONTRACT_PAYMENT_ESTIMATE_INVOICE_Click()

    Dim stDocName As String

    stDocName = "CONTRACT_WORK_ORDER_FS-6300-12"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub View_Contract_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CONTRACT_NO] = '" & Me![View_Contract] & "'"
    Me.Bookmark = rs.Bookmark
     
End Sub

Private Sub Processing_Calcs_Click()
    
    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenForm stDocName
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![Contract_No]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![BEGIN_DATE] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![BEGIN_DATE]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![END_DATE] = _
        [Contract_Payment_Estimate_Invoice_Main_subform].Form![END_DATE]
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No].Locked = True
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![BEGIN_DATE].Locked = True
    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![END_DATE].Locked = True
    DoCmd.GoToControl "Preview_Process_Pay_Calculations_Report"
  
End Sub

Private Sub Update_Lift_Items_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Lift_CItems1_mt"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Lift_CItems"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Totals"
    DoCmd.SetWarnings True
    [Contract_Payment_Estimate_Invoice subform1].Form![Total_Earned_to_Date].Requery
    
End Sub

Private Sub Update_Pack_Items_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_MT"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Deduct_At"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_Reduction_AT"
    DoCmd.OpenQuery "NMIS_Contract_payment_Est_Pack_incremental_AT"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Pack_CItems"
    DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_update_Totals"
    DoCmd.SetWarnings True
    [Contract_Payment_Estimate_Invoice subform1].Form![Total_Earned_to_Date].Requery

End Sub


Private Sub VIEW_FY_Change()

    Contract_No = Null
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    Contract_No = Null
    Contract_No.Requery
    
End Sub
```

## Module: Form_Contract_Work_Order_subform

```vb
Private Sub AMENDMENT_DblClick(Cancel As Integer)

    AMENDMENT.Locked = False
    
End Sub

Private Sub AMENDMENT_Enter()

    If IsNull(AMENDMENT) Then
        AMENDMENT.Locked = False
    Else
        AMENDMENT.Locked = True
    End If
   
End Sub

Private Sub BEGIN_DATE_DblClick(Cancel As Integer)

    BEGIN_DATE.Locked = False
    
End Sub

Private Sub BEGIN_DATE_Enter()

    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE.Locked = False
    Else
        BEGIN_DATE.Locked = True
    End If
   
End Sub

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)
    
    Contract_No.Locked = False
    
End Sub

Private Sub CONTRACT_NO_Enter()

    If IsNull(Contract_No) Then
        Contract_No.Locked = False
    Else
        Contract_No.Locked = True
    End If
    
End Sub

Private Sub ESTIMATE_NO_DblClick(Cancel As Integer)

    ESTIMATE_NO.Locked = False
    
End Sub

Private Sub ESTIMATE_NO_Enter()

    If IsNull(ESTIMATE_NO) Then
        ESTIMATE_NO.Locked = False
    Else
        ESTIMATE_NO.Locked = True
    End If
 
End Sub

Private Sub Form_Current()

    'Forms![Contract_Work_Order]![NMIS_CONTRACT_WORK_ORDERS_LAST_ORDER].Requery

End Sub

Private Sub New_Estimate_Click()

    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "BEGIN_DATE"

End Sub

Private Sub REFERENCE_DblClick(Cancel As Integer)

    REFERENCE.Locked = False
    
End Sub

Private Sub REFERENCE_Enter()

    If ESTIMATE_NO = 0 Then
        If IsNull(REFERENCE) Then
            REFERENCE.Locked = False
        Else
            REFERENCE.Locked = True
        End If
    End If
 
End Sub

Private Sub Remarks_DblClick(Cancel As Integer)

    REMARKS.Locked = False
    
End Sub

Private Sub Remarks_Enter()
    
    If ESTIMATE_NO = 0 Then
        If IsNull(REMARKS) Then
            REMARKS.Locked = False
        Else
            REMARKS.Locked = True
        End If
    End If
 
End Sub
```

## Module: Form_Drying_Tray_Input_Form

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

## Module: Form_Field_Form_Plants

```vb
Option Compare Database

Private Sub Preview_Container_Index_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Container_Index_Proofsheet_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Field_Index_Click()
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Field_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Field_Map_Click()
On Error GoTo Err_Preview_Field_Map_Click

    Dim stDocName As String

    stDocName = "Field_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Map_Click:
    Exit Sub

Err_Preview_Field_Map_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Map_Click
    
End Sub

Private Sub Preview_Field_Plants_For_Inv_Sizing_Click()
On Error GoTo Err_Preview_Field_Plants_For_Inv_Sizing_Click

    Dim stDocName As String

    stDocName = "Field_Form_Plants_Inv_Size_Checklist"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_For_Inv_Sizing:
    Exit Sub

Err_Preview_Field_Plants_For_Inv_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_For_Inv_Sizing
    
End Sub

Private Sub Like_Age_Class_Enter()

    Like_Age_Class.Requery
    
End Sub

Private Sub Like_Agreement_Lot_ID_Enter()

    Like_Agreement_Lot_ID.Requery
    
End Sub

Private Sub MaxSowDate_DblClick(Cancel As Integer)

    MaxSowDate = Date
    
End Sub

Private Sub MinSowDate_DblClick(Cancel As Integer)

    MinSowDate = "01/01/70"

End Sub

Private Sub Preview_Field_Plants_Click()

On Error GoTo Err_Preview_Field_Plants_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    stDocName = "Field_Form_Plants"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_Click:
    Exit Sub

Err_Preview_Field_Plants_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_Click
    
End Sub

Private Sub Preview_Field_Plants_w_specs_ByLotID_Click()
On Error GoTo Err_Field_Plants_w_specs_ByLotID_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    stDocName = "Field_Form_Plants_w_specs_ByLotID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Plants_w_specs_ByLotID_Click:
    Exit Sub

Err_Field_Plants_w_specs_ByLotID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Plants_w_specs_ByLotID_Click
End Sub

Private Sub Preview_Field_Plants_w_specs_Click()
On Error GoTo Err_Field_Plants_w_specs_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    stDocName = "Field_Form_Plants_w_specs"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Plants_w_specs_Click:
    Exit Sub

Err_Field_Plants_w_specs_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Plants_w_specs_Click
End Sub
```

## Module: Form_Field_Form_Plants_For_Inventory_Sizing

```vb
Option Compare Database

Private Sub Preview_Container_Index_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Container_Index_Proofsheet_Click()

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Container_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Field_Index_Click()
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Field_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Preview_Field_Map_Click()
On Error GoTo Err_Preview_Field_Map_Click

    Dim stDocName As String

    stDocName = "Field_Location_Proofsheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Map_Click:
    Exit Sub

Err_Preview_Field_Map_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Map_Click
    
End Sub

Private Sub End_FY_DblClick(Cancel As Integer)

    END_FY = "*"
    
End Sub

Private Sub Like_Age_Class_Enter()

    Like_Age_Class.Requery
    
End Sub

Private Sub Like_Agreement_Lot_ID_Enter()

    'Like_Agreement_Lot_ID.Requery
    
End Sub

Private Sub Preview_Container_Plants_For_Inv_Sizing_Click()
On Error GoTo Err_Preview_Container_Plants_For_Inv_Sizing_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    'If [field_pagebreak] Then
        stDocName = "Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak"
    'Else
        'stDocName = "Field_Form_Plants_Inv_Size_Checklist"
    'End If
    
    'If (IsNull(END_FY) Or END_FY = "*") Then
        'END_FY = Forms![Switchboard]![FY_For_Reports]
    'End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Container_Plants_For_Inv_Sizing_Click:
    Exit Sub

Err_Preview_Container_Plants_For_Inv_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Container_Plants_For_Inv_Sizing_Click
    
End Sub

Private Sub Preview_Field_Plants_For_Inv_Counting_Click()
On Error GoTo Err_Preview_Field_Plants_For_Inv_Counting_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    If [field_pagebreak] Then
        stDocName = "Field_Form_Plants_Inv_Count_Checklist_pagebreak"
    Else
        stDocName = "Field_Form_Plants_Inv_Count_Checklist"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_For_Inv_Counting_Click:
    Exit Sub

Err_Preview_Field_Plants_For_Inv_Counting_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_For_Inv_Counting_Click
End Sub

Private Sub Preview_Field_Plants_For_Inv_Sizing_Click()
On Error GoTo Err_Preview_Field_Plants_For_Inv_Sizing_Click

    Dim stDocName As String

    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    
    If [field_pagebreak] Then
        stDocName = "Field_Form_Plants_Inv_Size_Checklist_pagebreak"
    Else
        stDocName = "Field_Form_Plants_Inv_Size_Checklist"
    End If
    
    If (IsNull(END_FY) Or END_FY = "*") Then
        END_FY = Forms![Switchboard]![FY_For_Reports]
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Field_Plants_For_Inv_Sizing:
    Exit Sub

Err_Preview_Field_Plants_For_Inv_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Field_Plants_For_Inv_Sizing
    
End Sub
```

## Module: Form_Field_Location_Worksheet

```vb
Option Compare Database

Private Sub Print_Field_Stock_Location_Spd_Click()
On Error GoTo Err_Print_Field_Stock_Location_Spd_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_SPD"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenQuery stDocName
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Field_Stock_Location_Spd_Click:
    Exit Sub

Err_Print_Field_Stock_Location_Spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Field_Stock_Location_Spd_Click
    
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub

Private Sub Print_Work_Orders_Condensed_Click()
On Error GoTo Err_Print_Work_Orders_Condensed_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_condensed"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Condensed_Click:
    Exit Sub

Err_Print_Work_Orders_Condensed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Condensed_Click
End Sub

Private Sub Print_Work_Orders_Condensed_spd_Click()
On Error GoTo Err_Print_Work_Orders_Condensed_spd_Click

    Dim stDocName As String

    If [Data_Processed] = False Then
        'update location species table
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "location_species_string_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_mt", acNormal, acEdit
        DoCmd.OpenQuery "location_species_string_update", acNormal, acEdit
        DoCmd.SetWarnings True
        [Data_Processed] = True
    End If
        
    stDocName = "Field_Location_Worksheet_condensed_spd"
    
    If Not IsNull(Begin_Location) Then
    If Begin_Location > End_Location Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_Location) Then
            'End_ID = Begin_ID
        End If
        DoCmd.OpenQuery stDocName ', acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN LOCATION", vbExclamation
    End If

Exit_Print_Work_Orders_Condensed_spd_Click:
    Exit Sub

Err_Print_Work_Orders_Condensed_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Condensed_spd_Click
End Sub
```

## Module: Form_Field_Map Form

```vb
Option Compare Database

Private Sub Cost_Center_AfterUpdate()

    Like_Age_Class.Requery
    
    If Cost_Center = "B" Then
        Current_FY_Lift.Visible = True
        Current_FY_Lift_Label.Visible = True
        [Highlight_Short_Beds].Visible = True
        [Highlight_Short_Beds Label].Visible = True
    Else
        Current_FY_Lift.Visible = False
        Current_FY_Lift_Label.Visible = False
        [Highlight_Short_Beds].Visible = False
        [Highlight_Short_Beds Label].Visible = False
    End If
    
End Sub

Private Sub Preview_Index_Click()
    
On Error GoTo Err_Preview_Index_Click

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        If [Show_Inventory_Status] Then
            stDocName = "Field_Location_Index_Inv_Stat"
        Else
            stDocName = "Field_Location_Index"
        End If
    Case Is = "C"
        If [Show_Inventory_Status] Then
            stDocName = "Container_Location_Index_Inv_Stat"
        Else
            stDocName = "Container_Location_Index"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Click:
    Exit Sub

Err_Preview_Index_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Click
    
End Sub

Private Sub Preview_Index_fs_vs_non_Click()
On Error GoTo Err_Preview_Index_Click

    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        stDocName = "Field_Location_Index_fs_vs_non"
    Case Is = "C"
        stDocName = "Container_Location_Index_fs_vs_non"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Click:
    Exit Sub

Err_Preview_Index_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Click
    
End Sub

Private Sub Preview_Index_Proofsheet_Click()

On Error GoTo Err_Preview_Index_Proofsheet_Click
    
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        If [Show_Inventory_Status] Then
            stDocName = "Field_Location_Proofsheet_Inv_Stat"
        Else
            stDocName = "Field_Location_Proofsheet"
        End If
    Case Is = "C"
        If [Show_Inventory_Status] Then
            stDocName = "Container_Location_Proofsheet_Inv_Stat"
        Else
            stDocName = "Container_Location_Proofsheet"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Proofsheet_Click:
    Exit Sub

Err_Preview_Index_Proofsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Proofsheet_Click
    
End Sub

Private Sub Preview_Index_Proofsheet_fs_vs_non_Click()
On Error GoTo Err_Preview_Index_Proofsheet_Click
    
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
        
    Select Case [Cost_Center]
    Case Is = "B"
        stDocName = "Field_Location_Proofsheet_fs_vs_non"
    Case Is = "C"
        stDocName = "Container_Location_Proofsheet_fs_vs_non"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Preview_Index_Proofsheet_Click:
    Exit Sub

Err_Preview_Index_Proofsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Index_Proofsheet_Click
    
End Sub
```

## Module: Form_Field_Tags

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Begin_Container_DblClick(Cancel As Integer)
    
    BEGIN_CONTAINER = Null
    
End Sub

Private Sub Begin_Container_Enter()
    
    BEGIN_CONTAINER.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Begin_FY_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Begin_Product_Type_DblClick(Cancel As Integer)

    BEGIN_PRODUCT_TYPE = Null
    
End Sub

Private Sub BEGIN_PRODUCT_TYPE_Enter()

    BEGIN_PRODUCT_TYPE.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub BorC_AfterUpdate()

    Product.Requery
    
End Sub

Private Sub BorC_Change()
    
    Product = Null
    
End Sub

Private Sub BorC_DblClick(Cancel As Integer)

    BorC = "*"
    
End Sub

Private Sub BorC_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub End_FY_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Find_Lot_DblClick(Cancel As Integer)
On Error GoTo Err_Find_Lot_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Find_Lot"
    If Not IsNull(Find_Lot) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags0 Form"
    End If
    
Exit_Find_Lot_DblClick:
    Exit Sub

Err_Find_Lot_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Find_Lot_DblClick
           
End Sub

Private Sub Find_Lot_Enter()
    
   
    Find_Lot.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        Split_Lot.Visible = True
    Else
        Split_Lot.Visible = False
    End If
    
End Sub

Private Sub ID_Tags_W_ID_Intermec_Click()
On Error GoTo Err_ID_Tags_W_ID_Intermec_Click
    Dim stDocName As String

    Select Case [Printer_and_Label_Type]
    Case Is = 1
        'stDocName = "Field_tag_pairs_w_NIds_Intermec"
        Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
        Case Is = "050357"
            If Split_Lot Then
                stDocName = "Field_tag_pairs_w_NIds_Intermec_050357_Split_Lot"
            Else
                stDocName = "Field_tag_pairs_w_NIds_Intermec_050357"
            End If
        Case Is = "040207"
                stDocName = "Field_tag_pairs_w_NIds_Intermec_040207"
            
        Case Else
            stDocName = "Field_tag_pairs_w_NIds_Intermec"
        End Select
    Case Is = 2
        stDocName = "Field_tag_pairs_wo_NIds_Intermec"
    Case Is = 3
        'stDocName = "Field_tag_pairs_w_NIds_Intermec"
        Select Case [Tag_Style] 'Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
        Case Is = "040207"
            If Split_Lot Then
                stDocName = "Field_tag_pairs_w_NIds_040207_Split_Lot"
            Else
                stDocName = "Field_tag_pairs_w_NIds_040207"
            End If
        Case Else
            stDocName = "Field_tag_pairs_w_NIds"
        End Select
    Case Is = 4
        stDocName = "Field_tag_pairs_wo_NIds"
    Case Is = 5
        stDocName = "field_tag_PotStakes_Datamax"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_ID_Tags_W_ID_Intermec_Click:
    Exit Sub

Err_ID_Tags_W_ID_Intermec_Click:
    MsgBox Err.DESCRIPTION
Resume Exit_ID_Tags_W_ID_Intermec_Click
           
End Sub

Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    [Split_Lot] = False
    
End Sub


Private Sub Lot_ID_1_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_1_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_1"
    If Not IsNull(Lot_ID_1) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags1 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_1 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_1_DblClick:
    Exit Sub

Err_Lot_ID_1_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_1_DblClick
           
End Sub

Private Sub Lot_ID_2_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_2_DblClick

    DoCmd.GoToControl "Lot_ID_1"
    DoCmd.GoToControl "Lot_ID_2"
    If Not IsNull(Lot_ID_2) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags2 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_2 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_2_DblClick:
    Exit Sub

Err_Lot_ID_2_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_2_DblClick
           
End Sub

Private Sub Lot_ID_3_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_3_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_3"
    If Not IsNull(Lot_ID_3) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags3 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_3 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_3_DblClick:
    Exit Sub

Err_Lot_ID_3_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_3_DblClick
                
End Sub

Private Sub Lot_ID_4_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_4_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_4"
    If Not IsNull(Lot_ID_4) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags4 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_4 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_4_DblClick:
    Exit Sub

Err_Lot_ID_4_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_4_DblClick
           
End Sub

Private Sub Lot_ID_5_DblClick(Cancel As Integer)
On Error GoTo Err_Lot_ID_5_DblClick

    DoCmd.GoToControl "Lot_ID_2"
    DoCmd.GoToControl "Lot_ID_5"
    If Not IsNull(Lot_ID_5) Then
        DoCmd.OpenForm "Agreement_Lot_ID_Change_from_Tags5 Form"
    Else
        If Not IsNull(Find_Lot) Then
            Lot_ID_5 = Find_Lot
        End If
    End If
    
Exit_Lot_ID_5_DblClick:
    Exit Sub

Err_Lot_ID_5_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_5_DblClick
          
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
  
End Sub

Private Sub Printer_and_Label_Type_Change()

    If Printer_and_Label_Type = 1 Then
        Split_Lot.Visible = True
    Else
        Split_Lot.Visible = False
    End If
    
End Sub

Private Sub Product_DblClick(Cancel As Integer)

    Product = Null
    
End Sub

Private Sub Product_Enter()

    Product.Requery
    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Tags_For_Bailing_Click()
    On Error GoTo Err_Tags_For_Bailing_Click
    Dim stDocName As String

        stDocName = "Field_tag_pairs_w_NIds_bailing"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Tags_For_Bailing_Click:
    Exit Sub

Err_Tags_For_Bailing_Click:
    MsgBox Err.DESCRIPTION
Resume Exit_Tags_For_Bailing_Click
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```

## Module: Form_H_ASF

```vb
Option Compare Database

Private Sub AVERAGE_ASF_DblClick(Cancel As Integer)

    Forms![NMIS_AGREEMENT_LOTS]![HARVEST_ASF_ADJUSTMENT] = Round(AVERAGE_ASF, 0)
    
End Sub
Private Sub LOT_ID_DblClick(Cancel As Integer)
    'Dim rs As Object
    
    If Not IsNull(CN) Then
    stDocName = "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
    stLinkCriteria = "[CN]=" & "'" & Me![CN] & "'"

    DoCmd.OpenForm stDocName, , , stLinkCriteria
   
        'DoCmd.OpenForm "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
        'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!CN = AGREEMENT_LOT_CN
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Agreement_Lot_Lookup = [CN]
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM![first_open] = False
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM.Requery
        'If first_open Then
        'first_open = False
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!What_It_Is_Longer.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Source_Label.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!SOURCE_LOT_CN.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!FYs.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Combo138.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Label139.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!UNIT_CODE.Visible = True
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
        Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!TabCtl67.Visible = True
        'End If
    
    'Set rs = Me.Recordset.Clone
    'rs.FindFirst "[CN] = '" & AGREEMENT_LOT_CN & "'"
    'Me.Bookmark = rs.Bookmark
    
    '[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Default_ID_Location_CN] = Null
    
    '[NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
    
    'If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]) Then
        'DoCmd.GoToControl "ACTIVITY_CODE"
    'Else
        'DoCmd.GoToControl "ACTIVITY_UNITS"
    'End If
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!What_It_Is_Longer.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Source_Label.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!SOURCE_LOT_CN.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!FYs.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Combo138.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!Label139.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!UNIT_CODE.Visible = True
    'Forms!NMIS_ID_ACTIVITY_TRANSACTIONS_FORM!TabCtl67.Visible = True
    
    Else
        MsgBox ("No Activity Data")
    End If

End Sub

Private Sub USED_AfterUpdate()

    USE_SUM.Requery
    AVERAGE_ASF.Requery
    Requery

End Sub
```

## Module: Form_H_ASF_from_source

```vb
Option Compare Database

Private Sub AVERAGE_ASF_DblClick(Cancel As Integer)

    Forms![NMIS_AGREEMENT_LOTS]![HARVEST_ASF_ADJUSTMENT] = Round(AVERAGE_ASF, 0)
    
End Sub

Private Sub USED_AfterUpdate()

    USE_SUM.Requery
    AVERAGE_ASF.Requery
    Requery

End Sub
```

## Module: Form_Huksy_lpro_xfer_hlift_table2 subform

```vb
Option Compare Database

Private Sub Contract_Item_Exit(Cancel As Integer)

End Sub

Private Sub Field_Container_BeforeUpdate(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Field_Container_Exit(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Nursery_ID_Enter()

    If IsNull(Nursery_ID) Then
        Field_Container = [Forms]![Husky_lpro_data_input_check_form]![Field_Container_Default]
    End If
    
End Sub

Private Sub Sum_Containers_Enter()

    Precool_Unit_Code = "Precool" & Field_Container
    If Field_Container = "S" Or Field_Container = "X" Then
        Sum_Containers = 1
    End If

End Sub

Private Sub Sum_Feet_Lifted_DblClick(Cancel As Integer)

    If Not IsNull(Nursery_ID) Then
        Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Requery
        Sum_Feet_Lifted = Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Form![Lot_Total_Ft]
    End If
    
End Sub

Private Sub Sum_Feet_Lifted_Enter()

    If Not IsNull(Nursery_ID) Then
        If Forms![Husky_lpro_data_input_check_form]![Auto_Insert_All_Ft] Then
            Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Requery
            Sum_Feet_Lifted = Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Form![Lot_Total_Ft]
        End If
    End If
    
End Sub
```

## Module: Form_Husky_lpro_data_input_check_form

```vb
Option Compare Database

Private Sub CmdLftDailyContr_Click()
On Error GoTo Err_CmdLftDailyContr_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Click:
    Exit Sub

Err_CmdLftDailyContr_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Click
    
End Sub

Private Sub Form_Close()

    If Processing_Done Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_lpro_xfer_hlift_table2_Blank_create"
        DoCmd.SetWarnings True
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Current_Age_Class_MT"
    DoCmd.SetWarnings True
    Forms!Husky_lpro_data_input_check_form!Processing_Done = False
    Forms!Husky_lpro_data_input_check_form!Hide_Activity_Posting.Visible = False
        
End Sub

Private Sub Lift_Location_Worksheet_Click()
On Error GoTo Err_Lift_Location_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lift_Location_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Lift_Location_Worksheet_Click:
    Exit Sub

Err_Lift_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lift_Location_Worksheet_Click
    
End Sub

Private Sub Preview_Daily_Dump_Report_Click()
On Error GoTo Err_Preview_Daily_Dump_Report_Click

    Dim stDocName As String

    stDocName = "Husky_Lpro_Daily_Dump_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Daily_Dump_Report_Click:
    Exit Sub

Err_Preview_Daily_Dump_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Daily_Dump_Report_Click
    
End Sub

Private Sub Process_Data_Into_NMIS_Click()
'---------------------------------------------------
' Husky lpro process into NMIS
'---------------------------------------------------

    If Not (Forms!Husky_lpro_data_input_check_form!Processing_Done) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_lpro_dump_index_drop"
        DoCmd.OpenQuery "Husky_lpro_dump_index_create"
        DoCmd.OpenQuery "Husky_lpro_dump_lots"
        DoCmd.OpenQuery "Husky_lpro_Dump_Ctl_Create"
        DoCmd.OpenQuery "Husky_lpro_id_Activities_append"
        
        'set flag to not double process
        Forms!Husky_lpro_data_input_check_form!Processing_Done = 1
        Forms!Husky_lpro_data_input_check_form!Hide_Activity_Posting.Visible = True
        
        DoCmd.OpenQuery "Husky_lpro_lift_all_trans_append"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_single_loc_trans_append"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_total_bf_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_lowest_loc_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_temp_trans_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_remove"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_update"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_append"
        DoCmd.OpenQuery "Husky_lpro_ID_locations_append"
        DoCmd.OpenQuery "Husky_lpro_field_container_trans_append"
        DoCmd.SetWarnings True
        
        MsgBox "Processing Complete"
    Else
        MsgBox "Data has already been processed into NMIS", vbCritical
    End If
    
End Sub
```

## Module: Form_Lifting_Locations_Form

```vb
Option Compare Database

Private Sub Preview_Field_Index_Click()
    Dim stDocName As String
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Total_Bed_Ft"
    DoCmd.SetWarnings True
    
    stDocName = "Field_Location_Index"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Command28_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_By_Major_Client"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Lift_Locations_Field_Form_By_Client_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_by_major_client_Field_Form"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_Remaining_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Remaining"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_Remaining_w_notes_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Remaining_w_notes"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_By_Age_Class_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_by_age_class_species"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_by_Age_Class_wo_Detail1_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed3"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_Hold_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Holdover"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_Spreadsheet_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_at"
    Response = MsgBox("Edit Existing Priorties?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "Lifting_Priorties"
    Else
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery stDocName
        DoCmd.SetWarnings True
        DoCmd.OpenForm "Lifting_Priorties"
    End If
  
End Sub

Private Sub Preview_Lift_Locations_w_Detail_Click()

    Dim stDocName As String

    stDocName = "TOLIFT"
    
       
    DoCmd.Requery
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail1_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail2_By_Major_Client_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed_by_major_client_w_Detail"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub


Private Sub Preview_Lift_Locations_wo_Detail2_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed2"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Lift_Locations_wo_Detail2_sum_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Condensed2_Sum"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub
```

## Module: Form_Lifting_Priorties

```vb
Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "Lifting_priorities_detailed"
    
    DoCmd.Requery
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
    End If
    DoCmd.SetWarnings False
    'Update Order_Services_String Table
    'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdi
    DoCmd.OpenQuery "TOLIFT_BY_PRIORITY_MT Query"
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Feet_To_Lift_DblClick(Cancel As Integer)

    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [Net Order] = [Net Inv]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Feet_To_Lift_Exit(Cancel As Integer)

    If ([Feet To Lift] + [LIFTED]) < [LOT_LENGTH] Then
        Partial_Lift = -1
    End If
    DoCmd.GoToControl "Priority"
    
End Sub

Private Sub Command59_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities_Checklist"
    
    DoCmd.Requery
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Form_Open(Cancel As Integer)

[Sort_By].Visible = True
Tip_on_Sorting.Visible = True
[Lifting_Priorties_Subform].SetFocus
'DoCmd.GoToControl "[Priority]"

End Sub

Private Sub Hide_zero_tolift_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Lifting_Priorties_Subform_Enter()

Forms![Lifting_Priorties]![Select_For_Species].Visible = True
Forms![Lifting_Priorties]![Select_For_Stock_Type].Visible = True
Forms![Lifting_Priorties]![Select_Like_Location].Visible = True
Forms![Lifting_Priorties]![Select_For_Lot_ID].Visible = True
Forms![Lifting_Priorties]![View_All].Visible = True
Forms![Lifting_Priorties]![View_Label].Visible = True
Forms![Lifting_Priorties]![Sort_By].Visible = True
Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = True
Forms![Lifting_Priorties]![Box153].Visible = True
[Hide_zero_tolift].Visible = True

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
    
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Net_Note_DblClick(Cancel As Integer)
    
    Net_Note = "Destroy"
    
End Sub

Private Sub Net_Order_DblClick(Cancel As Integer)

    [Net Order] = [Net Inv]
    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Open_Specs_Click()

    DoCmd.OpenReport "Lifting_Priorties_Specs", acPreview
    
End Sub

Private Sub Min_Priority_Enter()

Forms![Lifting_Priorties]![Sort_By].Visible = False
Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = False

End Sub

Private Sub Min_Priority_GotFocus()
        
    Forms![Lifting_Priorties]![Select_For_Species].Visible = False
    Forms![Lifting_Priorties]![Select_For_Stock_Type].Visible = False
    Forms![Lifting_Priorties]![Select_Like_Location].Visible = False
    Forms![Lifting_Priorties]![Select_For_Lot_ID].Visible = False
    Forms![Lifting_Priorties]![View_All].Visible = False
    Forms![Lifting_Priorties]![View_Label].Visible = False
    Forms![Lifting_Priorties]![Box153].Visible = False
    'Forms![Lifting_Priorties]![Sort_By].Visible = False
    Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = False
    [Hide_zero_tolift].Visible = False
    
End Sub

Private Sub Preview_Lifting_Priority_Precooler_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities_Precooler"
    
    DoCmd.Requery
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub
Private Sub Reset_Priorities_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_Reset_Priorities_to_99"
    
    Response = MsgBox("Are you sure you want reset ALL to priority 99?", vbYesNo)
    
    DoCmd.Requery
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

End Sub

Private Sub Reports_Click()

    [Hide_zero_tolift].Visible = False
    MsgBox "here"
    
End Sub

Private Sub Select_For_Lot_ID_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Lot_ID_Enter()

    Select_For_Stock_Type = Null
    Select_For_Species = Null
    Select_Like_Location = "*"
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Species_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Species_Enter()

    Select_For_Lot_ID = Null
    Select_Like_Location = "*"
    Select_For_Species.Requery
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Stock_Type_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Stock_Type_Enter()

    Select_For_Lot_ID = Null
    Select_Like_Location = "*"
    Select_For_Stock_Type.Requery
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_Like_Location_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_Like_Location_Enter()

    Select_For_Lot_ID = Null
    Select_For_Stock_Type = Null
    Select_For_Species = Null
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Sort_By_Click()

    Sort_By.Visible = False
    
End Sub

Private Sub Tip_on_Sorting_Click()

    MsgBox "Click on one of the following Column Headings to sort by that Column." _
        & vbCrLf & "" _
        & vbCrLf & "Priority" _
        & vbCrLf & "Location" _
        & vbCrLf & "Lot ID" _
        & vbCrLf & "Species" _
        & vbCrLf & "Stock Type", vbInformation
   
End Sub
Private Sub View_All_Click()
On Error GoTo Err_View_All_Click

    Select_For_Stock_Type = Null
    Select_For_Species = Null
    Select_Like_Location = "*"
    Select_For_Lot_ID = Null
    [Lifting_Priorties_Subform].Requery

Exit_View_All_Click:
    Exit Sub

Err_View_All_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_All_Click
    
End Sub
```

## Module: Form_Lifting_Priorties_Data_Subform

```vb
Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_BY_PRIORITY"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Age_Class_DblClick(Cancel As Integer)
    
    Age_Class.Locked = False
    
End Sub

Private Sub Age_Class_Enter()

    If Not IsNull(Age_Class) Then
        Age_Class.Locked = True
    Else
        Age_Class.Locked = False
    End If
End Sub

Private Sub Age_Class_Label_Click()
On Error GoTo Err_Age_Class_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Stock Type"
   DoCmd.Requery
   
Exit_Age_Class_Label_Click:
    Exit Sub

Err_Age_Class_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Age_Class_Label_Click
End Sub

Private Sub Delete_Lifted_Lots_Click()
    
    Response = MsgBox("This will delete lifted lots and add or update orders. Continue?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Delete_Lifted_mt"
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Delete_Lifted_at"
        DoCmd.OpenForm "Lifting_Locations_Form", , , , , acHidden
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Append_New_Orders_at"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Update_mt"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Update"
        DoCmd.Close acForm, "LIFTING_LOCATIONS_FORM"
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

End Sub

Private Sub Feet_To_Lift_DblClick(Cancel As Integer)

    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [Net Order] = [Net Inv]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Feet_To_Lift_Exit(Cancel As Integer)

    If ([Feet To Lift] + [LIFTED]) < [LOT_LENGTH] Then
        Partial_Lift = -1
    End If
    DoCmd.GoToControl "Priority"
    
End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub LIFTED_DblClick(Cancel As Integer)

    LIFTED.Locked = False
    
End Sub

Private Sub LIFTED_Enter()

    If Not IsNull(LIFTED) Then
        LIFTED.Locked = True
    Else
        LIFTED.Locked = False
    End If
End Sub

Private Sub LOCATION_AfterUpdate()
    Response = MsgBox("Are you Sure you want to change the Location?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [LOCATION] = Location_Backup
        End If
    
End Sub

Private Sub Location_DblClick(Cancel As Integer)

    If IsNull(LOCATION) Then
        LOCATION = "Precooler"
        Priority = 100
    End If
    
End Sub

Private Sub Location_Enter()

    Location_Backup = LOCATION

End Sub

Private Sub Location_Exit(Cancel As Integer)

End Sub

Private Sub Location_Label_Click()
On Error GoTo Err_Location_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Location"
   DoCmd.Requery
   
Exit_Location_Label_Click:
    Exit Sub

Err_Location_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Location_Label_Click
End Sub

Private Sub LOT_ID_DblClick(Cancel As Integer)

    Lot_ID.Locked = False
    
End Sub

Private Sub Lot_ID_Enter()

    If Not IsNull(Lot_ID) Then
        Lot_ID.Locked = True
    Else
        Lot_ID.Locked = False
    End If
End Sub

Private Sub Lot_ID_Label_Click()
On Error GoTo Err_Lot_ID_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Lot ID"
   DoCmd.Requery
   
Exit_Lot_ID_Label_Click:
    Exit Sub

Err_Lot_ID_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_Label_Click
End Sub

Private Sub Lot_Length_DblClick(Cancel As Integer)

    LOT_LENGTH.Locked = False
    
End Sub

Private Sub Lot_Length_Enter()

    If Not IsNull(LOT_LENGTH) Then
        LOT_LENGTH.Locked = True
    Else
        LOT_LENGTH.Locked = False
    End If
End Sub

Private Sub Lot_Length_Exit(Cancel As Integer)

    If IsNull(LOT_LENGTH) Then
        LOT_LENGTH.Locked = True
    Else
        LOT_LENGTH.Locked = False
    End If
End Sub

Private Sub Net_Inv_DblClick(Cancel As Integer)

    NET_INV.Locked = False
    
End Sub

Private Sub Net_Inv_Enter()

    If Not IsNull(NET_INV) Then
        NET_INV.Locked = True
    Else
        NET_INV.Locked = False
    End If
End Sub

Private Sub Net_Note_DblClick(Cancel As Integer)
    
    Net_Note = "Destroy"
    
End Sub

Private Sub Net_Order_DblClick(Cancel As Integer)

    [Net Order] = [Net Inv]
    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Open_Specs_Click()

    DoCmd.OpenReport "Lifting_Priorties_Specs", acPreview
    
End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Change()

    Added = False
    
End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Priority_Label_Click()
On Error GoTo Err_Priority_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Priority"
   DoCmd.Requery
   
Exit_Priority_Label_Click:
    Exit Sub

Err_Priority_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Priority_Label_Click
End Sub

Private Sub Rebuild_Lifting_Priority_Table_Click()
    
    DoCmd.OpenForm "Lifting_Locations_Form", , , , , acHidden
    DoCmd.OpenForm "Lifting_Priorty_Table_Rebuild_Form"

End Sub

Private Sub Reset_Priorities_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_Reset_Priorities_to_99"
    
    Response = MsgBox("Are you sure you want reset ALL to priority 99?", vbYesNo)
    
    DoCmd.Requery
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

End Sub

Private Sub Species_Age_Class_DblClick(Cancel As Integer)

    Species_Age_Class.Locked = False
    
End Sub

Private Sub Species_Age_Class_Enter()

    If Not IsNull(Species_Age_Class) Then
        Species_Age_Class.Locked = True
    Else
        Species_Age_Class.Locked = False
    End If
End Sub

Private Sub Species_Age_Class_Label_Click()
On Error GoTo Err_Species_Age_Class_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Species"
   DoCmd.Requery
   
Exit_Species_Age_Class_Label_Click:
    Exit Sub

Err_Species_Age_Class_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Age_Class_Label_Click
End Sub
```

## Module: Form_Lifting_Priorty_Table_Rebuild_Form

```vb
Option Compare Database

Private Sub Rebuild_Lift_Priorities_Table_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_at"
    
    Response = MsgBox("Rebuild Lifting Priorities?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.OpenQuery stDocName
        DoCmd.SetWarnings True
        Forms![Lifting_Priorties]![Lifting_Priorties_Subform].Requery
        'DoCmd.OpenForm "Lifting_Priorties"
    Else
        MsgBox "Request Cancelled"
    End If
    DoCmd.Close acForm, "Lifting_Locations_Form"
    DoCmd.Close acForm, "Lifting_Priorty_Table_Rebuild_Form"
    
End Sub
```

## Module: Form_Lot_ID_Input_Form

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

## Module: Form_Lot_ID_Input_Form2

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

## Module: Form_Lot_ID_Input_Form2b

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
    DoCmd.OpenQuery "Seed_Box_Minilable_MT Query"
    DoCmd.OpenQuery "Seed_Box_Minilable_AP Query"
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
        DoCmd.OpenQuery "Seed_Box_Minilable_MT Query"
        DoCmd.OpenQuery "Seed_Box_Minilable_AP Query"
        DoCmd.SetWarnings True
    
        DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub
```

## Module: Form_Lot_ID_Input_Form2c

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
    DoCmd.OpenQuery "Seed_Box_Minilable2c_MT Query"
    DoCmd.OpenQuery "Seed_Box_Minilable2c_AP Query"
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
    DoCmd.OpenQuery "Seed_Box_Minilable2c_MT Query"
    DoCmd.OpenQuery "Seed_Box_Minilable2c_AP Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub
```

## Module: Form_Lot_ID_Input_Form2d

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

## Module: Form_Lot_ID_Input_Form2e

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

## Module: Form_NMIS_ACTIVITY_CHARGES

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = "*"
    DoCmd.Requery
    
End Sub
```

## Module: Form_NMIS_ACTIVITY_CODES

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Activity_Code.Locked = False
    
End Sub

Private Sub ACTIVITY_CODE_Enter()
On Error GoTo Err_ACTIVITY_CODE_Enter

    If IsNull(Activity_Code) Then
        Activity_Code.Locked = False
    Else
        Activity_Code.Locked = True
    End If

Exit_ACTIVITY_CODE_Enter:
    Exit Sub

Err_ACTIVITY_CODE_Enter:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_Enter
End Sub

Private Sub ACTIVITY_CODE_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ACTIVITY_CODE] = '" & Me![ACTIVITY_CODE_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    ACTIVITY_NAME_Lookup = ACTIVITY_CODE_Lookup
  
End Sub

Private Sub ACTIVITY_CODE_Lookup_Enter()

    ACTIVITY_CODE_Lookup.Requery
    
End Sub

Private Sub ACTIVITY_NAME_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ACTIVITY_Code] = '" & Me![ACTIVITY_NAME_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    ACTIVITY_CODE_Lookup = ACTIVITY_NAME_Lookup
  
End Sub

Private Sub ACTIVITY_NAME_Lookup_Enter()

    ACTIVITY_NAME_Lookup.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ACTIVITY_CODE_Lookup"
    
End Sub

Private Sub Open_Activity_Codes_List_Click()
On Error GoTo Err_Open_Activity_Codes_List_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES_LIST"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Activity_Codes_List_Click:
    Exit Sub

Err_Open_Activity_Codes_List_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Activity_Codes_List_Click
    
End Sub

Private Sub Select_For_Parent_Activity_AfterUpdate()

    ACTIVITY_CODE_Lookup = Null
    ACTIVITY_NAME_Lookup = Null
    
End Sub

Private Sub View_All_Click()

    Select_For_Parent_Activity = Null
    ACTIVITY_CODE_Lookup.Requery
    
End Sub
Private Sub Goto_New_Record_Click()
On Error GoTo Err_Goto_New_Record_Click


    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "activity_code"

Exit_Goto_New_Record_Click:
    Exit Sub

Err_Goto_New_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Goto_New_Record_Click
    
End Sub
```

## Module: Form_NMIS_ACTIVITY_CODES_LIST

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_Label_Click()
On Error GoTo Err_ACTIVITY_CODE_Label_Click


    Sort_By = "Activity Code"
    DoCmd.Requery

Exit_ACTIVITY_CODE_Label_Click:
    Exit Sub

Err_ACTIVITY_CODE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_Label_Click
    
End Sub

Private Sub ACTIVITY_CODE_NO_Label_Click()
On Error GoTo Err_ACTIVITY_CODE_NO_Label_Click


    Sort_By = "Activity No"
    DoCmd.Requery

Exit_ACTIVITY_CODE_NO_Label_Click:
    Exit Sub

Err_ACTIVITY_CODE_NO_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_NO_Label_Click
    
End Sub

Private Sub ACTIVITY_NAME_Label_Click()
On Error GoTo Err_ACTIVITY_NAME_Label_Click


    Sort_By = "Activity Name"
    DoCmd.Requery

Exit_ACTIVITY_NAME_Label_Click:
    Exit Sub

Err_ACTIVITY_NAME_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_NAME_Label_Click
    
End Sub

Private Sub BALANCE_EFFECT_Label_Click()
On Error GoTo Err_BALANCE_EFFECT_Label_Click


    Sort_By = "Balance Effect"
    DoCmd.Requery

Exit_BALANCE_EFFECT_Label_Click:
    Exit Sub

Err_BALANCE_EFFECT_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BALANCE_EFFECT_Label_Click
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_Label_Click()
On Error GoTo Err_PARENT_ACTIVITY_CODE_Label_Click


    Sort_By = "Parent Activity"
    DoCmd.Requery

Exit_PARENT_ACTIVITY_CODE_Label_Click:
    Exit Sub

Err_PARENT_ACTIVITY_CODE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PARENT_ACTIVITY_CODE_Label_Click
    
End Sub

Private Sub PROPERTIES_MODULE_Label_Click()
On Error GoTo Err_PROPERTIES_MODULE_Label_Click


    Sort_By = "Properties Module"
    DoCmd.Requery

Exit_PROPERTIES_MODULE_Label_Click:
    Exit Sub

Err_PROPERTIES_MODULE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PROPERTIES_MODULE_Label_Click
    
End Sub

Private Sub Select_Balance_Effect_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_Balance_Effect_Enter()

    Select_For_Activity_Code = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Activity_Code_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Activity_Code_Enter()

    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Parent_Activity_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Parent_Activity_Enter()

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Properties_Module_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Properties_Module_Enter()

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null

End Sub

Private Sub Tip_on_Sorting_Click()

        MsgBox "Click on one of the following Column Headings to sort by that Column." _
        & vbCrLf & "" _
        & vbCrLf & "Activity Code" _
        & vbCrLf & "Activity No." _
        & vbCrLf & "Activity Name" _
        & vbCrLf & "Ballance Effect" _
        & vbCrLf & "Parent Activity" _
        & vbCrLf & "Properties Module", vbInformation
        
End Sub

Private Sub View_All_Click()
On Error GoTo Err_View_All_Click

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    DoCmd.Requery

Exit_View_All_Click:
    Exit Sub

Err_View_All_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_All_Click
    
End Sub
```

## Module: Form_NMIS_AGREEMENTS

```vb
Option Explicit

Private Sub refresh_Click()
On Error GoTo Err_refresh_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70

Exit_refresh_Click:
    Exit Sub

Err_refresh_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_refresh_Click
    
End Sub

Private Sub Agreement_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Agreement_Lookup_Enter()

    Agreement_Lookup.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_AGREEMENT_LOT_CN_DblClick

    [AGREEMENT_LOT_CN].Locked = False
    MsgBox "AGREEMENT LOT is now unlocked for editing"
    
Exit_AGREEMENT_LOT_CN_DblClick:
    Exit Sub

Err_AGREEMENT_LOT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_AGREEMENT_LOT_CN_DblClick
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = True
    Else
        AGREEMENT_LOT_CN.Locked = False
    End If
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)
    
    [AGREEMENT_LOT_CN].Locked = True
    
End Sub

Private Sub AMOUNT_REQUESTED_DblClick(Cancel As Integer)

    AMOUNT_REQUESTED.Locked = False
    
End Sub

Private Sub AMOUNT_REQUESTED_Enter()

    If AMOUNT_REQUESTED > 0 Then
        AMOUNT_REQUESTED.Locked = True
    Else
        AMOUNT_REQUESTED.Locked = False
    End If
    
End Sub

Private Sub AMOUNT_REQUESTED_Exit(Cancel As Integer)

    If Not IsNull(AMOUNT_REQUESTED) Then
        If IsNull(ORIG_AMOUNT_REQUESTED) Then
            ORIG_AMOUNT_REQUESTED = AMOUNT_REQUESTED
        End If
    Else
        AMOUNT_REQUESTED.Locked = True
    End If
    
End Sub

Private Sub AMOUNT_REQUESTED_LostFocus()

    If Not IsNull(AMOUNT_REQUESTED) Then
        If IsNull(ORIG_AMOUNT_REQUESTED) Then
            ORIG_AMOUNT_REQUESTED = AMOUNT_REQUESTED
        End If
    End If
    
End Sub

Private Sub Associate_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(ASSOCIATE_backup) And Associate <> ASSOCIATE_backup Then
        Response = MsgBox("Are you Sure you Want to Change the Client Code?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [Associate] = ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_Associates"

    If IsNull(Associate) Then
        DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        'DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        'DoCmd.GoToControl "ASSOCIATE"
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup].Visible = False
        'Forms![NMIS_ASSOCIATES]![Associate_lookup_Label].Visible = False
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup_by_Name].Visible = False
        'Forms![NMIS_ASSOCIATES]!Unfilter.Visible = True
    Else
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
        Forms![NMIS_Associates]!LikeAssociate.Visible = False
    End If
         
         
End Sub

Private Sub ASSOCIATE_Enter()

    If Not IsNull(Associate) Then
        'Associate.Locked = True
        ASSOCIATE_backup = Associate
        'Associate.Requery
    'Else
        'ASSOCIATE_backup = Null
        'Associate.Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)
    
    LastAgreementCN = CN
    
    If Not IsNull(Associate) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub BEGIN_FY_Exit(Cancel As Integer)

    If Not IsNull(END_FY) Then
        '[END_FY] = [BEGIN_FY] + [Total_FY]
    End If
    
End Sub

Private Sub Breeding_Subunit_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Breeding_Subunit_Lookup_DblClick(Cancel As Integer)

    Breeding_Subunit_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Breeding_Zone_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Breeding_Zone_Lookup_DblClick(Cancel As Integer)

    Breeding_Zone_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Clear_Lookups_Click()
On Error GoTo Err_Clear_Lookups_Click

    Client_Lookup = Null
    SPECIES_GROUP = Null
    Species_Lookup = Null
    Seed_Zone_Lookup = Null
    Breeding_Zone_Lookup = Null
    Breeding_Subunit_Lookup = Null
    Elev_Lookup = Null
    Tree_No_Lookup = Null
    [SOURCE_CODE].Requery

Exit_Clear_Lookups_Click:
    Exit Sub

Err_Clear_Lookups_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Clear_Lookups_Click
    
End Sub

Private Sub Client_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Client_Lookup_DblClick(Cancel As Integer)

    Client_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub CLIENT_NAME_AfterUpdate()
    
   Dim Response As String
   
    If Not IsNull(ASSOCIATE_backup) And Associate <> ASSOCIATE_backup Then
        Response = MsgBox("Are you Sure you Want to Change the Client Name?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CLIENT_NAME] = ASSOCIATE_backup
        End If
    End If
End Sub

Private Sub CLIENT_NAME_DblClick(Cancel As Integer)


    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_Associates"

    If IsNull(Associate) Then
        DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        'DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        'DoCmd.GoToControl "ASSOCIATE"
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup].Visible = False
        'Forms![NMIS_ASSOCIATES]![Associate_lookup_Label].Visible = False
        'Forms![NMIS_ASSOCIATES]![ASSOCIATE_Lookup_by_Name].Visible = False
        'Forms![NMIS_ASSOCIATES]!Unfilter.Visible = True
    Else
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![Associate] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
    End If
'*
    'If IsNull(CLIENT_NAME) Then
        'CLIENT_NAME.Locked = False
        'DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_AGREEMENTS]![CLIENT_NAME] & "'"
        'DoCmd.GoToControl "ASSOCIATE"
        'Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        'Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        'Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        'Forms![NMIS_Associates]!Unfilter.Visible = True
    'Else
        CLIENT_NAME.Locked = False
    'End If
End Sub

Private Sub CLIENT_NAME_Enter()
    
    'If Not IsNull(CLIENT_NAME) Then
        'CLIENT_NAME.Locked = True
        ASSOCIATE_backup = CLIENT_NAME
        'CLIENT_NAME.Requery
    'Else
        'CLIENT_NAME.Locked = False
    'End If
    
End Sub

Private Sub CLIENT_NAME_Exit(Cancel As Integer)
    
    LastAgreementCN = CN
    
    If Not IsNull(CLIENT_NAME) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub CONTACT_CN_AfterUpdate()
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CONTACT_CN] = Contact_CN_Backup
        End If
    End If
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()

    Contact_CN_Backup = CONTACT_CN
    Associate.Requery
    CONTACT_CN.Requery
    
End Sub

Private Sub Contact_CN_GotFocus()

    CONTACT_CN.Requery
    
End Sub

Private Sub Elev_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Elev_Lookup_DblClick(Cancel As Integer)

    Elev_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_Fy_DblClick(Cancel As Integer)

    Filter_For_Fy = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_For_Product_Exit(Cancel As Integer)

    If IsNull(Filter_For_Product) Then
        Filter_For_Product = "*"
    End If
    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Enter()

    Filter_For_Product = "*"
    Filter_For_Product.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)
    
    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub Form_Current()

    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If
 
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        Open_Bend_Lots_Form.Visible = True
    Else
        Open_Bend_Lots_Form.Visible = False
    End If
    'Forms![NMIS_AGREEMENTS]![Like_Like_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Species].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Species_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Client].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Client_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Product].Visible = True
    Forms![NMIS_AGREEMENTS]![Filter_For_Product_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup].Visible = True
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup_Label].Visible = True
    Forms![NMIS_AGREEMENTS]![Open Agreement Lots Form].Visible = True
    DoCmd.GoToRecord , , acLast
    
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    Filter_For_Fy = "*"
    'Agreement_Lookup.Requery
    DoCmd.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)
    
    Like_Agreement_Lots = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Species_Prod_Desc_DblClick(Cancel As Integer)

    Like_Species_Prod_Desc = "*"
    
End Sub

Private Sub Open_Agreement_Lots_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = CN

    If IsNull(AMOUNT_REQUESTED) Then
        MsgBox "Must Enter Amount Requested", vbCritical
        DoCmd.GoToControl "amount_Requested"
    Else
    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.Requery
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![LastAgreementCN] & "'"
        Me.Bookmark = rs.Bookmark

        'DoCmd.FindRecord
        '"[CN] = [LastAgreementCN]"
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Source_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Wildcard_Tips].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    Else
        If (Not IsNull(source_id) And Not IsNull(Species_Product)) Then
            DoCmd.OpenForm "NMIS_AGREEMENT_LOTS_NEW", acNormal, "", "", acAdd
        Else
            MsgBox "Source Lot AND Species Product must be entered"
        End If
    End If
    End If
End Sub

Private Sub Open_Products_Form_Click()
On Error GoTo Err_Open_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Products_Form_Click:
    Exit Sub

Err_Open_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Form_Click
    
End Sub

Private Sub Open_Source_Lot_Form_Click()
On Error GoTo Err_Open_Source_Lot_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Form_Click
    
End Sub

Private Sub ORIG_AMOUNT_REQUESTED_DblClick(Cancel As Integer)

        ORIG_AMOUNT_REQUESTED.Locked = False

End Sub

Private Sub ORIG_AMOUNT_REQUESTED_Enter()

    If Not IsNull(ORIG_AMOUNT_REQUESTED) Then
        ORIG_AMOUNT_REQUESTED.Locked = True
    Else
        ORIG_AMOUNT_REQUESTED.Locked = False
    End If
    
End Sub

Private Sub ORIG_AMOUNT_REQUESTED_Exit(Cancel As Integer)

        ORIG_AMOUNT_REQUESTED.Locked = True
        
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub

Private Sub Seed_Zone_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Seed_Zone_Lookup_DblClick(Cancel As Integer)
    
    Seed_Zone_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub source_id_Change()

    
End Sub

Private Sub source_id_DblClick(Cancel As Integer)

    If Not IsNull(source_id) Then
        source_id.Locked = False
    Else
        DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal ', , , acFormAdd
        DoCmd.GoToControl "ID"
        Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup_Label].Visible = False
        Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Visible = False
    End If

End Sub

Private Sub source_id_Enter()

    If IsNull(source_id) Then
        source_id.Locked = False
    Else
        source_id.Locked = True
    End If
    
End Sub

Private Sub source_id_Exit(Cancel As Integer)
    
    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If

End Sub

Private Sub source_id_NotInList(NewData As String, Response As Integer)
On Error GoTo Err_source_id_NotInList

'Lot not currently in Source Database, Give option to enter as new lot."
  
    [source_id].Undo
    Response = MsgBox("Lot Not Currently in Database. Do you want to Enter this Source Lot?", vbYesNo)
    
    If Response = vbYes Then
        'MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
        DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal ', , , acFormAdd
        DoCmd.GoToControl "ID"
        'Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup_Label].Visible = False
        'Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Visible = False
        
    End If
    
Exit_source_id_NotInList:
    Exit Sub

Err_source_id_NotInList:
    Resume Exit_source_id_NotInList
    
End Sub
Private Sub Requery_Click()
On Error GoTo Err_Requery_Click

    [source_id].Requery
    MsgBox "Source Lots Updated. You may now use any lots you added."
    
Exit_Requery_Click:
    Exit Sub

Err_Requery_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Requery_Click
    
End Sub

Private Sub Species_Group_AfterUpdate()

    [SOURCE_CODE].Requery
    Species_Lookup.Requery

End Sub

Private Sub Species_Group_DblClick(Cancel As Integer)

    SPECIES_GROUP = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Species_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Species_Lookup_DblClick(Cancel As Integer)
    
    Species_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    [END_FY] = [BEGIN_FY] + [Total_FY]
    
End Sub
Private Sub Open_Bend_Lots_Form_Click()
On Error GoTo Err_Open_Bend_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_Bend"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Bend_Lots_Form_Click:
    Exit Sub

Err_Open_Bend_Lots_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Bend_Lots_Form_Click
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Enter()

    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [END_FY] = [BEGIN_FY] + [Total_FY]
  
End Sub
Private Sub Agreements_for_Source_Click()
On Error GoTo Err_Agreements_for_Source_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Agreement_for_Source_Lot"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Agreements_for_Source_Click:
    Exit Sub

Err_Agreements_for_Source_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreements_for_Source_Click
    
End Sub

Private Sub Duplicate_Agreement_Click()
On Error GoTo Err_Duplicate_Agreement_Click


    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 2, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 5, , acMenuVer70 'Paste Append
    AGREEMENT_LOT_CN = Null
    CN = Null
    SPECIES_PRODUCT_CN = Null
    DoCmd.GoToControl "associate"
    DoCmd.GoToControl "client_name"

Exit_Duplicate_Agreement_Click:
    Exit Sub

Err_Duplicate_Agreement_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Duplicate_Agreement_Click
    
End Sub

Private Sub Tree_No_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Zone_Lookup_AfterUpdate()

    [SOURCE_CODE].Requery

End Sub

Private Sub Tree_No_Lookup_DblClick(Cancel As Integer)

    Tree_No_Lookup = Null
    [SOURCE_CODE].Requery
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```

## Module: Form_NMIS_AGREEMENTS subform1

```vb
Option Compare Database

Private Sub Form_Current()

    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub Open_NMIS_Agreements_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENTS"
    stLinkCriteria = "[CN]=" & "'" & Me![CN] & "'"

    DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Forms![NMIS_AGREEMENTS]![Like_Like_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Species].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Species_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Client].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Client_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Product].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Product_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup].Visible = False
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![No_Agreement_lot].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Agreement_Lots].Visible = False
    Forms![NMIS_AGREEMENTS]![Open_Bend_Lots_Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Products Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Source Lot Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Wildcard_Tip].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Agreement_Lots Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Agreement Lots Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Green_Background_Box].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Species_Prod_Desc].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Species_Prod_Desc Label].Visible = False
    
End Sub
```

## Module: Form_NMIS_AGREEMENT_LOTS

```vb
Private Sub AKA_DblClick(Cancel As Integer)

    AKA.Locked = False
    
End Sub

Private Sub AKA_Enter()
    
    If Not IsNull(AKA) Then
        AKA.Locked = True
    Else
        AKA.Locked = False
    End If
    
End Sub

Private Sub Calculate_Click()
'Calculate source required

On Error GoTo Err_Calculate_Click
    Dim ASF As Double
    Dim PLS As Double
    Dim NF As Double
    Dim REQ As Double
    Dim HARVEST_FACTOR As Double
    Dim Source_Req As Double
    Dim Source_Reg2 As Double
    Dim Will_Grow As Double
    Dim Shortage As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    'Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double

'Propagule
    If CATEGORY_CODE = "NSP" Then
    'Calculate Grow Containers
        EST_CONTAINERS_REQUIRED = TOTAL_REQUEST * Propagule_BF_per_Acre
    'Calculate Source Needs
        MsgBox "NMIS does not currently calculate source needs. To be implemented at a later time."
    Else
        
'Non-Propagule
    'Calculate source needs
    If Pure_Live_Seed > 0 Then
    REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
    PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
          (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
    ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT / 100)
    HARVEST_FACTOR = (Forms!NMIS_AGREEMENT_LOTS!HF1 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF2 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF3 / 100) * _
                     (Forms!NMIS_AGREEMENT_LOTS!HF4 / 100)
    Source_Req = Round((REQ / (PLS * HARVEST_FACTOR * ASF)), 3)

    If Source_Req <= Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] Then
            Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] >= 0 Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                    MsgBox "This is a Zero Balance Lot!"
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                Else
                    Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                    MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                End If
            Else
                Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                MsgBox "Undetermined amount of source material."
            End If
    End If
    Else
        MsgBox "No test data entered to calculate source. Calculating containers only"
    End If
    
    'Calculate Grow Containers
    If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
            
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_FACTOR) + 0.35
            End If
        Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
     End If
     End If
     
Exit_Calculate_Click:
    Exit Sub

Err_Calculate_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Calculate_Click
    
End Sub

Private Sub CONTAINER_ASF_ADJUSTMENT_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'CELLS_PER_CONTAINER = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![CELLS_PER_CONTAINER]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub CONTAINER_FACTOR_1_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
     
End Sub

Private Sub CONTAINER_FACTOR_2_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container =
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub CONTAINER_FACTOR_3_Exit(Cancel As Integer)

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'Cells_Per_Container = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
       
End Sub

Private Sub Container_Factor_Tip_Click()

    MsgBox "Container Factors GREATER THAN 100% with an OP of / will REDUCE the number of containers " & _
            "and with an OP of * will INCREASE the number of containers." & _
            " Container Factors LESS THAN than 100% with an OP of / will INCREASE the number of containers " & _
            "and with an OP of * will REDUCE the number of containers." & _
            "   A Container ASF adjustment GREATER THAN 100% will INCREASE the number of containers and LESS THAN 100% " & _
            "will REDUCE the number of containers", vbInformation, _
            "Container Factor Help"
    
End Sub

Private Sub Containers_Required_by_spc_DblClick(Cancel As Integer)

    'If Pure_Live_Seed > 0 Then
        If Not IsNull(Containers_Required_by_spc) And CONTAINER_FACTOR_3 = 100 Then
            CONTAINER_FACTOR_3 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
            EST_CONTAINERS_REQUIRED = Containers_Required_by_spc
        End If
    'End If
 
End Sub

Private Sub Containers_Will_Grow_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    
End Sub

Private Sub Desired_Density_DblClick(Cancel As Integer)

    'MsgBox "Target Density is now UNLOCKED for Editing."
    [DESIRED_DENSITY].Locked = False

End Sub

Private Sub Desired_Density_Exit(Cancel As Integer)

'Relock Desired_Density
    
    If [DESIRED_DENSITY].Locked = False Then
        [DESIRED_DENSITY].Locked = True
    End If
    
'Recalculate the container needs if the Target Density is changed
 

   If [DESIRED_DENSITY] > 0 Then
            Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
            CF1 = [CF1A] / 100
            CF2 = [CF2A] / 100
            CF3 = [CF3A] / 100
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
              (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
             (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
            TARGET_DENSITY = [DESIRED_DENSITY]
            'CELLS_PER_CONTAINER = _
                '[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![CELLS_PER_CONTAINER]
            CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
            CONTAINER_FACTOR = CF1 * CF2 * CF3
    
            If [Type_of_Container] = "SB" Then
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
            Else 'For Containers
                Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF) + 0.35
                'Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                '((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  'CONTAINER_ASF)
                  'Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                  '(([Source_Will_Grow_Gross] * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  'CONTAINER_ASF)
            End If
    Else
            MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
      
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_Client_Enter()

    Filter_For_Client.Requery
    
End Sub

Private Sub Filter_For_Product_DblClick(Cancel As Integer)

    Filter_For_Product = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_DblClick(Cancel As Integer)

    Filter_for_Product_Type = "*"
    
End Sub

Private Sub Filter_for_Species_DblClick(Cancel As Integer)

    Filter_for_Species = "*"
    
End Sub

Private Sub Filter_for_Species_Enter()

    Filter_for_Species.Requery
    
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Find_Lot_Enter()

    Find_Lot.Requery
    
End Sub

Private Sub Form_Close()

' Close the NMIS_AGREEMENT_LOTS_NEW FORM if it is open

    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        DoCmd.Close acForm, strFormName
        Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN].Requery
        DoCmd.GoToRecord , , acLast
    End If
    
End Sub

Private Sub Form_Current()
    
    Find_Lot = CN  'update the find record box match record selected
    SPECIES_PRODUCT_CN.Requery
    PREVIOUS_SPECIES_PRODUCT_CN.Requery
    PREVIOUS_AGREEMENT_LOT_CN.Requery

End Sub

Private Sub Form_Open(Cancel As Integer)

    Dim strFormName As String
    Dim strFormName2 As String
    Dim strFormName3 As String
    Dim strFormName4 As String
    Dim strFormName5 As String
    Dim strFormName6 As String
    
    strFormName = "NMIS_AGREEMENT_LOTS_NEW"
    strFormName2 = "NMIS_AGREEMENTS"
    strFormName3 = "NMIS_ID_ACTIVITY_TRANSACTIONS_FORM"
    strFormName4 = "NMIS_PRODUCT_INVENTORIES"
    strFormName5 = "NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM"
    strFormName6 = "Seed_Sow_Withdrawal_Ticket subform"
    strFormName7 = "NMIS_ID_ACTIVITY_FORM"
    
    If (SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 _
        Or SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 _
            Or SysCmd(acSysCmdGetObjectState, acForm, strFormName3) <> 0 _
                Or SysCmd(acSysCmdGetObjectState, acForm, strFormName4) <> 0 _
                    Or SysCmd(acSysCmdGetObjectState, acForm, strFormName5) <> 0 _
                        Or SysCmd(acSysCmdGetObjectState, acForm, strFormName6) <> 0 _
                            Or SysCmd(acSysCmdGetObjectState, acForm, strFormName7) <> 0) Then
        Title1.Visible = False
        Title2.Visible = True
        Sort_By_Entry_Order.Visible = False
        Screen_For_Begin_FY.Visible = False
        Screen_For_End_FY.Visible = False
        Find_Lot.Visible = False
        Filter_for_Product_Type.Visible = False
        Filter_For_Product.Visible = False
        Filter_For_Client.Visible = False
        Filter_for_Species.Visible = False
        Filter_for_Product_Type_Label.Visible = False
        Filter_For_Product_Label.Visible = False
        Filter_For_Client_Label.Visible = False
        Filter_for_Species_Label.Visible = False
        Clear_Filters.Visible = False
        [Like_Agreement_Lots Label].Visible = False
        Like_Agreement_Lots.Visible = False
        Like_Source_Lots.Visible = False
        Wildcard_Tips.Visible = False
        'DoCmd.GoToControl "ID"
        DoCmd.GoToControl "Use Last Test Data"
    Else
        Title1.Visible = True
        Title2.Visible = False
        Sort_By_Entry_Order.Visible = True
        Screen_For_Begin_FY.Visible = True
        Screen_For_End_FY.Visible = True
        Find_Lot.Visible = True
        Filter_for_Product_Type.Visible = True
        Filter_For_Product.Visible = True
        Filter_For_Client.Visible = True
        Filter_for_Species.Visible = True
        Filter_for_Product_Type_Label.Visible = True
        Filter_For_Product_Label.Visible = True
        Filter_For_Client_Label.Visible = True
        Filter_for_Species_Label.Visible = True
        [Like_Agreement_Lots Label].Visible = True
        Like_Agreement_Lots.Visible = True
        Clear_Filters.Visible = True
        DoCmd.GoToControl "Find_Lot"
    End If
    
End Sub

Private Sub Germ_Detail_Click()

On Error GoTo Err_erm_Detail_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot"
    If Not IsNull([NMIS_SOURCE_LastTestData Query subform].Form![GERM_PCT]) Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "No Detailed Germination Information Available"
    End If
    
Exit_erm_Detail_Click:
    Exit Sub

Err_erm_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_erm_Detail_Click
        
End Sub

Private Sub HARVEST_ASF_ADJUSTMENT_DblClick(Cancel As Integer)
    
    DoCmd.OpenForm "H_ASF"
    
End Sub

Private Sub Harvest_ASF_Form_Click()
    
    DoCmd.OpenForm "H_ASF"
 
End Sub

Private Sub HARVEST_FACTOR_1_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub HARVEST_FACTOR_2_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub HARVEST_FACTOR_3_AfterUpdate()

    [Modified by] = Forms![Switchboard]![Current_User_Name]
    [modified date] = Date
    
End Sub

Private Sub Harvest_Factor_Tip_Click()

    MsgBox "Harvest Factors GREATER THAN 100% with an OP of / will INCREASE the amount of seed " & _
            "and with an OP of * will REDUCE the amount of seed." & _
            "   Harvest Factors LESS THAN than 100% with an OP of / will REDUCE the amount of seed " & _
            "and with an OP of * will INCREASE the amount of seed." & _
            "   A Harvest ASF adjustment GREATER THAN 100% will REDUCE the amount of seed and LESS THAN 100 " & _
            "will INCREASE the amount of seed", vbInformation, _
            "Harvest Factor Help"
  
End Sub

Private Sub ID_DblClick(Cancel As Integer)

    [ID].Locked = False
    MsgBox "Agreement Lot Id is now UNLOCKED for Editing."

End Sub

Private Sub ID_Exit(Cancel As Integer)
    
    If [ID].Locked = False Then
        [ID].Locked = True
        MsgBox "Agreement Lot Id is now LOCKED."
    End If
        
End Sub

Private Sub ID_ORIGINAL_DblClick(Cancel As Integer)

    [ID_ORIGINAL].Locked = False
    MsgBox "ORIGINAL Agreement Lot Id is now UNLOCKED for Editing."

End Sub

Private Sub ID_ORIGINAL_Exit(Cancel As Integer)
    
    If [ID_ORIGINAL].Locked = False Then
        [ID_ORIGINAL].Locked = True
        MsgBox "ORIGINAL Agreement Lot Id is now LOCKED."
    End If
    
End Sub

Private Sub Label98_Click()
    Label_click_error
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)

    Like_Agreement_Lots = "*"
    
End Sub

Private Sub Like_Source_Lots_DblClick(Cancel As Integer)

    Like_Source_Lots = "*"

End Sub

Private Sub NURSERY_ASSOCIATE_DblClick(Cancel As Integer)

    NURSERY_ASSOCIATE.Locked = False
    
End Sub

Private Sub NURSERY_ASSOCIATE_Enter()

    NURSERY_ASSOCIATE.Locked = True
    
End Sub



Private Sub PREVIOUS_AGREEMENT_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(PREVIOUS_AGREEMENT_LOT_CN) And IsNull(PREVIOUS_NURSERY_ASSOCIATE) Then
        PREVIOUS_NURSERY_ASSOCIATE = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        PREVIOUS_NURSERY_ASSOCIATE.Requery
    End If
    
End Sub

Private Sub PREVIOUS_SPECIES_PRODUCT_CN_Enter()

    PREVIOUS_SPECIES_PRODUCT_CN.Requery

End Sub

Private Sub Refresh_and_Close_Form_Click()
On Error GoTo Err_Refresh_and_Close_Form_Click

    Dim stDocName As String

    stDocName = "Close_Form"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Form_Click:
    Exit Sub

Err_Refresh_and_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Form_Click
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Screen_For_Begin_FY_DblClick(Cancel As Integer)

    Screen_For_Begin_FY = "*"
    
End Sub

Private Sub Screen_For_Begin_FY_Enter()

    Screen_For_Begin_FY.Requery
    
End Sub

Private Sub Screen_For_End_FY_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Screen_For_End_FY_DblClick(Cancel As Integer)

    Screen_For_End_FY = "*"
    
End Sub

Private Sub Screen_For_End_FY_Enter()

    Screen_For_End_FY.Requery
  
End Sub

Private Sub Shortage_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Source_Will_Grow, 3) 'Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    [NMIS_AGREEMENTS subform1].Form![AMOUNT_REQUESTED] = Round(Source_Will_Grow, 3)
    
End Sub

Private Sub Sort_By_Entry_Order_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub SOURCE_LOT_CN_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    [SOURCE_LOT_CN].Locked = False
    MsgBox "Source Lot ID is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_LOT_CN_Exit(Cancel As Integer)
'Relock SOURCE_LOT_CN IF UNLOCKED
    
    If [SOURCE_LOT_CN].Locked = False Then
        [SOURCE_LOT_CN].Locked = True
        MsgBox "Source Lot ID is now LOCKED."
    End If

End Sub

Private Sub SOURCE_REQUIRED_AfterUpdate()

    If Not IsNull(SOURCE_REQUIRED) Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
            MsgBox "This is a Zero Balance Lot!"
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum of Activity_Units], 3)
            MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
        End If
        End If
    End If
        
End Sub

Private Sub Source_Required_by_spc_DblClick(Cancel As Integer)

    If Pure_Live_Seed > 0 Then
        If Not IsNull(Source_Required_by_spc) Then
            If HARVEST_FACTOR_4 = 100 And CONTAINER_FACTOR_3 = 100 Then
                HARVEST_FACTOR_4 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                CONTAINER_FACTOR_3 = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                SOURCE_REQUIRED = Round(Source_Required_by_spc, 3)
            End If
            
            If Not IsNull(SOURCE_REQUIRED) Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
                    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                        MsgBox "This is a Zero Balance Lot!"
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                    Else
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                        MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                    End If
                End If
            End If
        End If
    End If
 
End Sub

Private Sub SOURCE_REQUIRED_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub SOURCE_REQUIRED_DblClick(Cancel As Integer)

    [SOURCE_REQUIRED].Locked = False
    'MsgBox "Source Required is now UNLOCKED for Editing."
    
End Sub

Private Sub SOURCE_REQUIRED_Exit(Cancel As Integer)
'Relock Source_Required
    
    If [SOURCE_REQUIRED].Locked = False Then
        [SOURCE_REQUIRED].Locked = True
    End If

'Recalculate the container needs for bareroot if the source amount is changed

   If [Type_of_Container] = "SB" Then
  
    Dim ASF As Double
    Dim Source_Req2 As Double
    Dim PLS As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


'Calculate Grow Containers
    If IsNull(SOURCE_REQUIRED) Then
       MsgBox "No Source Required Entered"
    Else
    If [DESIRED_DENSITY] > 0 Then
        Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
        If Not IsNull(Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT) Then
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
        End If
        CF1 = [CF1A] / 100
        CF2 = [CF2A] / 100
        CF3 = [CF3A] / 100
        TARGET_DENSITY = [DESIRED_DENSITY]
        Cells_Per_Container = _
            [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
        CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
        CONTAINER_FACTOR = CF1 * CF2 * CF3
    
        Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
    Else
        MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
    End If
   End If
    
End Sub

Private Sub Source_Will_Grow_DblClick(Cancel As Integer)

    TOTAL_REQUEST = Round(Source_Will_Grow, 3) 'Round(Containers_Will_Grow * HARVEST_FACTOR / 100, 3)
    [NMIS_AGREEMENTS subform1].Form![AMOUNT_REQUESTED] = Round(Source_Will_Grow, 3)
   
End Sub

Private Sub SPC_Use_Containers_Click()

    'If Pure_Live_Seed > 0 Then
        If Not IsNull(Containers_Required_by_spc) And THINNING_PROBABILITY_PCT = 100 Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                THINNING_PROBABILITY_PCT = Round(Calc_Source / Source_Required_by_spc * 100, 0)
                'CONTAINER_PROBABILITY_PCT = Round(EST_CONTAINERS_REQUIRED / Containers_Required_by_spc * 100, 0)
                EST_CONTAINERS_REQUIRED = Containers_Required_by_spc
            End If
        End If
    'End If
 
End Sub

Private Sub SPC_Use_Source_Click()

    If Pure_Live_Seed > 0 Then
        If Not IsNull(Source_Required_by_spc) Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                CONTAINER_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                THINNING_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                SOURCE_REQUIRED = Round(Source_Required_by_spc, 3)
            End If
            
            If Not IsNull(SOURCE_REQUIRED) Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
                    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                        MsgBox "This is a Zero Balance Lot!"
                        'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                    Else
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                        MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                    End If
                End If
            End If
        End If
    End If

End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub SPECIES_PRODUCT_CN_DblClick(Cancel As Integer)
    
    [SPECIES_PRODUCT_CN].Locked = False
    'MsgBox "Species Product is now UNLOCKED for Editing."
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Exit(Cancel As Integer)

    [SPECIES_PRODUCT_CN].Locked = True

End Sub

Private Sub TOTAL_REQUEST_Change()

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    
End Sub

Private Sub TOTAL_REQUEST_DblClick(Cancel As Integer)

    [TOTAL_REQUEST].Locked = False
    'MsgBox "Total Request is now UNLOCKED for Editing."
    
End Sub

Private Sub TOTAL_REQUEST_Exit(Cancel As Integer)
    
    If [TOTAL_REQUEST].Locked = False Then
        [TOTAL_REQUEST].Locked = True
        'MsgBox "Total Request is now LOCKED."
    End If
    
End Sub

Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click
    
    'If IsNull(Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT) Then
        Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
        Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    'End If
            
    DoCmd.GoToControl "Use_Default_Factors"
    
Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click
    
End Sub


Private Sub Use_Default_Factors_Click()
On Error GoTo Err_Use_Default_Factors_Click

    [NMIS_FACTORS subform].Requery
    
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 = [NMIS_FACTORS subform]![HARVEST_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 = [NMIS_FACTORS subform]![HARVEST_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 = [NMIS_FACTORS subform]![HARVEST_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 = [NMIS_FACTORS subform]![HARVEST_FACTOR_4]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!DESIRED_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    Forms!NMIS_AGREEMENT_LOTS!THINNING_PROBABILITY_PCT = 100
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_PROBABILITY_PCT = 100
    
    DoCmd.GoToControl "Calculate"
    
Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click
    
End Sub

Private Sub Preview_Source_Work_Order_Click()
On Error GoTo Err_Preview_Source_Work_Order_Click

    DoCmd.RunCommand acCmdRefresh
    
    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order"
    
    'If SOURCE_REQUIRED > 0 Then
        [CN].Requery
        DoCmd.OpenReport stDocName, acPreview
   ' Else
        'MsgBox "No Source Required"
    'End If
    
Exit_Preview_Source_Work_Order_Click:
    Exit Sub

Err_Preview_Source_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Source_Work_Order_Click
    
End Sub

Private Sub Tip_Seed_Per_Cell_Adjustment_Click()

    MsgBox "Enter the desired seed(s) per cell. The results are the adjustment to make to the number of Containers or Amount of Source Material. " & _
            "Click on the Use Button for the adjustment you want to use and a SPC% (Seed Per Cell Adjustment %) will be entered.", vbInformation, _
            "Seeds Per Cell Help"
    
End Sub

Private Sub View_Source_Calcs_Click()

    DoCmd.RunCommand acCmdRefresh
    DoCmd.OpenReport "Agreement_Lot_Source_Calcs", acPreview
    
End Sub
Private Sub Clear_Filters_Click()
On Error GoTo Err_Clear_Filters_Click

    Dim stDocName As String

    Filter_for_Product_Type = "*"
    Filter_For_Product = "*"
    Screen_For_Begin_FY = "*"
    Filter_For_Client = "*"
    Filter_for_Species = "*"
    Like_Agreement_Lots = "*"
    Like_Source_Lots = "*"

Exit_Clear_Filters_Click:
    Exit Sub

Err_Clear_Filters_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Clear_Filters_Click
    
End Sub

Private Sub Wildcard_Tips_Click()

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

End Sub
```

## Module: Form_NMIS_AGREEMENT_LOTS_NEW

```vb
Private Sub Form_Close()

On Error GoTo Err_Form_Close
    If Not IsNull(ID) Then
        If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
        End If
        Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    End If
Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close
    
End Sub



Private Sub ID_Enter()
On Error GoTo Err_ID_Enter
    
Dim Default_ID As Long

    
    With CodeContextObject
        
        If IsNull(ID) Then
            '.ID = "Temp ID"
            Select Case [NURSERY_ASSOCIATE]
    
            Case Is = "040207" 'Lucky Peak Nursery
                '.ID = Forms![NMIS_AGREEMENTS]![NMIS_SOURCE_LOTS_ID subform].Form![ID] _
                    '& Left$(CATEGORY_CODE, 1) & Right$(BEGIN_FY, 1) ' & Right$(END_FY, 1)
                ID = " "
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Is = "050357" 'Placerville Nursery
                .ID = Forms![NMIS_AGREEMENTS]![NMIS_SOURCE_LOTS_ID subform].Form![ID] & "-" _
                    & Right$(BEGIN_FY, 2) & Right$(END_FY, 1) & IIf(Left$(CATEGORY_CODE, 1) = "C", "C", "")
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Is = "061019" 'J. Herbert Stone Nursery
                ID = " "
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            Case Else
                'Sets the ID to a default based on the table index and User Nursery offset'
                ID = " "
                .ID = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
                .ID_ORIGINAL = .Index + Nz([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![ID_Offset], 0)
            End Select
        End If
        
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        DoCmd.RunCommand acCmdRefresh
    End With

    'If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
        'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
        'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    'End If
Exit_ID_Enter:
    Exit Sub

Err_ID_Enter:
    'MsgBox Err.DESCRIPTION
    MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    Resume Exit_ID_Enter
       
End Sub

Private Sub ID_Exit(Cancel As Integer)

    Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery

End Sub

Private Sub Open_Agreement_Lots_Form_Click()
On Error GoTo Err_Open_Agreement_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    stDocName = "NMIS_AGREEMENT_LOTS"
    
    DoCmd.RunCommand acCmdRefreshPage
    'Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    If Not IsNull(ID) Then
        If IsNull(Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN) Then
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Forms!NMIS_AGREEMENT_LOTS_NEW!CN
            Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
        End If
        Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN.Requery
    End If
    Forms![NMIS_AGREEMENTS].Requery
    
    DoCmd.OpenForm stDocName, acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENT_LOTS_NEW]![CN]", , acNormal
    Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Like_Source_Lots].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![Wildcard_Tips].Visible = False
    Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False

Exit_Open_Agreement_Lots_Form_Click:
    Exit Sub

Err_Open_Agreement_Lots_Form_Click:
    'MsgBox Err.DESCRIPTION
    
    Forms!NMIS_AGREEMENTS!AGREEMENT_LOT_CN = Null
    DoCmd.Close , "NMIS_AGREEMENT_LOTS"
    ID.SetFocus
    DoCmd.GoToControl "ID"
    'MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    Resume Exit_Open_Agreement_Lots_Form_Click
    
End Sub
Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click

    DoCmd.RunCommand acCmdRefresh
    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    'MsgBox ID & " is already in use. Please Select Another Lot ID OR Press the ESC Key and close the window", vbCritical
    DoCmd.GoToControl "ID"
    Resume Exit_Close_Form_Click
    
End Sub

Private Sub PREVIOUS_AGREEMENT_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(previou_agreement_lot_cn) And IsNull(PREVIOUS_NURSERY_ASSOCIATE) Then
        PREVIOUS_NURSERY_ASSOCIATE = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        PREVIOUS_NURSERY_ASSOCIATE.Requery
    End If
  
End Sub
```

## Module: Form_NMIS_AGREEMENT_LOTS_Report

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Comfirmation_by_stocktype_Click()
On Error GoTo Err_Comfirmation_by_stocktype_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report_by_stocktype"
    DoCmd.OpenReport stDocName, acPreview

Exit_Comfirmation_by_stocktype_Click:
    Exit Sub

Err_Comfirmation_by_stocktype_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Comfirmation_by_stocktype_Click
    
End Sub

Private Sub Comfirmation_holdover_Click()
On Error GoTo Err_Comfirmation_holdover_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report_by_stocktype_hold"
    DoCmd.OpenReport stDocName, acPreview

Exit_Comfirmation_holdover_Click:
    Exit Sub

Err_Comfirmation_holdover_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Comfirmation_holdover_Click
    
End Sub

Private Sub Comfirmation_Summary_Click()
On Error GoTo Err_Comfirmation_Summary_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Comfirmation_Summary_Click:
    Exit Sub

Err_Comfirmation_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Comfirmation_Summary_Click
   
End Sub

Private Sub Confirmation_Report_with_Charges_Click()
On Error GoTo Err_Confirmation_Report_with_Charges_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report_w_cost_est"
    DoCmd.OpenReport stDocName, acPreview

Exit_Confirmation_Report_with_Charges_Click:
    Exit Sub

Err_Confirmation_Report_with_Charges_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Confirmation_Report_with_Charges_Click
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Contacts_for_Current_fy_Sow_Req_Click()
On Error GoTo Err_Contacts_for_Current_fy_Sow_Req_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fy_Sow_Req_Click:
    Exit Sub

Err_Contacts_for_Current_fy_Sow_Req_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fy_Sow_Req_Click
    
End Sub



Private Sub Diverse_AfterUpdate()

    Plntmstr_Symbol = "*"
    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Form_Open(Cancel As Integer)
    
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp_ss].Visible = True
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp].Visible = True
    Else
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp_ss].Visible = False
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp].Visible = False
    End If

End Sub

Private Sub Holdover_Spreadsheet_Click()
On Error GoTo Err_Holdover_Spreadsheet_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Holdover_Spreadsheet"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Holdover_Spreadsheet_Click:
    Exit Sub

Err_Holdover_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Holdover_Spreadsheet_Click
    
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

Like_Client = "*"
CONTACT_CN = Null

End Sub

Private Sub Like_Sowing_Group_DblClick(Cancel As Integer)

    Like_Sowing_Group = "*"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)
    
    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub

Private Sub Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click()
On Error GoTo Err_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Oyjord_Report"
    
    'if [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    'Else
        'MsgBox "End Product Must Be Plant"
    'End If

Exit_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click:
    Exit Sub

Err_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Group_Summary_Report_Click()

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Sow_Group_Summary"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "End Product Must Be Plant"
    End If

End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Report_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Report"
    
    'If [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    'Else
        'MsgBox "End Product Must Be Plant"
    'End If

Exit_Run_Agreement_Lots_Sow_Order_Report:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Report
    
End Sub
Private Sub Plant_Inventory_Report_Click()
On Error GoTo Err_Plant_Inventory_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PLANT_INVENTORY_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Plant_Inventory_Report_Click:
    Exit Sub

Err_Plant_Inventory_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plant_Inventory_Report_Click
    
End Sub
Private Sub Open_Sowing_Order_Form_Click()
On Error GoTo Err_Open_Sowing_Order_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sowing_Order_Form_Click:
    Exit Sub

Err_Open_Sowing_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sowing_Order_Form_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Spreadsheet_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Spreadsheet"
    stDocName2 = "Agreement_Lot_Sow_Order_Prop_Spreadsheet"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        DoCmd.OpenQuery stDocName2 ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    End If

Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Spreadsheet_qp_ss"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Spreadsheet_qp_ms"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click
End Sub

Private Sub Source_Calc_Review_Click()
On Error GoTo Err_Source_Calc_Review_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Source_Calcs_Review"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Source_Calc_Review_Click:
    Exit Sub

Err_Source_Calc_Review_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Calc_Review_Click
    
End Sub
```

## Module: Form_NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE

```vb
Option Compare Database


Private Sub Act_Trans_Report_By_Order_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_Transaction_Balance_by_order"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub NMIS_AGREEMENT_LOT_REPORT_CREATE_Click()
    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_Transaction_Balance"
    
    DoCmd.OpenReport stDocName, acPreview
    
End Sub
```

## Module: Form_NMIS_AGREEMENT_LOT_SELECT

```vb
Option Compare Database


Private Sub NMIS_AGREEMENT_LOT_REPORT_CREATE_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_Lots_Activities_and_Transactions"
    DoCmd.OpenReport stDocName, acPreview
Exit_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click
        
End Sub

Private Sub NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_Lots_Activities_wo_Transactions"
    DoCmd.OpenReport stDocName, acPreview
Exit_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click
    
End Sub
```

## Module: Form_NMIS_ASSOCIATES

```vb
Option Compare Database

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

            [Associate].Locked = False
            MsgBox "Associate unlocked for editing."

End Sub

Private Sub ASSOCIATE_Enter()

    If Not IsNull([Associate]) Then
        [Associate].Locked = True
    Else
        [Associate].Locked = False
    End If

End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)

    If Not IsNull([Associate]) Then
        [Associate].Locked = True
    Else
        MsgBox "ASSOCIATE CODE MUST BE ENTERED"
    End If
    
End Sub

Private Sub ASSOCIATE_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & Me![ASSOCIATE_Lookup] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub ASSOCIATE_Lookup_by_Name_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & Me![ASSOCIATE_Lookup_by_Name] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub ASSOCIATE_Lookup_by_Name_Enter()

    ASSOCIATE_Lookup = Null
    
End Sub

Private Sub ASSOCIATE_Lookup_Enter()

    ASSOCIATE_Lookup_by_Name = Null
    
End Sub

Private Sub ASSOCIATE_NAME_DblClick(Cancel As Integer)

            [ASSOCIATE_NAME].Locked = False
            MsgBox "Associate Name unlocked for editing."
            
End Sub

Private Sub ASSOCIATE_NAME_Enter()

    If IsNull(ASSOCIATE_NAME) Then
        ASSOCIATE_NAME.Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_NAME_Exit(Cancel As Integer)

    If Not IsNull([ASSOCIATE_NAME]) Then
        [ASSOCIATE_NAME].Locked = True
        [ASSOCIATE_NAME_UPPER] = UCase([ASSOCIATE_NAME])
    End If

End Sub

Private Sub Form_AfterInsert()

    DoCmd.RunMacro "refresh"

End Sub

Private Sub Form_Open(Cancel As Integer)
    
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = True
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = True
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = True
    Forms![NMIS_Associates]![LikeAssociate].Visible = True
    DoCmd.GoToControl "ASSOCIATE_Lookup_by_Name"
    
End Sub

Private Sub LikeAssociate_AfterUpdate()
    ASSOCIATE_Lookup_by_Name.Requery
    ASSOCIATE_Lookup.Requery
End Sub

Private Sub LikeAssociate_DblClick(Cancel As Integer)
    LikeAssociate = "*"
    ASSOCIATE_Lookup_by_Name.Requery
    ASSOCIATE_Lookup.Requery
End Sub

Private Sub New_99_Client_Click()

    DoCmd.GoToRecord , , acNewRec
    [Associate] = Forms![NMIS_Associates]![NMIS_ASSOCIATES_99S subform]![NEXT_SURPLUS_ASSOCIATE]
    PARENT_ASSOCIATE = "990000"

End Sub

Private Sub Open_Contact_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
        MsgBox [NMIS_ASSOCIATES_CONTACTS  subform].Form![CONTACT_NAME]
    If IsNull([NMIS_ASSOCIATES_CONTACTS  subform].Form![CONTACT_NAME]) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([LAST_NAME]=" & "'" & Forms![NMIS_Associates]![NMIS_CONTACT_NAME_SELECTED subform].Form![LAST_NAME] & _
                        "'AND " & "[FIRST_NAME] = " & " '" & Forms![NMIS_Associates]![NMIS_CONTACT_NAME_SELECTED subform].Form![FIRST_NAME] & "')", acFormEdit
    End If

End Sub


Private Sub NMIS_ASSOCIATES_subform1_Exit(Cancel As Integer)

    'Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & [NMIS_ASSOCIATES subform1].Form![Associate] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub PARENT_ASSOCIATE_NotInList(NewData As String, Response As Integer)

        MsgBox "PARENT NOT CURRENTLY AN ASSOCIATE. TO USE THIS PARENT, ADD AS AN ASSOCIATE."
        
End Sub

Private Sub New_Record_Click()
On Error GoTo Err_New_Record_Click

    Dim stDocName As String

    DoCmd.GoToRecord , , acNewRec

Exit_New_Record_Click:
    Exit Sub

Err_New_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Record_Click
    
End Sub

Private Sub SHIP_ADDR_DblClick(Cancel As Integer)

    If IsNull(SHIP_ADDR) Then
        SHIP_ADDR = STREET_ADDR
    End If
    If IsNull(SHIP_CITY) Then
        SHIP_CITY = CITY
    End If
    If IsNull(SHIP_STATE) Then
        SHIP_STATE = STATE
    End If
    If IsNull(SHIP_ZIPCODE) Then
        SHIP_ZIPCODE = ZIPCODE
    End If
    If IsNull(SHIP_COUNTRY) Then
        SHIP_COUNTRY = COUNTRY
    End If
    
End Sub

Private Sub Unfilter_Click()
On Error GoTo Err_Unfilter_Click


    Screen.PreviousControl.SetFocus
    DoCmd.ShowAllRecords
        
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = True
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = True
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = True
    Forms![NMIS_Associates]![LikeAssociate].Visible = True
    DoCmd.GoToControl "ASSOCIATE_Lookup_by_Name"
    
Exit_Unfilter_Click:
    Exit Sub

Err_Unfilter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Unfilter_Click
End Sub
```

## Module: Form_NMIS_ASSOCIATES_CONTACTS subform

```vb
Option Compare Database

Private Sub CONTACT_NAME_DblClick(Cancel As Integer)

On Error GoTo Err_CONTACT_NAME_DblClick
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_NAME) Then
        'DoCmd.OpenForm stDocName, , , acFormEdit
        'DoCmd.GoToRecord , , acNewRec
        'DoCmd.GoToControl "last_name"
        'Forms![NMIS_CONTACTS]!CONTACT_Lookup.Visible = False
        'Forms![NMIS_CONTACTS]!Find_Label.Visible = False
        'Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
        'Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
        'MsgBox "Press CTRL F9 after closing the Contacts Form"
    Else
        DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
        DoCmd.GoToControl "last_name"
        Forms![NMIS_CONTACTS]!CONTACT_Lookup.Visible = False
        Forms![NMIS_CONTACTS]!Find_Label.Visible = False
        Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
        Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
    End If
Exit_CONTACT_NAME_DblClick:
    Exit Sub

Err_CONTACT_NAME_DblClick:
    'MsgBox Err.Description
    Resume Exit_CONTACT_NAME_DblClick
End Sub

Private Sub CONTACT_NAME_Enter()
    
    'CONTACT_NAME.Requery
    
End Sub

Private Sub CONTACT_NAME_GotFocus()

    CONTACT_NAME.Requery
    
End Sub

Private Sub CONTACT_NAME_NotInList(NewData As String, Response As Integer)
    
On Error GoTo Err_CONTACT_NAME_NotInList
    [CONTACT_NAME].Undo
    [CONTACT_CN].Undo
    'Response = MsgBox("Not Currently Contact. Do you want to Add this Contact?", vbYesNo)
    
    'If Response = vbYes Then
        MsgBox "Enter New Contacts using the Contacts Form"
        'DoCmd.OpenForm "NMIS_CONTACTS", acNormal, , , acFormAdd
    'End If
Exit_CONTACT_NAME_NotInList:
    Exit Sub

Err_CONTACT_NAME_NotInList:
    'MsgBox Err.Description
    Resume Exit_CONTACT_NAME_NotInList
    
End Sub

Private Sub Form_AfterInsert()

    If [LAST_NAME] > "" And [FIRST_NAME] > "" Then
        [CONTACT_NAME_UPPER] = [LAST_NAME] & ", " & [FIRST_NAME]
      Else
        [CONTACT_NAME_UPPER] = [LAST_NAME]
    End If
    DoCmd.RunMacro "Set_CN"
    
End Sub

Private Sub Open_Contact_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    Response = MsgBox("Is this an new contact to NMIS?", vbYesNo)
    
    If Response = vbYes Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , , acFormEdit
          DoCmd.RunCommand acCmdFilterByForm
    End If
    
End Sub

Private Sub Requery_Click()

    [LINK_ASSOCIATE].Requery
    
End Sub
```

## Module: Form_NMIS_ASSOCIATES_CONTACT_INFO Subform

```vb
Option Compare Database

Private Sub Open_Client_Notes_Form_Click()
On Error GoTo Err_Open_Client_Notes_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS Subform"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Client_Notes_Form_Click:
    Exit Sub

Err_Open_Client_Notes_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Client_Notes_Form_Click
    
End Sub

Private Sub FIRST_NAME_Exit(Cancel As Integer)

    If [FIRST_NAME] > "" Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & ", " & [FIRST_NAME])
    End If
    
End Sub

Private Sub LAST_NAME_Exit(Cancel As Integer)

    If [LAST_NAME] > "" Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME])
    End If
    
End Sub

Private Sub MIDDLE_INITIAL_Exit(Cancel As Integer)

    If [LAST_NAME] > "" And [FIRST_NAME] > "" And [MIDDLE_INITIAL] > "" Then
        [CONTACT_NAME_UPPER] = [LAST_NAME] & ", " & [FIRST_NAME]
    End If
    
End Sub
```

## Module: Form_NMIS_ASSOCIATES_Ship_Miles

```vb
Option Compare Database

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_update_ship_miles"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Form_NMIS_ASSOCIATES_Ship_Miles1

```vb
Option Compare Database

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_update_ship_miles1"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Form_NMIS_CLIENT_MGMT_CODES subform

```vb
Option Compare Database

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub
```

## Module: Form_NMIS_CLIENT_MGMT_CODES subform1

```vb
Option Compare Database

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If IsNull(MGMT_CODE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub
```

## Module: Form_NMIS_CLIENT_MGMT_CODES_NEW subform

```vb
Option Compare Database

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub
```

## Module: Form_NMIS_CLIENT_MGMT_CODES_ST subform

```vb
Option Compare Database

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub
```

## Module: Form_NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform

```vb
Option Compare Database

Private Sub Like_FY_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_FY_DblClick(Cancel As Integer)

    Like_FY = "*"
    
End Sub

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub
```

## Module: Form_NMIS_CLIENT_MGMT_CODES_Source_Lots_new_Subform

```vb
Option Compare Database

Private Sub Like_FY_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_FY_DblClick(Cancel As Integer)

    Like_FY = "*"
    
End Sub

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub

Private Sub MGMT_CODE_Exit(Cancel As Integer)

    If IsNull(MGMT_CODE) And Not IsNull(CLIENT_ASSOCIATE) Then
        MGMT_CODE = CLIENT_ASSOCIATE
    End If
    
End Sub
```

## Module: Form_NMIS_CONTACTS

```vb
Option Compare Database

Private Sub Open_Contact_Listing_Click()
On Error GoTo Err_Open_Contact_Listing_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS_LIST"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Contact_Listing_Click:
    Exit Sub

Err_Open_Contact_Listing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Contact_Listing_Click
    
End Sub

Private Sub CONTACT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![CONTACT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub CONTACT_Lookup_Enter()

    Unfilter.Visible = False
    CONTACT_Lookup.Requery
    
End Sub

Private Sub FIRST_NAME_DblClick(Cancel As Integer)

    If Not IsNull(FIRST_NAME) Then
        [FIRST_NAME].Locked = False
        'MsgBox "First Name unlocked for editing."
    End If
    
End Sub

Private Sub FIRST_NAME_Enter()

    If Not IsNull([FIRST_NAME]) Then
        [FIRST_NAME].Locked = True
    Else
        [FIRST_NAME].Locked = False
    End If
    
End Sub

Private Sub FIRST_NAME_Exit(Cancel As Integer)
    
    If Not IsNull(LAST_NAME) Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    End If
    
End Sub

Private Sub Form_Close()
    'Dim strFormName As String
    
    'strFormName = "NMIS_AGREEMENTS"
    
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_AGREEMENTS") <> 0 Then
        Forms![NMIS_AGREEMENTS]![CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "SEED_SHIPPING_TICKET Subform") <> 0 Then
        Forms![SEED_SHIPPING_TICKET Subform]![Client_Contact_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_SHIPPING_TICKET Subform") <> 0 Then
        Forms![NMIS_SHIPPING_TICKET Subform]![Client_Contact_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE") <> 0 Then
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].Form![CONTACT_CN].Requery
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].Form![SECONDARY_CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESSING_ORDERS_INPUT") <> 0 Then
        Forms![NMIS_PROCESSING_ORDERS_INPUT]![CONTACT_CN].Requery
        Forms![NMIS_PROCESSING_ORDERS_INPUT]![SECONDARY_CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2") <> 0 Then
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].Form![CONTACT_CN].Requery
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].Form![SECONDARY_CONTACT_CN].Requery
    End If

End Sub

Private Sub Form_Current()

    CONTACT_Lookup = CN
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Unfilter.Visible = False
    CONTACT_Lookup.Visible = True
    Home_Associate_Filter.Visible = True
    Find_Label.Visible = True
    DoCmd.GoToControl "contact_lookup"
    
End Sub

Private Sub Hide_99s_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Hide_Historical_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub HOME_ASSOCIATE_DblClick(Cancel As Integer)

    HOME_ASSOCIATE.Locked = False
    
End Sub

Private Sub HOME_ASSOCIATE_Enter()
    
    If Not IsNull([HOME_ASSOCIATE]) Then
        [HOME_ASSOCIATE].Locked = True
    Else
        [HOME_ASSOCIATE].Locked = False
    End If
    
End Sub

Private Sub Home_Associate_Filter_AfterUpdate()

    CONTACT_Lookup.Requery
    
End Sub

Private Sub Home_Associate_Filter_DblClick(Cancel As Integer)
    
    Home_Associate_Filter = "*"
    
End Sub

Private Sub LAST_NAME_DblClick(Cancel As Integer)

    If Not IsNull(LAST_NAME) Then
        [LAST_NAME].Locked = False
        'MsgBox "Last Name unlocked for editing."
    End If
    
End Sub

Private Sub LAST_NAME_Enter()

    If Not IsNull([LAST_NAME]) Then
        [LAST_NAME].Locked = True
    Else
        [LAST_NAME].Locked = False
    End If
    
End Sub

Private Sub LAST_NAME_Exit(Cancel As Integer)
    
    If Not IsNull(LAST_NAME) Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    End If
    
End Sub

Private Sub MIDDLE_INITIAL_Exit(Cancel As Integer)

    [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    
End Sub

Private Sub Unfilter_Click()
On Error GoTo Err_Unfilter_Click


    'Screen.PreviousControl.SetFocus
    DoCmd.ShowAllRecords
    CONTACT_Lookup.Visible = True
    Find_Label.Visible = True
    Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = True
    Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = True
    Forms![NMIS_CONTACTS]!Hide_99s.Visible = True
    Forms![NMIS_CONTACTS]!Hide_Historical.Visible = True
    DoCmd.GoToControl "CONTACT_Lookup"
Exit_Unfilter_Click:
    Exit Sub

Err_Unfilter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Unfilter_Click
    
End Sub
```

## Module: Form_NMIS_CONTRACTS

```vb
Option Compare Database

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

    Dim stDocName As String

    If IsNull(Associate) Then
        stDocName = "NMIS_ASSOCIATES"
        DoCmd.OpenForm stDocName
        DoCmd.GoToRecord , , acNewRec
    Else
        Associate.Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_Enter()

    Associate.Requery
    
    If IsNull(Associate) Then
        Associate.Locked = False
    Else
        Associate.Locked = True
    End If
    
End Sub

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub CONTRACT_NO_DblClick(Cancel As Integer)
    
    Contract_No.Locked = False
    
End Sub

Private Sub CONTRACT_NO_Enter()

    If Not IsNull(Contract_No) Then
        Contract_No.Locked = True
    Else
        Contract_No.Locked = False
    End If
    
End Sub

Private Sub CONTRACT_NO_Exit(Cancel As Integer)

    Contract_No.Locked = True
    
    If IsNull(Project_Name) Then
        Project_Name = PROJECT
    End If
    
End Sub


Private Sub CONTRACT_NO_LostFocus()

    Last_Contract_No_Viewed = Contract_No
    Last_Project_Viewed = PROJECT
    
End Sub

Private Sub Form_Close()

    If IsLoaded("Contract_Payment_Estimate_Invoice") Then
        If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_No]) Then
        If Not IsNull(Last_Contract_No_Viewed) Then
            'MsgBox "lookup contract no"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_No] = Last_Contract_No_Viewed
            'MsgBox "project name"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![Project_Name] = Last_Project_Viewed
            'MsgBox "main contract no"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![Contract_No] = Last_Contract_No_Viewed
            'MsgBox "make Est 0"
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![ESTIMATE_NO] = 0
            If IsNull(Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![ESTIMATE_NO_PREVIOUS]) Then
                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_CONTRACT_PAYMENT_EST_APPEND_NEW_CONTRACT"
                DoCmd.SetWarnings True
                Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![ESTIMATE_NO_PREVIOUS] = 0
            End If
            Forms![Contract_Payment_Estimate_Invoice]![Contract_No].Requery
            Forms![Contract_Payment_Estimate_Invoice]![Contract_Payment_Estimate_Invoice_Main_subform].Form![Contract_No].Requery
            'MsgBox Last_Contract_No_Viewed
        End If
        End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Last_Contract_No_Viewed = Null
    Last_Project_Viewed = Null
    DoCmd.GoToControl "View_Contract"
    
End Sub

Private Sub show_all_contract_items_AfterUpdate()

    [NMIS_CONTRACT_ITEMS].Requery
    
End Sub

Private Sub View_Contract_AfterUpdate()

    DoCmd.Requery
    ' Find the record that matches the control.
     Dim rs As Object

       Set rs = Me.Recordset.Clone
        rs.FindFirst "[CONTRACT_NO] = '" & Me![View_Contract] & "'"
        Me.Bookmark = rs.Bookmark
     
End Sub

Private Sub View_Contract_Enter()
    
    View_Contract.Requery
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    View_Contract.Requery
    
End Sub
```

## Module: Form_NMIS_CONTRACT_ROLL_OVER

```vb
Option Compare Database

Private Sub Close_Form_Click()

    DoCmd.Close
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If NMIS_Contract_Items_Current = "no" Then
        Rollover_Contracts.Visible = True
        Close_form.Visible = False
    Else
        Rollover_Contracts.Visible = False
        Close_form.Visible = True
    End If
    
End Sub

Private Sub Rollover_Contracts_Click()
On Error GoTo Err_Rollover_Contracts_Click

    Dim stDocName As String

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "CONTRACT_ROLLOVER", acNormal, acEdit
    DoCmd.OpenQuery "Rollover_CONTRACT_ITEMS", acNormal, acEdit
    DoCmd.OpenQuery "CONTRACT_ITEM_DETAIL_ROLLOVER", acNormal, acEdit
    DoCmd.OpenQuery "CONTRACT_PAYMENT_ESTIMATE_INVOICE_ROLLOVER", acNormal, acEdit
    DoCmd.SetWarnings True
    MsgBox "Rollover Complete"
    DoCmd.Close

Exit_Rollover_Contracts_Click:
    Exit Sub

Err_Rollover_Contracts_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Rollover_Contracts_Click
    
End Sub
```

## Module: Form_NMIS_FACTORS

```vb
Option Compare Database

Private Sub Command49_Click()
On Error GoTo Err_Command49_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command49_Click:
    Exit Sub

Err_Command49_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command49_Click
    
End Sub
```

## Module: Form_NMIS_FISCAL_YEARS

```vb
Option Compare Database

Private Sub BEGIN_DATE_Enter()
    
    If IsNull(BEGIN_DATE) And Not IsNull(FISCAL_YEAR) Then
        BEGIN_DATE = "10/01/" & Right$((FISCAL_YEAR - 1), 2)
    End If
    
End Sub

Private Sub END_DATE_Enter()
    
    If IsNull(END_DATE) And Not IsNull(FISCAL_YEAR) Then
        END_DATE = "09/30/" & Right$((FISCAL_YEAR), 2)
    End If
  
End Sub

Private Sub FISCAL_YEAR_NUMBER_Enter()

    If IsNull(FISCAL_YEAR_NUMBER) And Not IsNull(FISCAL_YEAR) Then
        FISCAL_YEAR_NUMBER = FISCAL_YEAR
    End If
    
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES Subform

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub ACTIVITY_DATE_DblClick(Cancel As Integer)

    ACTIVITY_DATE.Locked = False
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE.Locked = False
    Else
        ACTIVITY_DATE.Locked = True
    End If
    
End Sub

Private Sub Activity_Number_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Activity_Number_Exit(Cancel As Integer)
    
    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
    End If
    If Activity_Code = "CNRECV" Or Activity_Code = "CLEAN" Then
        UNIT_CODE = "BU"
    End If
        
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)
    
    Dim stBalance_Effect As String
    Dim lnNegBalance As Double
    
    If Not IsNull([BALANCE_EFFECT]) And Not IsNull([ACTIVITY_UNITS]) Then
    stBalance_Effect = [BALANCE_EFFECT]
    Select Case stBalance_Effect
        Case Is = "REMOVE"
            If [ACTIVITY_UNITS] > 0 Then
                'Response = MsgBox("Units should be Less than Zero. Change to Minus?", vbYesNo)
                'If Response = vbYes Then
                    lnNegBalance = [ACTIVITY_UNITS] * -1
                    [ACTIVITY_UNITS] = lnNegBalance
                'End If
            End If
        Case Is = "ADD"
            If [ACTIVITY_UNITS] < 0 Then
                MsgBox ("Units must be GREATER than Zero for Activity Code " & [Activity_Code])
                lnNegBalance = [ACTIVITY_UNITS] * -1
                [ACTIVITY_UNITS] = lnNegBalance
            End If
    End Select
    End If
End Sub

Private Sub Form_Current()
    
    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "ADDNON" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "STONON" Or _
        [Activity_Code] = "ADDNON" Or [Activity_Code] = "ACQBT" Or _
        [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
        [Activity_Code] Like "RETST*" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    'If IsNull(XS_SP_Balance) Then
        'xssp_bal.Visible = False
        'xssp_bal_label.Visible = False
    'Else
        'xssp_bal.Visible = True
        'xssp_bal_label.Visible = True
    'End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

        'xssp_bal.Visible = False
        'xssp_bal_label.Visible = False
      
End Sub

Private Sub Open_MGMT_codes_subform_Click()
On Error GoTo Err_Open_MGMT_codes_subform_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
        stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_ID_MGMT_CODES subform"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_MGMT_codes_subform_Click:
    Exit Sub

Err_Open_MGMT_codes_subform_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_MGMT_codes_subform_Click
    
End Sub

Private Sub open_source_test_entry_form_Click()

On Error GoTo Err_open_source_test_entry_form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       '[Activity_Code] = "ADDNON" Or [Activity_Code] = "WEIGH" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        'DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST', '235/ADDNON', '252/RETEST', '253/XFRIN1' OR '254/XFRIN2'."
    'End If

Exit_open_source_test_entry_form_Click:
    Exit Sub

Err_open_source_test_entry_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_open_source_test_entry_form_Click

End Sub
Private Sub Add_Record_Click()
On Error GoTo Err_Add_Record_Click


    DoCmd.GoToRecord , , acNewRec

Exit_Add_Record_Click:
    Exit Sub

Err_Add_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Add_Record_Click
    
End Sub
Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM"
    stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![ID_ACTIVITY_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES2 Subform

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub ACTIVITY_CODE_Enter()

    Activity_Code.Requery
    If IsNull(Activity_Code) Then
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub ACTIVITY_DATE_DblClick(Cancel As Integer)
    
    ACTIVITY_DATE.Locked = False
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE.Locked = False
    Else
        ACTIVITY_DATE.Locked = True
    End If
    
End Sub

Private Sub Activity_Number_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Activity_Number_Enter()
    
    Activity_Number.Requery
    
End Sub

Private Sub Activity_Number_Exit(Cancel As Integer)
    
    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
    End If
    If Activity_Code = "CNRECV" Then
        UNIT_CODE = "BU"
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)
    
    Dim stBalance_Effect As String
    Dim lnNegBalance As Double
    
    If Not IsNull([BALANCE_EFFECT]) And Not IsNull([ACTIVITY_UNITS]) Then
    stBalance_Effect = [BALANCE_EFFECT]
    Select Case stBalance_Effect
        Case Is = "REMOVE"
            If [ACTIVITY_UNITS] > 0 Then
                'Response = MsgBox("Units should be Less than Zero. Change to Minus?", vbYesNo)
                'If Response = vbYes Then
                    lnNegBalance = [ACTIVITY_UNITS] * -1
                    [ACTIVITY_UNITS] = lnNegBalance
                'End If
            End If
        Case Is = "ADD"
            If [ACTIVITY_UNITS] < 0 Then
                MsgBox ("Units must be GREATER than Zero for Activity Code " & [Activity_Code])
                lnNegBalance = [ACTIVITY_UNITS] * -1
                [ACTIVITY_UNITS] = lnNegBalance
            End If
    End Select
    End If
End Sub

Private Sub Form_AfterInsert()
    
    DoCmd.RunMacro "set_cn"
    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
        [Activity_Code] = "ADDNON" Or [Activity_Code] = "ACQBT" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
    
End Sub

Private Sub Form_Current()

    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "ADDNON" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "STONON" Or _
        [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
        [Activity_Code] Like "RETST*" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    'If IsNull(XS_SP_Balance2) Then
        'xssp_bal2.Visible = False
        'xssp_bal_label2.Visible = False
    'Else
        'xssp_bal2.Visible = True
        'xssp_bal_label2.Visible = True
    'End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

        'xssp_bal2.Visible = False
        'xssp_bal_label2.Visible = False
        
End Sub

Private Sub Open_MGMT_codes2_subform_Click()
On Error GoTo Err_Open_MGMT_codes2_subform_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
        stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_ID_MGMT_CODES2 subform"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_MGMT_codes2_subform_Click:
    Exit Sub

Err_Open_MGMT_codes2_subform_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_MGMT_codes2_subform_Click
    
End Sub

Private Sub open_source_test_entry_form_Click()

On Error GoTo Err_open_source_test_entry_form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       '[Activity_Code] = "ADDNON" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS_for_act_data Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST', '235/ADDNON', '252/RETEST', '253/XFRIN1' OR '254/XFRIN2'."
    'End If

Exit_open_source_test_entry_form_Click:
    Exit Sub

Err_open_source_test_entry_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_open_source_test_entry_form_Click

End Sub
Private Sub Add_Record_Click()
On Error GoTo Err_Add_Record_Click


    DoCmd.GoToRecord , , acNewRec

Exit_Add_Record_Click:
    Exit Sub

Err_Add_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Add_Record_Click
    
End Sub
Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM"
    stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![ID_ACTIVITY_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_ACTIVITIES3_subform

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Activity_Code.Locked = False
    
End Sub

Private Sub ACTIVITY_CODE_Enter()

    If IsNull(Activity_Code) Then
        Activity_Code.Locked = False
    Else
        Activity_Code.Locked = True
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_DATE_DblClick(Cancel As Integer)

    ACTIVITY_DATE.Locked = False
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE.Locked = False
    Else
        ACTIVITY_DATE.Locked = True
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_UNITS_DblClick(Cancel As Integer)

    ACTIVITY_UNITS.Locked = False
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(ACTIVITY_UNITS) Then
        ACTIVITY_UNITS.Locked = False
    Else
        ACTIVITY_UNITS.Locked = True
    End If
    
    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_FORM]![Default_Date]
    End If
    
    If IsNull(Activity_Code) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_FORM]![Default_Activity_Code]
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)

    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_UNITS) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub Form_Current()

    ORDER_CN.Requery
    
End Sub

Private Sub NOTE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub Order_CN_Change()

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Order_CN_Enter()

    'If Not IsNull(ORDER_CN) Then
        ORDER_CN.Requery
    'End If
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Properties_Button_Click()

        Call Property_Module_Form_Open(Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PROPERTIES_MODULE], CN, AGREEMENT_LOT_CN, ORDER_CN, Ticket_ID)

End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_ACTIVITIES_subform

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Activity_Code.Locked = False
    
End Sub

Private Sub ACTIVITY_CODE_Enter()

    'If IsNull(ACTIVITY_DATE) Then
        'ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Date]
    'End If
    
    ORDER_CN.Requery
    
    If IsNull(Activity_Code) And Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]) Then
        Activity_Code = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]
    End If
    
    If Not IsNull(Activity_Code) Then
        Activity_Code.Locked = True
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    Else
        Activity_Code.Locked = False
    End If
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)
    
    If Not IsNull(Activity_Code) Then
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_DblClick(Cancel As Integer)

    ACTIVITY_DATE.Locked = False
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE.Locked = False
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Date]
    Else
        ACTIVITY_DATE.Locked = True
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Date]
    End If
    
    ORDER_CN.Requery
        
    If Not IsNull(ACTIVITY_DATE) Then
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_UNITS_DblClick(Cancel As Integer)

    ACTIVITY_UNITS.Locked = False
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    ac = [Activity_Code]
    
    If IsNull(Activity_Code) And Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]) Then
        Activity_Code = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Activity_Code]
    End If
    
    If IsNull(Activity_Code) Then
        MsgBox "Must enter an Activity Code", vbCritical
        DoCmd.GoToControl "activity_code"
        If IsNull(ACTIVITY_UNITS) Then
            ACTIVITY_UNITS.Locked = False
            If ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XPLTC" Or ac = "XPLTP" Then
                ACTIVITY_UNITS = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![TOTAL_REQUEST]
            End If
    Else
        'ACTIVITY_UNITS.Locked = True
    End If
    End If
        If IsNull(CN) Then
            If Not IsNull(New_CN) Then
                CN = New_CN
            End If
        End If
    If Not IsNull(ACTIVITY_UNITS) Then
        ACTIVITY_UNITS.Locked = True
    Else
        ACTIVITY_UNITS.Locked = False
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)

    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_UNITS) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub CONTRACT_ITEM_Click()

If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub CONTRACT_ITEM_Enter()

    If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Contract_Item_Exit(Cancel As Integer)

If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub FISCAL_YEAR_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub Form_Current()

    Ticket_ID.Requery
    'If Not IsNull(ACTIVITY_UNITS) Then
        'If Not IsNull(ORDER_CN) Then
            ORDER_CN.Requery
        'End If
    'End If
    
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_SUBFORM"
    stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub ORDER_CN_AfterUpdate()

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If
   
End Sub

Private Sub Order_CN_Change()

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If
        
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   

End Sub

Private Sub ORDER_CN_DblClick(Cancel As Integer)

    ORDER_CN.Locked = False
    
End Sub

Private Sub Order_CN_Enter()

    DoCmd.RunMacro "Refresh"
    ORDER_CN.Requery

    If IsNull(ORDER_CN) Then
        ORDER_CN.Locked = False
    Else
        ORDER_CN.Locked = True
    End If
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    'If (Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]) And IsNull(CONTRACT_ITEM)) Then
        'CONTRACT_ITEM = _
        'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    'End If

End Sub

Private Sub Properties_Button_Click()

    Call Property_Module_Form_Open(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PROPERTIES_MODULE], CN, AGREEMENT_LOT_CN, ORDER_CN, Ticket_ID)

End Sub

Private Sub Ticket_ID_DblClick(Cancel As Integer)

    Ticket_ID.Locked = False
    
End Sub

Private Sub Ticket_ID_Enter()
    
    Ticket_ID.Requery
    If IsNull(Ticket_ID) Then
        Ticket_ID.Locked = False
    Else
        Ticket_ID.Locked = True
    End If
    
End Sub

Private Sub TREATMENT_PRODUCT_ID_Change()
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM

```vb
Option Compare Database

Private Sub Ticket_NO_DblClick(Cancel As Integer)
    
    Ticket_No.Locked = False
    
End Sub

Private Sub Ticket_NO_Enter()
    If Not IsNull(Ticket_No) Then
        Ticket_No.Locked = True
    Else
        Ticket_No.Locked = False
    End If
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM

```vb
Option Compare Database

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = AGREEMENT_LOT_CN
    
    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_ID_ACTIVITIES_MORE_INFO_SUBFORM]![AGREEMENT_LOT_CN]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        DoCmd.GoToControl "ID"
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
    End If
    
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_NEW_LOTS Subform

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub ACTIVITY_CODE_Enter()

    Activity_Code.Requery
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = True
    Else
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = False
    End If
End Sub

Private Sub Activity_Number_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Activity_Number_Enter()

    Activity_Number.Requery
    
End Sub

Private Sub Activity_Number_Exit(Cancel As Integer)

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
       [Activity_Code] = "ADDNON" Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = True
    Else
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = False
    End If
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
    End If
    If Activity_Code = "CNRECV" Then
        UNIT_CODE = "BU"
    End If
        
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)
    
    Dim stBalance_Effect As String
    Dim lnNegBalance As Double
    
    If Not IsNull([BALANCE_EFFECT]) And Not IsNull([ACTIVITY_UNITS]) Then
    stBalance_Effect = [BALANCE_EFFECT]
    Select Case stBalance_Effect
        Case Is = "REMOVE"
            If [ACTIVITY_UNITS] > 0 Then
                'Response = MsgBox("Units should be Less than Zero. Change to Minus?", vbYesNo)
                'If Response = vbYes Then
                    lnNegBalance = [ACTIVITY_UNITS] * -1
                    [ACTIVITY_UNITS] = lnNegBalance
                'End If
            End If
        Case Is = "ADD"
            If [ACTIVITY_UNITS] < 0 Then
                MsgBox ("Units must be GREATER than Zero for Activity Code " & [Activity_Code])
                lnNegBalance = [ACTIVITY_UNITS] * -1
                [ACTIVITY_UNITS] = lnNegBalance
            End If
    End Select
    End If
    
End Sub

Private Sub Fiscal_Year_Exit(Cancel As Integer)

    If Not IsNull(FISCAL_YEAR) Then
        default_activity_FY = FISCAL_YEAR
    End If
    
End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)

    default_activity_date = ACTIVITY_DATE

End Sub

Private Sub Form_Current()

    If [Activity_Code] = "WEIGH" Or [Activity_Code] = "ADDCMB" Or _
        [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "RETST2" Or [Activity_Code] = "RETST3" Or _
        [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
        [Activity_Code] = "DONATI" Or [Activity_Code] = "DONAOT" Or _
        [Activity_Code] = "ADDNON" Or [Activity_Code] = "ACQBT" Or _
        [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
        [Activity_Code] = "RETST*" Or [Activity_Code] Like "STONON" Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = True
    Else
        Forms![NMIS_SOURCE_LOTS_INPUT]![Open NMIS_SOURCE_TEST_RESULTS_NEW_LOT].Visible = False
    End If
End Sub

Private Sub NOTE_DblClick(Cancel As Integer)

    If IsNull(NOTE) Then
        If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
            NOTE = "Rec'd Bend Seed Extractory"
        End If
    End If
    
End Sub

Private Sub Open_MGMT_codes_subform_Click()
On Error GoTo Err_Open_MGMT_codes_subform_Click

    'Dim stDocName As String

    'stDocName = "NMIS_ID_MGMT_CODES_NEW subform"
    'DoCmd.OpenForm stDocName
    Dim stDocName As String
    Dim stLinkCriteria As String
    
        stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_ID_MGMT_CODES_NEW subform"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_MGMT_codes_subform_Click:
    Exit Sub

Err_Open_MGMT_codes_subform_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_MGMT_codes_subform_Click
    
End Sub

Private Sub open_source_test_entry_form_Click()

On Error GoTo Err_open_source_test_entry_form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST' or '252/RETEST'."
    'End If

Exit_open_source_test_entry_form_Click:
    Exit Sub

Err_open_source_test_entry_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_open_source_test_entry_form_Click

End Sub

Private Sub Print_Bag_Label_Click()
On Error GoTo Err_Print_Bag_Label_Click

    Dim stDocName As String

    stDocName = "seed_entry_edit_lot_bag_label"
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Print_Bag_Label_Click:
    Exit Sub

Err_Print_Bag_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Bag_Label_Click
    
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE

```vb
Option Compare Database


Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    If Not IsNull(AMT_PER_UNIT) Then
        AMT_PER_UNIT_INV_GROSS = AMT_PER_UNIT
    End If
    
End Sub


Private Sub Label30_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_SOURCE"
    
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & [SOURCE_LOT_CN] & "'"
    
    DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS

```vb
Option Compare Database


Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    If Not IsNull(AMT_PER_UNIT) Then
        AMT_PER_UNIT_INV_GROSS = AMT_PER_UNIT
    End If
    
End Sub


Private Sub Label30_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_SOURCE"
    
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & [SOURCE_LOT_CN] & "'"
    
    DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub
```

## Module: Form_NMIS_ID_ACTIVITIES_TRANSACTIONS_subform

```vb
Option Compare Database

Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]
    'Update Sowing Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If (ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XFERFM" Or ac = "CTSTRK") And _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![PRODUCT_GROUP] = "PLANT" Then
        If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
            DoCmd.SetWarnings False
            DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
        End If
        End If
        End If
    End If
    
    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
            If pac = "LIFT" And (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB") Then
            If (AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0) Then
                DoCmd.SetWarnings False
                DoCmd.Requery
                DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
                DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
                AMT_PER_UNIT_INV_GROSS.Requery
                AMT_PER_UNIT.Requery
                DoCmd.SetWarnings True
                DoCmd.Requery
                Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
                DoCmd.GoToRecord , , acNewRec
            End If
            End If
        End If
    End If
End Sub

Private Sub AMT_PER_UNIT_INV_GROSS_DblClick(Cancel As Integer)

End Sub

Private Sub AMT_PER_UNIT_INV_GROSS_Exit(Cancel As Integer)

    If Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE] = "ORDER" Or _
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code] = "LOCCHG" Then
        If Not IsNull(AMT_PER_UNIT_INV_GROSS) Then
        If IsNull(AMT_PER_UNIT) Or AMT_PER_UNIT = 0 Then
            AMT_PER_UNIT = AMT_PER_UNIT_INV_GROSS
        End If
        End If
    End If
    
    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]
    'Update Sowing Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If (ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XFERFM" Or ac = "CTSTRK") And _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![PRODUCT_GROUP] = "PLANT" Then
        If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
            DoCmd.SetWarnings False
            DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
            DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
        End If
        End If
        End If
    End If
    
    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If pac = "LIFT" And (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB") Then
        If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
            DoCmd.SetWarnings False
            DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
        End If
        End If
        End If
    End If
    
End Sub

Private Sub Form_AfterDelConfirm(Status As Integer)

    'Update_Inv_Info.Visible = True
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery

End Sub

Private Sub Form_AfterInsert()

    'Update_Inv_Info.Visible = True
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery

End Sub

Private Sub Form_AfterUpdate()

    'Update_Inv_Info.Visible = True
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery

End Sub

Private Sub Form_Current()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        If Not IsNull(ID_LOCATION_CN) Then
            [ID_LOCATION_CN].Requery
        End If
        If Not IsNull(ID_LOCATION_UNIT_CODE) Then
            ID_LOCATION_UNIT_CODE.Requery
        End If
    End If
    MsgBox "current"
    
End Sub

Private Sub ID_LOCATION_CN_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    Activity = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]

    If Activity = "SOW" Or Activity Like "XPLT*" Or Activity = "XFERFM" Or ac = "CTSTRK" Then
        stDocName = "NMIS_ID_LOCATIONS_Sow_Form"
    Else
        stDocName = "NMIS_ID_LOCATIONS subform1B"
    End If
    
    stLinkCriteria = "[AGREEMENT_LOT_CN]=" & "'" & Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN] & "'"
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        'If IsNull(ID_LOCATION_CN) And Not IsNull(Forms![NMIS_ID_LOCATIONS subform1B]![LOCATION_CN]) Then
            'DoCmd.GoToRecord , , acNewRec
        'End If

End Sub

Private Sub ID_LOCATION_CN_Enter()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        If Not IsNull(Default_ID_Location_CN) Then
            If IsNull(ID_LOCATION_CN) Then
                'ID_LOCATION_CN = Default_ID_Location_CN
            End If
        End If
    
        If Not IsNull(ID_LOCATION_CN) Then
            ID_LOCATION_CN.Requery
        End If
    End If

End Sub

Private Sub ID_LOCATION_CN_Exit(Cancel As Integer)
    
    If Not IsNull(ID_LOCATION_UNIT_CODE) Then
        ID_LOCATION_UNIT_CODE.Requery
    End If
    
End Sub

Private Sub ID_LOCATION_CN_Label_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    Activity = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]

    If Activity = "SOW" Or Activity Like "XPLT*" Or ac = "XFERFM" Or ac = "CTSTRK" Then
        stDocName = "NMIS_ID_LOCATIONS_Sow_Form"
    Else
        stDocName = "NMIS_ID_LOCATIONS subform1B"
    End If
    
    stLinkCriteria = "[AGREEMENT_LOT_CN]=" & "'" & Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN] & "'"
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub

Private Sub Label30_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    Activity = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]

    If Activity = "SOW" Or Activity Like "XPLT*" Or Activity = "XFERFM" Or ac = "CTSTRK" Then
        stDocName = "NMIS_ID_LOCATIONS_Sow_Form"
    Else
        stDocName = "NMIS_ID_LOCATIONS subform1B"
    End If
    
    stLinkCriteria = "[AGREEMENT_LOT_CN]=" & "'" & Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![CN] & "'"
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        
End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_AfterUpdate()

    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]

    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If ac = "SOW" Or ac = "xpltn" Or ac = "xplt" Or ac = "XFERFM" Or ac = "CTSTRK" Then
            AMT_PER_UNIT = 0
            AMT_PER_UNIT_INV_GROSS = 0
        End If
        If pac = "LIFT" And (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB") Then
            If (ac <> "FAHVP" And ac <> "FDEST" And ac <> "CRHLF" And ac <> "FAHLF") Then
            AMT_PER_UNIT = 0
            AMT_PER_UNIT_INV_GROSS = 0
            DoCmd.SetWarnings False
            'DoCmd.Requery
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
            DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
            AMT_PER_UNIT_INV_GROSS.Requery
            AMT_PER_UNIT.Requery
            DoCmd.SetWarnings True
            'DoCmd.Requery
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
            DoCmd.GoToRecord , , acNewRec
            End If
        End If
        End If
    End If
    
End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_Enter()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        If Not IsNull(Default_ID_Location_CN) Then
            If IsNull(ID_LOCATION_CN) Then
                ID_LOCATION_CN = Default_ID_Location_CN
            End If
        End If
    
        If Not IsNull(ID_LOCATION_CN) Then
            ID_LOCATION_CN.Requery
        End If
    End If

End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_Exit(Cancel As Integer)

    ac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
    pac = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE]
    'Update Sowing Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XFERFM" Or ac = "CTSTRK" Then
            If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
                DoCmd.SetWarnings False
                DoCmd.Requery
                DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
                DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
                AMT_PER_UNIT_INV_GROSS.Requery
                AMT_PER_UNIT.Requery
                DoCmd.SetWarnings True
                DoCmd.Requery
                Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
                DoCmd.GoToRecord , , acNewRec
            End If
        End If
        End If
    End If
    If ac = "PACK" Or ac Like "PXPLT*" Or ac Like "CPROC" Or ac Like "FAHVP" Or ac Like "LOCCHG" Then
        Default_ID_Location_CN = ID_LOCATION_CN
        ID_LOCATION_CN.TabStop = False
    End If
    
    'Update Lifting Amounts per unit
    If Not IsNull(NUMBER_OF_ACTIVITY_UNITS) Then
        If NUMBER_OF_ACTIVITY_UNITS <> 0 Then
        If pac = "LIFT" Then
        If Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "MBIN" Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_LOCATIONS subform2].Form![UNIT_CODE] = "PTUB" Then
            If (ac <> "FAHVP" And ac <> "FDEST") Then
                If AMT_PER_UNIT = 0 And AMT_PER_UNIT_INV_GROSS = 0 Then
                    DoCmd.SetWarnings False
                    DoCmd.Requery
                    DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE_1b"
                    DoCmd.OpenQuery "TRANSACTION_Lift_AMT_PER_UNIT_UPDATE"
                    AMT_PER_UNIT_INV_GROSS.Requery
                    AMT_PER_UNIT.Requery
                    DoCmd.SetWarnings True
                    DoCmd.Requery
                    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
                    DoCmd.GoToRecord , , acNewRec
                End If
            End If
        End If
        End If
        End If
    End If
End Sub

Private Sub Update_Inv_Info_Click()

    DoCmd.Requery
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Transaction_Totals_By_Location_and_amt_per_unit1a subform].Requery
    
End Sub

Private Sub Update_Sow_Unit_Amts_Click()

    DoCmd.SetWarnings False
    DoCmd.Requery
    DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE1"
    DoCmd.OpenQuery "TRANSACTION_SOW_AMT_PER_UNIT_UPDATE"
    AMT_PER_UNIT_INV_GROSS.Requery
    AMT_PER_UNIT.Requery
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Form_NMIS_ID_ACTIVITY_FORM

```vb
Private Sub Agreement_Lot_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Agreement_Lot_Lookup_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = Agreement_Lot_Lookup

    If (Not IsNull([Agreement_Lot_Lookup]) Or [Agreement_Lot_Lookup] = "") Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & [Agreement_Lot_Lookup] & "'"
        Me.Bookmark = rs.Bookmark

        'DoCmd.FindRecord
        '"[CN] = [LastAgreementCN]"
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_ID_ACTIVITY_FORM]![Agreement_Lot_Lookup]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    End If
End Sub

Private Sub Default_Activity_Code_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].Requery
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES3_subform].Requery
    
End Sub

Private Sub Form_Current()

    Agreement_Lot_Lookup = CN  'update the find record box match record selected
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub View_All_Activities_Click()

     Activity_Parent1 = "*"
     Activity_Code1 = "*"
     Default_Activity_Code = Null
     Viewing_All_Activities_Notice.Visible = True
     DoCmd.Requery
     
End Sub
```

## Module: Form_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM

```vb
Private Sub Agreement_lot_Act_Tran_Balances_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE"
    DoCmd.OpenForm stDocName
    DoCmd.GoToControl "NMIS_AGREEMENT_LOT_REPORT_CREATE"
    
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT] = Agreement_Lot_Lookup
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID2_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID3_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID4_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID5_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID1_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID2_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID3_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID4_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE]![AGREEMENT_LOT_ID5_SELECT Label].Visible = False
    
 
End Sub

Private Sub Agreement_lot_Activities_Transactions_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_SELECT"
    
    DoCmd.OpenForm stDocName
    DoCmd.GoToControl "NMIS_AGREEMENT_LOT_REPORT_CREATE"
    
    
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT] = Agreement_Lot_Lookup
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID2_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID3_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID4_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID5_SELECT].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID1_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID2_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID3_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID4_SELECT Label].Visible = False
    Forms![NMIS_AGREEMENT_LOT_SELECT]![AGREEMENT_LOT_ID5_SELECT Label].Visible = False
    
End Sub

Private Sub Agreement_Lot_Lookup_AfterUpdate()

    'Find the record that matches the control.
    Dim rs As Object

    If first_open Then
        first_open = False
        What_It_Is_Longer.Visible = True
        Source_Label.Visible = True
        SOURCE_LOT_CN.Visible = True
        FYs.Visible = True
        Combo138.Visible = True
        Label139.Visible = True
        UNIT_CODE.Visible = True
        [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
        TabCtl67.Visible = True
    End If
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Agreement_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Default_ID_Location_CN] = Null
    
    [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
    
    If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]) Then
        DoCmd.GoToControl "ACTIVITY_CODE"
    Else
        DoCmd.GoToControl "ACTIVITY_UNITS"
    End If
    What_It_Is_Longer.Visible = True
    Source_Label.Visible = True
    SOURCE_LOT_CN.Visible = True
    FYs.Visible = True
    Combo138.Visible = True
    Label139.Visible = True
    UNIT_CODE.Visible = True
    
End Sub

Private Sub Agreement_Lot_Lookup_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = Agreement_Lot_Lookup

    If (Not IsNull([Agreement_Lot_Lookup]) Or [Agreement_Lot_Lookup] = "") Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & [Agreement_Lot_Lookup] & "'"
        Me.Bookmark = rs.Bookmark

        'DoCmd.FindRecord
        '"[CN] = [LastAgreementCN]"
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Agreement_Lot_Lookup]", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
    End If
End Sub

Private Sub Agreement_Lot_Lookup_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form!ID_LOCATION_CN.TabStop = True
    If first_open Then Agreement_Lot_Lookup = Null
    Agreement_Lot_Lookup.Requery
        
End Sub

Private Sub Default_Activity_Code_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Container_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Requery
    
End Sub

Private Sub Default_Date_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Default_Location_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub Filter_For_Client_DblClick(Cancel As Integer)

    Filter_For_Client = "*"
    
End Sub

Private Sub Filter_For_End_FY_DblClick(Cancel As Integer)

    Filter_For_End_Fy = "*"
    
End Sub

Private Sub Filter_For_Fy_DblClick(Cancel As Integer)

    Filter_For_Fy = "*"
    
End Sub

Private Sub Filter_For_Source_ID_DblClick(Cancel As Integer)

    Filter_For_Source_ID = "*"
    
End Sub

Private Sub Form_Current()

    Agreement_Lot_Lookup = CN  'update the find record box match record selected
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Agreement_Lot_Lookup"
    What_It_Is_Longer.Visible = False
    Source_Label.Visible = False
    SOURCE_LOT_CN.Visible = False
    FYs.Visible = False
    Combo138.Visible = False
    Label139.Visible = False
    UNIT_CODE.Visible = False
    TabCtl67.Visible = False
    
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    Agreement_Lot_Lookup.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)
On Error GoTo Err_Like_Agreement_Lots_DblClick

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Like_Agreement_Lots_DblClick:
    Exit Sub

Err_Like_Agreement_Lots_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Like_Agreement_Lots_DblClick
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Enter()

    [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = False
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_ACTIVITIES_subform_Exit(Cancel As Integer)
    
    If (Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PARENT_ACTIVITY_CODE] = "ORDER" And _
        IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ORDER_CN]) And _
        Not IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![CN])) Then
        MsgBox "This Activity REQUIRES an ORDER NUMBER"
    End If
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![CN]) Then
        MsgBox "Must enter Activity Information First"
        [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].SetFocus
        If IsNull(Activity_Code) Then
            DoCmd.GoToControl "[NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form!ACTIVITY_CODE"
        Else
            'MsgBox "Must enter Activity Information First"
            'DoCmd.GoToControl "ACTIVITY_UNITS"
        End If
    Else
        [Transaction_Totals_By_Location_and_amt_per_unit1a subform].Visible = True
        ac = [NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![Activity_Code]
        If ac = "SOW" Or ac = "XPLT" Or ac = "XPLTN" Or ac = "XPLTC" Or ac = "XPLTP" Then
            [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = True
        Else
            [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = False
        End If
    End If
    
End Sub

Private Sub NMIS_ID_LOCATIONS_subform1_Exit(Cancel As Integer)

    'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery

End Sub

Private Sub View_All_Activities_Click()

     Activity_Parent1 = "*"
     Activity_Code1 = "*"
     Default_Activity_Code = Null
     Viewing_All_Activities_Notice.Visible = True
     DoCmd.Requery
     
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Exit(Cancel As Integer)

    '[NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![FISCAL_YEAR].SetFocus
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Sow_Unit_Amts].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Inv_Info].Visible = False
    [NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form!ID_LOCATION_CN.TabStop = True
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
  
End Sub
```

## Module: Form_NMIS_ID_LOCATIONS subform

```vb
Option Compare Database

Private Sub Save_Record_Click()
On Error GoTo Err_Save_Record_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

Exit_Save_Record_Click:
    Exit Sub

Err_Save_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_Record_Click
    
End Sub

Private Sub Goto_Next_Record_Click()
On Error GoTo Err_Goto_Next_Record_Click

    DoCmd.GoToRecord , , acNext

Exit_Goto_Next_Record_Click:
    Exit Sub

Err_Goto_Next_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Goto_Next_Record_Click
    
End Sub
Private Sub Set_CN_Click()
On Error GoTo Err_Set_CN_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Set_CN_Click:
    Exit Sub

Err_Set_CN_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Set_CN_Click
    
End Sub
Private Sub Command68_Click()
On Error GoTo Err_Command68_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Command68_Click:
    Exit Sub

Err_Command68_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command68_Click
    
End Sub

Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub Location_DblClick(Cancel As Integer)
On Error GoTo Err_LOCATION_DblClick
    
    DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS2", acNormal, , , acFormEdit
    
Exit_LOCATION_DblClick:
    Exit Sub
    
Err_LOCATION_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_LOCATION_DblClick

End Sub

Private Sub Location_Enter()

    LOCATION.Requery
    
End Sub

Private Sub Location_Exit(Cancel As Integer)
    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_GotFocus()

    LOCATION.Requery
    
End Sub

Private Sub LOCATION_LostFocus()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_NotInList(NewData As String, Response As Integer)

   [LOCATION].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS2", acNormal, , , acFormEdit
    End If

End Sub
```

## Module: Form_NMIS_ID_LOCATIONS subform1B

```vb
Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        End If
    End If
        
End Sub

Private Sub Form_Close()

    If Not IsNull(Last_ID_Location_CN) And _
        IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN]) Then
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] = Last_ID_Location_CN
        If Not IsNull(Last_Est_Units) Then
            If Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = 0 Then
                Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = Last_Est_Units
            End If
        End If
    End If
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
    DoCmd.GoToControl "[NUMBER_OF_ACTIVITY_UNITS]"
    
End Sub

Private Sub Form_Current()

    Last_ID_Location_CN = CN
    'Last_Est_Units = Est_Units
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN]) Then
        DoCmd.GoToRecord , , acNewRec
        If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Container]) Then
            DoCmd.GoToControl "UNIT_CODE"
            DoCmd.Close
        End If
    End If
    
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()

    If Not IsNull(LOCATION_CN) Then
        LOCATION_CN.Locked = True
    Else
        LOCATION_CN.Locked = False
        If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Location]) Then
            If IsNull(LOCATION_CN) Then
                LOCATION_CN = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![Default_Location]
                DoCmd.GoToControl "UNIT_CODE"
            End If
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    Last_Est_Units = Est_Units
    
End Sub

Private Sub UNIT_CODE_Enter()

    If IsNull(UNIT_CODE) And Not IsNull(DEFAULT_UNIT_CODE) Then
        UNIT_CODE = DEFAULT_UNIT_CODE
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    DEFAULT_UNIT_CODE = UNIT_CODE
    
End Sub
```

## Module: Form_NMIS_ID_LOCATIONS2 subform

```vb
Option Compare Database

'Private Sub Save_Record_Click()
'On Error GoTo Err_Save_Record_Click

    'DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

'Exit_Save_Record_Click:
    'Exit Sub

'Err_Save_Record_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Save_Record_Click
    
'End Sub

'Private Sub Goto_Next_Record_Click()
'On Error GoTo Err_Goto_Next_Record_Click

    'DoCmd.GoToRecord , , acNext

'Exit_Goto_Next_Record_Click:
    'Exit Sub

'Err_Goto_Next_Record_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Goto_Next_Record_Click
    
'End Sub
'Private Sub Set_CN_Click()
'On Error GoTo Err_Set_CN_Click

    'Dim stDocName As String

    'stDocName = "Set_CN"
    'DoCmd.RunMacro stDocName

'Exit_Set_CN_Click:
    'Exit Sub

'Err_Set_CN_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Set_CN_Click
    
'End Sub
'Private Sub Command68_Click()
'On Error GoTo Err_Command68_Click

    'Dim stDocName As String

    'stDocName = "Set_CN"
    'DoCmd.RunMacro stDocName

'Exit_Command68_Click:
    'Exit Sub

'Err_Command68_Click:
    'MsgBox Err.DESCRIPTION
    'Resume Exit_Command68_Click
    
'End Sub

Private Sub LOCATION_AfterUpdate()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_Change()

End Sub

'Private Sub LOCATION_Change()

    'Dim stDocName As String
    'stDocName = "Set_CN"

    'If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        'DoCmd.RunMacro stDocName
    'End If

'End Sub

Private Sub Location_DblClick(Cancel As Integer)
On Error GoTo Err_LOCATION_DblClick
    
    DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW", acNormal, , , acFormEdit
    
Exit_LOCATION_DblClick:
    Exit Sub
    
Err_LOCATION_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_LOCATION_DblClick

End Sub

Private Sub Location_Enter()

    LOCATION.Requery
    
End Sub

Private Sub Location_Exit(Cancel As Integer)
    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_GotFocus()

    LOCATION.Requery
    
End Sub

Private Sub LOCATION_LostFocus()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_NotInList(NewData As String, Response As Integer)

   [LOCATION].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW", acNormal, , , acFormEdit
    End If

End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_FORM

```vb
Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        End If
    End If
        
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    Find_Lot.Requery
    
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object
    
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_NEXT_Index = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_PREVIOUS_Index = Null
    [NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_NEXT = Null
        '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Location_Last_CN]
    [NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!LOCATION_PREVIOUS = Null
        '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Location_Last_CN]
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!Beg_Index_Last = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form!End_Index_Last = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Last_Est_Units] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Map_Backwards] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Unit_Code_Default] = Null
    '[NMIS_ID_LOCATIONS_FORM_SUBFORM].Form![Last_ID_Location_CN] = Null
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_Close()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE_MT"
    DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Form_Current()

    Last_ID_Location_CN = CN
    Last_Est_Units = Est_Units
    
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()

    If Not IsNull(LOCATION_CN) Then
        LOCATION_CN.Locked = True
    Else
        LOCATION_CN.Locked = False
    End If
    
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True
    
    DoCmd.GoToControl "find_Lot"
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub NMIS_ID_LOCATIONS_FORM_SUBFORM_Enter()
    
    If IsNull([Find_Lot]) Then
        'MsgBox "You must select a Lot first.", vbInformation
        Forms![NMIS_ID_LOCATIONS_FORM]![Find_Lot].SetFocus
    End If
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_FORM_Husky

```vb
Private Sub Activity_Code_Exit(Cancel As Integer)

    Default_Activity_Code = Activity_Code
    
End Sub

Private Sub Agreement_Lot_CN_AfterUpdate()

    End_Counter_Last = 0
    LOCATION_NEXT = Location_Last_CN
    LOCATION_PREVIOUS = Location_Last_CN
   '[grow_containers].Form![Lot_Total_Ft].Requery
    
End Sub

Private Sub Agreement_Lot_CN_Change()

    End_Counter_Last = 0
    LOCATION_NEXT = Location_Last_CN
    LOCATION_PREVIOUS = Location_Last_CN
    '[grow_containers].Form.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_greement_Lot_CN_DblClick

    DoCmd.GoToControl "LOCATION_CN"
    DoCmd.GoToControl "Agreement_lot_Cn"
    If Not IsNull(Default_Agreement_Lot_CN) Then
        AGREEMENT_LOT_CN.Locked = False
        DoCmd.OpenForm "Agreement_Lot_ID_Change_Form"
    End If
    
Exit_greement_Lot_CN_DblClick:
    Exit Sub

Err_greement_Lot_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_greement_Lot_CN_DblClick
           
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = False
    Else
        'AGREEMENT_LOT_CN.Locked = True
    End If
    If IsNull(AGREEMENT_LOT_CN) And Not IsNull(Default_Agreement_Lot_CN) Then
        AGREEMENT_LOT_CN = Default_Agreement_Lot_CN
    End If
    AGREEMENT_LOT_CN.Locked = False
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    Default_Agreement_Lot_CN = AGREEMENT_LOT_CN
    '[grow_containers].Form.Requery
    If IsNull(Activity_Code) And Not IsNull(AGREEMENT_LOT_CN) Then
        Activity_Code = Default_Activity_Code
    End If
    
End Sub

Private Sub BEGIN_COUNTER_DblClick(Cancel As Integer)
    
    BEGIN_COUNTER.Locked = False
    
End Sub

Private Sub BEGIN_COUNTER_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_COUNTER) Then
            If Not Est_Counter Then
                BEGIN_COUNTER = End_Counter_Last
            End If
            BEGIN_COUNTER.Locked = False
        Else
            BEGIN_COUNTER.Locked = True
        End If
    End If

End Sub

Private Sub BEGIN_COUNTER_Exit(Cancel As Integer)
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_COUNTER) Then
            If Est_Counter Then
                BEGIN_COUNTER = BEGIN_INDEX * [INDEX_INCREMENT]
            End If
        End If
    End If
    Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)

    Begin_Date_Default = BEGIN_DATE
    
End Sub

Private Sub BEGIN_INDEX_DblClick(Cancel As Integer)

    BEGIN_INDEX.Locked = False
    
End Sub

Private Sub BEGIN_INDEX_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(BEGIN_INDEX) Then
            BEGIN_INDEX = End_Index_Last
            BEGIN_INDEX.Locked = False
        Else
            BEGIN_INDEX.Locked = True
        End If
    End If

End Sub

Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(BEGIN_INDEX) Then
            If IsNull(INDEX_INCREMENT) Then
                If VarX = "FIELD" Then
                    INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
                Else
                    INDEX_INCREMENT = Null
                End If
            End If
        End If
        If BEGIN_INDEX = 999 Then
            BEGIN_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
        End If
        'If VarX <> "FIELD" Then
            'BEGIN_COUNTER = 0
            'DoCmd.GoToControl "END_INDEX"
        'End If
        If Not IsNull(BEGIN_INDEX) Then
            END_INDEX.TabStop = True
            If Est_Counter Then
                BEGIN_COUNTER = BEGIN_INDEX * [INDEX_INCREMENT]
            End If
            'DoCmd.GoToControl "begin_counter"
        End If
        Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    End If
    
End Sub

Private Sub Default_Agreement_Lot_CN_Exit(Cancel As Integer)

    Default_Agreement_Lot_CN = AGREEMENT_LOT_CN
    
End Sub

Private Sub END_COUNTER_DblClick(Cancel As Integer)

    END_COUNTER.Locked = False
    
End Sub

Private Sub END_COUNTER_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(END_COUNTER) Then
            END_COUNTER.Locked = False
            If Activity_Code = "LOCCHG" Then
                BEGIN_COUNTER = 0
                END_COUNTER = [grow_containers].Form![Lot_Total_Ft]
            End If
            'END_COUNTER = Beg_Counter_Last
        Else
            END_COUNTER.Locked = True
        End If
        If IsNull(BEGIN_INDEX) And IsNull(END_INDEX) Then
            BEGIN_INDEX.TabStop = False
            END_INDEX.TabStop = False
        Else
            BEGIN_INDEX.TabStop = True
            END_INDEX.TabStop = True
        End If
    End If
    
End Sub

Private Sub END_COUNTER_Exit(Cancel As Integer)

    End_Counter_Last = END_COUNTER
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "location = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "location = [LOCMOD]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "location = LOCMOD")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(BEGIN_DATE) Then
            Begin_Date_Default = BEGIN_DATE
        End If
        
        If IsNull(END_COUNTER) Then
            If Est_Counter Then
                END_COUNTER = END_INDEX * [INDEX_INCREMENT]
            End If
        End If
    End If
    
    Default_Activity_Code = Activity_Code
    Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    
End Sub

Private Sub END_INDEX_DblClick(Cancel As Integer)

    END_INDEX.Locked = False
    
End Sub

Private Sub END_INDEX_Enter()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(END_INDEX) Then
            END_INDEX.Locked = False
            END_INDEX = Beg_Index_Last
        Else
            END_INDEX.Locked = True
        End If
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "LOCATION = [LOCMOD]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "LOCATION = [LOCMOD]")
    
    Last_Est_Units = Est_Units
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(END_INDEX) Then
            If IsNull(INDEX_INCREMENT) Then
                If VarX = "FIELD" Then
                    INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
                Else
                    INDEX_INCREMENT = 1
                End If
            End If
            Beg_Counter_Last = BEGIN_COUNTER
            Beg_Index_Last = BEGIN_INDEX
            End_Index_Last = END_INDEX
            If Nz(SOW_DIRECTION, 1) = 1 Then
                If Val(Nz(BEGIN_INDEX, 0)) > Val(Nz(END_INDEX, 0)) Then
                    temp = BEGIN_INDEX
                    BEGIN_INDEX = END_INDEX
                    END_INDEX = temp
                    'SOWN_BACKWARDS = True
                    'Map_Backwards = True
                Else
                    'SOWN_BACKWARDS = False
                    'Map_Backwards = False
                End If
            Else
                If Val(Nz(END_INDEX, 0)) > Val(Nz(BEGIN_INDEX, 0)) Then
                    temp = BEGIN_INDEX
                    BEGIN_INDEX = END_INDEX
                    END_INDEX = temp
                    'SOWN_BACKWARDS = True
                    'Map_Backwards = True
                Else
                    'SOWN_BACKWARDS = False
                    'Map_Backwards = False
                End If
            End If
            If END_INDEX = 999 Then
                END_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
            End If
            If Est_Counter Then
                END_COUNTER = END_INDEX * [INDEX_INCREMENT]
                BEGIN_COUNTER = BEGIN_INDEX * INDEX_INCREMENT
            End If
            'Beg_Index_Last = BEGIN_INDEX
            'End_Index_Last = END_INDEX
        
        End If
        Location_Key2 = [Locmod] & [SUBLOT_NO] & [Riser_Begin] & [Riser_End]
    End If
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[AGREEMENT_LOT_CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_AfterInsert()

    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "LOCATION = LOCMOD")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Close()

    If [Processed_Into_NMIS] Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_mpro_Xfer_Table_Delete"
        DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE_MT"
        DoCmd.OpenQuery "ID_LOCATION_GROW_INDEX_UPDATE"
        DoCmd.SetWarnings True
    End If
        
End Sub

Private Sub Form_Delete(Cancel As Integer)
    
    Default_Agreement_Lot_CN = Null
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
On Error GoTo Err_Form_Error

    MsgBox "You have started to enter another record. Either Complete the record or press the ESC Key", vbCritical

Exit_Form_Error:
    Exit Sub

Err_Form_Error:
    'MsgBox Err.DESCRIPTION
    MsgBox "do not show"
    Resume Exit_Form_Error
        
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True
    
    BEGIN_INDEX.TabStop = True
    END_INDEX.TabStop = True
    BEGIN_COUNTER.TabStop = True
    END_COUNTER.TabStop = True
    SUBLOT_NO.TabStop = False

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant

    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [LOCMOD]")

    If Not IsNull(INDEX_INCREMENT) Then
        If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
            MsgBox "Begin and End Index Must Be Entered"
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()
    
    LOCATION_CN.Requery
    [grow_containers].Form.Requery
    
        If Not IsNull(AGREEMENT_LOT_CN) Then
            If Not IsNull(LOCATION_CN) Then
                LOCATION_CN.Locked = True
            Else
                LOCATION_CN.Locked = False
                If Not IsNull(LOCATION_NEXT) Then
                    If Location_Type_Default = "FIELD" Then
                        If Not Map_Backwards Then
                            If Not IsNull(LOCATION_NEXT) Then
                                LOCATION_CN = LOCATION_NEXT
                            End If
                        Else
                            If Not IsNull(LOCATION_PREVIOUS) Then
                                LOCATION_CN = LOCATION_PREVIOUS
                            End If
                        End If
                    Else
                        LOCATION_CN = Location_Last_CN
                    End If
                    If Not IsNull(Unit_Code_Default) Then
                    UNIT_CODE = Unit_Code_Default
                    End If
                    If Not IsNull(BEGIN_DATE) Then
                        BEGIN_DATE = Begin_Date_Default
                    End If
                End If
            End If
        End If
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "Location = [LOCMOD]")
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If Not IsNull(LOCATION_CN) Then
            If IsNull(BEGIN_DATE) Then
                BEGIN_DATE = Begin_Date_Default
            End If
            'If IsNull(CN) Then
                'DoCmd.RunMacro "Set_CN2"
            'End If
        End If
        Last_ID_Location_CN = CN
        If Not IsNull(LOCATION_CN) Then
            Location_Last_CN = LOCATION_CN
        End If
        If VarX <> "FIELD" Then
            BEGIN_COUNTER = 0
            BEGIN_COUNTER.TabStop = False
        Else
            BEGIN_COUNTER.TabStop = True
        End If
    End If
    
End Sub

Private Sub Note_Enter()
    NOTE = [grow_containers].Form![NOTE_CONTAINER]
End Sub

Private Sub SOWN_BACKWARDS_AfterUpdate()
    
    'Map_Backwards = SOWN_BACKWARDS
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    Unit_Code_Default = UNIT_CODE
    
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "LOCATION = [LOCMOD]")
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    
End Sub
Private Sub Process_Into_NMIS_Click()
On Error GoTo Err_Process_Into_NMIS_Click

    If Not Processed_Into_NMIS Then
        DoCmd.Requery
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_mpro_update_hloc_table"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Drop"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Lots"
        DoCmd.OpenQuery "Husky_mpro_Dump_CO_Lots"
        DoCmd.OpenQuery "Husky_mpro_Dump_Ctl_Create"
        DoCmd.OpenQuery "Husky_mpro_ID_Activities_Insert"
        DoCmd.OpenQuery "Husky_mpro_Dump_CO_Ctl_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Create"
        DoCmd.OpenQuery "Husky_mpro_Dump_HLoc_Lots"
        DoCmd.OpenQuery "Husky_mpro_ID_Locations_Insert"
                    
        If Activity_Code = "LOCCHG" Then
            'If the activity is Location Changes (LOCCHG) then Zero out previous location info
            DoCmd.OpenQuery "Husky_mpro_Transactions_previous_densities_MT"
            DoCmd.OpenQuery "Husky_mpro_Transactions_previous_zero_for_location_change"
            DoCmd.OpenQuery "Husky_mpro_Transactions_Insert_Loc_Change"
            DoCmd.OpenQuery "Transactions_Current_Balance_Gross_n_Net_mt"
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_locchg_Update"
        Else
            'If Nursery Owned packed for transplant, Zero out packing balances
            DoCmd.OpenQuery "Husky_mpro_transactions_prev_zero"
            DoCmd.OpenQuery "Husky_mpro_Transactions_Insert"
            'If Client Owned from a previous agreement zero out the previous agreement balances
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_CO_zero_Insert"
            DoCmd.OpenQuery "Husky_mpro_transactions_xplt_prev_zero"
            'If Holdover from a previous agreement zero out the previous agreement balances
            DoCmd.OpenQuery "Husky_mpro_ID_Activities_Holdover_zero_Insert"
            DoCmd.OpenQuery "Husky_mpro_transactions_Holdover_prev_zero"
        End If

        DoCmd.SetWarnings True
        Processed_Into_NMIS = True
        MsgBox "Processing Complete"
    
    Else
        MsgBox "Already Processed Into NMIS"
    End If
    
Exit_Process_Into_NMIS_Click:
    Exit Sub

Err_Process_Into_NMIS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Process_Into_NMIS_Click
    
    
End Sub
Private Sub Preview_Checklist_Report_Click()
On Error GoTo Err_Preview_Checklist_Report_Click

    Dim stDocName As String

    stDocName = "Husky_Mpro_Dump_Report_by_Location2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Report_Click:
    Exit Sub

Err_Preview_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Report_Click
    
End Sub

Private Sub Sublot_Tabstop_AfterUpdate()

    If Sublot_Tabstop Then
        SUBLOT_NO.TabStop = True
    Else
        SUBLOT_NO.TabStop = False
    End If
End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_FORM_SUBFORM

```vb
Private Sub BEGIN_COUNTER_DblClick(Cancel As Integer)
    
    BEGIN_COUNTER.Locked = False
    
End Sub

Private Sub BEGIN_COUNTER_Enter()

    If IsNull(BEGIN_COUNTER) Then
        BEGIN_COUNTER = End_Counter_Last
        BEGIN_COUNTER.Locked = False
    Else
        BEGIN_COUNTER.Locked = True
    End If

End Sub

Private Sub BEGIN_INDEX_DblClick(Cancel As Integer)

    BEGIN_INDEX.Locked = False
    
End Sub

Private Sub BEGIN_INDEX_Enter()

    If IsNull(BEGIN_INDEX) Then
        BEGIN_INDEX = End_Index_Last
        BEGIN_INDEX.Locked = False
    Else
        BEGIN_INDEX.Locked = True
    End If

End Sub

Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    If Not IsNull(BEGIN_INDEX) Then
        If IsNull(INDEX_INCREMENT) Then
            If VarX = "FIELD" Then
                INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
            Else
                INDEX_INCREMENT = Null
            End If
        End If
    End If
    If BEGIN_INDEX = 999 Then
        BEGIN_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
    End If
    If VarX <> "FIELD" Then
        BEGIN_COUNTER = 0
        DoCmd.GoToControl "END_INDEX"
    End If
    
End Sub

Private Sub END_COUNTER_DblClick(Cancel As Integer)

    END_COUNTER.Locked = False
    
End Sub

Private Sub END_COUNTER_Enter()

    If IsNull(END_COUNTER) Then
        END_COUNTER.Locked = False
        'END_COUNTER = Beg_Counter_Last
    Else
        END_COUNTER.Locked = True
    End If
End Sub

Private Sub END_COUNTER_Exit(Cancel As Integer)

    End_Counter_Last = END_COUNTER
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "CN = LOCATION_CN")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub END_INDEX_DblClick(Cancel As Integer)

    END_INDEX.Locked = False
    
End Sub

Private Sub END_INDEX_Enter()

    If IsNull(END_INDEX) Then
        END_INDEX.Locked = False
        END_INDEX = Beg_Index_Last
    Else
        END_INDEX.Locked = True
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    Dim VarY As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    VarY = DLookup("[index_max]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If Not IsNull(END_INDEX) Then
        If IsNull(INDEX_INCREMENT) Then
            If VarX = "FIELD" Then
                INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
            Else
                INDEX_INCREMENT = Null
            End If
        End If
        Beg_Index_Last = BEGIN_INDEX
        End_Index_Last = END_INDEX
        Beg_Counter_Last = BEGIN_COUNTER
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                temp = BEGIN_INDEX
                BEGIN_INDEX = END_INDEX
                END_INDEX = temp
                'SOWN_BACKWARDS = True
                Map_Backwards = True
            Else
                SOWN_BACKWARDS = False
                Map_Backwards = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                temp = BEGIN_INDEX
                BEGIN_INDEX = END_INDEX
                END_INDEX = temp
                'SOWN_BACKWARDS = True
                Map_Backwards = True
            Else
                SOWN_BACKWARDS = False
                Map_Backwards = False
            End If
        End If
        If END_INDEX = 999 Then
            END_INDEX = Round(VarY / Nz(INDEX_INCREMENT, 1), 1)
        End If
    End If
        
End Sub

Private Sub Find_Lot_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[AGREEMENT_LOT_CN] = '" & Me![Find_Lot] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub Form_AfterInsert()

    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarZ As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarZ = DLookup("LOCATION_TYPE", "NMIS_LOCATIONS", "CN = LOCATION_CN")
    Location_Type_Default = VarZ
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    'Beg_Index_Last = BEGIN_INDEX
    'End_Index_Last = END_INDEX
    If Not IsNull(BEGIN_DATE) Then
        Begin_Date_Default = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
On Error GoTo Err_Form_Error

    MsgBox "You have started to enter another record. Either Complete the record or press the ESC Key", vbCritical

Exit_Form_Error:
    Exit Sub

Err_Form_Error:
    'MsgBox Err.DESCRIPTION
    MsgBox "do not show"
    Resume Exit_Form_Error
        
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant

    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If Not IsNull(INDEX_INCREMENT) Then
        If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
            MsgBox "Begin and End Index Must Be Entered"
        End If
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()
    
    LOCATION_CN.Requery
    
    If Not IsNull(Forms![NMIS_ID_LOCATIONS_FORM]![Find_Lot]) Then
        If Not IsNull(LOCATION_CN) Then
            LOCATION_CN.Locked = True
        Else
            LOCATION_CN.Locked = False
            If Not IsNull(LOCATION_NEXT) Then
                If Location_Type_Default = "FIELD" Then
                    If Not Map_Backwards Then
                        If Not IsNull(LOCATION_NEXT) Then
                            LOCATION_CN = LOCATION_NEXT
                        End If
                    Else
                        If Not IsNull(LOCATION_PREVIOUS) Then
                            LOCATION_CN = LOCATION_PREVIOUS
                        End If
                    End If
                    If Not IsNull(Unit_Code_Default) Then
                        UNIT_CODE = Unit_Code_Default
                    End If
                    If Not IsNull(BEGIN_DATE) Then
                        BEGIN_DATE = Begin_Date_Default
                    End If
                End If
            End If
        End If
        
    Else
        Forms![NMIS_ID_LOCATIONS_FORM]![Find_Lot].SetFocus
    End If
    
End Sub

Private Sub Screen_For_Begin_FY_AfterUpdate()

    Find_Lot.Requery
  
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(BEGIN_DATE) Then
            BEGIN_DATE = Begin_Date_Default
        End If
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    If Not IsNull(LOCATION_CN) Then
        Location_Last_CN = LOCATION_CN
    End If
    
End Sub

Private Sub SOWN_BACKWARDS_AfterUpdate()
    
    Map_Backwards = SOWN_BACKWARDS
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
    
End Sub

Private Sub UNIT_CODE_Exit(Cancel As Integer)

    Unit_Code_Default = UNIT_CODE
    
    Dim VarX As Variant
    Dim VarY As Variant
    Dim VarNext As Variant
    Dim VarPrev As Variant
    
    VarX = DLookup("[LOCATION]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    VarY = DLookup("[INDEX]", "*NMIS_LOCATIONS_SORTED_TABLE", "CN = [LOCATION_CN]")
    LOCATION_NEXT_Index = VarY + 1
    LOCATION_PREVIOUS_Index = VarY - 1
    LOCATION_NEXT = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_NEXT_Index]")
    LOCATION_PREVIOUS = DLookup("[CN]", "*NMIS_LOCATIONS_SORTED_TABLE", "INDEX = [LOCATION_PREVIOUS_Index]")
    
End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_SOURCE

```vb
Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        End If
    End If
        
End Sub


Private Sub Form_Current()

    Last_ID_Location_CN = CN
    Last_Est_Units = Est_Units
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    'If IsNull(Forms![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES Subform].Form!.Form![ID_LOCATION_CN]) Then
        DoCmd.GoToRecord , , acNewRec
    'End If
    'Forms![NMIS_SOURCE_LOTS]![NMIS_ID_ACTIVITIES Subform].Form![SOURCE_LOT_CN]
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub



Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    Last_ID_Location_CN = CN
    
End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_SOURCE_LOTS

```vb
Private Sub BEGIN_INDEX_Exit(Cancel As Integer)
    
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
    End If

End Sub

Private Sub END_INDEX_Exit(Cancel As Integer)
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")
    
    Last_Est_Units = Est_Units
    If (IsNull(INDEX_INCREMENT) And VarX = "FIELD") Then
        INDEX_INCREMENT = Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Field_Index_Increment_Default]
        If SOW_DIRECTION = 1 Then
            If BEGIN_INDEX > END_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        Else
            If END_INDEX > BEGIN_INDEX Then
                SOWN_BACKWARDS = True
            Else
                SOWN_BACKWARDS = False
            End If
        End If
    End If
        
End Sub


Private Sub Form_Current()

    'Last_ID_Location_CN = CN
    'Last_Est_Units = Est_Units
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Source_LOT_CN"
    
End Sub

Private Sub INDEX_INCREMENT_Enter()
    Dim VarX As Variant
    VarX = DLookup("[LOCATION_TYPE]", "NMIS_LOCATIONS", "CN = [Location_CN]")

    If (VarX = "FIELD" And (IsNull(BEGIN_INDEX) Or IsNull(END_INDEX))) Then
        MsgBox "Begin and End Index Must Be Entered"
    End If
    
End Sub

Private Sub LOCATION_CN_DblClick(Cancel As Integer)

    LOCATION_CN.Locked = False
    
End Sub

Private Sub LOCATION_CN_Enter()
    If IsNull(LOCATION_CN) Then
        LOCATION_CN.Locked = False
    Else
        LOCATION_CN.Locked = True
    End If
End Sub

Private Sub LOCATION_CN_Exit(Cancel As Integer)

    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    'Last_ID_Location_CN = CN
    
End Sub

Private Sub LOCATION_CN_NotInList(NewData As String, Response As Integer)

   [LOCATION_CN].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS4", acNormal, , , acFormEdit
    End If

End Sub

Private Sub Source_LOT_CN_AfterUpdate()
    DoCmd.Requery
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_Source_LOT_CN_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_LOT_CN_DblClick:
    Exit Sub

Err_Source_LOT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_LOT_CN_DblClick
    
End Sub

Private Sub View_Activities_Click()
On Error GoTo Err_View_Activities_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_ID_LOC_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_View_Activities_Click:
    Exit Sub

Err_View_Activities_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_Activities_Click
    
End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_for_Source_Withdrawal subform

```vb
Option Compare Database

Private Sub Save_Record_Click()
On Error GoTo Err_Save_Record_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

Exit_Save_Record_Click:
    Exit Sub

Err_Save_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_Record_Click
    
End Sub

Private Sub Goto_Next_Record_Click()
On Error GoTo Err_Goto_Next_Record_Click

    DoCmd.GoToRecord , , acNext

Exit_Goto_Next_Record_Click:
    Exit Sub

Err_Goto_Next_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Goto_Next_Record_Click
    
End Sub
Private Sub Set_CN_Click()
On Error GoTo Err_Set_CN_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Set_CN_Click:
    Exit Sub

Err_Set_CN_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Set_CN_Click
    
End Sub
Private Sub Command68_Click()
On Error GoTo Err_Command68_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Command68_Click:
    Exit Sub

Err_Command68_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command68_Click
    
End Sub

Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub Location_DblClick(Cancel As Integer)
On Error GoTo Err_LOCATION_DblClick
    
    LOCATION.Locked = False
    
Exit_LOCATION_DblClick:
    Exit Sub
    
Err_LOCATION_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_LOCATION_DblClick

End Sub

Private Sub Location_Enter()
    
    If IsNull(LOCATION) Then
        LOCATION.Locked = False
    Else
        LOCATION.Locked = True
    End If
    
    LOCATION.Requery
    
End Sub

Private Sub Location_Exit(Cancel As Integer)
    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_GotFocus()

    LOCATION.Requery
    
End Sub

Private Sub LOCATION_LostFocus()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_NotInList(NewData As String, Response As Integer)

   [LOCATION].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS3", acNormal, , , acFormEdit
    End If

End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform

```vb
Option Compare Database

Private Sub Save_Record_Click()
On Error GoTo Err_Save_Record_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

Exit_Save_Record_Click:
    Exit Sub

Err_Save_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_Record_Click
    
End Sub

Private Sub Goto_Next_Record_Click()
On Error GoTo Err_Goto_Next_Record_Click

    DoCmd.GoToRecord , , acNext

Exit_Goto_Next_Record_Click:
    Exit Sub

Err_Goto_Next_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Goto_Next_Record_Click
    
End Sub
Private Sub Set_CN_Click()
On Error GoTo Err_Set_CN_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Set_CN_Click:
    Exit Sub

Err_Set_CN_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Set_CN_Click
    
End Sub
Private Sub Command68_Click()
On Error GoTo Err_Command68_Click

    Dim stDocName As String

    stDocName = "Set_CN"
    DoCmd.RunMacro stDocName

Exit_Command68_Click:
    Exit Sub

Err_Command68_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command68_Click
    
End Sub

Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub Location_DblClick(Cancel As Integer)
On Error GoTo Err_LOCATION_DblClick
    
    LOCATION.Locked = False
    
Exit_LOCATION_DblClick:
    Exit Sub
    
Err_LOCATION_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_LOCATION_DblClick

End Sub

Private Sub Location_Enter()
    
    If IsNull(LOCATION) Then
        LOCATION.Locked = False
    Else
        LOCATION.Locked = True
    End If
    
    LOCATION.Requery
    
End Sub

Private Sub Location_Exit(Cancel As Integer)
    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_GotFocus()

    LOCATION.Requery
    
End Sub

Private Sub LOCATION_LostFocus()

    Dim stDocName As String
    stDocName = "Set_CN"

    If Not IsNull(Index) And IsNull([NMIS_ID_LOCATIONS.CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub

Private Sub LOCATION_NotInList(NewData As String, Response As Integer)

   [LOCATION].Undo
    Response = MsgBox("Not Currently a valid location. Do you want to make this a valid location?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_LOCATIONS_FOR_SOURCE_LOTS3", acNormal, , , acFormEdit
    End If

End Sub
```

## Module: Form_NMIS_ID_LOCATIONS_storage_locchg

```vb
Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE = Default_Date
    End If
    
End Sub

Private Sub BEGIN_DATE_Enter()
    
    If IsNull(BEGIN_DATE) Then
        BEGIN_DATE = Default_Date
    End If
    
End Sub

Private Sub BEGIN_DATE_Exit(Cancel As Integer)

    If Not IsNull(BEGIN_DATE) Then
        Default_Date = BEGIN_DATE
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_DROP"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_CREATE"
    DoCmd.OpenQuery "NMIS_LOCATIONS_SORTED_TABLE_AT"
    DoCmd.SetWarnings True

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
End Sub

Private Sub LOCATION_FROM_CN_Enter()

    Location_from_CN.Requery
    
End Sub

Private Sub LOCATION_TO_Enter()
    If IsNull(Location_to) Then
        Location_to = Default_To_Loc
    End If
End Sub

Private Sub LOCATION_TO_Exit(Cancel As Integer)
    If Not IsNull(Location_to) Then
        Default_To_Loc = Location_to
    End If
End Sub

Private Sub Process_Into_NMIS_Click()
On Error GoTo Err_Process_Into_NMIS_Click

    If Not Processed_Into_NMIS Then
        'DoCmd.Requery
        'DoCmd.SetWarnings False
        'DoCmd.OpenQuery "Husky_mpro_update_hloc_table"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Drop"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Index_CO_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Lots"
        'DoCmd.OpenQuery "Husky_mpro_Dump_CO_Lots"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Ctl_Create"
        'DoCmd.OpenQuery "Husky_mpro_ID_Activities_Insert"
        'DoCmd.OpenQuery "Husky_mpro_Dump_CO_Ctl_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_Hloc_Index_Create"
        'DoCmd.OpenQuery "Husky_mpro_Dump_HLoc_Lots"
        'DoCmd.OpenQuery "Husky_mpro_ID_Locations_Insert"
                    
        'If the activity is Location Changes (LOCCHG) then Zero out previous location info
        'DoCmd.OpenQuery "Husky_mpro_Transactions_previous_densities_MT"
        'DoCmd.OpenQuery "Husky_mpro_Transactions_previous_zero_for_location_change"
        'DoCmd.OpenQuery "Husky_mpro_Transactions_Insert_Loc_Change"
        'DoCmd.OpenQuery "Transactions_Current_Balance_Gross_n_Net_mt"
        'DoCmd.OpenQuery "Husky_mpro_ID_Activities_locchg_Update"
        'end If

        DoCmd.SetWarnings True
        Processed_Into_NMIS = True
        MsgBox "Processing Complete"
    
    Else
        MsgBox "Already Processed Into NMIS"
    End If
    
Exit_Process_Into_NMIS_Click:
    Exit Sub

Err_Process_Into_NMIS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Process_Into_NMIS_Click
    
    
End Sub
Private Sub Preview_Checklist_Report_Click()
On Error GoTo Err_Preview_Checklist_Report_Click

    Dim stDocName As String

    stDocName = "Husky_Mpro_Storage_Location_Change"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Report_Click:
    Exit Sub

Err_Preview_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Report_Click
    
End Sub
```

## Module: Form_NMIS_ID_MGMT_CODES2 subform

```vb
Option Compare Database

Private Sub NMIS_CLIENT_MGMT_CODES_subform_Exit(Cancel As Integer)

    [NMIS_CLIENT_MGMT_CODES subform].Requery
    If Not IsNull([NMIS_CLIENT_MGMT_CODES subform].Form![MGMT_CODE]) Then
        If Not IsNull([NMIS_CLIENT_MGMT_CODES subform].Form![TOTAL_PCT]) Then
            If [NMIS_CLIENT_MGMT_CODES subform].Form![TOTAL_PCT] <> 100 Then
                MsgBox "Percents must total 100"
                [NMIS_CLIENT_MGMT_CODES subform].Form![CLIENT_ASSOCIATE].SetFocus
            End If
        End If
    End If
    
End Sub

Private Sub Save_and_Exit_Click()
On Error GoTo Err_Save_and_Exit_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    
    DoCmd.RunMacro stDocName

Exit_Save_and_Exit_Click:
    Exit Sub

Err_Save_and_Exit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_and_Exit_Click
    
End Sub
```

## Module: Form_NMIS_ID_MGMT_CODES_NEW subform

```vb
Option Compare Database

Private Sub NMIS_CLIENT_MGMT_CODES_subform_Exit(Cancel As Integer)

    [NMIS_CLIENT_MGMT_CODES subform].Requery
    If Not IsNull([NMIS_CLIENT_MGMT_CODES subform].Form![MGMT_CODE]) Then
        If Not IsNull([NMIS_CLIENT_MGMT_CODES subform].Form![TOTAL_PCT]) Then
            If [NMIS_CLIENT_MGMT_CODES subform].Form![TOTAL_PCT] <> 100 Then
                MsgBox "Percents must total 100"
                [NMIS_CLIENT_MGMT_CODES subform].Form![MGMT_CODE].SetFocus
            End If
        End If
    End If
    
End Sub

Private Sub Save_and_Exit_Click()
On Error GoTo Err_Save_and_Exit_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    
    DoCmd.RunMacro stDocName

Exit_Save_and_Exit_Click:
    Exit Sub

Err_Save_and_Exit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Save_and_Exit_Click
    
End Sub
```

## Module: Form_NMIS_ID_MGMT_CODES_Ship_Ticket subform

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)

'If a new entry set to defaults on Shipping ticket

    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]![NMIS_CLIENT_MGMT_CODES subform]![CLIENT_ASSOCIATE]) Then
        If Not IsNull(Forms![SEED_SHIPPING_TICKET Subform]![Default_Payee]) Then
            Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]! _
          [NMIS_CLIENT_MGMT_CODES subform]![CLIENT_ASSOCIATE] = _
        Forms![SEED_SHIPPING_TICKET Subform]![Default_Payee]
        End If
    End If
    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]! _
        [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE]) Then
      If Not IsNull(Forms![SEED_SHIPPING_TICKET Subform]![Default_Mgmt_Code]) Then
        Forms![NMIS_ID_Mgmt_Codes_Ship_Ticket subform]! _
          [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE] = _
        Forms![SEED_SHIPPING_TICKET Subform]![Default_Mgmt_Code]
      End If
    End If
    
End Sub

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub
```

## Module: Form_NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)
'If a new entry set to defaults on Shipping ticket

    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Sow_Withdrawal_Ticket subform]! _
        [NMIS_CLIENT_MGMT_CODES subform]![CLIENT_ASSOCIATE]) Then
        If Not IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Payee]) Then
            [NMIS_CLIENT_MGMT_CODES subform].Form![CLIENT_ASSOCIATE] = _
            Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Payee]
        End If
    End If
    If IsNull(Forms![NMIS_ID_Mgmt_Codes_Sow_Withdrawal_Ticket subform]! _
        [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE]) Then
      If Not IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Mgmt_Code]) Then
        Forms![NMIS_ID_Mgmt_Codes_Sow_Withdrawal_Ticket subform]! _
          [NMIS_CLIENT_MGMT_CODES subform]![MGMT_CODE] = _
        Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Mgmt_Code]
      End If
    End If
    
End Sub

Private Sub Refresh_Close_Click()
On Error GoTo Err_Refresh_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_Close_Click:
    Exit Sub

Err_Refresh_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_Close_Click
    
End Sub
```

## Module: Form_NMIS_LOCATIONS Subform

```vb
Private Sub Loc_type_DblClick(Cancel As Integer)

    Loc_type.Locked = False
    
End Sub

Private Sub Loc_type_Enter()
    If IsNull(Loc_type) Then
        Loc_type.Locked = False
    Else
        Loc_type.Locked = True
    End If
    
End Sub
```

## Module: Form_NMIS_LOCATIONS_FOR_SOURCE_LOTS Subform

```vb
Private Sub LOCATION_Change()

    Dim stDocName As String
    stDocName = "Set_CN"

    If IsNull([CN]) Then
        DoCmd.RunMacro stDocName
    End If

End Sub
```

## Module: Form_NMIS_LOCATIONS_FOR_SOURCE_LOTS2

```vb
Option Compare Database

Private Sub Command9_Click()
On Error GoTo Err_Command9_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command9_Click:
    Exit Sub

Err_Command9_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command9_Click
    
End Sub

Private Sub Form_Close()

    'If IsNull(Forms![NMIS_SOURCE_LOTS]![Storage].Form![LOCATION]) Then
        'Forms![NMIS_SOURCE_LOTS]![Storage].Form![LOCATION] = [NMIS_LOCATIONS Subform].Form![CN]
    'End If
    
    Forms![NMIS_SOURCE_LOTS]![Storage].Form![LOCATION].Requery
    Forms![NMIS_SOURCE_LOTS]![NMIS_ID_LOCATIONS subform1].Form![LOCATION].Requery
    
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
```

## Module: Form_NMIS_LOCATIONS_FOR_SOURCE_LOTS3

```vb
Option Compare Database

Private Sub Command9_Click()
On Error GoTo Err_Command9_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command9_Click:
    Exit Sub

Err_Command9_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command9_Click
    
End Sub

Private Sub Form_Close()

   If Not IsNull([NMIS_LOCATIONS Subform].Form![CN]) Then
    If IsNull(Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_LOCATIONS2 subform].Form![LOCATION]) Then
        Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_LOCATIONS2 subform].Form![LOCATION] = [NMIS_LOCATIONS Subform].Form![CN]
    End If
    
    Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_LOCATIONS2 subform].Form![LOCATION].Requery
   End If
   
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
```

## Module: Form_NMIS_LOCATIONS_FOR_SOURCE_LOTS4

```vb
Option Compare Database

Private Sub Command9_Click()
On Error GoTo Err_Command9_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command9_Click:
    Exit Sub

Err_Command9_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command9_Click
    
End Sub

Private Sub Form_Close()

    'If IsNull(Forms![NMIS_SOURCE_LOTS]![Storage].Form![LOCATION]) Then
        'Forms![NMIS_SOURCE_LOTS]![Storage].Form![LOCATION] = [NMIS_LOCATIONS Subform].Form![CN]
    'End If
    
    Forms![NMIS_ID_LOCATIONS_SOURCE_LOTS]![LOCATION_CN].Requery
    
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
```

## Module: Form_NMIS_LOCATIONS_FOR_SOURCE_LOTS_NEW

```vb
Option Compare Database

Private Sub Command9_Click()
On Error GoTo Err_Command9_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command9_Click:
    Exit Sub

Err_Command9_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command9_Click
    
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_LOCATIONS2 subform].Form![LOCATION].Requery

    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
```

## Module: Form_NMIS_LOCATION_TYPES

```vb
Option Compare Database

Private Sub Command9_Click()
On Error GoTo Err_Command9_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Command9_Click:
    Exit Sub

Err_Command9_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command9_Click
    
End Sub

Private Sub Hide_Historical_AfterUpdate()

    [NMIS_LOCATIONS Subform].Form.Requery
    
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub
Private Sub Preview_Locations_Checklist_Click()
On Error GoTo Err_Preview_Locations_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_LOCATIONS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Locations_Checklist_Click:
    Exit Sub

Err_Preview_Locations_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Locations_Checklist_Click
    
End Sub
```

## Module: Form_NMIS_ORDERS_Generic_Scheduled_Transplant

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub End_Product_Change()

    If End_Product = "Propagule" Then
        Cost_Center = "*"
        END_FY = "*"
        Cost_Center.Visible = False
    Else
        Cost_Center.Visible = True
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Cost_Center.Visible = True
    
End Sub

Private Sub Preview_Order_Checklist_No_Orders_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_scheduled_transplant_not"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Scheduled_Transplant"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Summary_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub NMIS_ORDERS_GENERIC_CREATE_Click()
On Error GoTo Err_NMIS_ORDERS_GENERIC_CREATE_Click
    
    If Not IsNull(Contact) Then
        If Not IsNull(Like_Client) Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_APPEND2_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_SERVICES_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_MGMT_CODE_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_GRADES_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_CN_UPDATE2_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_DELETE_Sch_Xplt", acNormal, acEdit
            DoCmd.SetWarnings True
            MsgBox "Generic Scheduled Transplant Orders Created"
        Else
            MsgBox "A Client is Required", vbCritical
            DoCmd.GoToControl "like_client"
        End If
    Else
        MsgBox "A Contact is Required", vbCritical
        DoCmd.GoToControl "contact"
    End If
    
Exit_NMIS_ORDERS_GENERIC_CREATE_Click:
    Exit Sub

Err_NMIS_ORDERS_GENERIC_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDERS_GENERIC_CREATE_Click
    
End Sub
```

## Module: Form_NMIS_ORDERS_Reports

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub End_FY_AfterUpdate()
    
    [Forms]![Switchboard]![FY_For_Reports] = END_FY
    
End Sub

Private Sub End_Product_Change()

    If End_Product = "Propagule" Then
        Cost_Center = "*"
        END_FY = "*"
        Cost_Center.Visible = False
        Root_Prune.Visible = False
        Product_Services = "NOSVC"
    Else
        Cost_Center.Visible = True
        Root_Prune.Visible = True
        Product_Services = "STDSVC"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Cost_Center.Visible = True
    
End Sub

Private Sub Like_Activity_Code_DblClick(Cancel As Integer)

    Like_Activity_Code = "*"
    
End Sub

Private Sub Preview_Order_Checklist_No_Orders_Click()

    Like_Activity_Code = "*"
    
    Dim stDocName As String

    stDocName = "Orders_Checklist_no_orders"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_by_Lot_ID_Click()
On Error GoTo Err_Preview_Orders_Checklist_by_Lot_ID_Click

    Dim stDocName As String

    stDocName = "Orders_Checklist_by_Lot_ID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Orders_Checklist_by_Lot_ID_Click:
    Exit Sub

Err_Preview_Orders_Checklist_by_Lot_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Orders_Checklist_by_Lot_ID_Click
 
End Sub

Private Sub Preview_Orders_Checklist_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_LiftInNote_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_LiftInNote"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Summary_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub NMIS_ORDERS_GENERIC_CREATE_Click()
On Error GoTo Err_NMIS_ORDERS_GENERIC_CREATE_Click
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_APPEND2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_SERVICES_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_MGMT_CODE_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_GRADES_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_CN_UPDATE2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_DELETE", acNormal, acEdit
    DoCmd.SetWarnings True

    MsgBox "Generic Orders Created"
    
Exit_NMIS_ORDERS_GENERIC_CREATE_Click:
    Exit Sub

Err_NMIS_ORDERS_GENERIC_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDERS_GENERIC_CREATE_Click
    
End Sub
```

## Module: Form_NMIS_ORDER_BADJ_ACT subform

```vb
Option Compare Database

Private Sub Activity_Code_Exit(Cancel As Integer)
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)

    'ORDER_CN.Requery

End Sub
```

## Module: Form_NMIS_ORDER_BILL_ADJUSTMENTS

```vb
Option Compare Database

Private Sub NMIS_ORDR_ACT_subform_Enter()

    ORDER_CN.Requery

End Sub

Private Sub CN_Enter()

    CN.Requery
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"

End Sub

Private Sub Like_JobcodeClient_DblClick(Cancel As Integer)

    Like_JobcodeClient = "*"
    
End Sub
```

## Module: Form_NMIS_ORDER_COMFIRMATION_FORM

```vb
Option Compare Database



Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

    Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]
    Forms![REPORTS Form]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]
Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub Parent_Associate_DblClick(Cancel As Integer)

    PARENT_ASSOCIATE = "*"
    
End Sub

Private Sub Order_FY_AfterUpdate()

    Forms![Switchboard]![FY_For_Reports] = Order_FY
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
     
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Report_Click()

On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String

    stDocName = "ORDER_CONFIRM_MT"
    
    If Not [Data_Processed] Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        'Update Order_Services_String Table
        'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
         DoCmd.OpenQuery "NMIS_SPCL_SVCSL_DEL_QUERY", acNormal, acEdit
        'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1L_QUERY", acNormal, acEdit
        'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2L_QUERY", acNormal, acEdit
        ' DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
    
End Sub

Private Sub Preview_Report2_Click()
On Error GoTo Err_Preview_Report2_Click
    
    Dim stDocName As String

    stDocName = "ORDER_CONFIRM_NURSERY"
    
    If Not [Data_Processed] Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        'Update Order_Services_String Table
        'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
         DoCmd.OpenQuery "NMIS_SPCL_SVCSL_DEL_QUERY", acNormal, acEdit
        'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1L_QUERY", acNormal, acEdit
        'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2L_QUERY", acNormal, acEdit
        DoCmd.OpenQuery "Order_Confirm_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2_Click:
    Exit Sub

Err_Preview_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2_Click
End Sub
```

## Module: Form_NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform

```vb
Option Compare Database

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)

    CLIENT_ASSOCIATE = Forms![NMIS_PROCESS_LABELS_MAIN]![CLIENT]
    
End Sub

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    MGMT_CODE = Forms![NMIS_PROCESS_LABELS_MAIN]![CLIENT]
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_ID_GRADES Subform

```vb
Option Compare Database

Private Sub Form_BeforeUpdate(Cancel As Integer)

    'MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    'MODIFIED_DATE = Date
    'Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_ID_SVCS Subform

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()
    
    CONTRACT_ITEM.Requery
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()
    
    CONTRACT_ITEM.Requery
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_ID_SVCS_Review_Update Subform

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()
    
    CONTRACT_ITEM.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_ID_UPDATE subform

```vb
Option Compare Database

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    AGREEMENT_LOT_CN.Locked = False
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = False
    Else
        AGREEMENT_LOT_CN.Locked = True
    End If
    
End Sub

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)
    
    CLIENT_ASSOCIATE.Locked = False
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()
    
    If IsNull(CLIENT_ASSOCIATE) Then
        CLIENT_ASSOCIATE.Locked = False
    Else
        CLIENT_ASSOCIATE.Locked = True
    End If
    
End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    CLIENT_ASSOCIATE.Locked = True
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE = "Seedlings MUST have healthy terminal bud, foliage, and at least the minimum root length!"
    
End Sub

Private Sub CONTACT_CN_AfterUpdate()

    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CONTACT_CN] = Contact_CN_Backup
        End If
    End If
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()

    Contact_CN_Backup = CONTACT_CN
    CONTACT_CN.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
 
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE = "Destroy any remaining seedlings after meeting client's request.  BE SURE TO ADJUST GROSS!"
    
End Sub

Private Sub ORDER_AMT_AfterUpdate()

    DoCmd.Requery

        If [NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS] < 0 Then
            [OVERRUN_AMT] = Abs([NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS])
            [ORDER_AMT] = [ORDER_AMT] + [NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS]
            DoCmd.Requery
        End If
        
    DoCmd.GoToControl "OVERRUN_AMT"
    
End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    ORDER_AMT.Locked = False
    
End Sub

Private Sub ORDER_AMT_Enter()
    
    If IsNull(ORDER_AMT) Then
        ORDER_AMT.Locked = False
    Else
        ORDER_AMT.Locked = True
    End If
    
End Sub

Private Sub OVERRUN_AMT_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub OVERRUN_AMT_DblClick(Cancel As Integer)

    OVERRUN_AMT.Locked = False
    
End Sub

Private Sub OVERRUN_AMT_Enter()
    
    If IsNull(OVERRUN_AMT) Then
        OVERRUN_AMT.Locked = False
    Else
        OVERRUN_AMT.Locked = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Secondary Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [SECONDARY_CONTACT_CN] = Contact_CN_Backup
        End If
    End If
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(SECONDARY_CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [SECONDARY_CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()

    Contact_CN_Backup = CONTACT_CN
    SECONDARY_CONTACT_CN.Requery
    
End Sub
Private Sub Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click()
On Error GoTo Err_Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form"
    If Not IsNull([AGREEMENT_LOT_CN]) Then
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    Else
        MsgBox "Must Select An Order First", vbInformation
    End If

Exit_Open_NMIS_PROCESSING_ORDERS_ID_INFO:
    Exit Sub

Err_Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_PROCESSING_ORDERS_ID_INFO
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform

```vb
Option Compare Database

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)

    CLIENT_ASSOCIATE.Locked = False
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()

    If IsNull(CLIENT_ASSOCIATE) Then
        CLIENT_ASSOCIATE.Locked = False
    Else
        CLIENT_ASSOCIATE.Locked = True
    End If
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
    End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
 
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(SECONDARY_CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [SECONDARY_CONTACT_CN] & "')", acFormEdit
    End If
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_INPUT

```vb
Option Compare Database

Private Sub Agreement_Lot_CN_AfterUpdate()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    '[Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    AGREEMENT_LOT_CN.Locked = False
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = False
    Else
        AGREEMENT_LOT_CN.Locked = True
    End If
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    '[Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_AfterUpdate()

    Dim Response As String
    
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Code?", vbYesNo)

        If Response = vbYes Then
            'Make It So
            Default_Contact_CN = Null
            Default_Contact2_CN = Null
        Else
            [CLIENT_ASSOCIATE] = ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)
    
    DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_PROCESSING_ORDERS_INPUT]![CLIENT_ASSOCIATE] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
            
End Sub


Private Sub CLIENT_ASSOCIATE_Enter()
    
    ASSOCIATE_backup = CLIENT_ASSOCIATE
    
End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    Default_Client_Associate = CLIENT_ASSOCIATE
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull([Activity_Code]) Then
            Activity_Code = [Default_Order_Activity_Code]
        End If
        If IsNull(SPEC_MIN) Then
            SPEC_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MIN]
        End If
        If IsNull(SPEC_MAX) Then
            SPEC_MAX = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MAX]
        End If
        If IsNull(CALIPER_MIN) Then
            CALIPER_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![CALIPER_MIN]
        End If
        'If IsNull(ORDER_AMT) And Not IsNull(NET_INV) Then
            'ORDER_AMT = Nz([AMT_SURPLUS], 0)
        'End If
    End If
    
End Sub

Private Sub Client_Associate_Name_AfterUpdate()
    
    Dim Response As String
   
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Name?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [Client_Associate_Name] = ASSOCIATE_backup
        End If
    End If
End Sub

Private Sub Client_Associate_Name_DblClick(Cancel As Integer)
    
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_PROCESSING_ORDERS_INPUT]![Client_Associate_Name] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
    
End Sub

Private Sub Client_Associate_Name_Enter()

    ASSOCIATE_backup = Client_Associate_Name
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE = "Seedlings MUST have healthy terminal bud, foliage, and at least the minimum root length!"
    
End Sub

Private Sub cmdExit_Click()
On Error GoTo Err_cmdExit_Click

    DoCmd.Close

Exit_cmdExit_Click:
    Exit Sub

Err_cmdExit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_cmdExit_Click
    
End Sub

Private Sub CONTACT_CN_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Contact?", vbYesNo)

        If Response = vbYes Then
            'Let It Be So
        Else
            [CONTACT_CN] = Contact_CN_Backup
        End If
        Default_Contact_CN = CONTACT_CN
    End If
        
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
       Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()
    
    If IsNull(CONTACT_CN) And Not IsNull(Default_Contact_CN) Then
        CONTACT_CN = Default_Contact_CN
    End If
    Contact_CN_Backup = CONTACT_CN
    CONTACT_CN.Requery
    
End Sub

Private Sub CONTACT_CN_Exit(Cancel As Integer)

    Default_Contact_CN = CONTACT_CN
    
End Sub

Private Sub CONTRACT_ITEM_Enter()
       
    If Not IsNull(Total_Order) Then
    If [Activity_Code] Like "PACK" Or [Activity_Code] Like "PXPLT*" Or [Activity_Code] Like "CPROC" Then
    Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
    
    Case Is = "061019"
        If IsNull(CONTRACT_ITEM) Then
        'If [Activity_Code] Like "PXPLT*" Then
            'cid = "2.4"
        'Else
        If [Activity_Code] = "PACK" Or [Activity_Code] Like "PXPLT*" Then
            If Total_Order < 1 And Not OVERRUN_ALL_Check Then
                cid = "2.5"
            Else
            If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*1+0*" Then
                cid = "2.1"
            Else
                If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*2+0*" Or _
                [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*3+0*" Then
                    cid = "2.2"
                Else
                    cid = "2.3"
                End If
            End If
            End If
        End If
        'End If
        
        If [Activity_Code] = "CPROC" Then
                cid = "2.6"
        End If
        'If cid <> "2.5" Then
            'If [Total_Order] >= 7 Then
                'cid = cid & "a"
            'Else
                'cid = cid & "b"
            'End If
        'End If
        If Not IsNull(cid) Then
            CONTRACT_ITEM = cid
        End If
        End If
    Case Is = "050357"
        If IsNull(CONTRACT_ITEM) Then
            If [Activity_Code] = "cproc" Then
                cid = "2"
            Else
            If [Activity_Code] Like "PXPLT*" Then
                cid = "na"
            Else
            If [Activity_Code] = "PACK" Then
                If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*1+0*" Then
                    cid = "1E"
                Else
                    If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*2+0*" Then
                        cid = "1F"
                    Else
                        If [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_DESC] Like "*3+0*" Then
                            cid = "1G"
                        Else
                            cid = "1H"
                        End If
                    End If
                End If
            End If
            End If
            End If
        End If
        If Not IsNull(cid) Then
            CONTRACT_ITEM = cid
        End If
    Case Is = "040207"
        If IsNull(CONTRACT_ITEM) Then
            If [Activity_Code] = "CPROC" Then
                cid = "3"
            Else
            If [Activity_Code] = "PACK" Then
                    cid = "2"
            End If
            End If
        End If
        If Not IsNull(cid) Then
            CONTRACT_ITEM = cid
        End If
    End Select
    End If
    End If
    
End Sub

Private Sub Contract_Item_Exit(Cancel As Integer)

    'Last_Contract_Item = CONTRACT_ITEM
    
End Sub

Private Sub Default_Job_Code_Exit(Cancel As Integer)
    
    DoCmd.GoToControl "AGREEMENT_LOT_CN"
    
End Sub

Private Sub DESTINATION_ASSOCIATE_Enter()

    If IsNull(DESTINATION_ASSOCIATE) Then
        DESTINATION_ASSOCIATE = [Default_Client_Associate]
    End If
    
End Sub

Private Sub Form_AfterInsert()
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        If Not IsNull([Default_Job_Code]) Then
            [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = [Default_Job_Code]
        Else
            [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
        End If
        [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
        
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code] = [Default_Special_Service_Activity_Code]
        [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    'End If
        
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![GRADE_PCT] = 100
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    'End If
    End If
    
End Sub

Private Sub Form_AfterUpdate()

End Sub

Private Sub Form_Current()

    '[Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    FISCAL_YEAR.Requery
    AGREEMENT_LOT_CN.Requery
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    [NMIS_PROCESSING_ORDERS_ID_INFO subform].Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

    'DoCmd.OpenQuery "NMIS_ORDER_ID_INFO_Orders_New mt Query"
    'DoCmd.OpenQuery "NMIS_SURPLUS_INV_mt"
    
    DoCmd.GoToRecord , , acNewRec
    
Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_GRADES_subform_Enter()

    '[NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_INPUT_MC_subform_Enter()

    '[NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_SVCS_subform_Enter()

    '[NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE = "Destroy any remaining seedlings after meeting client's request.  BE SURE TO ADJUST GROSS!"
    
End Sub

Private Sub Open_Sow_Req_Info_Click()
On Error GoTo Err_Open_Sow_Req_Info_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ORDERS_NEW_AGREEMENT_INFO"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sow_Req_Info_Click:
    Exit Sub

Err_Open_Sow_Req_Info_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sow_Req_Info_Click
    
End Sub

Private Sub ORDER_AMT_Change()

    Dont_Change_Order_On_Exit = False

End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    If AMT_SURPLUS > 0 Then
        ORDER_AMT = AMT_SURPLUS
    End If
    ORDER_AMT.Locked = False
    
End Sub

Private Sub ORDER_AMT_Enter()

    If Not IsNull(ORDER_AMT) Then
        ORDER_AMT.Locked = True
        Dont_Change_Order_On_Exit = True
    Else
        ORDER_AMT.Locked = False
        Dont_Change_Order_On_Exit = False
    End If
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull([Activity_Code]) Then
            [Activity_Code] = [Default_Order_Activity_Code]
        End If
        'If IsNull(ORDER_AMT) Then
            'If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" And _
                '[NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![PRODUCT_GROUP] <> "Propagule" Then
                'ORDER_AMT = [NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform].Form![TOTAL_REQUEST]
            'Else
                'ORDER_AMT = [NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform].Form![NET_INV]
            'End If
        'End If
    End If
    
End Sub

Private Sub ORDER_AMT_Exit(Cancel As Integer)

    If Dont_Change_Order_On_Exit = False Then
    If Not IsNull(ORDER_AMT) Then
        If (IsNull([NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![NET_INV])) Then
            OVERRUN_AMT = ORDER_AMT
            ORDER_AMT = 0
        End If
        If ORDER_AMT > AMT_SURPLUS And IsNull(OVERRUN_AMT) Then
            OVERRUN_AMT = Round(ORDER_AMT - AMT_SURPLUS, 3)
            ORDER_AMT = Round(AMT_SURPLUS, 3)
        End If
    End If
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(SPEC_MIN) Then
            SPEC_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MIN]
        End If
        If IsNull(SPEC_MAX) Then
            SPEC_MAX = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MAX]
        End If
        If IsNull(CALIPER_MIN) Then
            CALIPER_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![CALIPER_MIN]
        End If
    End If
        
    End If
    
End Sub

Private Sub OVERRUN_ALL_Check_AfterUpdate()

    If OVERRUN_ALL = True Then
        ORDER_AMT = Round(AMT_SURPLUS, 3)
        OVERRUN_AMT = Null
    End If
    
End Sub



Private Sub PrvwOrdrFrm_Click()
On Error GoTo Err_PrvwOrdrFrm_Click


    If Not IsNull(CN) Then
    
    Dim stDocName As String
    
    DoCmd.RunCommand acCmdRefresh

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_INPUT Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    
    DoCmd.SetWarnings True
    
    Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207_input"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357_input"
    Case Else
        stDocName = "order_form_from_order_input mt"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
    Else
        MsgBox "Must Enter and Order First"
    End If

Exit_PrvwOrdrFrm_Click:
    Exit Sub

Err_PrvwOrdrFrm_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwOrdrFrm_Click
    
End Sub

Private Sub PrvwStrgRcrd_Click()
On Error GoTo Err_PrvwStrgRcrd_Click


    If Not IsNull(CN) Then
    
    Dim stDocName As String
    
    DoCmd.RunCommand acCmdRefresh

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    stDocName = "PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM"
    DoCmd.OpenReport stDocName, acPreview
    
    Else
        MsgBox "Must Enter Order First"
    End If

Exit_PrvwStrgRcrd_Click:
    Exit Sub

Err_PrvwStrgRcrd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwStrgRcrd_Click
    
End Sub
Private Sub CmdAddRec_Click()
On Error GoTo Err_CmdAddRec_Click

    [Agreement_Lot_CN_for_Lot_Info] = Null
    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "AGREEMENT_LOT_CN"

Exit_CmdAddRec_Click:
    Exit Sub

Err_CmdAddRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdAddRec_Click
    
End Sub

Private Sub SECONDARY_CONTACT_CN_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) And Not IsNull(SECONDARY_CONTACT_CN) Then
        Response = MsgBox("Are you Sure you Want to Change the Secondary Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [SECONDARY_CONTACT_CN] = Contact_CN_Backup
        End If
        Default_Contact2_CN = SECONDARY_CONTACT_CN
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
       Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(SECONDARY_CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [SECONDARY_CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()
    If IsNull(SECONDARY_CONTACT_CN) And Not IsNull(Default_Contact2_CN) Then
        SECONDARY_CONTACT_CN = Default_Contact2_CN
    End If
    Default_Contact2_CN = SECONDARY_CONTACT_CN
    SECONDARY_CONTACT_CN.Requery
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Exit(Cancel As Integer)
    
    Default_Contact2_CN = SECONDARY_CONTACT_CN
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_INPUT_Propagule

```vb
Option Compare Database

Private Sub AGREEMENT_LOT_CN_Enter()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    [Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        Default_Client_Associate = CLIENT_ASSOCIATE
        DESTINATION_ASSOCIATE = CLIENT_ASSOCIATE
        CONTACT_CN.Requery
        SECONDARY_CONTACT_CN.Requery
    End If
    
End Sub

Private Sub cmdExit_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    DoCmd.RunMacro stDocName

End Sub




Private Sub PrvwOrdrFrm_Click()
On Error GoTo Err_PrvwOrdrFrm_Click

    Dim stDocName As String
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
 
    stDocName = "ORDER_FORM"
    DoCmd.OpenReport stDocName, acPreview

Exit_PrvwOrdrFrm_Click:
    Exit Sub

Err_PrvwOrdrFrm_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwOrdrFrm_Click
    
End Sub

Private Sub PrvwStrgRcrd_Click()
On Error GoTo Err_PrvwStrgRcrd_Click

    Dim stDocName As String

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    stDocName = "PRODUCT_STORAGE_RECORD"
    DoCmd.OpenReport stDocName, acPreview

Exit_PrvwStrgRcrd_Click:
    Exit Sub

Err_PrvwStrgRcrd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwStrgRcrd_Click
    
End Sub
Private Sub CmdAddRec_Click()
On Error GoTo Err_CmdAddRec_Click

    [Agreement_Lot_CN_for_Lot_Info] = Null
    DoCmd.GoToRecord , , acNewRec

Exit_CmdAddRec_Click:
    Exit Sub

Err_CmdAddRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdAddRec_Click
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
On Error GoTo Err_CONTACT_CN_DblClick

    DoCmd.OpenForm "NMIS_CONTACTS"

Exit_CONTACT_CN_DblClick:
    Exit Sub

Err_CONTACT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_CONTACT_CN_DblClick
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Form_AfterInsert()
'[NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Form![ACTIVITY_CODE]
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Requery
        
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Form![Activity_Code] = "FAHVP"
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Requery
    'End If
        
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Form![GRADE_PCT] = 100
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Requery
    'End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub ORDER_AMT_Enter()

    If IsNull(ORDER_AMT) Then
        ORDER_AMT = Nz([*propagule_Grow_Containers_for_Orders_table subform].Form![SumOfSum_of_Activity_Units], 0)
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_SECONDARY_CONTACT_CN_DblClick

    DoCmd.OpenForm "NMIS_CONTACTS"

Exit_SECONDARY_CONTACT_CN_DblClick:
    Exit Sub

Err_SECONDARY_CONTACT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_SECONDARY_CONTACT_CN_DblClick
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()

    SECONDARY_CONTACT_CN.Requery
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERS_SVCS_Labeler

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()

    CONTRACT_ITEM.Requery
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE.Locked = False
    
End Sub

Private Sub CLIENT_NOTE_Enter()
    
    If Not IsNull(CLIENT_NOTE) Then
        CLIENT_NOTE.Locked = True
    Else
        CLIENT_NOTE.Locked = False
    End If
    
End Sub

Private Sub Form_Close()
DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
 DoCmd.SetWarnings True
End Sub

Private Sub Form_Open(Cancel As Integer)
    
    DoCmd.GoToControl "contact_cn"
    
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE.Locked = False
    
End Sub

Private Sub NURSERY_NOTE_Enter()
    
    If Not IsNull(NURSERY_NOTE) Then
        NURSERY_NOTE.Locked = True
    Else
        NURSERY_NOTE.Locked = False
    End If
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERs_INPUT_SVCS subform

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()

    CONTRACT_ITEM.Requery
    
End Sub

Private Sub Form_GotFocus()

    Requery
    
End Sub
```

## Module: Form_NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()

    CONTRACT_ITEM.Requery
    
End Sub

Private Sub Form_GotFocus()

    Requery
    
End Sub
```

## Module: Form_NMIS_PROCESS_LABELS_MAIN

```vb
Option Compare Database

Private Sub Command3_Click()

End Sub

Private Sub PackID_BeforeUpdate(Cancel As Integer)

End Sub

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Bag/Box Label"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub

Private Sub Agreement_Lot_CN_Select_Change()

    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_PACK_LABELS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_QI_LABELS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command5_Click:
    Exit Sub

Err_Command5_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command5_Click
    
End Sub
Private Sub Command15_Click()
On Error GoTo Err_Command15_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Enter New Pack Id"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command15_Click:
    Exit Sub

Err_Command15_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command15_Click
    
End Sub

Private Sub Nursery_ID_Change()

    [Date_Lifted] = ""
    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Form_Open(Cancel As Integer)
 DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
 DoCmd.SetWarnings True
 
End Sub

Private Sub Open_Box_Label_To_Edit_Click()
On Error GoTo Err_Open_Box_Label_To_Edit_Click

    Dim stDocName As String

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Else
        If [NMIS_PROCESS_LABELS_ST1].Form![Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] = "PROPAGULE" Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE"
        Else
            stDocName = "NMIS_PROCESS_PACK_LABELS"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acViewDesign
    
Exit_Open_Box_Label_To_Edit_Click:
    Exit Sub

Err_Open_Box_Label_To_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Box_Label_To_Edit_Click
    
End Sub

Private Sub Preview_Processing_Table_Sign_Click()

End Sub

Private Sub Print_Processing_ODD_BOX_LABEL_Click()
On Error GoTo Err_Print_Processing_ODD_BOX_LABEL_Click

    Dim stDocName As String

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "040207"
        ' 4X2.5 Label
        stDocName = "NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207"
    Case Else
        ' 4X6 Label
        stDocName = "NMIS_PROCESS_PACK_LABELS_ODD_BOX"
    End Select
    
    DoCmd.OpenReport stDocName, acViewPreview
    DoCmd.PrintOut , , , , NumberOfOddBoxLabels
    DoCmd.Close

Exit_Print_Processing_ODD_BOX_LABEL_Click:
    Exit Sub

Err_Print_Processing_ODD_BOX_LABEL_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Processing_ODD_BOX_LABEL_Click
    
End Sub
```

## Module: Form_NMIS_PROCESS_LABELS_ST1

```vb
Option Compare Database

Private Sub Command3_Click()

End Sub

Private Sub PackID_BeforeUpdate(Cancel As Integer)

End Sub

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Bag/Box Label"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub

Private Sub Agreement_Lot_CN_Select_AfterUpdate()

    [Trees/Cont] = Null
    [Comments] = ""
    [Number_Of_Containers] = Null
    [BEGIN_CONTAINER] = ""
    [End_Container] = ""
    [Number_of_Boxes] = Null
    Odd_Box = False
    [Species_Product_End_Product_Group  subform].Requery
    If [Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] = "PROPAGULE" Then
        Sublot.Visible = True
        Number_of_Containers_Box.Visible = True
        Number_Of_Containers.Visible = True
        Begin_End_Container_Label.Visible = True
        BEGIN_CONTAINER.Visible = True
        End_Container.Visible = True
        Preview_Prooof_Label.Visible = False
        Command5.Visible = False
        Lot_Change_Label_Form.Visible = True
        Odd_Box.Visible = True
        Odd_Box_Label.Visible = True
        Amt.Visible = True
        Number_of_Boxes.Visible = False
        No_Boxes_Label.Visible = False
        Preview_Processing_Table_Sign.Visible = False
        Labels_Per = 2
    Else
        Sublot.Visible = False
        Number_of_Containers_Box.Visible = False
        Number_Of_Containers.Visible = False
        Begin_End_Container_Label.Visible = False
        BEGIN_CONTAINER.Visible = False
        End_Container.Visible = False
        Preview_Prooof_Label.Visible = True
        Command5.Visible = True
        Lot_Change_Label_Form.Visible = False
        Odd_Box.Visible = False
        Odd_Box_Label.Visible = False
        Amt.Visible = False
        Number_of_Boxes.Visible = True
        No_Boxes_Label.Visible = True
        Preview_Processing_Table_Sign.Visible = True
    End If
  
End Sub

Private Sub Begin_Container_DblClick(Cancel As Integer)

    BEGIN_CONTAINER = Number_Of_Containers
    End_Container = Number_Of_Containers
    Odd_Box = True
    Comments = "Odd Container "
    DoCmd.GoToControl "Trees/Cont"
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    If [Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] = "PROPAGULE" Then
        If Number_Of_Containers = "" Or IsNull(Number_Of_Containers) Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_drop"
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_Create"
            DoCmd.OpenQuery "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_AT"
            DoCmd.SetWarnings True
        Else
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_drop"
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_Create"
            For c = 1 To [Number_Of_Containers]
                DoCmd.OpenQuery "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_AT"
            Next c
            DoCmd.SetWarnings True
            
        End If

        If Labels_Per = 1 Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1"
        Else
        If Labels_Per = 2 Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE"
        Else
        If Labels_Per = 3 Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3"
        Else
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE"
        End If
        End If
        End If
    Else
    
    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Is = "090707"
        stDocName = "NMIS_PROCESS_PACK_LABELS_090707"
    Case Else
        stDocName = "NMIS_PROCESS_PACK_LABELS"
    End Select
    
    End If
    
    DoCmd.OpenReport stDocName, acPreview
    If [Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] <> "PROPAGULE" Then
        If Not IsNull([Number_of_Boxes]) Then
            If Number_of_Boxes > 0 Then
                DoCmd.PrintOut , , , , ([Number_of_Boxes] * [Labels_Per]), 0
                DoCmd.Close
            End If
        End If
    End If

Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    stDocName = "NMIS_PROCESS_QI_LABELS"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

Exit_Command5_Click:
    Exit Sub

Err_Command5_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command5_Click
    
End Sub
Private Sub Command15_Click()
On Error GoTo Err_Command15_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Enter New Pack Id"
    
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command15_Click:
    Exit Sub

Err_Command15_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command15_Click
    
End Sub

Private Sub Nursery_ID_Change()

    [Date_Lifted] = ""
    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Comments_DblClick(Cancel As Integer)

    Comments = "BgBx Bndl 50  Frezr"
    
End Sub

Private Sub End_Container_DblClick(Cancel As Integer)

    End_Container = Number_Of_Containers
    Odd_Box = False
    DoCmd.GoToControl "Trees/Cont"
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Sublot.Visible = False
    Number_of_Containers_Box.Visible = False
    Number_Of_Containers.Visible = False
    Begin_End_Container_Label.Visible = False
    BEGIN_CONTAINER.Visible = False
    End_Container.Visible = False
    Lot_Change_Label_Form.Visible = False
    Odd_Box.Visible = False
    Odd_Box_Label.Visible = False
    Amt.Visible = False
    Number_Of_Containers = Null
    BEGIN_CONTAINER = Null
    End_Container = Null
    
    
End Sub

Private Sub Labels_Per_DblClick(Cancel As Integer)
    
    Refresh
    Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_ACCESS_USER_NURSERY subform1].Form![Default6N] = Labels_Per
    MsgBox "The Default Labels per Box has been changed to the current value."
    
End Sub

Private Sub Lot_Change_Label_Form_Click()
On Error GoTo Err_Lot_Change_Label_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form"
    
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Lot_Change_Label_Form_Click:
    Exit Sub

Err_Lot_Change_Label_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_Change_Label_Form_Click
    
End Sub

Private Sub Number_Of_Containers_Exit(Cancel As Integer)
On Error GoTo Err_Number_Of_Containers_Exit
    
    If Odd_Box = False Then
        If Number_Of_Containers <> "" Then
            Number_Of_Containers = Abs(Number_Of_Containers)
            BEGIN_CONTAINER = 1
            If Number_Of_Containers > 1 Then
                End_Container = Number_Of_Containers - 1
            Else
                End_Container = Number_Of_Containers
            End If
        Else
            BEGIN_CONTAINER = Null
            End_Container = Null
        End If
    End If
Exit_Number_Of_Containers_Exit:
    Exit Sub

Err_Number_Of_Containers_Exit:
    MsgBox Err.DESCRIPTION
    Resume Exit_Number_Of_Containers_Exit
        
End Sub

Private Sub Odd_Box_Click()

    If Odd_Box Then
        BEGIN_CONTAINER = Number_Of_Containers
        End_Container = Number_Of_Containers
        Comments = "Odd Container " & Comments
        DoCmd.GoToControl "Trees/Cont"
    Else
        Comments = Null
        If Number_Of_Containers <> "" Then
            Number_Of_Containers = Abs(Number_Of_Containers)
            BEGIN_CONTAINER = 1
            If Number_Of_Containers > 1 Then
                End_Container = Number_Of_Containers - 1
            Else
                End_Container = Number_Of_Containers
            End If
        Else
            BEGIN_CONTAINER = Null
            End_Container = Null
        End If
    End If
    
End Sub

Private Sub Preview_Prooof_Label_Click()
On Error GoTo Err_Preview_Prooof_Label_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    stDocName = "NMIS_PROCESS_PACK_LABELS_PROOF"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

Exit_Preview_Prooof_Label_Click:
    Exit Sub

Err_Preview_Prooof_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Prooof_Label_Click
    
End Sub
Private Sub Preview_Processing_Table_Sign_Click()
On Error GoTo Err_Preview_Processing_Table_Sign_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted
    
    stDocName = "NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler"
    DoCmd.OpenReport stDocName, acViewPreview
    DoCmd.PrintOut ', , , , 2
    DoCmd.Close

Exit_Preview_Processing_Table_Sign_Click:
    Exit Sub

Err_Preview_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_Table_Sign_Click
    
End Sub
```

## Module: Form_NMIS_PROCESS_LABELS_ST2

```vb
Option Compare Database

Private Sub Command3_Click()

End Sub

Private Sub PackID_BeforeUpdate(Cancel As Integer)

End Sub

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Bag/Box Label"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub

Private Sub Agreement_Lot_CN_Select_Change()

    [Trees/Cont] = ""
    [Comments] = ""
    [Number_of_Boxes] = Null
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Else
        stDocName = "NMIS_PROCESS_PACK_LABELS"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    If Not IsNull([Number_of_Boxes]) Then
        If Number_of_Boxes > 0 Then
            DoCmd.PrintOut , , , , ([Number_of_Boxes] * [Labels_Per]), 0
            DoCmd.Close
        End If
    End If

Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    stDocName = "NMIS_PROCESS_QI_LABELS"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

Exit_Command5_Click:
    Exit Sub

Err_Command5_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command5_Click
    
End Sub
Private Sub Command15_Click()
On Error GoTo Err_Command15_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Enter New Pack Id"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command15_Click:
    Exit Sub

Err_Command15_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command15_Click
    
End Sub

Private Sub Nursery_ID_Change()

    [Date_Lifted] = ""
    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Comments_DblClick(Cancel As Integer)

    Comments = "BgBx Bndl 50  Frezr"
    
End Sub


Private Sub Preview_Processing_Table_Sign_Click()
On Error GoTo Err_Preview_Processing_Table_Sign_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted
    
    stDocName = "NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler"
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut ' , , , , 2
    DoCmd.Close

Exit_Preview_Processing_Table_Sign_Click:
    Exit Sub

Err_Preview_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_Table_Sign_Click
    
End Sub

Private Sub Preview_Prooof_Label_ST2_Click()

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    stDocName = "NMIS_PROCESS_PACK_LABELS_PROOF"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close
    
End Sub
```

## Module: Form_NMIS_PROCESS_LABELS_ST3

```vb
Option Compare Database

Private Sub Command3_Click()

End Sub

Private Sub PackID_BeforeUpdate(Cancel As Integer)

End Sub

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Bag/Box Label"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub

Private Sub Agreement_Lot_CN_Select_Change()

    [Trees/Cont] = ""
    [Comments] = ""
    [Number_of_Boxes] = Null
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Else
        stDocName = "NMIS_PROCESS_PACK_LABELS"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    If Not IsNull([Number_of_Boxes]) Then
        If Number_of_Boxes > 0 Then
            DoCmd.PrintOut , , , , ([Number_of_Boxes] * [Labels_Per]), 0
            DoCmd.Close
        End If
    End If
Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted


    stDocName = "NMIS_PROCESS_QI_LABELS"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

Exit_Command5_Click:
    Exit Sub

Err_Command5_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command5_Click
    
End Sub
Private Sub Command15_Click()
On Error GoTo Err_Command15_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Enter New Pack Id"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command15_Click:
    Exit Sub

Err_Command15_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command15_Click
    
End Sub

Private Sub Nursery_ID_Change()

    [Date_Lifted] = ""
    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Comments_DblClick(Cancel As Integer)

    Comments = "BgBx Bndl 50  Frezr"
    
End Sub



Private Sub Preview_Processing_Table_Sign_Click()
On Error GoTo Err_Preview_Processing_Table_Sign_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted
    
    stDocName = "NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler"
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut ' , , , , 2
    DoCmd.Close

Exit_Preview_Processing_Table_Sign_Click:
    Exit Sub

Err_Preview_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_Table_Sign_Click
    
End Sub

Private Sub Preview_Prooof_Label_Click()

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    stDocName = "NMIS_PROCESS_PACK_LABELS_PROOF"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

End Sub
```

## Module: Form_NMIS_PROCESS_LABELS_ST4

```vb
Option Compare Database

Private Sub Command3_Click()

End Sub

Private Sub PackID_BeforeUpdate(Cancel As Integer)

End Sub

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Bag/Box Label"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub

Private Sub Agreement_Lot_CN_Select_Change()

    [Trees/Cont] = ""
    [Comments] = ""
    [Number_of_Boxes] = Null
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Else
        stDocName = "NMIS_PROCESS_PACK_LABELS"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    If Not IsNull([Number_of_Boxes]) Then
        If Number_of_Boxes > 0 Then
            DoCmd.PrintOut , , , , ([Number_of_Boxes] * [Labels_Per]), 0
            DoCmd.Close
        End If
    End If

Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted


    stDocName = "NMIS_PROCESS_QI_LABELS"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

Exit_Command5_Click:
    Exit Sub

Err_Command5_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command5_Click
    
End Sub
Private Sub Command15_Click()
On Error GoTo Err_Command15_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Enter New Pack Id"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command15_Click:
    Exit Sub

Err_Command15_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command15_Click
    
End Sub

Private Sub Nursery_ID_Change()

    [Date_Lifted] = ""
    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Comments_DblClick(Cancel As Integer)

    Comments = "BgBx Bndl 50  Frezr"
    
End Sub



Private Sub Preview_Processing_Table_Sign_Click()
On Error GoTo Err_Preview_Processing_Table_Sign_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted
    
    stDocName = "NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler"
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut ', , , , 2
    DoCmd.Close

Exit_Preview_Processing_Table_Sign_Click:
    Exit Sub

Err_Preview_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_Table_Sign_Click
    
End Sub

Private Sub Preview_Prooof_Label_Click()

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    stDocName = "NMIS_PROCESS_PACK_LABELS_PROOF"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

End Sub
```

## Module: Form_NMIS_PROCESS_LABELS_subform1

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    [Activity_Code].Locked = False
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    [Activity_Code].Locked = True
    
End Sub

Private Sub CALIPER_MIN_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub CALIPER_MIN_DblClick(Cancel As Integer)

    [CALIPER_MIN].Locked = False
    
End Sub

Private Sub CALIPER_MIN_Exit(Cancel As Integer)

    [CALIPER_MIN].Locked = True
    
End Sub

Private Sub CLIENT_AfterUpdate()

    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [ORDER_CN]
    
End Sub

Private Sub CLIENT_DblClick(Cancel As Integer)

    [CLIENT].Locked = False
    
End Sub

Private Sub CLIENT_Exit(Cancel As Integer)

    [CLIENT].Locked = True

End Sub

Private Sub CONTRACT_ITEM_DblClick(Cancel As Integer)

    [CONTRACT_ITEM].Locked = False
    
End Sub

Private Sub Contract_Item_Exit(Cancel As Integer)

    [CONTRACT_ITEM].Locked = True
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
 
End Sub

Private Sub New_Pack_ID_Click()
On Error GoTo Err_New_Pack_ID_Click
    
    Response = MsgBox("Create New Order ID using " & [PACK_ID], vbOKCancel)
    
    If Response = vbOK Then
        
        DoCmd.SetWarnings False
        DoCmd.OpenForm "NMIS_ORDERS_Last_index"
        Forms![NMIS_PROCESS_LABELS_MAIN]![New_Order_CN] = (Forms![NMIS_ORDERS_Last_index].Form![MaxOfIndex] + 1) & "L" & _
            Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![User_Nursery_Code]
        Forms![NMIS_PROCESS_LABELS_MAIN]![Order_Index_to_DUP] = PACK_ID
        Forms![NMIS_PROCESS_LABELS_MAIN]![Order_CN_to_Dup] = ORDER_CN
        DoCmd.Close
        DoCmd.OpenQuery "Processing_labels_duplicate_order_append"
        DoCmd.OpenQuery "Processing_labels_duplicate_order_services_append"
        DoCmd.OpenQuery "Processing_labels_duplicate_order_jobcode_append"
        DoCmd.OpenQuery "Processing_labels_duplicate_order_grades_append"
        DoCmd.SetWarnings True
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![CN].Requery
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST2].Form![CN].Requery
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].Form![CN].Requery
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST4].Form![CN].Requery
        DoCmd.GoToRecord , , acLast
        
    Else
        MsgBox "OK I won't do it"
    End If

Exit_New_Pack_ID_Click:
    Exit Sub

Err_New_Pack_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Pack_ID_Click
    
End Sub

Private Sub ROOT_TARGET_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub ROOT_TARGET_DblClick(Cancel As Integer)

    [ROOT_TARGET].Locked = False
    
End Sub

Private Sub ROOT_TARGET_Exit(Cancel As Integer)

    [ROOT_TARGET].Locked = True
    
End Sub

Private Sub SPEC_MAX_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub SPEC_MAX_DblClick(Cancel As Integer)

    [SPEC_MAX].Locked = False
    
End Sub

Private Sub SPEC_MAX_Exit(Cancel As Integer)

    [SPEC_MAX].Locked = True
    
End Sub

Private Sub SPEC_MIN_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub SPEC_MIN_DblClick(Cancel As Integer)

    [SPEC_MIN].Locked = False
    
End Sub

Private Sub SPEC_MIN_Exit(Cancel As Integer)
    
    [SPEC_MIN].Locked = True
  
End Sub
Private Sub Open_ORDER_SERVICES_Click()
On Error GoTo Err_Open_ORDER_SERVICES_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![CLIENT] = CLIENT
    stDocName = "NMIS_PROCESSING_ORDERS_SVCS_Labeler"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_ORDER_SERVICES_Click:
    Exit Sub

Err_Open_ORDER_SERVICES_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_ORDER_SERVICES_Click
    
End Sub
```

## Module: Form_NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE

```vb
Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub

Private Sub Child102_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "[Order_CN]"
    End If
    
End Sub

Private Sub Child103_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Child104_Enter()

    If IsNull(ORDER_CN) Then
        MsgBox "Please select an Order to view"
        ORDER_CN.SetFocus
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ORDER_CN"
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    Like_Client.Requery
    
End Sub

Private Sub Like_Client_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_ID_UPDATE_subform_Enter()

    If IsNull(ORDER_CN) And Open_Flag = False Then
        MsgBox "Please select an Order to view"
        DoCmd.GoToControl "ORDER_CN"
    End If
    
End Sub

Private Sub Order_CN_Change()

    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![CONTACT_CN].Requery
    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![SECONDARY_CONTACT_CN].Requery
    
End Sub

Private Sub Order_CN_Enter()

    Open_Flag = False
    ORDER_CN.Requery
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![CONTACT_CN].Requery
    [NMIS_PROCESSING_ORDERS_ID_UPDATE subform]![SECONDARY_CONTACT_CN].Requery
    
End Sub

Private Sub Product_Group_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
 
End Sub

Private Sub PrvwOrdrFrm_Click()
    
    If Not IsNull(ORDER_CN) Then
    
        Dim stDocName As String

        If PRODUCT_GROUP = "Propagule" Then
        If Not [order_form_data_processed] Then
        ' turns warning (about to update/delete...) off
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_REVIEW Query"
            'DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
            'DoCmd.OpenQuery "Order_Form_LOC mt Query"
            'DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
            'DoCmd.OpenQuery "Order_Form_QI mt Query"
            'DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
            'DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
            DoCmd.OpenQuery "Order_Form_Specs mt Query"
            DoCmd.OpenQuery "Order_Form_MCODES mt Query"
            DoCmd.OpenQuery "Order_form_Contacts mt Query"
            DoCmd.OpenQuery "Order_form_Contacts at Query"
            DoCmd.OpenQuery "Order_Form_PKC mt Query"
            'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"

            'Update Order_Services_String Table
            ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
            DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
            ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
            DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
            ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
            DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
            DoCmd.SetWarnings True
            [order_form_data_processed] = True
        End If
    
            stDocName = "ORDER_FORM_PROPAGULE mt"
            DoCmd.OpenReport stDocName, acPreview
    
        Else
            If Not [order_form_data_processed] Then
            ' turns warning (about to update/delete...) off
            DoCmd.SetWarnings False

            'Update Order_Services_String Table
            ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
            DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
            ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
            DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
            ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
            DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
            DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_REVIEW Query"
            DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
            DoCmd.OpenQuery "Order_Form_LOC mt Query"
            DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
            DoCmd.OpenQuery "Order_Form_QI mt Query"
            DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
            DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
            DoCmd.OpenQuery "Order_Form_Specs mt Query"
            DoCmd.OpenQuery "Order_Form_MCODES mt Query"
            DoCmd.OpenQuery "Order_form_Contacts mt Query"
            DoCmd.OpenQuery "Order_form_Contacts at Query"
            DoCmd.OpenQuery "Order_Form_PKC mt Query"
            DoCmd.OpenQuery "Order_Form_PKT mt Query"
            DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
            DoCmd.OpenQuery "Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class_mt"
    
            DoCmd.SetWarnings True
            '[order_form_data_processed] = True
            End If
    
            Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
            Case Is = "040207"
                stDocName = "ORDER_FORM mt_040207_edit"
            Case Is = "050357"
                stDocName = "ORDER_FORM mt_050357_edit"
            Case Else
                stDocName = "order_form_from_order_edit mt"
            End Select
    
            DoCmd.OpenReport stDocName, acPreview
        End If
    Else
        MsgBox "Must select an Order First"
    End If

End Sub

Private Sub PrvwStrgRcrd_Click()
    
    If Not IsNull(ORDER_CN) Then
    
    Dim stDocName As String

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    stDocName = "PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM"
    DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Must select an Order First"
    End If

End Sub

Private Sub View_by_Click()

    [ORDER_CN].Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub VIEW_FY_Change()

    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub VIEW_FY_Click()

End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub
Private Sub Open_Sow_Req_Info_Click()
On Error GoTo Err_Open_Sow_Req_Info_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ORDERS_REVIEW_AGREEMENT_INFO"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sow_Req_Info_Click:
    Exit Sub

Err_Open_Sow_Req_Info_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sow_Req_Info_Click
    
End Sub
```

## Module: Form_NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2

```vb
Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub



Private Sub Like_Client_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub


Private Sub Product_Group_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
 
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub
```

## Module: Form_NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form

```vb
Option Compare Database

Private Sub Preview_Report_Click()

    DoCmd.OpenReport "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change", acPreview

End Sub
```

## Module: Form_NMIS_PROCESS_QUALITY_SAMPLES

```vb
Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub

Private Sub Default_Date_AfterUpdate()

    [Sample_Input_JHSN].Requery

End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ORDER_CN"
    
End Sub

Private Sub ORDER_CN_AfterUpdate()

    '[Sample_Input_JHSN].Form![Default_Station] = Null
    '[Sample_Input_JHSN].Form![Default_Mode] = Null
    '[Sample_Input_JHSN].Form![Default_Sample_Size] = Null
    [Sample_Input_JHSN].Requery

End Sub

Private Sub Order_CN_Enter()

    [Sample_Input_JHSN].Requery
    ORDER_CN.Requery
    
End Sub

Private Sub Sample_Input_JHSN_Exit(Cancel As Integer)

    DoCmd.GoToControl "[SAMPLE_STATION]"
  
End Sub

Private Sub View_by_AfterUpdate()

    ORDER_CN.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    ORDER_CN.Requery
    
End Sub

Private Sub VIEW_FY_Change()
    
    ORDER_CN.Requery
    
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    
End Sub
Private Sub Open_Process_QI_Reports_Form_Click()
On Error GoTo Err_Open_Process_QI_Reports_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Processing_QI_Daily_Checklist"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Process_QI_Reports_Form_Click:
    Exit Sub

Err_Open_Process_QI_Reports_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Process_QI_Reports_Form_Click
    
End Sub
```

## Module: Form_NMIS_PROCESS_QUALITY_SAMPLES Subform1

```vb
Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub
```

## Module: Form_NMIS_PRODUCTS

```vb
Option Compare Database

Private Sub BEGIN_PRODUCT_TYPE_Enter()
    If Not IsNull(BEGIN_PRODUCT_TYPE) Then
        BEGIN_PRODUCT_TYPE.Locked = True
    Else
        BEGIN_PRODUCT_TYPE.Locked = False
    End If
End Sub

Private Sub CATEGORY_CODE_DblClick(Cancel As Integer)

    'CATEGORY_CODE.Locked = False
    
End Sub

Private Sub CATEGORY_CODE_Enter()

    If Not IsNull(CATEGORY_CODE) Then
        CATEGORY_CODE.Locked = True
    Else
        CATEGORY_CODE.Locked = False
    End If
   
End Sub

Private Sub Command77_Click()
On Error GoTo Err_Command77_Click

    Me.Refresh
    DoCmd.Close

Exit_Command77_Click:
    Exit Sub

Err_Command77_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command77_Click
    
End Sub

Private Sub END_PRODUCT_TYPE_Enter()
    If Not IsNull(END_PRODUCT_TYPE) Then
        END_PRODUCT_TYPE.Locked = True
    Else
        END_PRODUCT_TYPE.Locked = False
    End If
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "PRODUCT_Lookup"
    
End Sub

Private Sub Open_Products_Checklist_Report_Click()
On Error GoTo Err_Open_Products_Checklist_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCTS_CHECKLIST1"
    DoCmd.OpenReport stDocName, acPreview

Exit_Open_Products_Checklist_Report_Clic:
    Exit Sub

Err_Open_Products_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Checklist_Report_Clic
    
End Sub

Private Sub PRODUCT_CLASS_CONDENSED_Enter()
If Not IsNull(PRODUCT_CLASS_CONDENSED) Then
        PRODUCT_CLASS_CONDENSED.Locked = True
    Else
        PRODUCT_CLASS_CONDENSED.Locked = False
    End If
End Sub

Private Sub PRODUCT_CLASS_Enter()
    If Not IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS.Locked = True
    Else
        PRODUCT_CLASS.Locked = False
    End If
End Sub

Private Sub PRODUCT_DESC_DblClick(Cancel As Integer)

    'Product_Desc.Locked = False
    
End Sub

Private Sub PRODUCT_DESC_Enter()

    If Not IsNull(PRODUCT_DESC) Then
        PRODUCT_DESC.Locked = True
    Else
        PRODUCT_DESC.Locked = False
    End If
    
End Sub

Private Sub PRODUCT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![PRODUCT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub PRODUCT_Lookup_Enter()

    PRODUCT_Lookup.Requery
    
End Sub
Private Sub Product_Charges_Form_Click()
On Error GoTo Err_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Product_Charges_Form_Click:
    Exit Sub

Err_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Charges_Form_Click
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123"

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```

## Module: Form_NMIS_PRODUCT_CHARGES

```vb
Option Compare Database

Private Sub Filter_For_Parent_Activity_Change()

    DoCmd.Requery
    
End Sub

Private Sub Filter_For_Parent_Activity_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = Null
    DoCmd.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = PARENT_ACTIVITY_CODE
    DoCmd.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    If Not IsNull(Activity_Code) Then
        DoCmd.Requery
    End If
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = Null
    DoCmd.Requery
    
End Sub
```

## Module: Form_NMIS_PRODUCT_CHARGES2

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Like_Activity = Activity_Code
    DoCmd.Requery
    
End Sub

Private Sub Add_Activity_and_Mgmt_Codes_Click()
On Error GoTo Err_Add_Activity_and_Mgmt_Codes_Click

    Dim stDocName As String

    stDocName = "NMIS_Product_Charges_add_activity_codes_and_MCs Form"
    DoCmd.OpenForm stDocName
Exit_Add_Activity_and_Mgmt_Codes_Click:
    Exit Sub

Err_Add_Activity_and_Mgmt_Codes_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Add_Activity_and_Mgmt_Codes_Click
End Sub

Private Sub Filter_For_Parent_Activity_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Filter_For_Parent_Activity_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = "*"
    DoCmd.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Change()

    PRODUCT_CN.Requery
    DoCmd.Requery
    
End Sub

Private Sub FISCAL_YEAR_DblClick(Cancel As Integer)
    
    View_FY = FISCAL_YEAR
    DoCmd.Requery
    
End Sub


Private Sub Form_AfterUpdate()

    If IsNull(Activity_Code) Then
        [Add_Activity_and_Mgmt_Codes].Visible = True
    Else
        [Add_Activity_and_Mgmt_Codes].Visible = False
    End If
    
End Sub

Private Sub Form_Current()

    If IsNull(Activity_Code) Then
        [Add_Activity_and_Mgmt_Codes].Visible = True
    Else
        [Add_Activity_and_Mgmt_Codes].Visible = False
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    [Add_Activity_and_Mgmt_Codes].Visible = False
        
    DoCmd.Requery
    DoCmd.GoToControl "PRODUCT_CN"
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub Hide_Historical_Click()

    DoCmd.Requery
    
End Sub

Private Sub Like_Activity_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Activity_DblClick(Cancel As Integer)

    Like_Activity = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Category_Code_AfterUpdate()

    PRODUCT_CN.Requery
    DoCmd.Requery
   
End Sub

Private Sub Like_Category_Code_DblClick(Cancel As Integer)

    Like_Category_Code = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Grow_Unit_AfterUpdate()

    PRODUCT_CN.Requery
    DoCmd.Requery
    
End Sub

Private Sub Like_Grow_Unit_DblClick(Cancel As Integer)

    Like_Grow_Unit = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Product_Grade_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Product_Grade_DblClick(Cancel As Integer)
    
    Like_Product_Grade = "*"
    DoCmd.Requery
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = PARENT_ACTIVITY_CODE
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_CN_AfterUpdate()

    ' Find the record that matches the control.
    'Dim rs As Object

    'Set rs = Me.Recordset.Clone
    'rs.FindFirst "[PRODUCT_CN] like '" & Nz(Me![PRODUCT_CN], "*") & "'"
    'Me.Bookmark = rs.Bookmark
       
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_CN_DblClick(Cancel As Integer)

    PRODUCT_CN = Null
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_CN_Enter()

    If IsNull(Activity_Code) Then
        [Add_Activity_and_Mgmt_Codes].Visible = True
    Else
        [Add_Activity_and_Mgmt_Codes].Visible = False
    End If
    
    PRODUCT_CN.Requery
    
End Sub

Private Sub PRODUCT_Lookup_Enter()

    PRODUCT_Lookup.Requery
 
End Sub

Private Sub Product_DblClick(Cancel As Integer)
    
    PRODUCT_CN = Product
    DoCmd.Requery
    
End Sub

Private Sub PRODUCT_GRADE_DblClick(Cancel As Integer)

    Like_Product_Grade = PRODUCT_GRADE
    DoCmd.Requery
    
End Sub

Private Sub Products_Price_Reports_Click()
On Error GoTo Err_Products_Price_Reports_Click

    Dim stDocName As String

    stDocName = "Products_Price_Reports"
    DoCmd.OpenForm stDocName
Exit_Products_Price_Reports_Click:
    Exit Sub

Err_Products_Price_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Price_Reports_Click
 
End Sub

Private Sub VIEW_FY_AfterUpdate()

    If Not IsNull(Activity_Code) Then
        DoCmd.Requery
    End If
    Forms![Switchboard]![FY_For_Reports] = View_FY
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = "*"
    DoCmd.Requery
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123"

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORIES

```vb
Option Compare Database

Private Sub CN_AfterUpdate()

     [Agreement_Lot_Inventory_Factors_For_Cycle subform].Requery


End Sub

Private Sub CN_Change()

    '[NMIS_ID_ACTIVITIES subform1].SetFocus
    
    'If IsNull([NMIS_ID_ACTIVITIES subform1].Form![Activity_Code]) Then
    '    DoCmd.GoToControl "ACTIVITY_CODE"
    'Else
    '    DoCmd.GoToControl "ACTIVITY_UNITS"
    'End If
    
End Sub

Private Sub CN_DblClick(Cancel As Integer)

    If (Not IsNull([CN]) Or [CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_PRODUCT_INVENTORIES]![CN]", , acNormal
    End If
End Sub

Private Sub CN_Enter()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub Count_Only_Click()

    If [Count_Only] = True Then
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
    Else
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = True
    End If
    
End Sub

Private Sub Data_Summary_Report_Click()

    [NMIS_PRODUCT_INVENTORIES subform1].Requery
    
    DoCmd.OpenReport "Product_Inventory_Data_Summary", acPreview
        
End Sub

Private Sub Enter_Sizes_Click()

    If [Enter_Sizes] = True Then
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = True
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = True
    Else
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
    End If
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Requery
    
End Sub

Private Sub Field_Worksheets____Click()
On Error GoTo Err_Field_Worksheets____Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_Inventory_Worksheets Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Field_Worksheets____Click:
    Exit Sub

Err_Field_Worksheets____Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Worksheets____Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    CN = Null
    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub

Private Sub Field_Worksheets____Enter()

        [Transaction_Totals_For_Product_Inventory subform].Visible = False
        
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    CN.Requery
    
End Sub



Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        [ConvertCmHtToIn] = True
    Else
        [ConvertCmHtToIn] = False
    End If
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![SMALL].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![LARGE].TabStop = False
        [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
        '[NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Requery
End Sub

Private Sub Ingrowth_Pcts_Checklist_Click()

On Error GoTo Err_Ingrowth_Pcts_Checklist_Click
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist"
    DoCmd.OpenReport stDocName, acPreview
Exit_Ingrowth_Pcts_Checklist_Click:
    Exit Sub

Err_Ingrowth_Pcts_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ingrowth_Pcts_Checklist_Click

End Sub

Private Sub Ingrowth_Pcts_Checklist_Enter()

        [Transaction_Totals_For_Product_Inventory subform].Visible = False
        
End Sub

Private Sub Inventory_Sizes_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub Like_Agreement_Lots_AfterUpdate()

    CN.Requery
    
End Sub

Private Sub Like_Agreement_Lots_DblClick(Cancel As Integer)
On Error GoTo Err_Like_Agreement_Lots_DblClick

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. -5* finds -5, -56, and -56H" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Like_Agreement_Lots_DblClick:
    Exit Sub

Err_Like_Agreement_Lots_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_Like_Agreement_Lots_DblClick
    
End Sub

Private Sub Lot_Information_Click()

    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_subform1_Enter()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    End If
  
End Sub

Private Sub NMIS_ID_ACTIVITIES_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_PRODUCT_INVENTORIES subform1].Form![GROSS_INV]) Then
        MsgBox "You must enter a value for Gross Inventory!"
    Else
       ' [NMIS_PRODUCT_INVENTORIES subform1].Form!NET_INV = Nz(Round([NMIS_PRODUCT_INVENTORIES subform1].Form!GROSS_INV * [NMIS_PRODUCT_INVENTORIES subform1].Form!Shipping_Factor / 100, 3), 0)
        '[NMIS_PRODUCT_INVENTORIES subform1].Form!Gross_Per_Unit = Nz(([NMIS_PRODUCT_INVENTORIES subform1].Form!GROSS_INV / Nz(Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Form![Total_Containers], 1) * 1000), 0)
        '[NMIS_PRODUCT_INVENTORIES subform1].Form!Net_Per_Unit = Round([NMIS_PRODUCT_INVENTORIES subform1].Form!Gross_Per_Unit * ([NMIS_PRODUCT_INVENTORIES subform1].Form!Shipping_Factor / 100), 3)
    End If
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = True
    [Transaction_Totals_For_Product_Inventory subform].Requery
    
End Sub

Private Sub NMIS_ID_LOCATIONS_subform1_Enter()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub NMIS_PRODUCT_INVENTORIES_subform1_Enter()

    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    Else
    If IsNull([NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_DATE]) Then
        MsgBox "Must enter Inventory Activity first!"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    
    If [NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] <> "PLNINV" Then
        MsgBox "Must be an Inventory Activity"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    End If
 
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Enter()
    
    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    Else
    If IsNull([NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_DATE]) Then
        MsgBox "Must enter Inventory Activity first!"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    
    If [NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] <> "PLNINV" Then
        MsgBox "Must be an Inventory Activity"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    End If
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    '[NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Next_Count] = Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Requery
    '[NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![TARGET].TabStop = False
        
    
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit(Cancel As Integer)

    On Error GoTo Err_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit

    calculated_target_factor = Round([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Sum_of_Target] / _
                [NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Sum_Of_Total_Sized] * 100, 2)

    If IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        If IsNull([NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR]) Then
            [NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = calculated_target_factor
        Else
            If calculated_target_factor <> Round([NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR], 2) Then
                Response = MsgBox("Update Computed Target Factor to [" & Nz(calculated_target_factor, "  ") & "]", vbOKCancel)
                If Response = vbOK Then
                    [NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = Round(calculated_target_factor, 2)
                End If
            End If
        End If
    End If
    
    'If Not IsNull([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No]) Then
        '[NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES] = Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0)
        '[NMIS_PRODUCT_INVENTORIES subform1].Form![SAMPLES_SPACING] = _
            'Nz([Agreement_Lot_Total_Containers subform].Form![Total_Containers], 1) / _
                '(Nz([NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1)
     'End If
    
Exit_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit:
    Exit Sub

Err_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_INVENTORY_SAMPLES_subform1_Exit
    
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SIZES_subform_Enter()
        
    If IsNull([CN]) Then
        MsgBox "Must enter Agreement Lot ID first!"
        CN.SetFocus
    Else
    If IsNull([NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_DATE]) Then
        MsgBox "Must enter Inventory Activity first!"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    
    If [NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] <> "PLNINV" Then
        MsgBox "Must be an Inventory Activity"
        [NMIS_ID_ACTIVITIES subform1].SetFocus
        DoCmd.GoToControl "[ACTIVITY_DATE]"
    End If
    End If
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub NMIS_PRODUCT_INVENTORY_SIZES_subform_Exit(Cancel As Integer)
    
    If Not IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1"
        DoCmd.SetWarnings True
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    End If
    
End Sub

Private Sub Page60_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
  
End Sub

Private Sub Reports_Click()

        [Transaction_Totals_For_Product_Inventory subform].Visible = False
        
End Sub

Private Sub Size_Distribution_Report_Click()
On Error GoTo Err_Size_Distribution_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
   
    If IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        MsgBox "No Size Measurements have been entered for creating a Size Distribution Report"
    Else
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1"
        DoCmd.OpenQuery "Plant_inv_matrix_PCT_xtab1"
        DoCmd.SetWarnings True
        If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenReport "Plant_inventory_Rpt_Size_Matrix", acPreview
    End If

Exit_Size_Distribution_Report_Click:
    Exit Sub

Err_Size_Distribution_Report_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Size_Distribution_Report_Click
    
End Sub

Private Sub Size_Distribution_Report_PCT_Only_Click()
On Error GoTo Err_Size_Distribution_Report_PCT_Only_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    If IsNull([NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        MsgBox "No Size Measurements have been entered for creating a Size Distribution Report"
    Else
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1"
        DoCmd.OpenQuery "Plant_inv_matrix_PCT_xtab1_2"
        DoCmd.SetWarnings True
        If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenReport "Plant_inventory_Rpt_Size_Matrix_PCT_Only", acPreview
    End If

Exit_Size_Distribution_Report_PCT_Only_Click:
    Exit Sub

Err_Size_Distribution_Report_PCT_Only_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Size_Distribution_Report_PCT_Only_Click
  
End Sub

Private Sub TabCtl18_Click()

    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    
End Sub

Private Sub Transactions_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = True
    
End Sub

Private Sub Worksheets_Click()
    
    [Transaction_Totals_For_Product_Inventory subform].Visible = False
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORIES subform1

```vb
Option Compare Database

Private Sub Calculate_Gross_Click()

On Error GoTo Err_Calculate_Gross_Click

    If IsNull(Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count) Then
        MsgBox "You Must enter Sample Counts First!"
    Else
        Gross_Per_Unit_calculated = Nz(Round((Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count / _
            Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Max_Sample_No) * [Plot_Area], 3), 0)
        If Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Total_Containers subform].Form!Total_Containers > 0 Then
            GROSS_INV = Nz(Round(Gross_Per_Unit_calculated * Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Total_Containers subform].Form!Total_Containers / 1000, 3), 0)
        End If
    End If
    
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No]) Then
        [SAMPLES] = Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0)
        '[SAMPLES_SPACING] = Nz([Agreement_Lot_Total_Containers subform].Form![Total_Containers], 1) / _
        '(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form![Max_Sample_No], 0) + 1)
     End If

Exit_Calculate_Gross_Click:
    Exit Sub

Err_Calculate_Gross_Click:
    MsgBox "Check to see if lot has been mapped"
    Resume Exit_Calculate_Gross_Click
    
End Sub

Private Sub Calculate_Net_Click()

    If IsNull(GROSS_INV) Then
        MsgBox "I may be a computer, but I do need some information to work with unless you want me to just make stuff up!"
    Else
        NET_INV = Nz(Round(GROSS_INV * Shipping_Factor / 100, 3), 0)
        'If Not IsNull(Shipping_Factor_Alt) Then
            NET_INV_ALT = Nz(Round(GROSS_INV * Shipping_Factor_Alt / 100, 3), Null)
        'End If
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_UNITS] = NET_INV
        [Factor_Updated].Visible = False
        MsgBox "Click on Transactions tab and Update Transactions", vbExclamation
    End If
    
End Sub

Private Sub CALIPER_MIN_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub CALIPER_MIN_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub Form_Current()
    
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        FACTOR1_CODE.Visible = True
        FACTOR2_CODE.Visible = True
    Else
        FACTOR1_CODE.Visible = False
        FACTOR2_CODE.Visible = False
    End If
    
    If Not IsNull([NET_INV]) Then
        Net_Per_Unit.Visible = True
        Gross_Per_Unit.Visible = True
    Else
        Net_Per_Unit.Visible = False
        Gross_Per_Unit.Visible = False
    End If

End Sub


Private Sub NET_INV_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_UNITS] = NET_INV

End Sub

Private Sub SPEC_MAX_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub




Private Sub SPEC_MAX_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub SPEC_MIN_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub


Private Sub SPEC_MIN_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub TARGET_FACTOR_ALT_Enter()
    
    If Specs_Changed = True Then
        Update_Target_Factors.Visible = False
        DoCmd.Requery
        
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
        Specs_Changed = False
        TARGET_FACTOR_ALT.SetFocus
    End If
            
End Sub

Private Sub TARGET_FACTOR_Enter()

    If Specs_Changed = True Then
        Update_Target_Factors.Visible = False
        DoCmd.Requery
        
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
        Specs_Changed = False
        TARGET_FACTOR_ALT.SetFocus
    End If
    
End Sub

Private Sub Update_Target_Factors1_Click()

End Sub

Private Sub Use_Default_Factors_Click()

    SPEC_MIN = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MIN]
    SPEC_MAX = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MAX]
    CALIPER_MIN = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![CALIPER_MIN]
    SPEC_MIN_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MIN_ALT]
    SPEC_MAX_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MAX_ALT]
    CALIPER_MIN_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![CALIPER_MIN_ALT]
    INV_FACTOR_1 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_FACTOR_1]
    INV_FACTOR_2 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_FACTOR_2]
    INV_FACTOR_3 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_TARGET_PCT]
    DoCmd.GoToControl "GROSS_INV"
    
End Sub
Private Sub Update_Target_Factors_Click()
On Error GoTo Err_Update_Target_Factors_Click

    DoCmd.Requery
        
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
    DoCmd.SetWarnings True
        
    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    Specs_Changed = False
    TARGET_FACTOR_ALT.SetFocus

Exit_Update_Target_Factors_Click:
    Exit Sub

Err_Update_Target_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Update_Target_Factors_Click
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORIES subform1b

```vb
Option Compare Database

Private Sub Calculate_Gross_Click()

    If IsNull(Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count) Then
        MsgBox "You Must enter Sample Counts First!"
    Else
        Gross_Per_Unit_calculated = Nz(Round((Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count / _
            Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Max_Sample_No) * [Plot_Area], 3), 0)
        GROSS_INV = Nz(Round(Gross_Per_Unit_calculated * Forms!NMIS_PRODUCT_INVENTORIES![Agreement_Lot_Total_Containers subform].Form!Total_Containers / 1000, 3), 0)
    End If
    
End Sub

Private Sub Calculate_Net_Click()

    If IsNull(GROSS_INV) Then
        MsgBox "I may be a computer, but I do need some information to work with unless you want me to just make stuff up!"
    Else
        NET_INV = Nz(Round(GROSS_INV * Shipping_Factor / 100, 3), 0)
        'If Not IsNull(Shipping_Factor_Alt) Then
            NET_INV_ALT = Nz(Round(GROSS_INV * Shipping_Factor_Alt / 100, 3), Null)
        'End If
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_UNITS] = NET_INV

        MsgBox "Click on Transactions tab and Update Transactions", vbExclamation
    End If
    
End Sub

Private Sub CALIPER_MIN_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub CALIPER_MIN_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub NET_INV_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES subform1].Form![ACTIVITY_UNITS] = NET_INV

End Sub

Private Sub SPEC_MAX_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub




Private Sub SPEC_MAX_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub SPEC_MIN_ALT_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub


Private Sub SPEC_MIN_Change()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Form![TOTAL_SIZED]) Then
        Specs_Changed = True
        Update_Target_Factors.Visible = True
    End If
    
End Sub

Private Sub TARGET_FACTOR_ALT_Enter()
    
    If Specs_Changed = True Then
        Update_Target_Factors.Visible = False
        DoCmd.Requery
        
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
        Specs_Changed = False
        TARGET_FACTOR_ALT.SetFocus
    End If
            
End Sub

Private Sub TARGET_FACTOR_Enter()

    If Specs_Changed = True Then
        Update_Target_Factors.Visible = False
        DoCmd.Requery
        
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
        Specs_Changed = False
        TARGET_FACTOR_ALT.SetFocus
    End If
    
End Sub

Private Sub Use_Default_Factors_Click()

    SPEC_MIN = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MIN]
    SPEC_MAX = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MAX]
    CALIPER_MIN = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![CALIPER_MIN]
    SPEC_MIN_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MIN_ALT]
    SPEC_MAX_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![SPEC_MAX_ALT]
    CALIPER_MIN_ALT = Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_AGREEMENT_LOTS subform].Form![CALIPER_MIN_ALT]
    INV_FACTOR_1 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_FACTOR_1]
    INV_FACTOR_2 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_FACTOR_2]
    INV_FACTOR_3 = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].Form![INV_TARGET_PCT]
    DoCmd.GoToControl "GROSS_INV"
    
End Sub
Private Sub Update_Target_Factors_Click()
On Error GoTo Err_Update_Target_Factors_Click

    DoCmd.Requery
        
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
    DoCmd.SetWarnings True
        
    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    Specs_Changed = False
    TARGET_FACTOR_ALT.SetFocus

Exit_Update_Target_Factors_Click:
    Exit Sub

Err_Update_Target_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Update_Target_Factors_Click
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORIES2

```vb
Option Compare Database

Private Sub Field_Worksheets____Click()
On Error GoTo Err_Field_Worksheets____Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_Inventory_Worksheets Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Field_Worksheets____Click:
    Exit Sub

Err_Field_Worksheets____Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Worksheets____Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT

```vb
Option Compare Database
Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click
    
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR] = Nz([TOTAL_PCT], Null)
    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR_ALT] = Nz([Total_PCT_ALT], Null)
    
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![NET_INV]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Factor_Updated].Visible = True
    End If
    
    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub
Private Sub Close_wo_Updating_Click()
On Error GoTo Err_Close_wo_Updating_Click


    DoCmd.Close

Exit_Close_wo_Updating_Click:
    Exit Sub

Err_Close_wo_Updating_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_wo_Updating_Click
    
End Sub

Private Sub Form_Close()

    Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Update_Target_Factors].Visible = False
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Round(Nz(TOTAL_PCT, 0), 2) <> 0 Then
        If (Round(Nz(TOTAL_PCT, 0), 2) = Round(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR], 0), 2) And _
            Round(Nz(Total_PCT_ALT, 0), 2) = Round(Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![TARGET_FACTOR_ALT], 0), 2)) Then
            DoCmd.Close
        End If
    End If
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_FORM

```vb
Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    Data_Processed = False
    Please_Wait = False
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    Please_Wait = False
    
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)
    
    Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        COLLECT_METHOD.Visible = True
    Else
        COLLECT_METHOD.Visible = False
    End If
    
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub Parent_Associate_DblClick(Cancel As Integer)

    PARENT_ASSOCIATE = "*"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Client_Checklist_Click()
On Error GoTo Err_Preview_Client_Checklist_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_Click:
    Exit Sub

Err_Preview_Client_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_Click
    
End Sub

Private Sub Preview_Client_Checklist_w_contacts_Click()
On Error GoTo Err_Preview_Client_Checklist_w_contacts_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_w_contacts_Click:
    Exit Sub

Err_Preview_Client_Checklist_w_contacts_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_w_contacts_Click
    
End Sub

Private Sub Preview_Client_Checklist_w_contacts2_Click()
On Error GoTo Err_Preview_Client_Checklist_w_contacts2_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_w_contacts2_Click:
    Exit Sub

Err_Preview_Client_Checklist_w_contacts2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_w_contacts2_Click
    
End Sub

Private Sub Preview_Report_AgeClass_Species_Click()
On Error GoTo Err_Preview_Report_AgeClass_Species_Click

    Dim stDocName As String
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_AgeClass_Species_Click:
    Exit Sub

Err_Preview_Report_AgeClass_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_AgeClass_Species_Click
    
End Sub

Private Sub Preview_Report_Click()

On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
    
End Sub

Private Sub Preview_Report_No_Subtotals_Click()
On Error GoTo Err_Preview_Report_No_Subtotals_Click

    Dim stDocName As String
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_No_Subtotals_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_No_Subtotals_Click:
    Exit Sub

Err_Preview_Report_No_Subtotals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_No_Subtotals_Click
    
End Sub

Private Sub Preview_Report_Species_AgeClass_Click()
On Error GoTo Err_Preview_Report_Species_AgeClass_Click

    Dim stDocName As String
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Species_AgeClass_Click:
    Exit Sub

Err_Preview_Report_Species_AgeClass_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Species_AgeClass_Click
    
End Sub

Private Sub Preview_Report2_Click()
On Error GoTo Err_Preview_Report2_Click

    Dim stDocName As String
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed2 Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt2"
        DoCmd.SetWarnings True
        Data_Processed2 = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2_Click:
    Exit Sub

Err_Preview_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2_Click
End Sub

Private Sub Preview_Report2Sum_Click()
On Error GoTo Err_Preview_Report2Sum_Click

    Dim stDocName As String
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed2 Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt2"
        DoCmd.SetWarnings True
        Data_Processed2 = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report2Sum"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2Sum_Click:
    Exit Sub

Err_Preview_Report2Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2Sum_Click
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subform

```vb
Option Compare Database

Private Sub ACTIVITY_DATE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If IsNull(ACTIVITY_DATE) Then
            If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]) Then
                ACTIVITY_DATE = Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]
            Else
                ACTIVITY_DATE = Date
            End If
        End If
    End If
    
    'ACTIVITY_UNITS.SetFocus
    
    'DoCmd.GoToControl "ACTIVITY_UNITS"
    
    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)
        
    'If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        'If IsNull(CN) Then
            'DoCmd.RunMacro "Set_CN2"
        'End If
    'End If
   
End Sub

Private Sub ACTIVITY_DATE_LostFocus()
        
    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_UNITS_Enter()
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If IsNull(ACTIVITY_DATE) Then
            If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]) Then
                ACTIVITY_DATE = Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]
            Else
                ACTIVITY_DATE = Date
            End If
        End If
    End If
        If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
            If IsNull(CN) Then
                DoCmd.RunMacro "Set_CN2"
            End If
        End If
        
End Sub

Private Sub Form_Current()
Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Requery
    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_CURRENT_ACTIVITY_CODE subform].Form![PARENT_ACTIVITY_CODE] = "PLNINV" Then
            Forms![NMIS_PRODUCT_INVENTORIES]![TabCtl18].Visible = True
        Else
        Forms![NMIS_PRODUCT_INVENTORIES]![TabCtl18].Visible = False
        End If
    Else
        Forms![NMIS_PRODUCT_INVENTORIES]![TabCtl18].Visible = False
    End If
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_MATRIX

```vb
Option Compare Database


Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
  
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
   
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)
On Error GoTo Err_Form_Open

   Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

Exit_Form_Open:
    Exit Sub

Err_Form_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Open

End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
   
End Sub

Private Sub Preview_PCT_Only_Report_Click()
On Error GoTo Err_Preview_PCT_Only_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group"
    
    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group2_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab2_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update2_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_Count_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab2_mt"
        DoCmd.OpenQuery "Agreement_Lots_Currently_Active_in_Grow_Containers2"
        DoCmd.OpenQuery "Plant_Inventory_Rpt_Size_Matrix_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
   
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Preview_PCT_Only_Report_Click:
    Exit Sub

Err_Preview_PCT_Only_Report_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_PCT_Only_Report_Click
End Sub

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_inventory_Rpt_Size_Matrix_Group"
    
    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_SIZE_MATRIX_TABLE_TEMPLATE_Group2_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_xtab2_Group_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update_mt"
        DoCmd.OpenQuery "Plant_inv_matrix_Update2_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_Count_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab_mt"
        DoCmd.OpenQuery "Plant_Inv_Matrix_Group_PCT_xtab2_mt"
        DoCmd.OpenQuery "Agreement_Lots_Currently_Active_in_Grow_Containers2"
        DoCmd.OpenQuery "Plant_Inventory_Rpt_Size_Matrix_Group_mt"
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
   
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    DoCmd.SetWarnings True
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_SAMPLES subform

```vb
Private Sub Form_AfterInsert()

    'Next_Count = Nz(SAMPLE_NO, 0) + 1
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub LARGE_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_COUNT) Then 'And Not IsNull(SMALL) Then
    
        Sample_Count_Taken = SAMPLE_COUNT
        
        If IsNull(LARGE) Then
            LARGE = 0
        End If
        
        TARGET = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Inventory_Factors_For_Cycle subform].Form![INV_SIZE_SAMPLE] - _
            (Nz(SMALL, 0) + Nz(LARGE, 0))
        
        If TARGET < 0 Then
            TARGET = 0
        End If
        
    End If
    
End Sub

Private Sub SAMPLE_COUNT_AfterUpdate()
    
    If SAMPLE_NO = 0 Then
        SAMPLE_NO = Nz([Max_Sample_No], 0) + 1
    End If
    
    If Forms![NMIS_PRODUCT_INVENTORIES]![Count_Empties] Then
            SAMPLE_COUNT = EmptyCellTemp - SAMPLE_COUNT
    End If
    
End Sub

Private Sub SAMPLE_COUNT_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORY_SIZES2c subform"
 
End Sub

Private Sub SMALL_Exit(Cancel As Integer)

    If IsNull(SMALL) Then
            SMALL = 0
        End If
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_SAMPLES subform2

```vb
Private Sub Form_AfterInsert()

    Next_Count = Nz(SAMPLE_NO, 0) + 1
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub LARGE_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_COUNT) And Not IsNull(SMALL) Then
    
            Sample_Count_Taken = SAMPLE_COUNT
        If IsNull(LARGE) Then
            LARGE = 0
        End If
        
        TARGET = Sample_Count_Taken - (Nz(SMALL, 0) + Nz(LARGE, 0))
        
        If TARGET < 0 Then
            TARGET = 0
        End If
        
    End If
    
End Sub

Private Sub SAMPLE_COUNT_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORY_SIZES2 subform"
 
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_SIZES subform

```vb
Option Compare Database

Private Sub Form_AfterDelConfirm(Status As Integer)

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
   
End Sub

Private Sub Form_AfterInsert()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec

End Sub

Private Sub Form_AfterUpdate()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub Form_GotFocus()

    DoCmd.Requery
    
End Sub

Private Sub HEIGHT_AfterUpdate()

    If (Forms![NMIS_PRODUCT_INVENTORIES]![ConvertCmHtToIn]) Then
        HEIGHT = Round(HEIGHT / 2.54, 0)
    End If
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_SIZES subform2

```vb
Option Compare Database

Private Sub Form_AfterDelConfirm(Status As Integer)

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
   
End Sub

Private Sub Form_AfterInsert()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec

End Sub

Private Sub Form_AfterUpdate()

    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub Form_GotFocus()

    DoCmd.Requery
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_SIZES2 subform

```vb
Option Compare Database

Private Sub Form_Close()
    
    If Not IsNull([TOTAL_SIZED]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Requery
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    End If
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_SIZES2c subform

```vb
Option Compare Database

Private Sub Form_Close()
    
    If Not IsNull([TOTAL_SIZED]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORY_SIZES subform].Requery
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Plant_inv_matrix_xtab1b"
        DoCmd.SetWarnings True
        DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES_AT_SIZE_SPEC_PCT"
    End If
    
End Sub

Private Sub HEIGHT_AfterUpdate()

    If (Forms![NMIS_PRODUCT_INVENTORIES]![ConvertCmHtToIn]) Then
        HEIGHT = Round(HEIGHT / 2.54, 0)
    End If
    
End Sub
```

## Module: Form_NMIS_PRODUCT_INVENTORY_TRANSACTIONS_subform

```vb
Option Compare Database

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
 
End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
    
End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
    
End Sub

Private Sub Form_Current()

    If Not IsNull(ID_LOCATION_CN) Then
        [ID_LOCATION_CN].Requery
    End If
    
End Sub

Private Sub ID_LOCATION_CN_Enter()

    'ID_LOCATION_CN.Requery

End Sub
Private Sub Update_Tranasctions_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE1", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_PRODUCT_INV_TRANSACTION_UPDATE", acNormal, acEdit
    DoCmd.SetWarnings True
    DoCmd.Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Transaction_Totals_For_Product_Inventory subform].Requery
    Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].Requery
   
End Sub
```

## Module: Form_NMIS_Product_Charges_add_activity_codes_and_MCs Form

```vb
Option Compare Database

Private Sub CATEGORY_CODE_DblClick(Cancel As Integer)

    CATEGORY_CODE.Locked = False
    
End Sub

Private Sub CATEGORY_CODE_Enter()

    If Not IsNull(CATEGORY_CODE) Then
        CATEGORY_CODE.Locked = True
    Else
        CATEGORY_CODE.Locked = False
    End If
   
End Sub

Private Sub Command104_Click()
'NMIS_Product_Charges_add_activity_codes_and_MCs1b
End Sub

Private Sub Add_Activity_and_Mgmt_Codes_Click()
On Error GoTo Err_Add_Activity_and_Mgmt_Codes_Click

    Dim stDocName As String
    Dim stDocName2 As String

    stDocName = "NMIS_Product_Charges_add_activity_codes_and_MCs1b"
    stDocName2 = "NMIS_Product_Charges_add_activity_codes_and_MCs2"
    DoCmd.SetWarnings False
    DoCmd.OpenQuery stDocName
    DoCmd.OpenQuery stDocName2
    DoCmd.SetWarnings True
    
    DoCmd.Close
    Forms![NMIS_PRODUCT_CHARGES2].Requery
    
Exit_Add_Activity_and_Mgmt_Codes_Click:
    Exit Sub

Err_Add_Activity_and_Mgmt_Codes_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Add_Activity_and_Mgmt_Codes_Click
 
End Sub

Private Sub Command77_Click()
On Error GoTo Err_Command77_Click

    Me.Refresh
    DoCmd.Close

Exit_Command77_Click:
    Exit Sub

Err_Command77_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command77_Click
    
End Sub



Private Sub Open_Products_Checklist_Report_Click()
On Error GoTo Err_Open_Products_Checklist_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCTS_CHECKLIST1"
    DoCmd.OpenReport stDocName, acPreview

Exit_Open_Products_Checklist_Report_Clic:
    Exit Sub

Err_Open_Products_Checklist_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Checklist_Report_Clic
    
End Sub

Private Sub PRODUCT_DESC_DblClick(Cancel As Integer)

    PRODUCT_DESC.Locked = False
    
End Sub

Private Sub PRODUCT_DESC_Enter()

    If Not IsNull(PRODUCT_DESC) Then
        PRODUCT_DESC.Locked = True
    Else
        PRODUCT_DESC.Locked = False
    End If
    
End Sub

Private Sub PRODUCT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![PRODUCT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub PRODUCT_Lookup_Enter()

    PRODUCT_Lookup.Requery
    
End Sub
Private Sub Product_Charges_Form_Click()
On Error GoTo Err_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Product_Charges_Form_Click:
    Exit Sub

Err_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Charges_Form_Click
    
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    Find.Requery
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123"

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub

Private Sub Hide_Historical_Click()

    Find.Requery
    
End Sub
```

## Module: Form_NMIS_SHIPPING_ID_ACTIVITIES subform

```vb
Option Compare Database

Private Sub Form_Current()

     ORDER_CN.Requery
  
End Sub

Private Sub Form_Open(Cancel As Integer)

    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
    'DoCmd.SetWarnings True
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_PRODUCTION_ShipTicket_SUBFORM"
    stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub ORDER_CN_AfterUpdate()

    If (Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform].Form![TKT_NO]) _
        And Not IsNull(ORDER_CN)) Then
        
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
            
        'If IsNull(AGREEMENT_LOT_CN) Then
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Requery
            AGREEMENT_LOT_CN = Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![AGREEMENT_LOT_CN]
        'End If
            
        If IsNull(Activity_Code) Then
            Activity_Code = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![DFLT_ACT]
        End If
    
        If IsNull(ACTIVITY_DATE) Then
            ACTIVITY_DATE = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![DESIRED_DATE]
        End If
    
        If IsNull(DESTINATION_ASSOCIATE) Then
            DESTINATION_ASSOCIATE = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![DELIVERED_TO_ASSOCIATE]
        End If
        
        If IsNull(FISCAL_YEAR) Then
            FISCAL_YEAR = [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![FISCAL_YEAR]
        End If
            If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]) Then
        If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE]) Then
        'do nothing
        Else
            Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]
            If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]) Then
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                    Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]
            Else
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                "**"
            End If
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![FISCAL_YEAR_USED] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![FISCAL_YEAR]
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Requery
        End If
    End If
    End If
        
    Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
    DoCmd.GoToControl "[ID_LOCATION_CN]"
    
End Sub
Private Sub Open_Client_MGMT_CODE_FORM_Click()
On Error GoTo Err_Open_Client_MGMT_CODE_FORM_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]) Then
        If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE]) Then
        'do nothing
        Else
            Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![CLIENT_ASSOCIATE] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![Bill_To]
            If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]) Then
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                    Forms![NMIS_SHIPPING_TICKET Subform]![MGMT_CODE]
            Else
                Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![MGMT_CODE] = _
                "**"
            End If
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Form![FISCAL_YEAR_USED] = _
            Forms![NMIS_SHIPPING_TICKET Subform]![FISCAL_YEAR]
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_CLIENT_MGMT_CODES_prod_ship subform].Requery
        End If
    End If

    stDocName = "NMIS_CLIENT_MGMT_CODES_Prod_Ship"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Client_MGMT_CODE_FORM_Click:
    Exit Sub

Err_Open_Client_MGMT_CODE_FORM_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Client_MGMT_CODE_FORM_Click
    
End Sub

Private Sub ORDER_CN_DblClick(Cancel As Integer)

    ORDER_CN.Locked = False

End Sub

Private Sub Order_CN_Enter()

    If Not IsNull(ORDER_CN) Then
        ORDER_CN.Locked = True
    Else
        ORDER_CN.Locked = False
    End If
    ORDER_CN.Requery
    
End Sub

Private Sub Ticket_DblClick(Cancel As Integer)

    Ticket.Locked = False
    
End Sub

Private Sub Ticket_Enter()
    If Not IsNull(Ticket) Then
        Ticket.Locked = True
    Else
        Ticket.Locked = False
    End If
    Ticket.Requery
End Sub
```

## Module: Form_NMIS_SHIPPING_TICKET subform

```vb
Option Compare Database

Private Sub By_TSO_Click()
    
    Find_Ticket.Requery
    
End Sub

Private Sub Client_Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    DoCmd.GoToControl "NURSERY_CONTACT_CN"
    DoCmd.GoToControl "Client_CONTACT_CN"
    If IsNull(Client_Contact_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [Client_Contact_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Create_Pull_Ticket_Click()
On Error GoTo Err_Create_Pull_Ticket_Click

    Dim stDocName As String

    stDocName = "PRODUCT_PULL_ticket"
    
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Requery
    [NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    If Not IsNull(TKT_NO) Then
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
        DoCmd.SetWarnings True
    
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If

Exit_Create_Pull_Ticket_Click:
    Exit Sub

Err_Create_Pull_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Pull_Ticket_Click
    
End Sub

Private Sub Create_Shipping_Ticket_Click()
On Error GoTo Err_Create_Shipping_Ticket_Click

    Dim stDocName As String

    stDocName = "PRODUCT_ticket"
    
    DoCmd.RunMacro "Refresh"
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Requery
    [NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    If Not IsNull(TKT_NO) Then
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
        DoCmd.SetWarnings True
    
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)
On Error GoTo Err_DELIVERED_TO_ASSOCIATE_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles_st"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_DELIVERED_TO_ASSOCIATE_DblClick:
    Exit Sub

Err_DELIVERED_TO_ASSOCIATE_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_DELIVERED_TO_ASSOCIATE_DblClick
    
End Sub

Private Sub DESIRED_DATE_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
End Sub

Private Sub Find_Ticket_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[TKT_NO] = '" & Me![Find_Ticket] & "'"
    Me.Bookmark = rs.Bookmark
    
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    Client_Contact_Name = Null
    Client_Contact_Phone = Null
    Bill_To = Null
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Like_Client] = "*"
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
                     
End Sub

Private Sub Find_Ticket_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket.Requery
    
End Sub

Private Sub FISCAL_YEAR_DblClick(Cancel As Integer)

    FISCAL_YEAR.Locked = False
    
End Sub

Private Sub FISCAL_YEAR_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    If IsNull(FISCAL_YEAR) Then
        FISCAL_YEAR.Locked = False
    Else
        FISCAL_YEAR.Locked = True
    End If
    
End Sub

Private Sub Form_Current()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket = TKT_NO  'update the find record box match record selected
    
    Client_Contact_Name = Null
    Client_Contact_Phone = Null
    Bill_To = Null
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub FY_Current_Only_Click()

    [NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    
End Sub



Private Sub Hide_Zero_Bal_Trans_Click()

    [NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub Like_Client_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub NMIS_SHIPPING_ID_ACTIVITIES_subform_Enter()

    If IsNull([TKT_NO]) Then
        MsgBox "Must enter Ticket ID first!"
        [TKT_NO].SetFocus
    Else
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    End If
  
End Sub

Private Sub NMIS_SHIPPING_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![CN]) Then
        MsgBox "Must enter Order ID first!"
        [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
    Else
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = True
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    End If
    
End Sub

Private Sub NOTE_DblClick(Cancel As Integer)
    
    If Not IsNull([DELIVERED_TO_ASSOCIATE]) Then
        DoCmd.Hourglass hourglasson
        DoCmd.RunCommand acCmdRefresh
        DoCmd.OpenForm "NMIS_TICKET_NOTE_FORM"
    Else
        MsgBox "Must enter 'Del. To' Associate first"
    End If
End Sub

Private Sub Note_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
End Sub

Private Sub NURSERY_CONTACT_CN_Enter()

    NURSERY_CONTACT_CN.Requery
    
End Sub

Private Sub Refresh_Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub Ship_Ticket_Product_spd2_Click()
On Error GoTo Err_Ship_Ticket_Product_spd2_Click

    If Not IsNull(TKT_NO) Then
        Dim stDocName As String

        stDocName = "Ship_Ticket_Product_spd2"
        DoCmd.OpenQuery stDocName ', acViewPreview
        'MsgBox "Use Export to Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If
Exit_Ship_Ticket_Product_spd2_Click:
    Exit Sub

Err_Ship_Ticket_Product_spd2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Ticket_Product_spd2_Click
    
End Sub

Private Sub SUM_OF_TRANSACTIONS_DblClick(Cancel As Integer)

    If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
        [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
    End If
    
End Sub

Private Sub TKT_NO_DblClick(Cancel As Integer)

    TKT_NO.Locked = False
    MsgBox "Ticket ID now unlocked for editing"
    
End Sub

Private Sub TKT_NO_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    If IsNull(TKT_NO) Then
        TKT_NO = "P-" & MAX_TKT_USED
    End If
    TKT_NO.Locked = True

End Sub

Private Sub TKT_NO_Exit(Cancel As Integer)
    
    If Not IsNull(TKT_NO) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        TKT_NO.Locked = True
    End If
    
End Sub

Private Sub New_Ticket_Click()
On Error GoTo Err_New_Ticket_Click

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False

    DoCmd.GoToRecord , , acNewRec

Exit_New_Ticket_Click:
    Exit Sub

Err_New_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Ticket_Click
    
End Sub
Private Sub Update_ID_Activity_Units_Click()

    If [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] <> "REPACK" Then
        If SUM_OF_TRANSACTIONS > 0 Then
            If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
                [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
                [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
                DoCmd.GoToControl "ORDER_CN"
                DoCmd.GoToRecord , , acNewRec
            Else
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
                [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
            End If
        Else
            MsgBox "Nothing to ship!"
        End If
    Else
        If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
            [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
            [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
            DoCmd.GoToControl "ORDER_CN"
            DoCmd.GoToRecord , , acNewRec
        Else
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
            [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
        End If
    End If
    
End Sub

Private Sub View_by_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
  
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket.Requery
    
End Sub
Private Sub Ship_Ticket_Product_spd_Click()
On Error GoTo Err_Ship_Ticket_Product_spd_Click

    If Not IsNull(TKT_NO) Then
        Dim stDocName As String

        stDocName = "Ship_Ticket_Product_spd"
        DoCmd.OpenQuery stDocName ', acViewPreview
        'MsgBox "Use Export to Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If
Exit_Ship_Ticket_Product_spd_Click:
    Exit Sub

Err_Ship_Ticket_Product_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Ticket_Product_spd_Click
    
End Sub
Private Sub Ticket_Info_By_TSO_Click()
On Error GoTo Err_Ticket_Info_By_TSO_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_TICKETS_charge_per_ticket2"
    If Not IsNull([EXT_DOC_REF]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_mt"
        DoCmd.SetWarnings True
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        Forms![NMIS_TICKETS_charge_per_ticket2]![View_FY] = View_FY
        Forms![NMIS_TICKETS_charge_per_ticket2]![Find_TSO] = EXT_DOC_REF
        Forms![NMIS_TICKETS_charge_per_ticket2]![Find_TSO].Visible = False
        Forms![NMIS_TICKETS_charge_per_ticket2]![View_FY].Visible = False
        Forms![NMIS_TICKETS_charge_per_ticket2]![Green_Background_Box].Visible = False
    Else
        MsgBox "Must have a TSO on Ticket"
    End If
    
Exit_Ticket_Info_By_TSO_Click:
    Exit Sub

Err_Ticket_Info_By_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ticket_Info_By_TSO_Click
    
End Sub
Private Sub Ticket_Container_Summary_Click()
On Error GoTo Err_Ticket_Container_Summary_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Ticket_Container_Summary"
    If Not IsNull(TKT_NO) Then
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    Else
        MsgBox "Please choose a Ticket", vbInformation
    End If

Exit_Ticket_Container_Summary_Click:
    Exit Sub

Err_Ticket_Container_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ticket_Container_Summary_Click
    
End Sub
```

## Module: Form_NMIS_SHIPPING_TICKET_LOT_BALANCES subform

```vb
Option Compare Database

Private Sub Like_Sublot_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Ship_All_Click()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SHIP_TKT_LOT_BALANCES_Ship_all query"
    DoCmd.SetWarnings True
    DoCmd.Requery
    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
    
    
End Sub

Private Sub Ship_Click()
On Error GoTo Err_Ship_Click

    If NO_CONTAINERS <= 0 Then
        MsgBox "NO BALANCE"
    Else
        If Not IsNull(Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
                = ID_LOCATION_CN
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
                = NO_CONTAINERS * -1
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
        Else
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
                = ID_LOCATION_CN
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
                = NO_CONTAINERS * -1
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
                = Density
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Requery
            Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].SetFocus
            DoCmd.GoToRecord , , acNewRec
        End If
        Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TRANSACTIONS_subform].Form![ID_LOCATION_CN].Requery
    End If
    
Exit_Ship_Click:
    Exit Sub

Err_Ship_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Click
    
End Sub
```

## Module: Form_NMIS_SHIPPING_TRANSACTIONS_subform

```vb
Option Compare Database

Private Sub AMT_PER_UNIT_Exit(Cancel As Integer)

    AMT_PER_UNIT_INV_GROSS = AMT_PER_UNIT

End Sub

Private Sub Form_AfterDelConfirm(Status As Integer)

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_AfterInsert()

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_AfterUpdate()

    Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery

End Sub

Private Sub Form_Current()

    If Not IsNull(ID_LOCATION_CN) Then
        [ID_LOCATION_CN].Requery
    End If
    
End Sub



Private Sub NUMBER_OF_ACTIVITY_UNITS_Enter()

    If IsNull(ID_LOCATION_CN) Then
        ID_LOCATION_CN = Forms![NMIS_SHIPPING_TICKET Subform].Form![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Form![ID_LOCATION_CN]
    End If
    ID_LOCATION_CN.Requery

End Sub

Private Sub NUMBER_OF_ACTIVITY_UNITS_Exit(Cancel As Integer)

    If (Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "SHIP" Or _
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "PICKUP" Or _
        Forms![NMIS_SHIPPING_TICKET Subform]![NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] = "DLIVR") Then
        If NUMBER_OF_ACTIVITY_UNITS > 0 Then
            NUMBER_OF_ACTIVITY_UNITS = NUMBER_OF_ACTIVITY_UNITS * -1
        End If
    End If
    
End Sub
```

## Module: Form_NMIS_SOURCE_LOTS

```vb
Option Compare Database

Private Sub preview_print_seedbox_label_Click()
On Error GoTo Err_preview_print_seedbox_label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_preview_print_seedbox_label_Click:
    Exit Sub

Err_preview_print_seedbox_label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_print_seedbox_label_Click
    
End Sub

Private Sub ASF_from_source_Click()
    
    DoCmd.OpenForm "H_ASF_from_source"
 
End Sub

Private Sub Form_Open(Cancel As Integer)
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061505" Then
        Open_Source_TI.Visible = True
    Else
        Open_Source_TI.Visible = False
    End If
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SOURCE_DATA_MAINT_FORM_MT"
    DoCmd.SetWarnings True
    DoCmd.GoToControl "Selected_Source_ID"
    
End Sub

Private Sub Hide_Non_Local_Storage_AfterUpdate()

    Selected_Source_ID.Requery
    Selected_Source_Code.Requery
    
End Sub

Private Sub Hide_Zero_Bal_AfterUpdate()

    Selected_Source_ID.Requery
    Selected_Source_Code.Requery
    
End Sub


Private Sub like_species_AfterUpdate()

    [Selected_Source_ID].Requery
    [Selected_Source_Code].Requery
   
End Sub

Private Sub Like_Species_Enter()

    Like_Species.Requery
    
End Sub

Private Sub Like_Stored_For_AfterUpdate()

    [Selected_Source_ID].Requery
    [Selected_Source_Code].Requery
    
End Sub

Private Sub Like_Stored_For_Enter()

    Like_Stored_For.Requery
    
End Sub

Private Sub NMIS_GERM_ACTIVITY_REPORT_Click()
On Error GoTo Err_NMIS_GERM_ACTIVITY_REPORT_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_REPORT2"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_GERM_ACTIVITY_REPORT_Click:
    Exit Sub

Err_NMIS_GERM_ACTIVITY_REPORT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_GERM_ACTIVITY_REPORT_Click
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_Subform_Exit(Cancel As Integer)

    [NMIS_ID_ACTIVITIES Subform].Requery
    
End Sub

Private Sub NMIS_SOURCE_CARD_BACK_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_BACK_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_BACK"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_BACK_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_BACK_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_BACK_Click
    
End Sub

Private Sub NMIS_SOURCE_CARD_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_2"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub NMIS_SOURCE_TESTS_Subform_Enter()

    [NMIS_SOURCE_TESTS Subform].Form![ID_ACTIVITY_CN].Requery
    
End Sub

Private Sub Open_Source_TI_Click()
On Error GoTo Err_Open_Source_TI_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
 
    stLinkCriteria = "[CN_SOURCE_LOT]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_SOURCE_LOTS_TI_form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria, acFormReadOnly
    
Exit_Open_Source_TI_Click:
    Exit Sub

Err_Open_Source_TI_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_TI_Click

End Sub

Private Sub Preview_Box_Mini_Labels_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2b"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2]![ID] = ID

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click

End Sub


Private Sub Open_Source_Lot_Input_Form_Click()
On Error GoTo Err_Open_Source_Lot_Input_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Input_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Input_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Input_Form_Click
    
End Sub
Private Sub Open_NMIS_SOURCE_LOT_INPUT_Click()
On Error GoTo Err_Open_NMIS_SOURCE_LOT_INPUT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_SOURCE_LOT_INPUT_Click:
    Exit Sub

Err_Open_NMIS_SOURCE_LOT_INPUT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_SOURCE_LOT_INPUT_Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub
Private Sub Command243_Click()
On Error GoTo Err_Command243_Click


    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70
    DoCmd.Close

Exit_Command243_Click:
    Exit Sub

Err_Command243_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command243_Click
    
End Sub

Private Sub Selected_Source_Code_AfterUpdate()

Selected_Source_ID = Selected_Source_Code

End Sub

Private Sub Selected_Source_Code_Enter()

    Selected_Source_ID = Null
    
End Sub

Private Sub Selected_Source_ID_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Selected_Source_ID] & "'"
    Me.Bookmark = rs.Bookmark
    Selected_Source_Code = Selected_Source_ID
    [NMIS_SOURCE_TESTS Subform].Form![ID_ACTIVITY_CN].Requery

End Sub

Private Sub Selected_Source_ID_Enter()

    Selected_Source_Code = Null
    
End Sub
Private Sub Find_Selected_Lot_Click()
On Error GoTo Err_Find_Selected_Lot_Click

    If [Selected_Source_ID] <> "" Then
        CN = Selected_Source_ID
    Else
        CN = Selected_Source_Code
    End If
    'Screen.PreviousControl.SetFocus
    'DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_Find_Selected_Lot_Click:
    Exit Sub

Err_Find_Selected_Lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Find_Selected_Lot_Click
    
End Sub

Private Sub Transactions_Click()
On Error GoTo Err_Transactions_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Transactions_Click:
    Exit Sub

Err_Transactions_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transactions_Click
    
End Sub
```

## Module: Form_NMIS_SOURCE_LOTS_Bend

```vb
Option Compare Database

Private Sub Form_Close()

    'Dim stFormName As String
    
    'strFormName = "NMIS_SOURCE_LOTS_INPUT"
    
        'If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            'Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_TESTS Subform].Form.Requery
            'Forms![NMIS_SOURCE_LOTS_INPUT].[Source_Lot_Lookup].SetFocus
        'End If


End Sub

Private Sub ID_LIKE_AfterUpdate()

        DoCmd.Requery
    
End Sub

Private Sub ID_LIKE_DblClick(Cancel As Integer)

    ID_LIKE = "*"
    DoCmd.Requery
    
End Sub

Private Sub NMIS_SPECIES_PLNTMSTR_SYMBOL_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_SPECIES"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Change_Bend_plntmstr_symbol"
    
End Sub

Private Sub Run_Bend_To_JHSN_Source_Query_Click()
On Error GoTo Err_Run_Bend_To_JHSN_Source_Query_Click
     
    Dim stDocName As String
    Dim stDocName2 As String
    Dim stDocName3 As String
    Dim stFormName As String
    
    stDocName = "Bend_To_JHSN_Source"
    stDocName2 = "Bend_To_JHSN_Source2"
    stDocName3 = "Bend_To_JHSN_Source_Test"
    stDocName4 = "Bend_To_JHSN_Source_Test_Results"
    strFormName = "NMIS_AGREEMENTS"
    strFormName2 = "NMIS_SOURCE_LOTS_INPUT"
    
    If Me.NMIS_SPECIES_PLNTMSTR_SYMBOL > "" Then
        DoCmd.SetWarnings False
        If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            DoCmd.OpenQuery stDocName, acNormal, acEdit
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN].Requery
            If SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 Then
                Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup] = CN & "B"
                Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Requery
                Forms![NMIS_SOURCE_LOTS_INPUT].Requery
                Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].Requery
            End If
        Else
            DoCmd.OpenQuery stDocName2, acNormal, acEdit
            Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup] = CN & "B"
            Forms![NMIS_SOURCE_LOTS_INPUT]![Source_Lot_Lookup].Requery
            Forms![NMIS_SOURCE_LOTS_INPUT].Requery
            Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_ID_ACTIVITIES Subform].Requery
        End If
        DoCmd.OpenQuery stDocName3, acNormal, acEdit
        DoCmd.OpenQuery stDocName4, acNormal, acEdit
    
        If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
            Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SOURCE_TESTS Subform].Form.Requery
            Forms![NMIS_SOURCE_LOTS_INPUT].[Source_Lot_Lookup].SetFocus
        End If
    Else
        MsgBox "Unable to Add to Database. Check JHSN Species Code"
    End If
    DoCmd.SetWarnings True

Exit_Run_Bend_To_JHSN_Source_Query_Click:
    Exit Sub

Err_Run_Bend_To_JHSN_Source_Query_Click:
    
    DoCmd.SetWarnings True
    Resume Exit_Run_Bend_To_JHSN_Source_Query_Click
    
End Sub

Private Sub STORED_FOR_ASSOCIATE_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Change_Bend_stored_for"
    
End Sub

Private Sub STORED_FOR_LIKE_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub STORED_FOR_LIKE_DblClick(Cancel As Integer)

    STORED_FOR_LIKE = "*"
    DoCmd.Requery
    
End Sub
```

## Module: Form_NMIS_SOURCE_LOTS_INPUT

```vb
Option Compare Database

Private Sub preview_print_seedbox_label_Click()
On Error GoTo Err_preview_print_seedbox_label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_preview_print_seedbox_label_Click:
    Exit Sub

Err_preview_print_seedbox_label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_print_seedbox_label_Click
    
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
End Sub

Private Sub Preview_Germination_Test_Report_Click()
On Error GoTo Err_Preview_Germination_Test_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_GERM_TESTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Germination_Test_Report_Cli:
    Exit Sub

Err_Preview_Germination_Test_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Germination_Test_Report_Cli
    
End Sub
Private Sub colse_Click()
On Error GoTo Err_colse_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_colse_Click:
    Exit Sub

Err_colse_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_colse_Click
    
End Sub
Private Sub refresh_Click()
On Error GoTo Err_refresh_Click


    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70
    
Exit_refresh_Click:
    Exit Sub

Err_refresh_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_refresh_Click
    
End Sub

Private Sub BREEDING_ZONE_AfterUpdate()
    If IsNull(BREEDING_ZONE_OLD) Then
        BREEDING_ZONE_OLD = BackupBreedingZone
    End If
End Sub

Private Sub BREEDING_ZONE_Enter()
    If IsNull(BREEDING_ZONE_OLD) Then
        BackupBreedingZone = BREEDING_ZONE
    End If
End Sub

Private Sub Category_Code_AfterUpdate()

    [NMIS_ID_ACTIVITIES Subform].Form.Requery
    
End Sub

Private Sub CATEGORY_CODE_Enter()

    CATEGORY_CODE.Requery
    CATEGORY_DESCRIPTION.Requery
    
End Sub

Private Sub CATEGORY_DESCRIPTION_AfterUpdate()

    [NMIS_ID_ACTIVITIES Subform].Form.Requery
    
End Sub

Private Sub CATEGORY_DESCRIPTION_Enter()

    CATEGORY_CODE.Requery
    CATEGORY_DESCRIPTION.Requery
    
End Sub

Private Sub CROP_YEAR_Enter()
    
    If Not IsNull(DATE_COLLECTED) And IsNull(CROP_YEAR) Then
        If Right$(DATE_COLLECTED, 2) > "40" Then
            CENTURY = "19"
        Else
            CENTURY = "20"
        End If
        CROP_YEAR = CENTURY & Right$(DATE_COLLECTED, 2)
    End If

End Sub

Private Sub DATE_COLLECTED_Exit(Cancel As Integer)
    
    If Not IsNull(DATE_COLLECTED) And IsNull(CROP_YEAR) Then
        If Right$(DATE_COLLECTED, 2) > "40" Then
            CENTURY = "19"
        Else
            CENTURY = "20"
        End If
        CROP_YEAR = CENTURY & Right$(DATE_COLLECTED, 2)
    End If

End Sub

Private Sub Form_AfterInsert()
    Dim strFormName As String
        
    strFormName = "NMIS_AGREEMENTS"

    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        If IsNull(Forms![NMIS_AGREEMENTS]![source_id]) Then
            Forms![NMIS_AGREEMENTS]![source_id] = CN
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN] = CN
            Forms![NMIS_AGREEMENTS]![source_id].Requery
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN].Requery
        End If
    End If
    
    Source_Lot_Lookup.Requery
    
End Sub

Private Sub Form_Close()
    
    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENTS"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        If IsNull(Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN]) Then
            Forms![NMIS_AGREEMENTS]![SOURCE_LOT_CN] = CN
        End If
        Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN].Requery
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        Open_Bend_Lots_Form.Visible = True
    Else
        Open_Bend_Lots_Form.Visible = False
    End If
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061505" Then
        Open_Source_TI.Visible = True
    Else
        Open_Source_TI.Visible = False
    End If
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub ID_AfterUpdate()

    ID2 = Backup_ID
    
End Sub

Private Sub ID_DblClick(Cancel As Integer)

    [ID].Locked = False
    MsgBox "ID is now unlocked for editing."

End Sub

Private Sub ID_Enter()

    If [ID] > "" Then
        [ID].Locked = True
    Else
        [ID].Locked = False
    End If
    Backup_ID = ID

End Sub

Private Sub ID_Exit(Cancel As Integer)

    [ID].Locked = True
    
    If Not IsNull(ID) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub

Private Sub NMIS_SOURCE_CARD_Activities_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Activities_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_Activities"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Activities_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Activities_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Activities_Click
    
End Sub

Private Sub NMIS_SOURCE_CARD_BACK_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_BACK_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_BACK"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_BACK_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_BACK_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_BACK_Click
    
End Sub

Private Sub Open_Bend_Lots_Form_Click()
On Error GoTo Err_Open_Bend_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_Bend"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Bend_Lots_Form_Click:
    Exit Sub

Err_Open_Bend_Lots_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Bend_Lots_Form_Click
    
End Sub

Private Sub Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click()
On Error GoTo Err_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "ADDNON" Then
        stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & [NMIS_ID_ACTIVITIES Subform].Form![CN] & "'"
        'DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS_NEW_LOT Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST', '235/ADDNON', '252/RETEST', '253/XFRIN1' or '254/XFRIN2'.", vbInformation
    'End If

Exit_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click:
    Exit Sub

Err_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_SOURCE_TEST_RESULTS_NEW_LOT_Click
    
End Sub
Private Sub Generate_Source_Code_Click()
On Error GoTo Err_Generate_Source_Code_Click

    Dim stSpecies_Code As String
    Dim stSOURCE_Code As String
    Dim stSource_Code_Type As String
    Dim stZone As String
    Dim stHUC As String
    
    If IsNull(SOURCE_CODE) Then
        If Forms![NMIS_SOURCE_LOTS_INPUT]![SOURCE_CODE_TYPE Subform]![SOURCE_CODE_TYPE] > "" Then
                stSource_Code_Type = Forms![NMIS_SOURCE_LOTS_INPUT]![SOURCE_CODE_TYPE Subform]![SOURCE_CODE_TYPE]
              Else
                stSource_Code_Type = "UNS"
        End If

        Select Case stSource_Code_Type
    
            Case Is = "BLM"
                stSOURCE_Code = [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                [SEED_ZONE] & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2) & " " & _
                [CERT_CODE]
        
            Case Is = "R1"
                stSOURCE_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_ABBREVIATION] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                [ID]
            
            Case Is = "R2"
                stSOURCE_Code = _
                [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 5, 2) & "-" & _
                [SEED_ZONE] & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "R4"
                MsgBox "Source Code is not used by Region 04"
                GoTo Exit_Generate_Source_Code_Click
        
            Case Is = "R5"
                If Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO] <> "" Then
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO]
                Else
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![Plntmstr_Symbol]
                End If
                If COMBINED Then
                    stCombined_code = "="
                Else
                    stCombined_code = "-"
                End If
            
                stSOURCE_Code = _
                stSpecies_Code & "-" & _
                [SEED_ZONE] & "." & _
                [ORIGIN_ELEVATION] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 5, 2) & "-" & _
                [COLLECT_METHOD] & "-" & _
                [GENETIC_BASE] & _
                stCombined_code & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "R6"
                If [BREEDING_ZONE] > "" Then
                    stZone = [BREEDING_ZONE] & "-"
                Else
                    stZone = [SEED_ZONE] & "-" & Mid([STORED_FOR_ASSOCIATE], 5, 2)
                End If
                If [HUC] > "" Then
                stHUC = [HUC] & "-"
                Else
                    stHUC = ""
                End If
            
                stSOURCE_Code = [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                stZone & _
                [COLLECT_METHOD] & "-" & _
                [ORIGIN_ELEVATION] & "-" & _
                stHUC & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2) & " " & _
                [CERT_CODE]
                
            Case Is = "R6d"
                If Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO] <> "" Then
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![SPECIES_NO]
                Else
                    stSpecies_Code = Forms![NMIS_SOURCE_LOTS_INPUT]![NMIS_SPECIES_NO subform]![Plntmstr_Symbol]
                End If
                
                stSOURCE_Code = _
                [ACCESSION] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2) & "-" & _
                stSpecies_Code & "-" & _
                [TREE]
            
                'stSOURCE_Code = _
                'stSpecies_Code & "-" & _
                '[ACCESSION] & "-" & _
                '[TREE] & "-" & _
                'Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "R9"
                stSOURCE_Code = _
                [Plntmstr_Symbol] & "-" & _
                Mid([STORED_FOR_ASSOCIATE], 3, 2) & "-" & _
                [SEED_ZONE] & "-" & _
                Right(Nz([CROP_YEAR], [DATE_COLLECTED]), 2)
            
            Case Is = "UNS"
            stSOURCE_Code = "Source Code type not specified"
        
            Case Else
            stSOURCE_Code = "Source Code Type Unknown"
        
            End Select
    
        [SOURCE_CODE] = stSOURCE_Code
    
    End If

Exit_Generate_Source_Code_Click:
    Exit Sub

Err_Generate_Source_Code_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Generate_Source_Code_Click
    
End Sub

Private Sub Open_Source_TI_Click()
On Error GoTo Err_Open_Source_TI_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
 
    stLinkCriteria = "[CN_SOURCE_LOT]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_SOURCE_LOTS_TI_form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Open_Source_TI_Click:
    Exit Sub

Err_Open_Source_TI_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_TI_Click

End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol.Undo
    Response = MsgBox("Do you want to enter a new species?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_SPECIES", acNormal, , , acFormEdit
        DoCmd.GoToRecord , , acNewRec
    End If

End Sub

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    
End Sub

Private Sub PLNTMSTR_SYMBOL_NotInList(NewData As String, Response As Integer)

    Plntmstr_Symbol.Undo
    Response = MsgBox("Not Currently a valid species. Do you want to make this a valid species?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_SPECIES", acNormal, , , acFormEdit
        DoCmd.GoToRecord , , acNewRec
    End If

End Sub

Private Sub PRODUCT_CN_AfterUpdate()

    PRODUCT_CN.Requery
    
End Sub

Private Sub PRODUCT_CN_Enter()

    PRODUCT_CN.Requery

End Sub

Private Sub Seed_Box_Label_Large_ID_Click()
On Error GoTo Err_Seed_Box_Label_Large_ID_Click

    Dim stDocName As String

    stDocName = "Seedbox_Label_Large_ID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Seed_Box_Label_Large_ID_Click:
    Exit Sub

Err_Seed_Box_Label_Large_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Label_Large_ID_Click
    
End Sub


Private Sub SOURCE_CODE_AfterUpdate()
    If IsNull(Source_code_old) Then
        Source_code_old = Backup_source_code
    End If
End Sub

Private Sub SOURCE_CODE_Enter()
    If IsNull(Source_code_old) Then
        Backup_source_code = SOURCE_CODE
    End If
End Sub

Private Sub Source_Lot_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Source_Lot_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    

End Sub

Private Sub Source_Lot_Lookup_Enter()

    ' Find the record that matches the control.
    Dim rs As Object
    If Not IsNull(Source_Lot_Lookup) Then
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![Source_Lot_Lookup] & "'"
        Me.Bookmark = rs.Bookmark
    End If

End Sub

Private Sub STORED_AT_ASSOCIATE_Enter()

    STORED_AT_ASSOCIATE.Requery
    
End Sub

Private Sub STORED_FOR_ASSOCIATE_Enter()

    STORED_FOR_ASSOCIATE.Requery
    
End Sub

Private Sub STORED_FOR_ASSOCIATE_NotInList(NewData As String, Response As Integer)

    STORED_FOR_ASSOCIATE.Undo
    Response = MsgBox("Not Currently a valid Associate. Do you want to make this a valid Associate?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.OpenForm "NMIS_ASSOCIATES", acNormal, , , acFormEdit
    End If

End Sub
Private Sub Seed_Box_Label_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2]![ID] = ID

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click

End Sub
Private Sub Seed_Box_Mini_Label_Click()
On Error GoTo Err_Seed_Box_Mini_Label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2c"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2c]![ID1] = ID

Exit_Seed_Box_Mini_Label_Click:
    Exit Sub

Err_Seed_Box_Mini_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Mini_Label_Click
    
End Sub
Private Sub Seed_Card_Click()
On Error GoTo Err_Seed_Card_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels"
    DoCmd.OpenReport stDocName, acPreview

Exit_Seed_Card_Click:
    Exit Sub

Err_Seed_Card_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Card_Click
    
End Sub
Private Sub NMIS_SOURCE_CARD_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_Front"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub Transactions_Click()
On Error GoTo Err_Transactions_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE_NEW_LOTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Transactions_Click:
    Exit Sub

Err_Transactions_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transactions_Click
    
End Sub
```

## Module: Form_NMIS_SOURCE_LOT_SELECT

```vb
Option Compare Database

Private Sub Like_Client_Enter()

    If Like_Plntmstr_Symbol = "na" Then
        Like_Plntmstr_Symbol = "*"
    End If
    SOURCE_LOT_ID_SELECT = Null
    Like_Client.Requery
    
End Sub

Private Sub Like_Plntmstr_Symbol_Enter()
    
    If Like_Client = "na" Then
        Like_Client = "*"
    End If
    SOURCE_LOT_ID_SELECT = Null
    Like_Plntmstr_Symbol.Requery
    
End Sub

Private Sub NMIS_SOURCE_LOT_REPORT_CREATE_Click()

On Error GoTo Err_NMIS_SOURCE_LOT_REPORT_CREATE_Click

Dim stDocName As String

If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] <> _
    [NMIS_SOURCE_LOTS_REPORT subform].Form![STORED_AT_ASSOCIATE] Then
    MsgBox "NOT STORED HERE"
Else
    If Include_All_Tests Then
        stDocName = "NMIS_SOURCE_LOTS_REPORT_All_Tests"
    Else
        stDocName = "NMIS_SOURCE_LOTS_REPORT_Last_Test_Only"
    End If
    DoCmd.OpenReport stDocName, acPreview
End If
    
    
Exit_NMIS_SOURCE_LOT_REPORT_CREATE_Click:
    Exit Sub

Err_NMIS_SOURCE_LOT_REPORT_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_LOT_REPORT_CREATE_Click
    
End Sub

Private Sub SOURCE_LOT_ID_SELECT_Enter()

    Like_Plntmstr_Symbol = "na"
    Like_Client = "na"
End Sub
```

## Module: Form_NMIS_SOURCE_PRICE_LINKS subform

```vb
Option Compare Database

Private Sub PRICE_RATE_CODE_Enter()

    PRICE_RATE_CODE.Requery
    
End Sub
```

## Module: Form_NMIS_SOURCE_PROCESSING_LINKS

```vb
Option Compare Database

Private Sub PRICE_RATE_CODE_Enter()

    PRICE_RATE_CODE.Requery
    
End Sub
```

## Module: Form_NMIS_SOURCE_PROCESSING_RATES

```vb
Option Compare Database

Private Sub Like_FY_AfterUpdate()

    [NMIS_SOURCE_PRICE_RATES Subform].Requery
    
End Sub
```

## Module: Form_NMIS_SOURCE_SPP_WORKSHEET

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Preview_SPP_Worksheet_Click()

    DoCmd.OpenReport "NMIS_Seed_Per_Pound_Worksheet", acViewPreview
    
End Sub

Private Sub SAMPLE1_Exit(Cancel As Integer)

    Check_Max_Min
    'If IsNull(Max) Then
        'Max = SAMPLE1
    'Else
        'If SAMPLE1 > Max Then
            'Max = SAMPLE1
        'End If
    'End If
    
    'If IsNull(Min) Then
        'Min = SAMPLE1
    'Else
        'If SAMPLE1 < Min Then
            'Min = SAMPLE1
        'End If
    'End If
    
End Sub

Private Sub SAMPLE1_LostFocus()

    Check_Max_Min
   
End Sub

Private Sub SAMPLE2_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE2_LostFocus()

    Check_Max_Min
    
End Sub

Private Sub SAMPLE3_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE3_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_LostFocus()

    Check_Max_Min
 
End Sub
Private Sub Preview_SPP__Click()
On Error GoTo Err_Preview_SPP__Click

    Dim stDocName As String

    stDocName = "NMIS_Seed_Per_Pound_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_SPP__Click:
    Exit Sub

Err_Preview_SPP__Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_SPP__Click
    
End Sub

Private Sub Check_Max_Min()

    'Find Max
    If SAMPLE1 > 0 Then
        Max = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 > Max Then
        Max = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 > Max Then
        Max = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 > Max Then
        Max = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 > Max Then
        Max = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 > Max Then
        Max = SAMPLE6
    End If
    If SAMPLE7 > 0 And SAMPLE7 > Max Then
        Max = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 > Max Then
        Max = SAMPLE8
    End If
    
    'Find Min
    If SAMPLE1 > 0 Then
        Min = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 < Min Then
        Min = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 < Min Then
        Min = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 < Min Then
        Min = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 < Min Then
        Min = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 < Min Then
        Min = SAMPLE6
    End If
    If SAMPLE7 > 0 And SAMPLE7 < Min Then
        Min = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 < Min Then
        Min = SAMPLE8
    End If
    
End Sub

Private Sub SAMPLE7_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE7_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_LostFocus()

    Check_Max_Min
 
End Sub
```

## Module: Form_NMIS_SOURCE_SPP_WORKSHEET_NEW

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub
Private Sub Create_Field_Tags_wo_Nid_Click()
On Error GoTo Err_Create_Field_Tags_wo_Nid_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_wo_NIds"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Field_Tags_wo_Nid_Click:
    Exit Sub

Err_Create_Field_Tags_wo_Nid_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Field_Tags_wo_Nid_Click
    
End Sub
Private Sub Create_Field_Tags_w_Lot_Ids_Click()
On Error GoTo Err_Create_Field_Tags_w_Lot_Ids_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_w_NIds"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Field_Tags_w_Lot_Ids_Click:
    Exit Sub

Err_Create_Field_Tags_w_Lot_Ids_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Field_Tags_w_Lot_Ids_Click
    
End Sub

Private Sub ID_Tags_W_ID_Intermec_Click()

    Dim stDocName As String

    stDocName = "Field_tag_pairs_w_NIds_Intermec"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub ID_Tags_WO_ID_Intermec_Click()

    Dim stDocName As String

    stDocName = "Field_tag_pairs_wo_NIds_Intermec"
    DoCmd.OpenReport stDocName, acPreview


End Sub

Private Sub Lot_ID_1_Enter()
    
    [Product] = Null
    [Plntmstr_Symbol] = "*"
    [BEGIN_FY] = "*"
    [END_FY] = "*"
    
End Sub
Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub Product_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub


Private Sub Preview_SPP_Worksheet_Click()

    DoCmd.OpenReport "NMIS_Seed_Per_Pound_NEW_Worksheet", acViewPreview
    
End Sub

Private Sub SAMPLE1_Exit(Cancel As Integer)

    Check_Max_Min
    'If IsNull(Max) Then
        'Max = SAMPLE1
    'Else
        'If SAMPLE1 > Max Then
            'Max = SAMPLE1
        'End If
    'End If
    
    'If IsNull(Min) Then
        'Min = SAMPLE1
    'Else
        'If SAMPLE1 < Min Then
            'Min = SAMPLE1
        'End If
    'End If
    
End Sub

Private Sub SAMPLE1_LostFocus()

    Check_Max_Min
   
End Sub

Private Sub SAMPLE2_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE2_LostFocus()

    Check_Max_Min
    
End Sub

Private Sub SAMPLE3_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE3_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_LostFocus()

    Check_Max_Min
 
End Sub
Private Sub Preview_SPP__Click()
On Error GoTo Err_Preview_SPP__Click

    Dim stDocName As String

    stDocName = "NMIS_Seed_Per_Pound_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_SPP__Click:
    Exit Sub

Err_Preview_SPP__Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_SPP__Click
    
End Sub

Private Sub Check_Max_Min()

    'Find Max
    If SAMPLE1 > 0 Then
        Max = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 > Max Then
        Max = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 > Max Then
        Max = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 > Max Then
        Max = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 > Max Then
        Max = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 > Max Then
        Max = SAMPLE6
    End If
    
    'Find Min
    If SAMPLE1 > 0 Then
        Min = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 < Min Then
        Min = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 < Min Then
        Min = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 < Min Then
        Min = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 < Min Then
        Min = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 < Min Then
        Min = SAMPLE6
    End If
    
End Sub
```

## Module: Form_NMIS_SOURCE_SPP_WORKSHEET_New_Lot

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Preview_SPP_Worksheet_Click()

    DoCmd.OpenReport "NMIS_Seed_Per_Pound_Worksheet_new_lot", acViewPreview
    
End Sub

Private Sub SAMPLE1_Exit(Cancel As Integer)

    Check_Max_Min
    'If IsNull(Max) Then
        'Max = SAMPLE1
    'Else
        'If SAMPLE1 > Max Then
            'Max = SAMPLE1
        'End If
    'End If
    
    'If IsNull(Min) Then
        'Min = SAMPLE1
    'Else
        'If SAMPLE1 < Min Then
            'Min = SAMPLE1
        'End If
    'End If
    
End Sub

Private Sub SAMPLE1_LostFocus()

    Check_Max_Min
   
End Sub

Private Sub SAMPLE2_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE2_LostFocus()

    Check_Max_Min
    
End Sub

Private Sub SAMPLE3_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE3_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_LostFocus()

    Check_Max_Min
 
End Sub
Private Sub Preview_SPP__Click()
On Error GoTo Err_Preview_SPP__Click

    Dim stDocName As String

    stDocName = "NMIS_Seed_Per_Pound_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_SPP__Click:
    Exit Sub

Err_Preview_SPP__Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_SPP__Click
    
End Sub

Private Sub Check_Max_Min()

    'Find Max
    If SAMPLE1 > 0 Then
        Max = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 > Max Then
        Max = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 > Max Then
        Max = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 > Max Then
        Max = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 > Max Then
        Max = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 > Max Then
        Max = SAMPLE6
    End If
    If SAMPLE7 > 0 And SAMPLE7 > Max Then
        Max = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 > Max Then
        Max = SAMPLE8
    End If
    
    'Find Min
    If SAMPLE1 > 0 Then
        Min = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 < Min Then
        Min = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 < Min Then
        Min = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 < Min Then
        Min = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 < Min Then
        Min = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 < Min Then
        Min = SAMPLE6
    End If
    If SAMPLE7 > 0 And SAMPLE7 < Min Then
        Min = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 < Min Then
        Min = SAMPLE8
    End If
    
End Sub

Private Sub SAMPLE7_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE7_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_LostFocus()

    Check_Max_Min
 
End Sub
```

## Module: Form_NMIS_SOURCE_SPP_WORKSHEET_ticket

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Preview_SPP_Worksheet_Click()

    DoCmd.OpenReport "NMIS_Seed_Per_Pound_Worksheet_ticket", acViewPreview
    
End Sub

Private Sub SAMPLE1_Exit(Cancel As Integer)

    Check_Max_Min
    'If IsNull(Max) Then
        'Max = SAMPLE1
    'Else
        'If SAMPLE1 > Max Then
            'Max = SAMPLE1
        'End If
    'End If
    
    'If IsNull(Min) Then
        'Min = SAMPLE1
    'Else
        'If SAMPLE1 < Min Then
            'Min = SAMPLE1
        'End If
    'End If
    
End Sub

Private Sub SAMPLE1_LostFocus()

    Check_Max_Min
   
End Sub

Private Sub SAMPLE2_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE2_LostFocus()

    Check_Max_Min
    
End Sub

Private Sub SAMPLE3_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE3_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE4_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE5_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE6_LostFocus()

    Check_Max_Min
 
End Sub
Private Sub Preview_SPP__Click()
On Error GoTo Err_Preview_SPP__Click

    Dim stDocName As String

    stDocName = "NMIS_Seed_Per_Pound_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_SPP__Click:
    Exit Sub

Err_Preview_SPP__Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_SPP__Click
    
End Sub

Private Sub Check_Max_Min()

    'Find Max
    If SAMPLE1 > 0 Then
        Max = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 > Max Then
        Max = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 > Max Then
        Max = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 > Max Then
        Max = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 > Max Then
        Max = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 > Max Then
        Max = SAMPLE6
    End If
    If SAMPLE7 > 0 And SAMPLE7 > Max Then
        Max = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 > Max Then
        Max = SAMPLE8
    End If
    
    'Find Min
    If SAMPLE1 > 0 Then
        Min = SAMPLE1
    End If
    If SAMPLE2 > 0 And SAMPLE2 < Min Then
        Min = SAMPLE2
    End If
    If SAMPLE3 > 0 And SAMPLE3 < Min Then
        Min = SAMPLE3
    End If
    If SAMPLE4 > 0 And SAMPLE4 < Min Then
        Min = SAMPLE4
    End If
    If SAMPLE5 > 0 And SAMPLE5 < Min Then
        Min = SAMPLE5
    End If
    If SAMPLE6 > 0 And SAMPLE6 < Min Then
        Min = SAMPLE6
    End If
    If SAMPLE7 > 0 And SAMPLE7 < Min Then
        Min = SAMPLE7
    End If
    If SAMPLE8 > 0 And SAMPLE8 < Min Then
        Min = SAMPLE8
    End If
    
End Sub

Private Sub SAMPLE7_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE7_LostFocus()

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_Exit(Cancel As Integer)

    Check_Max_Min
 
End Sub

Private Sub SAMPLE8_LostFocus()

    Check_Max_Min
 
End Sub
```

## Module: Form_NMIS_SOURCE_TESTS Form

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

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET"
    
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

Private Sub TYPE_OF_TEST_AfterUpdate()

    TYPE_OF_TEST.Requery
    
End Sub

Private Sub TYPE_OF_TEST_Enter()

    TYPE_OF_TEST.Requery
    
End Sub
```

## Module: Form_NMIS_SOURCE_TESTS Subform

```vb
Option Compare Database

Private Sub Combo66_Enter()

    [ID_ACTIVITY_CN].Requery

End Sub

Private Sub Combo46_AfterUpdate()

    Combo46.Requery
    
End Sub

Private Sub Combo46_Enter()

    Combo46.Requery
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
    MsgBox "There Is No Test Data For This Lot"
    Response = acDataErrContinue
End Sub

Private Sub NMIS_SOURCE_TEST_RESULTS_Subform1_Enter()

    Last_Day = 0
    
End Sub
Private Sub Open_SPP_Calculator_Click()
On Error GoTo Err_Open_SPP_Calculator_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_SPP_WORKSHEET"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_SPP_Calculator_Click:
    Exit Sub

Err_Open_SPP_Calculator_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_SPP_Calculator_Click
    
End Sub
```

## Module: Form_NMIS_SOURCE_TESTS_NEW Subform

```vb
Option Compare Database

Private Sub Combo66_Enter()

    [ID_ACTIVITY_CN].Requery

End Sub

Private Sub Combo46_AfterUpdate()

    Combo46.Requery
    
End Sub

Private Sub Combo46_Enter()

    Combo46.Requery
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)

    MsgBox "There Is No Test Data For This Lot"
    Response = acDataErrContinue
    
End Sub

Private Sub ID_ACTIVITY_CN_Enter()

    ID_ACTIVITY_CN.Requery
    
End Sub

Private Sub ID_ACTIVITY_CN_GotFocus()

    ID_ACTIVITY_CN.Requery
 
End Sub

Private Sub NMIS_SOURCE_TEST_RESULTS_Subform1_Enter()

    Last_Day = 0
    
End Sub
Private Sub Open_SPP_Calculator_Click()
On Error GoTo Err_Open_SPP_Calculator_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_SPP_WORKSHEET_NEW"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_SPP_Calculator_Click:
    Exit Sub

Err_Open_SPP_Calculator_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_SPP_Calculator_Click
    
End Sub
```

## Module: Form_NMIS_SOURCE_TESTS_NEW_LOT Form

```vb
Option Compare Database

Private Sub Open_SPP_Calculator_Click()

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET_New_Lot"
   
End Sub

Private Sub SaveAndClose_Click()
On Error GoTo Err_SaveAndClose_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    If [TYPE_OF_TEST] >= "" Or IsNull(Index) Then
        DoCmd.Close
        Else
            MsgBox "Type of Test Must Be Entered"
    End If
    End
    
    
Exit_SaveAndClose_Click:
    Exit Sub

Err_SaveAndClose_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_SaveAndClose_Click
    
End Sub

Private Sub TYPE_OF_TEST_AfterUpdate()

    TYPE_OF_TEST.Requery
    
End Sub

Private Sub TYPE_OF_TEST_Enter()

    TYPE_OF_TEST.Requery
    
End Sub
```

## Module: Form_NMIS_SOURCE_TESTS_Ship_Ticket Form

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
```

## Module: Form_NMIS_SOURCE_TEST_RESULTS Subform

```vb
Option Compare Database

Private Sub DAYS_STRAT_AfterUpdate()

    DAYS = Count_Increment
    
End Sub

Private Sub Form_AfterInsert()

    Default_Strat = DAYS_STRAT
    Last_Day = DAYS
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub
```

## Module: Form_NMIS_SOWING_ORDER

```vb
Option Compare Database

Private Sub Group_DblClick(Cancel As Integer)

    [Like_Group] = [GROUP]
    DoCmd.Requery
    
End Sub

Private Sub Like_Group_DblClick(Cancel As Integer)

    Like_Group = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Group_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Preview_Checklist_Click()
On Error GoTo Err_Preview_Checklist_Click

    Dim stDocName As String

    If Sort_By = "C" Then
        stDocName = "NMIS_Sow_Order_Checklist"
    Else
        stDocName = "NMIS_Sow_Order_Checklist_by_Sow_Order"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Click:
    Exit Sub

Err_Preview_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Click
    
End Sub

Private Sub Sort_By_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub SOWING_ORDER_CODE_Label_Click()

    Sort_By = "C"
    DoCmd.Requery
  
End Sub

Private Sub SOWING_ORDER_Label_Click()

    Sort_By = "O"
    DoCmd.Requery
  
End Sub
```

## Module: Form_NMIS_SPECIES

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

## Module: Form_NMIS_SPECIES subform

```vb
Option Compare Database

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Like_Symbol = Plntmstr_Symbol
    
End Sub
```

## Module: Form_NMIS_SPECIES_PRODUCTS Form

```vb
Option Compare Database

Private Sub CULTURAL_GROUP_DblClick(Cancel As Integer)
On Error GoTo Err_CULTURAL_GROUP_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_CULTURAL_GROUP_DblClick:
    Exit Sub

Err_CULTURAL_GROUP_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_CULTURAL_GROUP_DblClick
    
End Sub

Private Sub Current_Crop_Only_AfterUpdate()

    SPECIES_PRODUCT_Lookup.Requery
    DoCmd.Requery
    Filter_for_Species.Requery
    
End Sub

Private Sub Duplicate_Current_Species_Product_Click()
On Error GoTo Err_Duplicate_Current_Species_Product_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_PRODUCTS_Duplicate Form"
    Response = MsgBox("Create New Species Product using selected?", vbOKCancel)
    
    If Response = vbOK Then
        
        DoCmd.RunMacro "Refresh"
        DoCmd.OpenForm stDocName
    Else
        'MsgBox "OK I won't do it"
    End If
    
    
Exit_Duplicate_Current_Species_Product_Click:
    Exit Sub

Err_Duplicate_Current_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Duplicate_Current_Species_Product_Click
End Sub

Private Sub Filter_For_Product_AfterUpdate()

    'DoCmd.Requery
    SPECIES_PRODUCT_Lookup = Null
    
End Sub

Private Sub Filter_For_Product_DblClick(Cancel As Integer)

    Filter_For_Product = Null
    
End Sub

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_AfterUpdate()

    Filter_For_Product = Null
    DoCmd.Requery
    Filter_for_Species.Requery
    
End Sub

Private Sub Filter_for_Species_AfterUpdate()

    Filter_For_Product = Null
    DoCmd.Requery
    
End Sub

Private Sub Filter_for_Species_DblClick(Cancel As Integer)

    Filter_for_Species = Null
    
End Sub

Private Sub Form_Close()
    Dim strFormName As String
    
    strFormName = "NMIS_AGREEMENTS"
    strFormName2 = "NMIS_AGREEMENT_LOTS"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_OYJORD_CALIBRATION_SPECIES_DEFAULTS_APPEND"
    DoCmd.SetWarnings True
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        Forms![NMIS_AGREEMENTS]![SPECIES_PRODUCT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName2) <> 0 Then
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![SPECIES_PRODUCT_CN].Requery
        Forms![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN].Requery
    End If
End Sub


Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    DoCmd.GoToControl "SPECIES_PRODUCT_Lookup"
    
End Sub

Private Sub Like_Description_AfterUpdate()

    DoCmd.Requery
    SPECIES_PRODUCT_Lookup.Requery
    
End Sub

Private Sub Like_Description_DblClick(Cancel As Integer)

    Like_Description = "*"

End Sub

Private Sub NMIS_FACTORS_subform_Exit(Cancel As Integer)

    DoCmd.RunCommand acCmdRefresh
    
End Sub

Private Sub Open_NMIS_Factors_Form_Click()
On Error GoTo Err_Open_NMIS_Factors_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_PRODUCTS"
    
    DoCmd.RunMacro "Refresh"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Factors_Form_Click:
    Exit Sub

Err_Open_NMIS_Factors_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Factors_Form_Click
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    'PLNTMSTR_SYMBOL.Locked = False
 
End Sub

Private Sub Plntmstr_Symbol_Enter()

    If Not IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol.Locked = True
    Else
        Plntmstr_Symbol.Locked = False
    End If
   
End Sub

Private Sub PRODUCT_CN_DblClick(Cancel As Integer)

    'PRODUCT_CN.Locked = False
    'MsgBox "Product Description unlocked for editing"
    
End Sub

Private Sub PRODUCT_CN_Enter()
    If IsNull(Index) Then
        New_Species_Product = True
    End If
    
    If IsNull(PRODUCT_CN) Then
        PRODUCT_CN.Locked = False
        Else
        PRODUCT_CN.Locked = True
    End If
    
End Sub

Private Sub PRODUCT_CN_Exit(Cancel As Integer)
    If New_Species_Product Then
        DoCmd.RunMacro "Set_CN2"
        New_Species_Product = False
    End If

End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub

Private Sub SPECIES_PRODUCT_DESC_DblClick(Cancel As Integer)

    'SPECIES_PRODUCT_DESC.Locked = False
    
End Sub

Private Sub SPECIES_PRODUCT_DESC_Enter()

    If Not IsNull(SPECIES_PRODUCT_DESC) Then
        SPECIES_PRODUCT_DESC.Locked = True
    Else
        SPECIES_PRODUCT_DESC.Locked = False
    End If
    
End Sub

Private Sub SPECIES_PRODUCT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![SPECIES_PRODUCT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub SPECIES_PRODUCT_Lookup_Enter()

    SPECIES_PRODUCT_Lookup.Requery
    
End Sub

Private Sub Species_Symbol_DblClick(Cancel As Integer)

    'Species_Symbol.Locked = False
    
End Sub

Private Sub Species_Symbol_Enter()

    If Not IsNull(Species_Symbol) Then
        Species_Symbol.Locked = True
    Else
        Species_Symbol.Locked = False
    End If
    
End Sub

Private Sub TOTAL_NUMBER_OF_FY_DblClick(Cancel As Integer)

    'TOTAL_NUMBER_OF_FY.Locked = False
 
End Sub

Private Sub TOTAL_NUMBER_OF_FY_Enter()

    If Not IsNull(TOTAL_NUMBER_OF_FY) Then
        TOTAL_NUMBER_OF_FY.Locked = True
    Else
        TOTAL_NUMBER_OF_FY.Locked = False
    End If
    
End Sub

Private Sub TRANSPLANT_GROUP_DblClick(Cancel As Integer)
On Error GoTo Err_TRANSPLANT_GROUP_DblClick

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_TRANSPLANT_GROUP_DblClick:
    Exit Sub

Err_TRANSPLANT_GROUP_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_TRANSPLANT_GROUP_DblClick
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    'UNIT_CODE.Locked = False
 
End Sub

Private Sub UNIT_CODE_Enter()

    If Not IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = True
    Else
        UNIT_CODE.Locked = False
    End If
End Sub

Private Sub UNIT_Description_DblClick(Cancel As Integer)

    'UNIT_Description.Locked = False
 
End Sub

Private Sub UNIT_Description_Enter()

    If Not IsNull(UNIT_Description) Then
        UNIT_Description.Locked = True
    Else
        UNIT_Description.Locked = False
    End If
End Sub

Private Sub View_By_Scientific_Name_AfterUpdate()

    SPECIES_PRODUCT_Lookup.Requery
    Filter_for_Species.Requery
    Species_Symbol.Requery
    Plntmstr_Symbol.Requery
    
End Sub
Private Sub Tip_on_Create_New_Species_Product_Click()
On Error GoTo Err_Tip_on_Create_New_Species_Product_Click


    MsgBox "To Create a new Species Product using a current Species Product, " & _
        "Select the Species Product to Duplicate and Click the Create New Species Product from Selected Button Below. " & _
        "To Create a Species Product from scratch click the New Record Icon (>*) on the menu bar or the Record Selector. " & _
        "To Add add or edit a Product click on the Add or Edit Product Button Below.", vbInformation

Exit_Tip_on_Create_New_Species_Product_C:
    Exit Sub

Err_Tip_on_Create_New_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Tip_on_Create_New_Species_Product_C
    
End Sub
```

## Module: Form_NMIS_SPECIES_PRODUCTS Subform1

```vb
Option Compare Database

Private Sub Open_NMIS_Factors_Form_Click()
On Error GoTo Err_Open_NMIS_Factors_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_FACTORS"
    
    DoCmd.RunMacro "Refresh"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Factors_Form_Click:
    Exit Sub

Err_Open_NMIS_Factors_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Factors_Form_Click
    
End Sub
```

## Module: Form_NMIS_SPECIES_PRODUCTS_Duplicate Form

```vb
Option Compare Database

Private Sub Filter_For_Product_Enter()

    Filter_for_Product_Type.Requery
    Filter_For_Product.Requery
    
End Sub

Private Sub Form_Close()
    Dim strFormName As String
    
    strFormName = "NMIS_SPECIES_PRODUCTS Form"
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> 0 Then
        Forms![NMIS_SPECIES_PRODUCTS Form].Requery
    End If
    
End Sub

Private Sub Open_NMIS_Factors_Form_Click()
On Error GoTo Err_Open_NMIS_Factors_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    stDocName = "NMIS_PRODUCTS"
    
    DoCmd.RunMacro "Refresh"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Factors_Form_Click:
    Exit Sub

Err_Open_NMIS_Factors_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Factors_Form_Click
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol.Locked = False
 
End Sub

Private Sub PRODUCT_CN_Enter()
   
    PRODUCT_CN = [Forms]![NMIS_SPECIES_PRODUCTS Form]![PRODUCT_CN]

    If IsNull(CN) And Not IsNull(Index) Then
        DoCmd.RunMacro "Set_CN2"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_CYCLES_APPEND"
        DoCmd.OpenQuery "NMIS_SPECIES_PROD_DUP_FACTOR_APPEND_CT"
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_FACTORS_APPEND1"
        DoCmd.RunMacro "Refresh"
        DoCmd.OpenQuery "NMIS_SPECIES_PRODUCT_DUPLICATE_FACTORS_APPEND"
        DoCmd.DeleteObject acTable, "**NMIS_SPECIES_PROD_DUP_FACTOR_APPEND"
        DoCmd.SetWarnings True
        DoCmd.RunMacro "Refresh"
    End If
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub

Private Sub SPECIES_PRODUCT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![SPECIES_PRODUCT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub SPECIES_PRODUCT_Lookup_Enter()

    SPECIES_PRODUCT_Lookup.Requery
    
End Sub
```

## Module: Form_NMIS_SPECIES_PRODUCT_CYCLES subform1

```vb
Option Compare Database

Private Sub CURRENT_SPECIES_PRODUCT_CN_Enter()

    CURRENT_SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub CURRENT_SPECIES_PRODUCT_CN_GotFocus()

    CURRENT_SPECIES_PRODUCT_CN.Requery
    
End Sub
```

## Module: Form_NMIS_TICKETS_Charge_Per_Ticket1 subform

```vb
Option Compare Database

Private Sub CHARGE_PER_TICKET_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
    
End Sub

Private Sub Container_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Container_PCT, 2)
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)
On Error GoTo Err_DELIVERED_TO_ASSOCIATE_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles1"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_DELIVERED_TO_ASSOCIATE_DblClick:
    Exit Sub

Err_DELIVERED_TO_ASSOCIATE_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_DELIVERED_TO_ASSOCIATE_DblClick
    
End Sub

Private Sub Est_GBL_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Est_GBL_PCT, 2)
    
End Sub

Private Sub GBL_PCT_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket1]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
  
End Sub

Private Sub Rack_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Rack_PCT, 2)
    
End Sub

Private Sub SHIP_MILES_DblClick(Cancel As Integer)
On Error GoTo Err_SHIP_MILES_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles1"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_SHIP_MILES_DblClick:
    Exit Sub

Err_SHIP_MILES_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_SHIP_MILES_DblClick
    
End Sub

Private Sub Ship_Miles_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Ship_Miles_PCT, 2)
    
End Sub
```

## Module: Form_NMIS_TICKETS_Charge_Per_Ticket2 subform

```vb
Option Compare Database

Private Sub CHARGE_PER_TICKET_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket2]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket2]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
 
End Sub

Private Sub Container_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Container_PCT, 0)
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)
On Error GoTo Err_DELIVERED_TO_ASSOCIATE_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_DELIVERED_TO_ASSOCIATE_DblClick:
    Exit Sub

Err_DELIVERED_TO_ASSOCIATE_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_DELIVERED_TO_ASSOCIATE_DblClick
    
End Sub

Private Sub Est_GBL_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Est_GBL_PCT, 0)
    
End Sub

Private Sub GBL_PCT_DblClick(Cancel As Integer)

    If Not IsNull(Forms![NMIS_TICKETS_charge_per_ticket2]![TSO_Charge]) Then
        CHARGE_PER_TICKET = Round(Forms![NMIS_TICKETS_charge_per_ticket2]![TSO_Charge] * (GBL_PCT / 100), 2)
    End If
    
End Sub

Private Sub Rack_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Rack_PCT, 0)
    
End Sub

Private Sub SHIP_MILES_DblClick(Cancel As Integer)
On Error GoTo Err_SHIP_MILES_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_SHIP_MILES_DblClick:
    Exit Sub

Err_SHIP_MILES_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_SHIP_MILES_DblClick
    
End Sub

Private Sub Ship_Miles_PCT_DblClick(Cancel As Integer)

    GBL_PCT = Round(Ship_Miles_PCT, 0)
    
End Sub
```

## Module: Form_NMIS_TICKETS_charge_per_ticket1

```vb
Option Compare Database

Private Sub Find_TSO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
    Mileage_Override = Null
    TSO_Charge = Null
    
End Sub

Private Sub Find_TSO_Enter()
    
    Find_TSO.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Mileage_Override_AfterUpdate()

    [NMIS_TICKETS_Charge_Per_Ticket subform].Form![Ship_Miles_PCT].Requery
    
End Sub

Private Sub Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Ticket_No_TSO2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click
    
End Sub

Private Sub Prod_Ship_Ticket_list_by_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_TSO"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_TSO_Click
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_TSO.Requery
    
End Sub
```

## Module: Form_NMIS_TICKETS_charge_per_ticket2

```vb
Option Compare Database

Private Sub Find_TSO_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Find_TSO_Enter()

    Find_TSO.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Find_TSO = Forms![NMIS_SHIPPING_TICKET Subform]![EXT_DOC_REF]
    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[EXT_DOC_REF] = '" & Me![Find_TSO] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub Mileage_Override_AfterUpdate()

    [NMIS_TICKETS_Charge_Per_Ticket subform].Form![Ship_Miles_PCT].Requery
 
End Sub

Private Sub Prod_Ship_Ticket_list_by_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_TSO_tkt"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_TSO_Click
End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_TSO.Requery
    
End Sub
```

## Module: Form_NMIS_UNITS

```vb
Option Compare Database

Private Sub Like_Unit_Code_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Code_DblClick(Cancel As Integer)

    Like_Unit_Code = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_DblClick(Cancel As Integer)
    
    Like_Unit_Type = "*"
    DoCmd.Requery
    
End Sub

Private Sub UNIT_CODE_DblClick(Cancel As Integer)

    UNIT_CODE.Locked = False
    
End Sub

Private Sub UNIT_CODE_Enter()

    If IsNull(UNIT_CODE) Then
        UNIT_CODE.Locked = False
    Else
        UNIT_CODE.Locked = True
    End If
        
End Sub
```

## Module: Form_Native_Seed_Harvest_Summary

```vb
Option Compare Database

Private Sub Preview_Yield_Summary_By_Client_Report_Click()
On Error GoTo Err_Preview_Yield_Summary_By_Client_Report_Click

    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Yield_Summary_By_Client_Rep:
    Exit Sub

Err_Preview_Yield_Summary_By_Client_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Yield_Summary_By_Client_Rep
    
End Sub

Private Sub Preview_Yield_Summary_By_Client_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary2"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Yield_Summary_By_Species_Report_Click()
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_by_Species_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Yield_Summary_By_Species_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary_By_species2"
    DoCmd.OpenReport stDocName, acPreview

End Sub
```

## Module: Form_Non_WCF_Storage_Billing_Report

```vb
Option Compare Database

Private Sub Create_Extraction_Billing_Report_Click()

    Dim stDocName As String
    Dim stCreateTable As String
    
    stDocName = "Seed_Extraction_Billing"
    stCreateTable = "Extraction_Billing_By_MGMT_Code Query"
    
    DoCmd.SetWarnings off
    DoCmd.OpenQuery stCreateTable
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.SetWarnings (WarningsOn)

End Sub

Private Sub Create_Seed_Billing_Report_Click()

    Dim stDocName As String

    stDocName = "Seed_Sales_Billing"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Bill_Date_Change()

    Data_Processed = False
    
End Sub


Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "SEED_BILLING_NON_WCF_BILLING_TABLE_Edit2"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub

Private Sub Min_Bill_Amt_AfterUpdate()
            
    Data_Processed = False
    
End Sub

Private Sub Min_Bill_Amt_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![Client_min_bill_amt] = Min_Bill_Amt
    DoCmd.GoToControl "Min_Bill_Amt"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub min_lot_wt_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub min_lot_wt_DblClick(Cancel As Integer)
       
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![min_lot_wt] = min_lot_wt
    DoCmd.GoToControl "min_lot_wt"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub Non_Product_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_P"
 
    DoCmd.OpenReport stDocName, acPreview
 
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S"
        
    DoCmd.OpenReport stDocName, acPreview
 
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Freezer_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Freezer_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_Freezer"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Freezer_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Freezer_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Freezer_Click
    
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Freezer_Summary_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click
    
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Non_Freezer_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Non_Freezer_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Non_Freezer_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Non_Freezer_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Non_Freezer_Click
    
End Sub

Private Sub Non_Traditional_Click()

    If Non_Traditional Then
        traditional = False
    End If
    
End Sub

Private Sub Non_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
End Sub

Private Sub Unit_Price_Change()

    Data_Processed = False
    
End Sub

Private Sub Non_WCF_Storage_Billing_Summary_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Summary_Report"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
End Sub

Private Sub Non_WCF_Storage_Billing_Summary_SPD_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non_WCF_Storage_Billing_Summary_SPD"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenQuery stDocName
          
End Sub

Private Sub Non_WCF_Storage_Billing_w_lots_Click()
On Error GoTo Err_Non_WCF_Storage_Billing_w_lots_Click
    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_w_lots_Report"
    
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
Exit_Non_WCF_Storage_Billing_w_lots_Click:
    Exit Sub

Err_Non_WCF_Storage_Billing_w_lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Storage_Billing_w_lots_Click
    
End Sub

Private Sub Storage_bill_Date_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Storage_bill_Date_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Unit_Price_Cooler"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![storge_date] = Storage_bill_Date
    DoCmd.GoToControl "Storage_bill_Date"
    MsgBox "The Default has been set to the Current Value"

    
    
End Sub

Private Sub traditional_Click()
    
    If traditional Then
        Non_Traditional = False
    End If
    
End Sub

Private Sub Unit_Price_Cooler_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Unit_Price_Cooler_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![cooler] = Unit_Price_Cooler
    DoCmd.GoToControl "Unit_Price_Cooler"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub Unit_Price_Freezer_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Unit_Price_Freezer_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![FREEZER] = Unit_Price_Freezer
    DoCmd.GoToControl "Unit_Price_Freezer"
    MsgBox "The Default has been set to the Current Value"

End Sub
```

## Module: Form_Order_Pack_Form

```vb
Option Compare Database

Private Sub BorC_AfterUpdate()

    Like_Lot_ID.Requery
    Like_Client.Requery
    
End Sub

Private Sub BorC_Change()
        
    Data_Processed = False
    Like_Lot_ID = Null
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Data_Processed = False
    Contract.Visible = False
    
End Sub

Private Sub Lift_Date_Change()
           
    Data_Processed = False
    Data_Processed_ld = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Client_Change()
    
    Data_Processed = False
    Like_Lot_ID = Null
    
End Sub

Private Sub Like_Client_Enter()

    Like_Client.Requery
    
End Sub

Private Sub Like_Lot_ID_Change()
    
    'Data_Processed = False
    Like_Client = Null
    Like_Species = Null
    Like_Stock_Type = Null
    BorC = "*"
    
End Sub

Private Sub Like_Species_Change()

    Data_Processed = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Species_Enter()

    Like_Species.Requery
    
End Sub

Private Sub Like_Stock_Type_Change()
    
    Data_Processed = False
    Like_Lot_ID = Null
 
End Sub

Private Sub Like_Stock_Type_Enter()
    
    Like_Stock_Type.Requery
    
End Sub

Private Sub Order_Checklist_Click()
On Error GoTo Err_Order_Checklist_Click

    Dim stDocName As String
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed = True
    
    End If
      
    stDocName = "Order_Form_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Checklist_Click:
    Exit Sub

Err_Order_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Click
    
End Sub

Private Sub Order_Checklist_by_Lift_Date_Click()
On Error GoTo Err_Order_Checklist_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed_ld = True
    
    End If
      
    stDocName = "Order_Form_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Checklist_Click:
    Exit Sub

Err_Order_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Click
End Sub

Private Sub Order_Form_By_Lift_Date_Click()
On Error GoTo Err_Order_Form_By_Lift_Date_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"

    DoCmd.SetWarnings True
    Data_Processed_ld = True
    End If
    
    Select Case [Form_Style]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357"
    Case Is = "061019L"
        stDocName = "ORDER_FORM mt_Long"
    Case Else
        stDocName = "order_form mt"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Form_By_Lift_Date_Click:
    Exit Sub

Err_Order_Form_By_Lift_Date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Form_By_Lift_Date_Click
    
End Sub

Private Sub Order_Form_Click()
On Error GoTo Err_Order_Form_Click

    Dim stDocName As String

    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "Order_Form mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"
    'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    
    DoCmd.SetWarnings True
    Data_Processed = True
    End If
    
    Select Case [Form_Style]
        
    Case Is = "040207"
        stDocName = "ORDER_FORM mt_040207"
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357"
    Case Is = "061019L"
        stDocName = "ORDER_FORM mt_Long"
    Case Else
        If Not IsNull(Like_Lot_ID) Then
            stDocName = "order_form_from_Order_Print mt"
        Else
            stDocName = "order_form mt"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Form_Click:
    Exit Sub

Err_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Form_Click
    
End Sub

Private Sub Order_FY_AfterUpdate()

    Like_Lot_ID.Requery
    Like_Client.Requery
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
    [Forms]![Switchboard]![FY_For_Reports] = Order_FY
    
End Sub

Private Sub Order_FY_Change()
    
    Data_Processed = False
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
    [Forms]![Switchboard]![FY_For_Reports] = Order_FY
    
End Sub

Private Sub Order_Mod_Date_Change()
        
    Data_Processed = False
    Like_Lot_ID = Null
 
    
End Sub

Private Sub Order_Mod_Date_DblClick(Cancel As Integer)

    Order_Mod_Date = Date
    
End Sub

Private Sub Order_Pack_form_Propagule_Click()
On Error GoTo Err_Order_Pack_form_Propagule_Click

    Dim stDocName As String

    If PRODUCT_GROUP = "propagule" Then
        If Not [Data_Processed] Then
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        DoCmd.OpenQuery "Order_Form_Propagule_mt Query"
        DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
        DoCmd.OpenQuery "Order_Form_LOC mt Query"
        DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
        DoCmd.OpenQuery "Order_Form_QI mt Query"
        DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
        DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
        DoCmd.OpenQuery "Order_Form_Specs mt Query"
        DoCmd.OpenQuery "Order_Form_MCODES mt Query"
        DoCmd.OpenQuery "Order_form_Contacts mt Query"
        DoCmd.OpenQuery "Order_form_Contacts at Query"
        DoCmd.OpenQuery "Order_Form_PKC mt Query"
        'DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
        DoCmd.OpenQuery "Field_Location_Propagule_Inv_Subform_MT"

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
        DoCmd.SetWarnings True
        Data_Processed = True
        stDocName = "ORDER_FORM_PROPAGULE mt"
    End If
    Else
        If Not [Data_Processed] Then
    
        ' turns warning (about to update/delete...) off
        DoCmd.SetWarnings False

        'Update Order_Services_String Table
        ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
        DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
        ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
        ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
        DoCmd.OpenQuery "Order_Form mt Query"
        DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
        DoCmd.OpenQuery "Order_Form_LOC mt Query"
        DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
        DoCmd.OpenQuery "Order_Form_QI mt Query"
        DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
        DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
        DoCmd.OpenQuery "Order_Form_Specs mt Query"
        DoCmd.OpenQuery "Order_Form_MCODES mt Query"
        DoCmd.OpenQuery "Order_form_Contacts mt Query"
        DoCmd.OpenQuery "Order_form_Contacts at Query"
        DoCmd.OpenQuery "Order_Form_PKC mt Query"
        DoCmd.OpenQuery "Order_Form_PKT mt Query"
        DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    
        DoCmd.SetWarnings True
        Data_Processed = True
        End If
    
        Select Case [Form_Style]
        
        Case Is = "050357"
            stDocName = "ORDER_FORM mt_050357"
        Case Is = "061019L"
            stDocName = "ORDER_FORM mt_Long"
        Case Else
            If Not IsNull(Like_Lot_ID) Then
                stDocName = "order_form_from_Order_Print mt"
            Else
                stDocName = "order_form mt"
            End If
        End Select
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Pack_form_Propagule_Click:
    Exit Sub

Err_Order_Pack_form_Propagule_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Pack_form_Propagule_Click
    
End Sub

Private Sub Processing_Quality_Inspection_Record_by_lift_date_Click()
On Error GoTo Err_Processing_Quality_Inspection_Record_by_lift_date_Click

    Dim stDocName As String
    Like_Lot_ID = "*"
    Data_Processed = False
    
    If Not [Data_Processed_ld] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form_By_LD mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed_ld = True
    
    End If
      
    stDocName = "Processing_Quality_Recording_Form_050357"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Quality_Inspection_Record_by_lift_date_Click:
    Exit Sub

Err_Processing_Quality_Inspection_Record_by_lift_date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Quality_Inspection_Record_by_lift_date_Click
    
End Sub

Private Sub Processing_Quality_Inspection_Record_Click()
On Error GoTo Err_Processing_Quality_Inspection_Record_Click

    Dim stDocName As String
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "Order_Form mt Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"

    DoCmd.SetWarnings True
    
    Data_Processed = True
    
    End If
      
    stDocName = "Processing_Quality_Recording_Form_050357"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Quality_Inspection_Record_Click:
    Exit Sub

Err_Processing_Quality_Inspection_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Quality_Inspection_Record_Click
    
End Sub
```

## Module: Form_Order_Status_Input

```vb
Option Compare Database

Private Sub Contact_CN_Enter()
    
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_Change()

    CONTACT_CN.Requery
    
End Sub

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub
```

## Module: Form_Oyjord_Calibration

```vb
Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    CN = Null
    CN.Requery
    
End Sub

Private Sub Begin_fy_Change()

    DoCmd.RunMacro "Refresh"
    
End Sub

Private Sub Calibration_Checklist_Blank_Click()
    
    Report_name = "oyjord_calibration_checklist_Blank"
    DoCmd.OpenReport Report_name, acViewPreview
    
End Sub

Private Sub Calibration_Checklist_Click()
    
    Report_name = "oyjord_calibration_checklist"
    DoCmd.OpenReport Report_name, acViewPreview
    
End Sub

Private Sub CN_Enter()

    If Not IsNull(CN) Then
        CN.Requery
        '[Ojyord_Calibration subform].Form![Calibration_Sublots] = 0
        [Ojyord_Calibration subform].Form![Sublot_Units] = Null
    End If
    
End Sub

Private Sub Form_Load()
        
    'not sure why this works but it keeps the form from crashing when selecting the first lot
    'for calibration after opening. ???? dbd 04/27/12
    DoCmd.OpenReport "oyjord_calibration_checklist", acViewPreview
    DoCmd.Close
    
End Sub

Private Sub Sowing_Group_AfterUpdate()

    CN = Null
    CN.Requery
    
End Sub

Private Sub Sowing_Group_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_SOWING_ORDER"
    
End Sub

Private Sub Sowing_Group_Exit(Cancel As Integer)

    DoCmd.RunMacro "refresh"

End Sub

Private Sub View_by_AfterUpdate()

    [CN].Requery
    
End Sub
```

## Module: Form_Oyjord_Calibration subform

```vb
Option Compare Database

Private Sub CALIBRATION_FUNNEL_SETTING_ID_DblClick(Cancel As Integer)

    Calibration_Funnel_Setting_ID.Locked = False
    
End Sub

Private Sub CALIBRATION_FUNNEL_SETTING_ID_Enter()

    If IsNull([Calibration_Funnel_Setting_ID]) Then
        [Calibration_Funnel_Setting_ID] = [DRILL_FUNNEL_SETTING]
    End If
    If IsNull(Calibration_Revs_Used) Then
        If [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] = "061019" Then
            Calibration_Revs_Used = 5
        Else
            Calibration_Revs_Used = 3
        End If
    End If
    Calibration_Funnel_Setting_ID.Locked = True
    
End Sub

Private Sub CALIBRATION_FUNNEL_SETTING_ID_Exit(Cancel As Integer)

   ' If Not IsNull([Calibration_Funnel_Setting_ID]) And _
        'IsNull([DRILL_FUNNEL_SETTING]) Then
            'Response = MsgBox("Use this setting as the default?", vbYesNo)
            'If Response = vbYes Then
                '[DRILL_FUNNEL_SETTING] = [Calibration_Funnel_Setting_ID]
            'End If
    'End If
    
End Sub

Private Sub CALIBRATION_REV_SOURCE_UNITS_DblClick(Cancel As Integer)

    Calibration_Rev_Source_Units.Locked = False
    
End Sub

Private Sub CALIBRATION_REV_SOURCE_UNITS_Enter()

    If IsNull(Calibration_Rev_Source_Units) Then
        Calibration_Rev_Source_Units.Locked = False
    Else
        Calibration_Rev_Source_Units.Locked = True
    End If
    
End Sub

Private Sub CALIBRATION_REV_SOURCE_UNITS_Exit(Cancel As Integer)
 
  If Calibration_Source_Units > 0 Then
  
    Dim Source_Units As Double
    Dim Units_Per_Rev As Double
    Dim Rev_Source_Units As Double
    Dim Revs_Used As Integer
    Dim Travel_Per_Rev As Double
    Dim Total_Container_Units As Double
    Dim Min_Units_For_Sublot As Double
    Dim Increment_For_Sublot As Integer
    Dim Max_Sublots As Integer
    Dim Calibration_Sublots As Integer
    Dim Sublot_Units As Double
    
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units] >= 0 Then
        Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units] >= 0 Then
        Rev_Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used] >= 0 Then
        Revs_Used = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used]
    End If
    Total_Container_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![EST_CONTAINERS_REQUIRED]
    Min_Units_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Min_Units_For_Sublot]
    Increment_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Increment_For_Sublot]
    Max_Sublots = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Max_Sublots]

        If Revs_Used <> 0 And Rev_Source_Units <> 0 Then
            Units_Per_Rev = Round(Rev_Source_Units / Revs_Used, 3)
            Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Units_Per_Rev] = Units_Per_Rev
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Travel_Per_Rev] = Travel_Per_Rev
            If Total_Container_Units < Min_Units_For_Sublot Then
                Calibration_Sublots = 0
                Sublot_Units = 0
            Else
                Calibration_Sublots = (Total_Container_Units / Min_Units_For_Sublot)
                If Calibration_Sublots > Max_Sublots Then
                    Calibration_Sublots = Max_Sublots
                End If
                Sublot_Units = Round(Increment_For_Sublot / Travel_Per_Rev * Units_Per_Rev, 2)
            End If
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Sublots] = Calibration_Sublots
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Sublot_Units] = Sublot_Units
            'Check to see if Calibrated units per rev is within range
            If [DRILL_MIN_REV_UNITS] > 0 And [DRILL_MAX_REV_UNITS] > 0 Then
                If Units_Per_Rev < [DRILL_MIN_REV_UNITS] Or Units_Per_Rev > [DRILL_MAX_REV_UNITS] Then
                    DoCmd.OpenForm "xOyjord_Calibration_Error"
                End If
            End If
        End If
    
    End If
    [NMIS_OYJORD_SETTINGS subform].Requery

End Sub

Private Sub CALIBRATION_REVS_USED_DblClick(Cancel As Integer)

    Calibration_Revs_Used.Locked = False
    
End Sub

Private Sub CALIBRATION_REVS_USED_Enter()

    'If IsNull(Calibration_Revs_Used) Then
        Calibration_Revs_Used.Locked = False
    'Else
        'Calibration_Revs_Used.Locked = True
    'End If
    
End Sub

Private Sub CALIBRATION_SOURCE_UNITS_DblClick(Cancel As Integer)

    Calibration_Source_Units.Locked = False
    
End Sub

Private Sub CALIBRATION_SOURCE_UNITS_Enter()

    If IsNull(Calibration_Source_Units) Then
        Calibration_Source_Units.Locked = False
    Else
        Calibration_Source_Units.Locked = True
    End If
    
End Sub

Private Sub CALIBRATION_TRAVEL_PER_REV_DblClick(Cancel As Integer)

    Calibration_Travel_Per_Rev.Locked = False
    
End Sub

Private Sub CALIBRATION_TRAVEL_PER_REV_Enter()

    If IsNull(Calibration_Travel_Per_Rev) Then
        Calibration_Travel_Per_Rev.Locked = False
    Else
        Calibration_Travel_Per_Rev.Locked = True
    End If
    
End Sub

Private Sub CALIBRATION_TRAVEL_PER_REV_Exit(Cancel As Integer)

    Calibration_Travel_Per_Rev.Locked = True
    
End Sub

Private Sub DRILL_FUNNEL_SETTING_DblClick(Cancel As Integer)

        DRILL_FUNNEL_SETTING.Locked = False
    
End Sub

Private Sub DRILL_FUNNEL_SETTING_Enter()

    If IsNull(DRILL_FUNNEL_SETTING) Then
        DRILL_FUNNEL_SETTING.Locked = False
    Else
        DRILL_FUNNEL_SETTING.Locked = True
    End If
    
End Sub

Private Sub DRILL_MAX_REV_UNITS_DblClick(Cancel As Integer)

    DRILL_MAX_REV_UNITS.Locked = False
    
End Sub

Private Sub DRILL_MAX_REV_UNITS_Enter()

    If IsNull(DRILL_MAX_REV_UNITS) Then
        DRILL_MAX_REV_UNITS.Locked = False
    Else
        DRILL_MAX_REV_UNITS.Locked = True
    End If
    
End Sub

Private Sub DRILL_MIN_REV_UNITS_DblClick(Cancel As Integer)

    DRILL_MIN_REV_UNITS.Locked = False
   
End Sub

Private Sub DRILL_MIN_REV_UNITS_Enter()

    If IsNull(DRILL_MIN_REV_UNITS) Then
        DRILL_MIN_REV_UNITS.Locked = False
    Else
        DRILL_MIN_REV_UNITS.Locked = True
    End If
    
End Sub

Private Sub EST_CONTAINERS_REQUIRED_DblClick(Cancel As Integer)

    EST_CONTAINERS_REQUIRED.Locked = False
    
End Sub

Private Sub EST_CONTAINERS_REQUIRED_Enter()
    
    If Not IsNull(EST_CONTAINERS_REQUIRED) Then
        EST_CONTAINERS_REQUIRED.Locked = True
    Else
        EST_CONTAINERS_REQUIRED.Locked = False
    End If

End Sub

Private Sub EST_CONTAINERS_REQUIRED_Exit(Cancel As Integer)

    EST_CONTAINERS_REQUIRED.Locked = True
    
End Sub

Private Sub Form_Current()

            'Forms![Oyjord_Calibration]![OJYORD_CALIBRATION subform]![Units_Per_Rev] = Null
            'Forms![Oyjord_Calibration]![OJYORD_CALIBRATION subform]![Calibration_Travel_Per_Rev] = Null
        If Not IsNull(Rev_Source_Units) Then
            Units_Per_Rev = Round([Calibration_Rev_Source_Units] / Calibration_Revs_Used, 3)
            'Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
        Else
            Units_Per_Rev = Null
            'Travel_Per_Rev = Null
        End If
        
            
End Sub

Private Sub NUMBER_CALIBRATION_CONTAINERS_DblClick(Cancel As Integer)

    Number_Calibration_Containers.Locked = False
    
End Sub

Private Sub NUMBER_CALIBRATION_CONTAINERS_Enter()

    If IsNull(Number_Calibration_Containers) Then
     
        If Calibration_Source_Units > 0 Then
  
        Dim Source_Units As Double
        Dim Units_Per_Rev As Double
        Dim Rev_Source_Units As Double
        Dim Revs_Used As Integer
        Dim Travel_Per_Rev As Double
        Dim Total_Container_Units As Double
        Dim Min_Units_For_Sublot As Double
        Dim Increment_For_Sublot As Integer
        Dim Max_Sublots As Integer
        Dim Calibration_Sublots As Integer
        Dim Sublot_Units As Double
    
        If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units] >= 0 Then
            Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units]
        End If
        If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units] >= 0 Then
            Rev_Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units]
        End If
        If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used] >= 0 Then
            Revs_Used = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used]
        End If
        Total_Container_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![EST_CONTAINERS_REQUIRED]
        Min_Units_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Min_Units_For_Sublot]
        Increment_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Increment_For_Sublot]
        Max_Sublots = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Max_Sublots]

            If Revs_Used <> 0 And Rev_Source_Units <> 0 Then
                Units_Per_Rev = Round(Rev_Source_Units / Revs_Used, 3)
                Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
                Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Units_Per_Rev] = Units_Per_Rev
                Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Travel_Per_Rev] = Travel_Per_Rev
                If Total_Container_Units < Min_Units_For_Sublot Then
                    Calibration_Sublots = 0
                    Sublot_Units = 0
                Else
                    Calibration_Sublots = (Total_Container_Units / Min_Units_For_Sublot)
                    If Calibration_Sublots > Max_Sublots Then
                        Calibration_Sublots = Max_Sublots
                    End If
                   Sublot_Units = Round(Increment_For_Sublot / Travel_Per_Rev * Units_Per_Rev, 2)
              End If
              Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Sublots] = Calibration_Sublots
              Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Sublot_Units] = Sublot_Units
              'Check to see if Calibrated units per rev is within range
             If [DRILL_MIN_REV_UNITS] > 0 And [DRILL_MAX_REV_UNITS] > 0 Then
                 If Units_Per_Rev < [DRILL_MIN_REV_UNITS] Or Units_Per_Rev > [DRILL_MAX_REV_UNITS] Then
                     DoCmd.OpenForm "xOyjord_Calibration_Error"
                   End If
             End If
            End If
    
        End If
        [NMIS_OYJORD_SETTINGS subform].Requery
        Number_Calibration_Containers.Locked = False
    Else
        Number_Calibration_Containers.Locked = True
    End If
    
End Sub

Private Sub Oyjord_ID_AfterUpdate()

    [NMIS_OYJORD_SETTINGS subform].Requery
    
End Sub

Private Sub Sublot_Units_Enter()
  If Calibration_Source_Units > 0 Then
  
    Dim Source_Units As Double
    Dim Units_Per_Rev As Double
    Dim Rev_Source_Units As Double
    Dim Revs_Used As Integer
    Dim Travel_Per_Rev As Double
    Dim Total_Container_Units As Double
    Dim Min_Units_For_Sublot As Double
    Dim Increment_For_Sublot As Integer
    Dim Max_Sublots As Integer
    Dim Calibration_Sublots As Integer
    Dim Sublot_Units As Double
    
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units] >= 0 Then
        Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units] >= 0 Then
        Rev_Source_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Rev_Source_Units]
    End If
    If Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used] >= 0 Then
        Revs_Used = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Revs_Used]
    End If
    Total_Container_Units = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![EST_CONTAINERS_REQUIRED]
    Min_Units_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Min_Units_For_Sublot]
    Increment_For_Sublot = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Increment_For_Sublot]
    Max_Sublots = Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Max_Sublots]

        If Revs_Used <> 0 And Rev_Source_Units <> 0 Then
            Units_Per_Rev = Round(Rev_Source_Units / Revs_Used, 3)
            Travel_Per_Rev = Round(Total_Container_Units / (Source_Units / Units_Per_Rev), 2)
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Units_Per_Rev] = Units_Per_Rev
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Travel_Per_Rev] = Travel_Per_Rev
            If Total_Container_Units < Min_Units_For_Sublot Then
                Calibration_Sublots = 0
                Sublot_Units = 0
            Else
                Calibration_Sublots = (Total_Container_Units / Min_Units_For_Sublot)
                If Calibration_Sublots > Max_Sublots Then
                    Calibration_Sublots = Max_Sublots
                End If
                Sublot_Units = Round(Increment_For_Sublot / Travel_Per_Rev * Units_Per_Rev, 2)
            End If
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Calibration_Sublots] = Calibration_Sublots
            Forms![Oyjord_Calibration]![Ojyord_Calibration subform]![Sublot_Units] = Sublot_Units
            
        End If
    
    End If
    [NMIS_OYJORD_SETTINGS subform].Requery
End Sub
```

## Module: Form_PLANT_INVENTORY_REPORTS

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub OutYears_Report_Detailed_by_Forest_Click()
On Error GoTo Err_OutYears_Report_Detailed_by_Forest_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_Detailed_by_Forest"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Detailed_by_Forest_Click:
    Exit Sub

Err_OutYears_Report_Detailed_by_Forest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Detailed_by_Forest_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_by_Forest_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_by_Forest_by_Species_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forestt_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forestt_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Forest_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product2_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product2_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product2"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product2_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product2_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_by_End_Year_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Client_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Client_Sub_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_Detailed__Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Client_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Client_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Client_Sub_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Species_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Species_Sub_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Report_Detailed_Species_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Species_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Species_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Species_Sub_Click
    
End Sub

Private Sub Regional_Summary_Click()
On Error GoTo Err_Regional_Summary_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Grand_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_Click:
    Exit Sub

Err_Regional_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_Click
    
End Sub

Private Sub Regional_Summary_With_Forest_Level_Detail_Click()
On Error GoTo Err_Regional_Summary_With_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_With_Forest_Level_Detail_Click:
    Exit Sub

Err_Regional_Summary_With_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_With_Forest_Level_Detail_Click
    
End Sub

Private Sub Regional_Summary_Without_Forest_Level_Detail_Click()
On Error GoTo Err_egional_Summary_Without_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region2"
    DoCmd.OpenReport stDocName, acPreview

Exit_egional_Summary_Without_Forest_Level_Detail_Click:
    Exit Sub

Err_egional_Summary_Without_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_egional_Summary_Without_Forest_Level_Detail_Click
    
End Sub
```

## Module: Form_PROCESS_PAYMENT_ESTIMATE_INVOICE

```vb
Option Compare Database

Private Sub Begin_Date_Change()

    [Data Processed] = False
    Pack_Data_OK = False
    
End Sub

Private Sub Edit_Quality_Monitoring_Click()

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub End_Date_Change()

    [Data Processed] = False
    Pack_Data_OK = False
    
End Sub

Private Sub FY_Exit(Cancel As Integer)

    [Contract_No].Requery
    
End Sub

Private Sub Missing_Quality_Monitoring_Click()

    Dim stDocName As String
    
    stDocName = "Processing_Contract_No_Quality_Samples"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        DoCmd.OpenReport stDocName, acViewPreview
    End If


End Sub

Private Sub Preview_Process_Pay_Calculations_Report_Click()

    Dim stDocName As String
    
    stDocName = "PROCESS_PAYMENT"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Calculations_Summary_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_Summary"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Calculations_w_Incremental_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_w_Incremental"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Calculations_wo_Detail_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_CONDENSED"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If
End Sub

Private Sub Preview_Process_Pay_Incremental_Report_Click()

    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_INCREMENTAL"
    
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        If Data_Processed = False Then
            MsgBox "The first report will take a few minutes to proccess the data. When Complete click the report button again"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "nmis_pack_amounts_del"
            DoCmd.OpenQuery "nmis_pack_amounts_ins"
            DoCmd.OpenQuery "nmis_pack_amount_new_net1"
            DoCmd.OpenQuery "nmis_pack_amount_new_net"
            DoCmd.OpenQuery "nmis_pack_amounts_update"
            DoCmd.OpenQuery "nmis_pack_payment_del"
            DoCmd.OpenQuery "nmis_pack_payment_ins"
            DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
            DoCmd.OpenQuery "nmis_pack_payment_insert_DS"
            DoCmd.SetWarnings True
            Data_Processed = True
            DoCmd.OpenReport "Processing_Contract_Processed_not_in_pmt_temp", acViewPreview
        End If
        If Pack_Data_OK = True And [Data_Processed] = True Then
            DoCmd.OpenReport stDocName, acPreview
        End If
    End If

End Sub

Private Sub Preview_Process_Pay_Lift_Calculations_Summary_Report_Click()

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_ESTIMATE_INVOICE"
        
    If IsNull([Contract_No]) Or IsNull([BEGIN_DATE]) Or IsNull([END_DATE]) Then
        MsgBox "You must fill in all requested info"
        DoCmd.GoToControl "CONTRACT_NO"
    Else
        DoCmd.OpenReport stDocName, acPreview
    End If

End Sub
```

## Module: Form_Plant_Inventory_Worksheets Form

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Create_Plant_Inventory_Size_Matrix_Worksheets_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_matrix"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Plant_Inventory_Worksheets_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet"
   
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Plant_Inventory_Worksheets_With_Size_Matrix_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet_w_matrix"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Inventory_Worksheets_Product_Select_MT"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Location_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Lot_ID_1_Enter()
    
    [Product] = "*"
    [Plntmstr_Symbol] = "*"
    [BEGIN_FY] = "*"
    [END_FY] = "*"
    
End Sub
Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub Product_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    
    Product.Requery
    
End Sub
```

## Module: Form_Plant_Processing_Table_Priorties

```vb
Option Compare Database

Private Sub Feet_To_Lift_Exit(Cancel As Integer)

    If ([Feet To Lift] + [LIFTED]) < [LOT_LENGTH] Then
        Partial_Lift = -1
    End If
    DoCmd.GoToControl "Priority"
    
End Sub

Private Sub Command59_Click()

    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorities_pc"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Net_Note_DblClick(Cancel As Integer)
    
    Net_Note = "Destroy"
    
End Sub

Private Sub Net_Order_DblClick(Cancel As Integer)

    [Net Order] = [Net Inv]
    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Open_Specs_Click()

    DoCmd.OpenReport "Lifting_Priorties_Specs", acPreview
    
End Sub

Private Sub Command80_Click()
  
    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorities_pms"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Default_Date_AfterUpdate()
    
    [Lifting_Priorties_Subform].Requery
    [Processing_Date] = Default_Date
    
End Sub

Private Sub Like_Harvest_FY_AfterUpdate()

    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Like_Harvest_FY_Enter()
If Val([Forms]![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].[Form]![Max_FY]) < _
    Val([Forms]![Switchboard]![FY_For_Reports]) Then
        [Lifting_Priorties_Subform].Form![Add_Current_FY_Lots].Visible = True
    Else
        [Lifting_Priorties_Subform].Form![Add_Current_FY_Lots].Visible = False
    End If
End Sub

Private Sub Form_Open(Cancel As Integer)

    [Default_Date].Visible = True
    Like_Table.Visible = True
    Like_Processing_FY.Visible = True

End Sub

Private Sub Lifting_Priorties_Subform_Enter()
    
    [Default_Date].Visible = True
    Like_Table.Visible = True
    Like_Processing_FY.Visible = True
    
End Sub

Private Sub Like_Table_AfterUpdate()

    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Like_Table_DblClick(Cancel As Integer)

    Like_Table = "*"
    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub
Private Sub Reset_Priorities_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_Reset_Priorities_to_99"
    
    Response = MsgBox("Are you sure you want reset ALL to priority 99?", vbYesNo)
    
    DoCmd.Requery
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

End Sub

Private Sub Preview_Table_Assignment_Report_Click()

    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorities"
    
    If Not [Data_Processed] Then
    
    ' turns warning (about to update...) off
    DoCmd.SetWarnings False

    'Update Lot_Lift_CNTNR and Lot_Lift_CNTNR Tables
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.SetWarnings True
    'Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Processing_Date_Enter()
    
    [Default_Date].Visible = False
    Like_Table.Visible = False
    Like_Processing_FY.Visible = False
    
End Sub

Private Sub Processing_Table_Assignments_detailed_Click()

    
    Dim stDocName As String

    stDocName = "Processing_Table_Assignments_Detailed"
    
    If Not [Data_Processed_detailed] Then
    
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "ORDER_FORM_Table_Priority MT Query"
    'DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    'DoCmd.OpenQuery "Order_Form_LOC mt Query"
    'DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    'DoCmd.OpenQuery "Order_Form_QI mt Query"
    'DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    'DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    'DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    'DoCmd.OpenQuery "Order_Form_PKC mt Query"
    'DoCmd.OpenQuery "Order_Form_PKT mt Query"
    'oCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    
    DoCmd.SetWarnings True
    Data_Processed_detailed = True
    Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Quality_monitor_labels_Click()
  
    Dim stDocName As String

    stDocName = "NMIS_PROCESS_QI_LABELS_from_table_priorities"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Reports_Click()

    [Default_Date].Visible = False
    Beep
End Sub
```

## Module: Form_Plant_Processing_Table_Priorties_Data_Subform

```vb
Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_BY_PRIORITY"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
    
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Processing_PRIORITY_AfterUpdate()

End Sub

Private Sub Column_AfterUpdate()
    
    Default_Column = Column
    
End Sub

Private Sub Column_Enter()
    
    If PROCESSING_PRIORITY = 21 Or _
        PROCESSING_PRIORITY = 41 Or _
         PROCESSING_PRIORITY = 61 Then
        Default_Column = Default_Column + 1
    End If
    If Default_Column > 4 Then
        Default_Column = 4
    End If
    
    If IsNull(Column) Then
        Column = Default_Column
    End If
    
End Sub

Private Sub Column_Exit(Cancel As Integer)

        Default_Column = Column
        
End Sub

Private Sub Process_Table_PRIORITY_Enter()

    If IsNull(Process_Table_PRIORITY) Then
        Process_Table_PRIORITY = Next_Priority
    End If
    
End Sub

Private Sub Process_Table_PRIORITY_Exit(Cancel As Integer)

    Next_Priority = Process_Table_PRIORITY + 1
    
End Sub

Private Sub Table_AfterUpdate()
    
    Default_Table = Table
    Next_Priority = 1
    
End Sub

Private Sub Table_Enter()

    If IsNull(Table) Then
        Table = Default_Table
    End If
    
End Sub

Private Sub Table_Exit(Cancel As Integer)

        Default_Table = Table
        
End Sub

Private Sub Update_Click()
    
        DoCmd.Requery

End Sub
```

## Module: Form_Plant_Quarterly_Report

```vb
Option Compare Database

Private Sub Preview_Quarterly_Report_Click()

    Dim stDocName As String

    stDocName = "Plant_Quarterly_Rept"
    
    DoCmd.SetWarnings False
    
    If [PRODUCT_CLASS_CONDENSED] = True Then
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_AT"
    Else
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_AT"
    End If
    DoCmd.OpenQuery "Plant_Quarterly_Rept1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_to_older_age_class1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_mt"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
    'DoCmd.OpenQuery stDocName
    
End Sub

Private Sub Preview_Quarterly_Report_SPD_Click()

    Dim stDocName As String

    stDocName = "Plant_Quarterly_Rept_SPD"
    
    DoCmd.SetWarnings False
    
    If [PRODUCT_CLASS_CONDENSED] = True Then
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_Condensed_AT"
    Else
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_MT"
        DoCmd.OpenQuery "Plant_Quarterly_Rept_All_Age_Classes_AT"
    End If
    DoCmd.OpenQuery "Plant_Quarterly_Rept1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_to_older_age_class1_mt"
    DoCmd.OpenQuery "Plant_Quarterly_Rept_mt"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenQuery stDocName
    'DoCmd.OpenQuery stDocName
    
End Sub
```

## Module: Form_Processing_Orders_To_Client_Form

```vb
Option Compare Database

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    BorC.Visible = True
    BEGIN_FY.Visible = True
    END_FY.Visible = True
    Processing_Orders_to_Client_checklist.Visible = True
    Processing_Orders_to_Client_Lot_checklist.Visible = True
        
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_End_Season_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Like_End_Season_DblClick(Cancel As Integer)

    Like_End_Season = "*"
    
End Sub

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    If PRODUCT_GROUP = "PROPAGULE" Then
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    Else
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Processing_Order_To_Client_Report_mt"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Processing_Order_To_Client_Report" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    End If
    
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
End Sub

Private Sub Preview_Report_w_altspec_Click()
On Error GoTo Err_Preview_Report_w_altspec_Click

    If PRODUCT_GROUP = "PROPAGULE" Then
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    Else
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Processing_Order_To_Client_Report_mt"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Processing_Order_To_Client_Report_w_AltNet" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    End If
        
Exit_Preview_Report_w_altspec_Click:
    Exit Sub

Err_Preview_Report_w_altspec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_w_altspec_Click
End Sub

Private Sub Processing_Orders_to_Client_checklist_Click()
On Error GoTo Err_Processing_Orders_to_Client_checklist_Click

    Dim stDocName As String

    If PRODUCT_GROUP = "PROPAGULE" Then
        stDocName = "Processing_Propagule_Order_To_Client_Checklist_Report"
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    Else
        stDocName = "Processing_Order_To_Client_Checklist_Report"
    End If
    
    DoCmd.OpenQuery stDocName, acNormal, acEdit


Exit_Processing_Orders_to_Client_checklist_Click:
    Exit Sub

Err_Processing_Orders_to_Client_checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Orders_to_Client_checklist_Click
    
End Sub

Private Sub Processing_Orders_to_Client_Lot_checklist_Click()
On Error GoTo Err_Processing_Orders_to_Client_Lot_checklist_Click

    If Not (Data_Processed) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Processing_Order_To_Client_Report_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenQuery "Processing_Order_To_Client_Lot_Checklist" ', acPreview
Exit_Processing_Orders_to_Client_Lot_checklist_Click:
    Exit Sub

Err_Processing_Orders_to_Client_Lot_checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Orders_to_Client_Lot_checklist_Click
End Sub

Private Sub Product_Group_AfterUpdate()

    Data_Processed = False
    If PRODUCT_GROUP = "Propagule" Then
        BorC.Visible = False
        BEGIN_FY.Visible = False
        END_FY.Visible = False
        Like_End_Season.Visible = False
        'Processing_Orders_to_Client_checklist.Visible = False
        Processing_Orders_to_Client_Lot_checklist.Visible = False
    Else
        BorC.Visible = True
        BEGIN_FY.Visible = True
        END_FY.Visible = True
        Like_End_Season.Visible = True
        'Processing_Orders_to_Client_checklist.Visible = True
        Processing_Orders_to_Client_Lot_checklist.Visible = True
    End If
  
End Sub
```

## Module: Form_Processing_QI_Daily_Checklist

```vb
Option Compare Database

Private Sub Like_Lot_ID_AfterUpdate()

    BEGIN_DATE = "10/01/" & Right$(Forms![Switchboard]![FY_For_Reports] - 1, 2)
    END_DATE = "09/30/" & Right$(Forms![Switchboard]![FY_For_Reports], 2)
    
End Sub

Private Sub Preview_Processing_QI_Lot_Checklist_Click()
On Error GoTo Err_Preview_Processing_QI_Lot_Checklist_Click

    Dim stDocName As String

    stDocName = "Processing_QI_Summary_By_Lot_and_Date_Range"
    
    If IsNull(END_DATE) Then
        END_DATE = BEGIN_DATE
    End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Processing_QI_Lot_Checklist_Click:
    Exit Sub

Err_Preview_Processing_QI_Lot_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_QI_Lot_Checklist_Click
    
End Sub

Private Sub Preview_Processing_QI_Lot_Samples_Checklist_Click()
On Error GoTo Err_Preview_Processing_QI_Lot_Samples_Checklist_Click

    Dim stDocName As String

    stDocName = "Processing_QI_Samples_Lot_Samples_Review"
    
    If IsNull(END_DATE) Then
        END_DATE = BEGIN_DATE
    End If
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Preview_Processing_QI_Lot_Samples_Checklist_Click:
    Exit Sub

Err_Preview_Processing_QI_Lot_Samples_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_QI_Lot_Samples_Checklist_Click
    
End Sub

Private Sub Preview_Processing_QI_Table_Checklist_Click()
On Error GoTo Err_Preview_Processing_QI_Table_Checklist_Click

    Dim stDocName As String

    stDocName = "Processing_QI_Summary_By_Table_and_Date_Range"
    
    If IsNull(END_DATE) Then
        END_DATE = BEGIN_DATE
    End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Preview_Processing_QI_Table_Checklist_Click:
    Exit Sub

Err_Preview_Processing_QI_Table_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_QI_Table_Checklist_Click
    
    
End Sub
```

## Module: Form_Processing_Review_by_Activity_Date

```vb
Option Compare Database
Private Sub CmdProofPack_Click()
On Error GoTo Err_CmdProofPack_Click

    Dim stDocName As String
    Dim stMacroName As String
    
    If IsNull(End_Activity_Date) Then
        End_Activity_Date = Begin_Activity_Date
    End If

    If ([Begin_Activity_Date] > [End_Activity_Date]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Activity_DATE"
    Else
    ' turns warning (about to update/delete...) off
        
        stMacroName = "SPCL_SVCS_STRING Macro"
        
        DoCmd.SetWarnings False
        DoCmd.RunMacro stMacroName
        DoCmd.OpenQuery "PACK_PROOF Query"
        DoCmd.OpenQuery "PACK_PROOF_A Query"
        DoCmd.OpenQuery "PACK_PROOF_O Query"
        DoCmd.SetWarnings True

        stDocName = "PACK_PROOF"
        DoCmd.OpenReport stDocName, acPreview
    End If

Exit_CmdProofPack_Click:
    Exit Sub

Err_CmdProofPack_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdProofPack_Click
    
End Sub

Private Sub Command24_Click()
    
    If IsNull(End_Activity_Date) Then
        End_Activity_Date = Begin_Activity_Date
    End If

    If ([Begin_Activity_Date] > [End_Activity_Date]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Activity_DATE"
    Else
        DoCmd.SetWarnings True

        stDocName = "PACK_PROOF_MISC"
        
        DoCmd.OpenReport stDocName, acPreview
    End If
  
End Sub

Private Sub Pack_Proof_Hourly_Click()
    
    If IsNull(End_Activity_Date) Then
        End_Activity_Date = Begin_Activity_Date
    End If

    If ([Begin_Activity_Date] > [End_Activity_Date]) Then
                MsgBox "Ending Date must be greater than Beginning Date."
                DoCmd.GoToControl "Begin_Activity_DATE"
    Else
        DoCmd.SetWarnings True

        stDocName = "PACK_PROOF_HOURLY"
        
        DoCmd.OpenReport stDocName, acPreview
    End If
    
End Sub
```

## Module: Form_Product_Inventory_Daily_Checklist

```vb
Option Compare Database

Private Sub Form_Close()

    Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![Current FY:]
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    'Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True

End Sub

Private Sub Preview_Product_Inventory_Checklist_Click()
On Error GoTo Err_Preview_Product_Inventory_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_CHECKLIST_by_stocktype"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Checklist_Click:
    Exit Sub

Err_Preview_Product_Inventory_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Checklist_Click
    
End Sub

Private Sub Preview_Product_Inventory_Daily_Checklist_Click()
On Error GoTo Err_Preview_Product_Inventory_Daily_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Daily_Checklist_C:
    Exit Sub

Err_Preview_Product_Inventory_Daily_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Daily_Checklist_C
    
End Sub
```

## Module: Form_Product_Storage_Summary

```vb
Option Compare Database

Private Sub Preview_Storage_Detailed_Summary_By_Client_Report_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Detailed_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Detailed_Summary_By_Client_Report_w_notes_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Detailed_Summary_with_notes"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Lot_Index_Click()
On Error GoTo Err_Preview_Storage_Lot_Index_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Lot_Index"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Storage_Lot_Index_Click:
    Exit Sub

Err_Preview_Storage_Lot_Index_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Storage_Lot_Index_Click
    
End Sub

Private Sub Preview_Storage_Summary_By_Client_Report_Click()

    Dim stDocName As String

    stDocName = "Product_Storage_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Summary_By_Client_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Product_Storage_Summary2"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Storage_Summary_By_Species_Report_Click()
On Error GoTo Err_Preview_Storage_Summary_By_Species_Report_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Summary3"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Storage_Summary_By_Species_Report_Click:
    Exit Sub

Err_Preview_Storage_Summary_By_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Storage_Summary_By_Species_Report_Click
    
End Sub
```

## Module: Form_Products_Price_Reports

```vb
Option Compare Database

Private Sub All_Prices_Click()
On Error GoTo Err_All_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_All_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_All_Prices_Click:
    Exit Sub

Err_All_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_All_Prices_Click
    
End Sub

Private Sub All_Prices_SPD_Click()
On Error GoTo Err_All_Prices_SPD_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_All_Price_CHECKLIST_SPD"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenQuery stDocName
Exit_All_Prices_SPD_Click:
    Exit Sub

Err_All_Prices_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_All_Prices_SPD_Click
    
End Sub

Private Sub Filter_For_Product_Change()

    Filter_for_Species = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()
    
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Change()

    Filter_For_Product = "*"
    
End Sub

Private Sub Filter_for_Species_Enter()

    Filter_for_Species.Requery
    
End Sub

Private Sub No_Product_Charges_Click()
On Error GoTo Err_No_Product_Charges_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_NO_Charges_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_No_Product_Charges_Click:
    Exit Sub

Err_No_Product_Charges_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_No_Product_Charges_Click
    
End Sub

Private Sub Products_Non_Pack_Or_Destroy_Prices_Click()

On Error GoTo Err_Products_Non_Pack_Or_Destroy_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Products_Non_Pack_Or_Destroy_Prices_Click:
    Exit Sub

Err_Products_Non_Pack_Or_Destroy_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Non_Pack_Or_Destroy_Prices_Click
    
End Sub

Private Sub Products_Pack_or_Destroy_Prices_Click()

On Error GoTo Err_Products_Pack_or_Destroy_Prices_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_CHARGES_Dist_Subreport_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Products_Pack_or_Destroy_Prices_Click:
    Exit Sub

Err_Products_Pack_or_Destroy_Prices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Pack_or_Destroy_Prices_Click
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```
