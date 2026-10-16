# Form: Order_Status_Input_spd

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_ORDERS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Select an Client  |  |  |  | 1.59, 0.08, 2.02, 0.28 |
| CommandButton | Preview_spd | Click to Preview Spreadsheet |  |  | Click | 0.79, 2.74, 1.82, 0.55 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 0.75, 4.88, 1.92 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME; | Change, Exit | 2.23, 1.55, 1.75, 0.28 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 2.23, 0.92, 2.00, 0.21 |
| CheckBox | Show_Notes | Show Order Notes |  |  |  | 2.23, 1.22, 0.00, 0.00 |
| ComboBox | Contact_CN |  Like Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_ORDERS LEFT JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![order_status_input_spd]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name], NMIS_ORDERS.FISCAL_YEAR HAVING (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; |  | 2.23, 1.93, 1.60, 0.21 |
| CommandButton | Preview_spd2 | Click to Preview Spreadsheet with Species, Zone and Elevation |  |  | Click | 2.83, 2.74, 1.82, 0.75 |
| CommandButton | Preview_spd_detalied | Click to Preview Spreadsheet with amt/unit |  |  | Click | 0.79, 3.57, 1.82, 0.75 |
| CommandButton | Preview_spd2_detailed | Click to Preview Spreadsheet with Species, Zone and Elevation with amt/unit |  |  | Click | 2.83, 3.57, 1.82, 0.75 |
| CommandButton | Preview_spd_propagule | Spreadsheet - Propagule |  |  | Click | 0.79, 3.31, 1.82, 0.22 |
| TextBox | Order_Mod_Date | Order Date >= : |  |  | DblClick | 2.23, 2.23, 0.58, 0.21 |
| CommandButton | Preview_spd_JC_Compare | Spreadsheet - Request/Order JC Compare |  |  | Click | 1.24, 4.40, 2.96, 0.22 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Like_Client_Change()

    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_Exit(Cancel As Integer)

    CONTACT_CN.Requery
    
End Sub

Private Sub Order_Mod_Date_DblClick(Cancel As Integer)

    Order_Mod_Date = Date
   
End Sub

Private Sub Preview_spd_Click()
On Error GoTo Err_Preview_spd_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_Click:
    Exit Sub

Err_Preview_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_Click
    
End Sub

Private Sub Preview_spd_detalied_Click()
On Error GoTo Err_Preview_spd_detalied_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd_detailed Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_detalied_Click:
    Exit Sub

Err_Preview_spd_detalied_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_detalied_Click
    
End Sub

Private Sub Preview_spd_JC_Compare_Click()
On Error GoTo Err_Preview_spd_JC_Compare_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_W_JCs_spd Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_JC_Compare_Click:
    Exit Sub

Err_Preview_spd_JC_Compare_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_JC_Compare_Click
    
End Sub

Private Sub Preview_spd_propagule_Click()
On Error GoTo Err_Preview_spd_propagule_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Prop_spd Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd_propagule_Click:
    Exit Sub

Err_Preview_spd_propagule_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd_propagule_Click
    
End Sub

Private Sub Preview_spd2_Click()
On Error GoTo Err_Preview_spd2_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd2 Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd2_Click:
    Exit Sub

Err_Preview_spd2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd2_Click
    
End Sub

Private Sub Preview_spd2_detailed_Click()
On Error GoTo Err_Preview_spd2_detailed_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_spd2_detailed Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Preview_spd2_detailed_Click:
    Exit Sub

Err_Preview_spd2_detailed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_spd2_detailed_Click
    
End Sub
```
