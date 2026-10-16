# Form: NMIS_PROCESS_LABELS_ST1

**Caption:** Select Pack ID  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESS_LABELS_subform1`, `Form.NMIS_PROCESS_LABELS_subform2`, `Form.Species_Product_End_Product_Group  subform`  
**Embedded in:** `Form:NMIS_PROCESS_LABELS_MAIN`  
**Opens:** `Form:Bag/Box Label`, `Form:Enter New Pack Id`, `Form:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler`, `Form:NMIS_PROCESS_PACK_LABELS`, `Form:NMIS_PROCESS_PACK_LABELS_040207`, `Form:NMIS_PROCESS_PACK_LABELS_050357`, `Form:NMIS_PROCESS_PACK_LABELS_090707`, `Form:NMIS_PROCESS_PACK_LABELS_PROOF`, `Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE`, `Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1`, `Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3`, `Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form`, `Form:NMIS_PROCESS_QI_LABELS`, `Report:Bag/Box Label`, `Report:Enter New Pack Id`, `Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler`, `Report:NMIS_PROCESS_PACK_LABELS`, `Report:NMIS_PROCESS_PACK_LABELS_040207`, `Report:NMIS_PROCESS_PACK_LABELS_050357`, `Report:NMIS_PROCESS_PACK_LABELS_090707`, `Report:NMIS_PROCESS_PACK_LABELS_PROOF`, `Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE`, `Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1`, `Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3`, `Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form`, `Report:NMIS_PROCESS_QI_LABELS`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box170 |  |  |  |  | 2.05, 0.06, 3.90, 0.42 |
| CommandButton | Command4 | Preview/Print Bag/Box Label |  |  | Click | 4.84, 4.24, 1.36, 0.49 |
| CommandButton | Command5 | Print Quality Label |  |  | Click | 3.22, 4.24, 1.36, 0.49 |
| TextBox | Table | Table/Belt: |  |  |  | 1.93, 0.71, 0.33, 0.23 |
| TextBox | Trees/Cont | Amt/Cont: |  |  |  | 1.93, 1.28, 0.71, 0.23 |
| TextBox | Comments | Comments: |  |  | DblClick | 1.93, 1.85, 3.81, 0.23 |
| Rectangle | Box25 |  |  |  |  | 2.01, 0.04, 3.99, 0.46 |
| Rectangle | Box26 |  |  |  |  | 0.77, 0.58, 5.03, 1.58 |
| Subform | NMIS_PROCESS_LABELS_subform1 |  | Form.NMIS_PROCESS_LABELS_subform1 (master: CN → child: CN) |  |  | 0.51, 2.28, 6.95, 1.57 |
| TextBox | CN |  | =[Agreement_Lot_CN_Select] |  |  | 0.83, 0.33, 0.00, 0.00 |
| Rectangle | Box39 |  |  |  |  | 0.48, 2.23, 7.02, 1.67 |
| ComboBox | Agreement_Lot_CN_Select | Nursery ID: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID, [Agreement_Lot_What_It_Is Query].Current_Product FROM [Agreement_Lot_What_It_Is Query] INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.[AGREEMENT_LOT_CN] = NMIS_AGREEMENT_LOTS.[CN]) ON [Agreement_Lot_What_It_Is Query].CN = NMIS_AGREEMENT_LOTS.CN GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_ORDERS.FISCAL_YEAR, [Agreement_Lot_What_It_Is Query].Current_Product HAVING (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | AfterUpdate | 3.48, 0.11, 2.31, 0.31 |
| Subform | NMIS_PROCESS_LABELS_subform2 |  | Form.NMIS_PROCESS_LABELS_subform2 (master: CN → child: CN) |  |  | 4.28, 0.64, 1.44, 1.15 |
| Label | Label16 | 1 |  |  |  | 0.00, 0.00, 0.60, 0.63 |
| CommandButton | Preview_Prooof_Label | Print Proof Label |  |  | Click | 1.53, 4.24, 1.36, 0.49 |
| TextBox | Lift_Date_Override |  |  |  |  | 6.16, 0.93, 0.72, 0.25 |
| Label | Label50 | Lift Date Override |  |  |  | 6.02, 0.73, 1.09, 0.19 |
| Label | Label51 | Pack Date |  |  |  | 6.23, 1.44, 0.64, 0.19 |
| TextBox | Pack_Date |  |  |  |  | 6.16, 1.62, 0.72, 0.25 |
| Rectangle | Box53 |  |  |  |  | 5.88, 0.59, 1.27, 1.58 |
| Subform | Species_Product_End_Product_Group  subform |  | Form.Species_Product_End_Product_Group  subform (master: CN → child: NMIS_AGREEMENT_LOTS_CN) |  |  | 0.54, 0.08, 1.12, 0.33 |
| TextBox | Date_Lifted |  | =IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override]) |  |  | 6.08, 0.38, 0.00, 0.00 |
| ComboBox | Order_Selected | Order Selected: | =IIf(IsNull([Agreement_Lot_CN_Select]),Null,[NMIS_PROCESS_LABELS_subform1].[Form]![Order_CN]) | SELECT NMIS_ORDERS.CN, Left$([CN],Len([CN])-7) & " - " & [ASSOCIATE_NAME] & " -  " & [ACTIVITY_NAME] AS Order_Client FROM NMIS_ACTIVITY_CODES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE; |  | 1.83, 3.95, 5.69, 0.24 |
| TextBox | Number_Of_Containers | # Cont: |  |  | Exit | 3.69, 1.27, 0.48, 0.23 |
| TextBox | End_Container |  |  |  | DblClick | 3.89, 1.55, 0.28, 0.21 |
| TextBox | Begin_Container | Beg/End: |  |  | DblClick | 3.57, 1.55, 0.28, 0.21 |
| Rectangle | Number_of_Containers_Box |  |  |  |  | 2.83, 0.62, 1.40, 1.20 |
| TextBox | Sublot | Sublot: |  |  |  | 3.67, 0.67, 0.38, 0.23 |
| CommandButton | Lot_Change_Label_Form |      Preview     Lot Break Label |  |  | Click | 1.45, 4.24, 1.36, 0.49 |
| CheckBox | Odd_Box |  |  |  | Click | 3.58, 1.04, 0.00, 0.00 |
| Label | Odd_Box_Label | Odd Box |  |  |  | 2.96, 1.00, 0.55, 0.19 |
| CommandButton | Preview_Processing_Table_Sign | Table Sign |  |  | Click | 0.33, 4.33, 0.76, 0.29 |
| TextBox | Number_of_Boxes |  |  |  |  | 6.25, 4.46, 0.75, 0.24 |
| Label | No_Boxes_Label | # Bag/Boxes |  |  |  | 6.25, 4.25, 0.75, 0.19 |
| TextBox | Amt | Amt: | =IIf([Number_Of_Containers]>0 And [Trees/Cont]>0,IIf([odd_box],Val([trees/Cont]),Val([End_Container])*Val([Trees/Cont]))) |  |  | 1.93, 1.57, 0.82, 0.23 |
| TextBox | Labels_Per |  |  |  | DblClick | 7.05, 4.46, 0.68, 0.24 |
| Label | Labels_Per Label | Labels Per |  |  |  | 7.05, 4.25, 0.68, 0.19 |

## Code-behind (VBA)

```vb
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
```
