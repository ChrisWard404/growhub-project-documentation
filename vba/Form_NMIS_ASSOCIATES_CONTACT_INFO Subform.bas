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