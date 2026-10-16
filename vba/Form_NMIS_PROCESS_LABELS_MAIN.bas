Option Compare Database

Private Sub Command3_Click()

End Sub

Private Sub PackID_BeforeUpdate(Cancel As Integer)

End Sub

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Bag/Box Label"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub

Private Sub Agreement_Lot_CN_Select_Change()

    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_PACK_LABELS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_QI_LABELS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command5_Click:
    Exit Sub

Err_Command5_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command5_Click
    
End Sub
Private Sub Command15_Click()
On Error GoTo Err_Command15_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Enter New Pack Id"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command15_Click:
    Exit Sub

Err_Command15_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command15_Click
    
End Sub

Private Sub Nursery_ID_Change()

    [Date_Lifted] = ""
    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Form_Open(Cancel As Integer)
 DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
 DoCmd.SetWarnings True
 
End Sub

Private Sub Open_Box_Label_To_Edit_Click()
On Error GoTo Err_Open_Box_Label_To_Edit_Click

    Dim stDocName As String

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Else
        If [NMIS_PROCESS_LABELS_ST1].Form![Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] = "PROPAGULE" Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE"
        Else
            stDocName = "NMIS_PROCESS_PACK_LABELS"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acViewDesign
    
Exit_Open_Box_Label_To_Edit_Click:
    Exit Sub

Err_Open_Box_Label_To_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Box_Label_To_Edit_Click
    
End Sub

Private Sub Preview_Processing_Table_Sign_Click()

End Sub

Private Sub Print_Processing_ODD_BOX_LABEL_Click()
On Error GoTo Err_Print_Processing_ODD_BOX_LABEL_Click

    Dim stDocName As String

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "040207"
        ' 4X2.5 Label
        stDocName = "NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207"
    Case Else
        ' 4X6 Label
        stDocName = "NMIS_PROCESS_PACK_LABELS_ODD_BOX"
    End Select
    
    DoCmd.OpenReport stDocName, acViewPreview
    DoCmd.PrintOut , , , , NumberOfOddBoxLabels
    DoCmd.Close

Exit_Print_Processing_ODD_BOX_LABEL_Click:
    Exit Sub

Err_Print_Processing_ODD_BOX_LABEL_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Processing_ODD_BOX_LABEL_Click
    
End Sub