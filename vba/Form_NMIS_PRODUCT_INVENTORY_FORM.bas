Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    Data_Processed = False
    Please_Wait = False
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    Please_Wait = False
    
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
    
End Sub

Private Sub Parent_Associate_DblClick(Cancel As Integer)

    PARENT_ASSOCIATE = "*"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Client_Checklist_Click()
On Error GoTo Err_Preview_Client_Checklist_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_Click:
    Exit Sub

Err_Preview_Client_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_Click
    
End Sub

Private Sub Preview_Client_Checklist_w_contacts_Click()
On Error GoTo Err_Preview_Client_Checklist_w_contacts_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_w_contacts_Click:
    Exit Sub

Err_Preview_Client_Checklist_w_contacts_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_w_contacts_Click
    
End Sub

Private Sub Preview_Client_Checklist_w_contacts2_Click()
On Error GoTo Err_Preview_Client_Checklist_w_contacts2_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_w_contacts2_Click:
    Exit Sub

Err_Preview_Client_Checklist_w_contacts2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_w_contacts2_Click
    
End Sub

Private Sub Preview_Report_AgeClass_Species_Click()
On Error GoTo Err_Preview_Report_AgeClass_Species_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_AgeClass_Species_Click:
    Exit Sub

Err_Preview_Report_AgeClass_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_AgeClass_Species_Click
    
End Sub

Private Sub Preview_Report_Click()

On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
    
End Sub

Private Sub Preview_Report_No_Subtotals_Click()
On Error GoTo Err_Preview_Report_No_Subtotals_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_No_Subtotals_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_No_Subtotals_Click:
    Exit Sub

Err_Preview_Report_No_Subtotals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_No_Subtotals_Click
    
End Sub

Private Sub Preview_Report_Species_AgeClass_Click()
On Error GoTo Err_Preview_Report_Species_AgeClass_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Species_AgeClass_Click:
    Exit Sub

Err_Preview_Report_Species_AgeClass_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Species_AgeClass_Click
    
End Sub

Private Sub Preview_Report2_Click()
On Error GoTo Err_Preview_Report2_Click

    Dim stDocName As String
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
    If Not Data_Processed2 Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt2"
        DoCmd.SetWarnings True
        Data_Processed2 = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2_Click:
    Exit Sub

Err_Preview_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2_Click
End Sub

Private Sub Preview_Report2Sum_Click()
On Error GoTo Err_Preview_Report2Sum_Click

    Dim stDocName As String
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
    If Not Data_Processed2 Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt2"
        DoCmd.SetWarnings True
        Data_Processed2 = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report2Sum"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2Sum_Click:
    Exit Sub

Err_Preview_Report2Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2Sum_Click
End Sub