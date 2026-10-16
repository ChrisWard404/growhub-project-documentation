Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Associate_Mail_Label_Input_shipping"
    
End Sub

Private Sub Report_Open(Cancel As Integer)

    'DoCmd.OpenForm "Associate_Input"
        'If Not IsLoaded("Associate_Input") Then
       'Cancel = True
    'End If
    
    DoCmd.OpenForm "Associate_Mail_Label_Input_shipping", , , , , acDialog, "Enter a Client Code"
    
    If Not IsLoaded("Associate_Mail_Label_Input_shipping") Then
        Cancel = True
    End If
End Sub