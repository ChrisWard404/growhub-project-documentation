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

Private Sub Add_Current_FY_Lots_Click()

    If Val([Forms]![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].[Form]![Max_FY]) < _
        Val([Forms]![Switchboard]![FY_For_Reports]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Append"
        DoCmd.SetWarnings True
        DoCmd.Requery
        Forms![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].Requery
    Else
        MsgBox "The current FY's Lots have already been added", vbCritical
    End If
    
End Sub



Private Sub HARVEST_DATE_AfterUpdate()

    If Not IsNull(HARVEST_DATE) Then
        HARVEST_PRIORITY = ""
    End If
      
End Sub

Private Sub HARVEST_PRIORITY_AfterUpdate()

    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
    If Not IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = ""
    End If
    End If
   
End Sub

Private Sub HARVEST_PRIORITY_Change()

    HARVEST_METHOD.Requery
    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
        HARVEST_METHOD = Null
    End If
    
End Sub

Private Sub HARVEST_PRIORITY_Exit(Cancel As Integer)

    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
        HARVEST_METHOD = ""
    End If
   
End Sub

Private Sub Update_Click()
    
        DoCmd.Requery

End Sub