# Form: NMIS_ORDER_COMFIRMATION_FORM

**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`, `NMIS_ORDERS`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`, `Report:ORDER_CONFIRM_MT`, `Report:ORDER_CONFIRM_NURSERY`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Close  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Order Confirmation Report |  |  |  | 1.25, 0.08, 3.12, 0.27 |
| CommandButton | Preview_Report | Click to Preview Orders by Stock Type |  |  | Click | 3.10, 2.92, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.19, 0.44, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.06, 0.56, 5.27, 1.77 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; | DblClick | 3.35, 1.20, 0.80, 0.21 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 3.08, 2.69, 0.83, 0.33 |
| CheckBox | Please_Wait | Please Wait Message Shown |  |  |  | 0.54, 2.69, 0.83, 0.33 |
| CommandButton | Preview_Report2 | Click to Preview Orders by Lot ID |  |  | Click | 0.85, 2.92, 1.71, 0.75 |
| ComboBox | Diverse | Traditional/Non-Traditonal Species |  | 0;Traditional;-1;Non-Traditional;*;All | DblClick | 3.35, 2.41, 1.12, 0.21 |
| ComboBox | Contact_CN | Like Primary Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_ORDERS INNER JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Like_Client] & "*") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Order_FY])) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; | DblClick, Enter | 3.35, 0.94, 1.60, 0.21 |
| TextBox | Like_Client | Associate: |  |  | AfterUpdate, DblClick | 3.35, 0.70, 0.79, 0.20 |
| ComboBox | Order_FY | Order FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.13, 0.70, 0.68, 0.20 |
| CheckBox | Has_Desired_Date | Has Desired Date: |  |  |  | 3.35, 1.49, 0.00, 0.00 |
| TextBox | Order_Mod_Date | Order Mod Date >= : |  |  |  | 3.35, 2.03, 0.73, 0.21 |
| CheckBox | NoFreeze | No Freeze: |  |  |  | 3.35, 1.76, 0.00, 0.00 |
| ComboBox | Product_Group | Group: |  | BPLANT;"Bareroot Plant";CPLANT;"Container Plant";*PLANT;"All Plants";NPROPAGULE;"Propagule" |  | 0.81, 1.70, 1.50, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database



Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

    Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]
    Forms![REPORTS Form]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]
Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    
End Sub

Private Sub Parent_Associate_DblClick(Cancel As Integer)

    PARENT_ASSOCIATE = "*"
    
End Sub

Private Sub Order_FY_AfterUpdate()

    Forms![Switchboard]![FY_For_Reports] = Order_FY
    Forms![REPORTS Form]![FY_For_Reports] = Order_FY
     
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Report_Click()

On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String

    stDocName = "ORDER_CONFIRM_MT"
    
    If Not [Data_Processed] Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        'Update Order_Services_String Table
        'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
         DoCmd.OpenQuery "NMIS_SPCL_SVCSL_DEL_QUERY", acNormal, acEdit
        'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1L_QUERY", acNormal, acEdit
        'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2L_QUERY", acNormal, acEdit
        ' DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
    
End Sub

Private Sub Preview_Report2_Click()
On Error GoTo Err_Preview_Report2_Click
    
    Dim stDocName As String

    stDocName = "ORDER_CONFIRM_NURSERY"
    
    If Not [Data_Processed] Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        'Update Order_Services_String Table
        'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
         DoCmd.OpenQuery "NMIS_SPCL_SVCSL_DEL_QUERY", acNormal, acEdit
        'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
        DoCmd.OpenQuery "NMIS_SPCL_SVCS1L_QUERY", acNormal, acEdit
        'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
        DoCmd.OpenQuery "NMIS_SPCL_SVCS2L_QUERY", acNormal, acEdit
        DoCmd.OpenQuery "Order_Confirm_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
        DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2_Click:
    Exit Sub

Err_Preview_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2_Click
End Sub
```
