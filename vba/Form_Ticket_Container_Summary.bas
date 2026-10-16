Option Compare Database

Private Sub Print_Ticket_Container_Summary_Form_Click()
On Error GoTo Err_Print_Ticket_Container_Summary_Form_Click

    Dim stDocName As String
    Dim MyForm As Form

    stDocName = "Ticket_Container_Summary"
    Set MyForm = Screen.ActiveForm
    DoCmd.SelectObject acForm, stDocName, True
    DoCmd.PrintOut
    DoCmd.SelectObject acForm, MyForm.Name, False

Exit_Print_Ticket_Container_Summary_Form:
    Exit Sub

Err_Print_Ticket_Container_Summary_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Ticket_Container_Summary_Form
    
End Sub