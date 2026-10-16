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