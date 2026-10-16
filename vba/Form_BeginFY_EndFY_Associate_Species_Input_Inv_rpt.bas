Option Compare Database

Private Sub Begin_FY_AfterUpdate()

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

Private Sub Preview_Report_Click()

    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY REPORT", acPreview
    If Not Excel_Message_Viewed Then
        MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
        Excel_Message_Viewed = True
    End If
    
End Sub