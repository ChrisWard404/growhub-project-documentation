
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