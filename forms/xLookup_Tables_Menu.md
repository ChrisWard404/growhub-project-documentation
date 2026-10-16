# Form: xLookup_Tables_Menu

**Caption:** Lookup Tables  Menu  
**Opens:** `Form:NMIS_ACTIVITY_CHARGES`, `Form:NMIS_ACTIVITY_CODES`, `Form:NMIS_ASSOCIATES`, `Form:NMIS_CATEGORIES`, `Form:NMIS_CONTACTS`, `Form:NMIS_CONTRACTS`, `Form:NMIS_FACTOR_CODES`, `Form:NMIS_FISCAL_YEARS`, `Form:NMIS_GROUPS`, `Form:NMIS_LOCATION_TYPES`, `Form:NMIS_OYJORD_SETTINGS`, `Form:NMIS_PRODUCTS`, `Form:NMIS_PRODUCT_CHARGES2`, `Form:NMIS_SEASONS`, `Form:NMIS_SOURCE_PRICE_RATES`, `Form:NMIS_SOURCE_PRICE_RATES_BASE`, `Form:NMIS_SOURCE_PROCESSING_RATES`, `Form:NMIS_SPECIES`, `Form:NMIS_SPECIES_PRODUCTS Form`, `Form:NMIS_TEST_TYPES`, `Form:NMIS_TREATMENT_PRODUCTS`, `Form:NMIS_UNITS`, `Form:Open_Swichboard`, `Form:Switchboard`, `Form:xPlease_Be_Patient_Message`  
**Form events with code:** Current, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | HorizontalDividingLine |  |  |  |  | 1.86, 0.94, 3.46, 0.00 |
| Rectangle | VerticalShadowBox |  |  |  |  | 1.63, 0.00, 0.26, 4.00 |
| Rectangle | HorizontalHeaderBox |  |  |  |  | 0.22, 0.00, 5.11, 0.92 |
| Label | Label2 | Nursery Management Information System (NMIS) |  |  |  | 2.06, 0.31, 3.05, 0.59 |
| Label | Label1 | Nursery Management Information System (NMIS) |  |  |  | 2.05, 0.29, 3.08, 0.59 |
| Image | Picture |  |  |  |  | 0.00, 0.00, 1.86, 4.00 |
| CommandButton | Open NMIS Associates Menu | Associates... |  |  | Click | 2.11, 1.57, 1.46, 0.00 |
| Label | Label34 | Lookup Table Menu |  |  |  | 0.16, 1.57, 1.62, 0.59 |
| Label | Label35 | Lookup Table Menu |  |  |  | 0.12, 1.54, 1.65, 0.59 |
| CommandButton | Open Main Switchboard | Return To Main Menu |  |  | Click | 0.24, 3.53, 1.44, 0.00 |
| CommandButton | Open Contacts Form | Contacts... |  |  | Click | 2.11, 2.39, 1.46, 0.00 |
| CommandButton | Close Lookup Table Window | Return To Previous Menu |  |  | Click | 0.24, 3.16, 1.44, 0.00 |
| CommandButton | Open Activity Charges Form | Activity Charges... |  |  | Click | 2.12, 1.03, 1.46, 0.00 |
| CommandButton | Open Activity Code Form | Activity Codes... |  |  | Click | 2.11, 1.30, 1.46, 0.00 |
| CommandButton | Open Species Form | Species... |  |  | Click | 3.72, 2.66, 1.46, 0.00 |
| CommandButton | Open Groups Form | Associate Groups... |  |  | Click | 2.11, 1.85, 1.46, 0.00 |
| CommandButton | Open Catagories Form | Category Codes... |  |  | Click | 2.11, 2.12, 1.46, 0.00 |
| CommandButton | Open NMIS Products Form | Products... |  |  | Click | 3.72, 1.03, 1.46, 0.00 |
| CommandButton | Open Contract Items Form | Contracts... |  |  | Click | 2.12, 2.66, 1.46, 0.00 |
| CommandButton | Open Seasons Form | Season Codes... |  |  | Click | 3.72, 1.57, 1.46, 0.00 |
| CommandButton | Open Unit Codes Subform | Unit Codes... |  |  | Click | 3.72, 3.73, 1.46, 0.00 |
| CommandButton | Open Location Types Form | Location Codes... |  |  | Click | 2.11, 3.46, 1.46, 0.00 |
| CommandButton | Open Factor Codes Form | Factor Codes... |  |  | Click | 2.11, 2.92, 1.46, 0.00 |
| CommandButton | Open Ojyord Form | Oyjord... |  |  | Click | 2.11, 3.73, 1.46, 0.00 |
| CommandButton | Open Treatment Products Form | Treatment Products... |  |  | Click | 3.72, 3.20, 1.46, 0.00 |
| CommandButton | Open Test Types Form | Types of Tests... |  |  | Click | 3.72, 3.46, 1.46, 0.00 |
| CommandButton | Open Source Price Rates Form | Source Price Rates... |  |  | Click | 3.72, 1.85, 1.46, 0.00 |
| CommandButton | Open Source Price Base Form | Source Price Base... |  |  | Click | 3.72, 2.12, 1.46, 0.00 |
| CommandButton | Open NMIS_FISCAL_YEARS | FY's... |  |  | Click | 2.11, 3.20, 1.46, 0.00 |
| CommandButton | Open_Species_Products_Form | Species Products... |  |  | Click | 3.71, 2.92, 1.46, 0.26 |
| ObjectFrame | OLEUnbound52 |  |  |  |  | 0.00, 0.35, 0.15, 1.06 |
| CommandButton | Open NMIS Product_Charges Form | Product Charges... |  |  | Click | 3.72, 1.30, 1.46, 0.00 |
| CommandButton | Open Source Proc Rates Form | Source Proc Rates... |  |  | Click | 3.72, 2.39, 1.46, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

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

Private Sub Open_Main_Menu_Click()
On Error GoTo Err_Open_Main_Menu_Click

    Dim stDocName As String

    stDocName = "Open_Swichboard"
    DoCmd.RunMacro stDocName

Exit_Open_Main_Menu_Click:
    Exit Sub

Err_Open_Main_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Main_Menu_Click
    
End Sub
Private Sub Go_To_Main_Menu_Click()
On Error GoTo Err_Go_To_Main_Menu_Click

    Dim stDocName As String

    stDocName = "Open_Swichboard"
    DoCmd.RunMacro stDocName

Exit_Go_To_Main_Menu_Click:
    Exit Sub

Err_Go_To_Main_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Go_To_Main_Menu_Click
    
End Sub

Private Sub Open_Location_Type_Form_Click()

End Sub

Private Sub Open_NMIS_Associates_Menu_Click()
On Error GoTo Err_Open_NMIS_Associates_Menu_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Associates_Menu_Click:
    Exit Sub

Err_Open_NMIS_Associates_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Associates_Menu_Click
    
End Sub
Private Sub Open_Main_Switchboard_Click()
On Error GoTo Err_Open_Main_Switchboard_Click

    Dim stDocName As String

    stDocName = "Switchboard"
    DoCmd.Close
    DoCmd.OpenForm stDocName
    DoCmd.Close
    DoCmd.OpenForm stDocName

Exit_Open_Main_Switchboard_Click:
    Exit Sub

Err_Open_Main_Switchboard_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Main_Switchboard_Click
    
End Sub
Private Sub Open_Contacts_Form_Click()
On Error GoTo Err_Open_Contacts_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Contacts_Form_Click:
    Exit Sub

Err_Open_Contacts_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Contacts_Form_Click
    
End Sub
Private Sub Close_Lookup_Table_Window_Click()
On Error GoTo Err_Close_Lookup_Table_Window_Click


    DoCmd.Close

Exit_Close_Lookup_Table_Window_Click:
    Exit Sub

Err_Close_Lookup_Table_Window_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Lookup_Table_Window_Click
    
End Sub
Private Sub Open_Activity_Charges_Form_Click()
On Error GoTo Err_Open_Activity_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CHARGES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Activity_Charges_Form_Click:
    Exit Sub

Err_Open_Activity_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Activity_Charges_Form_Click
    
End Sub
Private Sub Open_Activity_Code_Form_Click()
On Error GoTo Err_Open_Activity_Code_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Activity_Code_Form_Click:
    Exit Sub

Err_Open_Activity_Code_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Activity_Code_Form_Click
    
End Sub

Private Sub Open_NMIS_FISCAL_YEARS_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_FISCAL_YEARS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Open_NMIS_Product_Charges_Form_Click()
On Error GoTo Err_Open_NMIS_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Product_Charges_Form_Click:
    Exit Sub

Err_Open_NMIS_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Product_Charges_Form_Click
    
End Sub

Private Sub Open_Source_Price_Base_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_PRICE_RATES_BASE"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Open_Source_Price_Rates_Form_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_PRICE_RATES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Open_Source_Proc_Rates_Form_Click()
On Error GoTo Err_Open_Source_Proc_Rates_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_PROCESSING_RATES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Proc_Rates_Form_Click:
    Exit Sub

Err_Open_Source_Proc_Rates_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Proc_Rates_Form_Click
    
End Sub

Private Sub Open_Species_Form_Click()
On Error GoTo Err_Open_Species_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Species_Form_Click:
    Exit Sub

Err_Open_Species_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Species_Form_Click
    
End Sub
Private Sub Open_Groups_Form_Click()
On Error GoTo Err_Open_Groups_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_GROUPS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Groups_Form_Click:
    Exit Sub

Err_Open_Groups_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Groups_Form_Click
    
End Sub
Private Sub Open_Catagories_Form_Click()
On Error GoTo Err_Open_Catagories_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CATEGORIES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Catagories_Form_Click:
    Exit Sub

Err_Open_Catagories_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Catagories_Form_Click
    
End Sub
Private Sub Open_NMIS_Products_Form_Click()
On Error GoTo Err_Open_NMIS_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Products_Form_Click:
    Exit Sub

Err_Open_NMIS_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Products_Form_Click
    
End Sub
Private Sub Open_Contract_Items_Form_Click()
On Error GoTo Err_Open_Contract_Items_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTRACTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Contract_Items_Form_Click:
    Exit Sub

Err_Open_Contract_Items_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Contract_Items_Form_Click
    
End Sub
Private Sub Command49_Click()
On Error GoTo Err_Command49_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_LOCATION_TYPES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command49_Click:
    Exit Sub

Err_Command49_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command49_Click
    
End Sub
Private Sub Open_Seasons_Form_Click()
On Error GoTo Err_Open_Seasons_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SEASONS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Seasons_Form_Click:
    Exit Sub

Err_Open_Seasons_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Seasons_Form_Click
    
End Sub

Private Sub Open_Source_Form_Click()

End Sub

Private Sub Open_Unit_Codes_Subform_Click()
On Error GoTo Err_Open_Unit_Codes_Subform_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_UNITS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Unit_Codes_Subform_Click:
    Exit Sub

Err_Open_Unit_Codes_Subform_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Unit_Codes_Subform_Click
    
End Sub
Private Sub Open_Location_Types_Form_Click()
On Error GoTo Err_Open_Location_Types_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_LOCATION_TYPES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Location_Types_Form_Click:
    Exit Sub

Err_Open_Location_Types_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Location_Types_Form_Click
    
End Sub
Private Sub Open_Factor_Codes_Form_Click()
On Error GoTo Err_Open_Factor_Codes_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_FACTOR_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Factor_Codes_Form_Click:
    Exit Sub

Err_Open_Factor_Codes_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Factor_Codes_Form_Click
    
End Sub
Private Sub Open_Ojyord_Form_Click()
On Error GoTo Err_Open_Ojyord_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_OYJORD_SETTINGS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Ojyord_Form_Click:
    Exit Sub

Err_Open_Ojyord_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Ojyord_Form_Click
    
End Sub
Private Sub Open_Treatment_Products_Form_Click()
On Error GoTo Err_Open_Treatment_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_TREATMENT_PRODUCTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Treatment_Products_Form_Click:
    Exit Sub

Err_Open_Treatment_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Treatment_Products_Form_Click
    
End Sub
Private Sub Open_Test_Types_Form_Click()
On Error GoTo Err_Open_Test_Types_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_TEST_TYPES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Test_Types_Form_Click:
    Exit Sub

Err_Open_Test_Types_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Test_Types_Form_Click
    
End Sub
Private Sub Open_Species_Products_Form_Click()
On Error GoTo Err_Open_Species_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    DoCmd.OpenForm "xPlease_Be_Patient_Message"
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Species_Products_Currently_Active_in_Grow_Containers_mt"
    DoCmd.SetWarnings True

    stDocName = "NMIS_SPECIES_PRODUCTS Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Species_Products_Form_Click:
    Exit Sub

Err_Open_Species_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Species_Products_Form_Click
    
End Sub
```
