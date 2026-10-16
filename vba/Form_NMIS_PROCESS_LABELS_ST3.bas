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

    [Trees/Cont] = ""
    [Comments] = ""
    [Number_of_Boxes] = Null
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Else
        stDocName = "NMIS_PROCESS_PACK_LABELS"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    If Not IsNull([Number_of_Boxes]) Then
        If Number_of_Boxes > 0 Then
            DoCmd.PrintOut , , , , ([Number_of_Boxes] * [Labels_Per]), 0
            DoCmd.Close
        End If
    End If
Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted


    stDocName = "NMIS_PROCESS_QI_LABELS"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

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

Private Sub Comments_DblClick(Cancel As Integer)

    Comments = "BgBx Bndl 50  Frezr"
    
End Sub



Private Sub Preview_Processing_Table_Sign_Click()
On Error GoTo Err_Preview_Processing_Table_Sign_Click

    Dim stDocName As String

    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted
    
    stDocName = "NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler"
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut ' , , , , 2
    DoCmd.Close

Exit_Preview_Processing_Table_Sign_Click:
    Exit Sub

Err_Preview_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_Table_Sign_Click
    
End Sub

Private Sub Preview_Prooof_Label_Click()

    Dim stDocName As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select] = Agreement_Lot_CN_Select
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [NMIS_PROCESS_LABELS_subform1].Form![ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont] = [Trees/Cont]
    Forms![NMIS_PROCESS_LABELS_MAIN]![Table] = Table
    Forms![NMIS_PROCESS_LABELS_MAIN]![Pack_Date] = Pack_Date
    Forms![NMIS_PROCESS_LABELS_MAIN]![PACK_ID] = [NMIS_PROCESS_LABELS_subform1].Form!PACK_ID
    Forms![NMIS_PROCESS_LABELS_MAIN]![Comments] = Comments
    Forms![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted] = Date_Lifted

    stDocName = "NMIS_PROCESS_PACK_LABELS_PROOF"
    
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.PrintOut
    DoCmd.Close

End Sub