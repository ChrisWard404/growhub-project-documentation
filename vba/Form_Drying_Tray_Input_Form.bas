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