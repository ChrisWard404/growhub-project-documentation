Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Diverse_AfterUpdate()
    
    Data_Processed = False
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close

End Sub

Private Sub Form_Open(Cancel As Integer)

    Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        COLLECT_METHOD.Visible = True
    Else
        COLLECT_METHOD.Visible = False
    End If
    
End Sub


Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet" ', acPreview
    'If Not Excel_Message_Viewed Then
        'MsgBox "Click on the Print Previw Tab, Select Excel from the data section and select Export Data with Formatting and Layout in the export window to save as a Spreadsheet in desired folder"
        'Excel_Message_Viewed = True
    'End If
    
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click

End Sub