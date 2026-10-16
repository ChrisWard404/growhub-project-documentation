# Form: xNative_Propagule_Harvest_Menu

**Opens:** `Form:Drying_Tray_Input_Form`, `Form:NMIS_PROCESS_LABELS_MAIN`, `Form:Quit Access`  
**Form events with code:** Current, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | HorizontalDividingLine |  |  |  |  | 1.87, 0.99, 3.46, 0.00 |
| Rectangle | VerticalShadowBox |  |  |  |  | 1.63, 0.00, 0.26, 4.00 |
| Rectangle | HorizontalHeaderBox |  |  |  |  | 0.22, 0.00, 5.12, 0.57 |
| Label | Label2 | Nursery Management Information System (NMIS) |  |  |  | 2.09, 0.37, 3.05, 0.59 |
| Label | Label1 | Nursery Management Information System (NMIS) |  |  |  | 2.05, 0.29, 3.08, 0.59 |
| Image | Picture |  |  |  |  | 0.00, 0.00, 1.86, 4.00 |
| Image | Image24 |  |  |  |  | 0.41, 0.12, 0.91, 1.05 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Exit_NMIS_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Quit Access"
    DoCmd.RunMacro stDocName

End Sub

Private Sub Form_Open(Cancel As Integer)
' Minimize the database window and initialize the form.

    ' Move to the switchboard page that is marked as the default.
    Me.Filter = "[ItemNumber] = 0 AND [Argument] = 'Default' "
    Me.FilterOn = True
    
End Sub

Private Sub Form_Current()
' Update the caption and fill in the list of options.

    Me.Caption = Nz(Me![ItemText], "")
    FillOptions
    
End Sub

Private Sub FillOptions()
' Fill in the options for this switchboard page.

    ' The number of buttons on the form.
    Const conNumButtons = 8
    
    Dim con As Object
    Dim rs As Object
    Dim stSql As String
    Dim intOption As Integer
    
    ' Set the focus to the first button on the form,
    ' and then hide all of the buttons on the form
    ' but the first.  You can't hide the field with the focus.
    Me![Option1].SetFocus
    For intOption = 2 To conNumButtons
        Me("Option" & intOption).Visible = False
        Me("OptionLabel" & intOption).Visible = False
    Next intOption
    
    ' Open the table of Switchboard Items, and find
    ' the first item for this Switchboard Page.
    Set con = Application.CurrentProject.Connection
    stSql = "SELECT * FROM [Switchboard Items]"
    stSql = stSql & " WHERE [ItemNumber] > 0 AND [SwitchboardID]=" & Me![SwitchboardID]
    stSql = stSql & " ORDER BY [ItemNumber];"
    Set rs = CreateObject("ADODB.Recordset")
    rs.Open stSql, con, 1   ' 1 = adOpenKeyset
    
    ' If there are no options for this Switchboard Page,
    ' display a message.  Otherwise, fill the page with the items.
    If (rs.EOF) Then
        Me![OptionLabel1].Caption = "There are no items for this switchboard page"
    Else
        While (Not (rs.EOF))
            Me("Option" & rs![ItemNumber]).Visible = True
            Me("OptionLabel" & rs![ItemNumber]).Visible = True
            Me("OptionLabel" & rs![ItemNumber]).Caption = rs![ItemText]
            rs.MoveNext
        Wend
    End If

    ' Close the recordset and the database.
    rs.Close
    Set rs = Nothing
    Set con = Nothing

End Sub

Private Function HandleButtonClick(intBtn As Integer)
' This function is called when a button is clicked.
' intBtn indicates which button was clicked.

    ' Constants for the commands that can be executed.
    Const conCmdGotoSwitchboard = 1
    Const conCmdOpenFormAdd = 2
    Const conCmdOpenFormBrowse = 3
    Const conCmdOpenReport = 4
    Const conCmdCustomizeSwitchboard = 5
    Const conCmdExitApplication = 6
    Const conCmdRunMacro = 7
    Const conCmdRunCode = 8
    Const conCmdOpenPage = 9

    ' An error that is special cased.
    Const conErrDoCmdCancelled = 2501
    
    Dim con As Object
    Dim rs As Object
    Dim stSql As String

On Error GoTo HandleButtonClick_Err

    ' Find the item in the Switchboard Items table
    ' that corresponds to the button that was clicked.
    Set con = Application.CurrentProject.Connection
    Set rs = CreateObject("ADODB.Recordset")
    stSql = "SELECT * FROM [Switchboard Items] "
    stSql = stSql & "WHERE [SwitchboardID]=" & Me![SwitchboardID] & " AND [ItemNumber]=" & intBtn
    rs.Open stSql, con, 1    ' 1 = adOpenKeyset
    
    ' If no item matches, report the error and exit the function.
    If (rs.EOF) Then
        MsgBox "There was an error reading the Switchboard Items table."
        rs.Close
        Set rs = Nothing
        Set con = Nothing
        Exit Function
    End If
    
    Select Case rs![Command]
        
        ' Go to another switchboard.
        Case conCmdGotoSwitchboard
            Me.Filter = "[ItemNumber] = 0 AND [SwitchboardID]=" & rs![Argument]
            
        ' Open a form in Add mode.
        Case conCmdOpenFormAdd
            DoCmd.OpenForm rs![Argument], , , , acAdd

        ' Open a form.
        Case conCmdOpenFormBrowse
            DoCmd.OpenForm rs![Argument]

        ' Open a report.
        Case conCmdOpenReport
            DoCmd.OpenReport rs![Argument], acPreview

        ' Customize the Switchboard.
        Case conCmdCustomizeSwitchboard
            ' Handle the case where the Switchboard Manager
            ' is not installed (e.g. Minimal Install).
            On Error Resume Next
            Application.Run "ACWZMAIN.sbm_Entry"
            If (Err <> 0) Then MsgBox "Command not available."
            On Error GoTo 0
            ' Update the form.
            Me.Filter = "[ItemNumber] = 0 AND [Argument] = 'Default' "
            Me.Caption = Nz(Me![ItemText], "")
            FillOptions

        ' Exit the application.
        Case conCmdExitApplication
            CloseCurrentDatabase

        ' Run a macro.
        Case conCmdRunMacro
            DoCmd.RunMacro rs![Argument]

        ' Run code.
        Case conCmdRunCode
            Application.Run rs![Argument]

        ' Open a Data Access Page
        Case conCmdOpenPage
            DoCmd.OpenDataAccessPage rs![Argument]

        ' Any other command is unrecognized.
        Case Else
            MsgBox "Unknown option."
    
    End Select

    ' Close the recordset and the database.
    rs.Close
    
HandleButtonClick_Exit:
On Error Resume Next
    Set rs = Nothing
    Set con = Nothing
    Exit Function

HandleButtonClick_Err:
    ' If the action was cancelled by the user for
    ' some reason, don't display an error message.
    ' Instead, resume on the next line.
    If (Err = conErrDoCmdCancelled) Then
        Resume Next
    Else
        MsgBox "There was an error executing the command.", vbCritical
        Resume HandleButtonClick_Exit
    End If
    
End Function
Private Sub Open_Drying_Tray_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Drying_Tray_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub
Private Sub Open_Process_Labels_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_LABELS_MAIN"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
End Sub
```
