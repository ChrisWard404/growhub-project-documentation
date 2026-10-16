# Form: xAbout_Splash_Screen

**Caption:** About NMIS for MS Access  
**Subforms/subreports:** `Form.NMIS_ACCESS_VERSION subform`  
**Opens:** `Form:Switchboard`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label2 | Nursery Management Information System (NMIS) |  |  |  | 0.38, 0.14, 3.92, 0.50 |
| Label | Label3 | USDA Forest Service |  |  |  | 1.62, 0.72, 1.42, 0.19 |
| CommandButton | Open_Switchboard | OK |  |  | Click | 1.92, 2.12, 0.88, 0.00 |
| Subform | NMIS_ACCESS_VERSION subform |  | Form.NMIS_ACCESS_VERSION subform |  |  | 1.98, 1.06, 1.27, 0.34 |
| TextBox | Current_User_Name | Welcome: |  |  |  | 2.33, 1.57, 1.60, 0.23 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)

    ' Set Current_User_Name
    Current_User_Name = CurrentUserName
    
End Sub

Private Sub Open_Switchboard_Click()
On Error GoTo Err_Open_Switchboard_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Switchboard"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Switchboard_Click:
    Exit Sub

Err_Open_Switchboard_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Switchboard_Click
    
End Sub
```
