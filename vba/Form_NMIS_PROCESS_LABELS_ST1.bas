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

Private Sub Agreement_Lot_CN_Select_AfterUpdate()

    [Trees/Cont] = Null
    [Comments] = ""
    [Number_Of_Containers] = Null
    [BEGIN_CONTAINER] = ""
    [End_Container] = ""
    [Number_of_Boxes] = Null
    Odd_Box = False
    [Species_Product_End_Product_Group  subform].Requery
    If [Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] = "PROPAGULE" Then
        Sublot.Visible = True
        Number_of_Containers_Box.Visible = True
        Number_Of_Containers.Visible = True
        Begin_End_Container_Label.Visible = True
        BEGIN_CONTAINER.Visible = True
        End_Container.Visible = True
        Preview_Prooof_Label.Visible = False
        Command5.Visible = False
        Lot_Change_Label_Form.Visible = True
        Odd_Box.Visible = True
        Odd_Box_Label.Visible = True
        Amt.Visible = True
        Number_of_Boxes.Visible = False
        No_Boxes_Label.Visible = False
        Preview_Processing_Table_Sign.Visible = False
        Labels_Per = 2
    Else
        Sublot.Visible = False
        Number_of_Containers_Box.Visible = False
        Number_Of_Containers.Visible = False
        Begin_End_Container_Label.Visible = False
        BEGIN_CONTAINER.Visible = False
        End_Container.Visible = False
        Preview_Prooof_Label.Visible = True
        Command5.Visible = True
        Lot_Change_Label_Form.Visible = False
        Odd_Box.Visible = False
        Odd_Box_Label.Visible = False
        Amt.Visible = False
        Number_of_Boxes.Visible = True
        No_Boxes_Label.Visible = True
        Preview_Processing_Table_Sign.Visible = True
    End If
  
End Sub

Private Sub Begin_Container_DblClick(Cancel As Integer)

    BEGIN_CONTAINER = Number_Of_Containers
    End_Container = Number_Of_Containers
    Odd_Box = True
    Comments = "Odd Container "
    DoCmd.GoToControl "Trees/Cont"
    
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

    If [Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] = "PROPAGULE" Then
        If Number_Of_Containers = "" Or IsNull(Number_Of_Containers) Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_drop"
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_Create"
            DoCmd.OpenQuery "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_AT"
            DoCmd.SetWarnings True
        Else
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_drop"
            DoCmd.OpenQuery "**Propagule_Tags_Tag_Number_Create"
            For c = 1 To [Number_Of_Containers]
                DoCmd.OpenQuery "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_AT"
            Next c
            DoCmd.SetWarnings True
            
        End If

        If Labels_Per = 1 Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1"
        Else
        If Labels_Per = 2 Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE"
        Else
        If Labels_Per = 3 Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3"
        Else
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE"
        End If
        End If
        End If
    Else
    
    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Is = "090707"
        stDocName = "NMIS_PROCESS_PACK_LABELS_090707"
    Case Else
        stDocName = "NMIS_PROCESS_PACK_LABELS"
    End Select
    
    End If
    
    DoCmd.OpenReport stDocName, acPreview
    If [Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] <> "PROPAGULE" Then
        If Not IsNull([Number_of_Boxes]) Then
            If Number_of_Boxes > 0 Then
                DoCmd.PrintOut , , , , ([Number_of_Boxes] * [Labels_Per]), 0
                DoCmd.Close
            End If
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

Private Sub End_Container_DblClick(Cancel As Integer)

    End_Container = Number_Of_Containers
    Odd_Box = False
    DoCmd.GoToControl "Trees/Cont"
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Sublot.Visible = False
    Number_of_Containers_Box.Visible = False
    Number_Of_Containers.Visible = False
    Begin_End_Container_Label.Visible = False
    BEGIN_CONTAINER.Visible = False
    End_Container.Visible = False
    Lot_Change_Label_Form.Visible = False
    Odd_Box.Visible = False
    Odd_Box_Label.Visible = False
    Amt.Visible = False
    Number_Of_Containers = Null
    BEGIN_CONTAINER = Null
    End_Container = Null
    
    
End Sub

Private Sub Labels_Per_DblClick(Cancel As Integer)
    
    Refresh
    Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_ACCESS_USER_NURSERY subform1].Form![Default6N] = Labels_Per
    MsgBox "The Default Labels per Box has been changed to the current value."
    
End Sub

Private Sub Lot_Change_Label_Form_Click()
On Error GoTo Err_Lot_Change_Label_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form"
    
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Lot_Change_Label_Form_Click:
    Exit Sub

Err_Lot_Change_Label_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_Change_Label_Form_Click
    
End Sub

Private Sub Number_Of_Containers_Exit(Cancel As Integer)
On Error GoTo Err_Number_Of_Containers_Exit
    
    If Odd_Box = False Then
        If Number_Of_Containers <> "" Then
            Number_Of_Containers = Abs(Number_Of_Containers)
            BEGIN_CONTAINER = 1
            If Number_Of_Containers > 1 Then
                End_Container = Number_Of_Containers - 1
            Else
                End_Container = Number_Of_Containers
            End If
        Else
            BEGIN_CONTAINER = Null
            End_Container = Null
        End If
    End If
Exit_Number_Of_Containers_Exit:
    Exit Sub

Err_Number_Of_Containers_Exit:
    MsgBox Err.DESCRIPTION
    Resume Exit_Number_Of_Containers_Exit
        
End Sub

Private Sub Odd_Box_Click()

    If Odd_Box Then
        BEGIN_CONTAINER = Number_Of_Containers
        End_Container = Number_Of_Containers
        Comments = "Odd Container " & Comments
        DoCmd.GoToControl "Trees/Cont"
    Else
        Comments = Null
        If Number_Of_Containers <> "" Then
            Number_Of_Containers = Abs(Number_Of_Containers)
            BEGIN_CONTAINER = 1
            If Number_Of_Containers > 1 Then
                End_Container = Number_Of_Containers - 1
            Else
                End_Container = Number_Of_Containers
            End If
        Else
            BEGIN_CONTAINER = Null
            End_Container = Null
        End If
    End If
    
End Sub

Private Sub Preview_Prooof_Label_Click()
On Error GoTo Err_Preview_Prooof_Label_Click

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

Exit_Preview_Prooof_Label_Click:
    Exit Sub

Err_Preview_Prooof_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Prooof_Label_Click
    
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
    DoCmd.OpenReport stDocName, acViewPreview
    DoCmd.PrintOut ', , , , 2
    DoCmd.Close

Exit_Preview_Processing_Table_Sign_Click:
    Exit Sub

Err_Preview_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Processing_Table_Sign_Click
    
End Sub