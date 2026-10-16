# Form: NMIS_PROCESS_LABELS_ST3

**Caption:** Select Pack ID  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_PROCESS_LABELS_subform1`, `Form.NMIS_PROCESS_LABELS_subform2`  
**Embedded in:** `Form:NMIS_PROCESS_LABELS_MAIN`  
**Opens:** `Form:Bag/Box Label`, `Form:Enter New Pack Id`, `Form:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler`, `Form:NMIS_PROCESS_PACK_LABELS`, `Form:NMIS_PROCESS_PACK_LABELS_040207`, `Form:NMIS_PROCESS_PACK_LABELS_050357`, `Form:NMIS_PROCESS_PACK_LABELS_PROOF`, `Form:NMIS_PROCESS_QI_LABELS`, `Report:Bag/Box Label`, `Report:Enter New Pack Id`, `Report:NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler`, `Report:NMIS_PROCESS_PACK_LABELS`, `Report:NMIS_PROCESS_PACK_LABELS_040207`, `Report:NMIS_PROCESS_PACK_LABELS_050357`, `Report:NMIS_PROCESS_PACK_LABELS_PROOF`, `Report:NMIS_PROCESS_QI_LABELS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box170 |  |  |  |  | 2.05, 0.05, 3.90, 0.42 |
| CommandButton | Command4 | Preview/Print Bag/Box Label |  |  | Click | 4.84, 4.24, 1.36, 0.49 |
| CommandButton | Command5 | Print Quality Label |  |  | Click | 3.22, 4.24, 1.36, 0.49 |
| TextBox | Table | Table/Belt: |  |  |  | 1.93, 0.71, 0.33, 0.23 |
| TextBox | Trees/Cont | Amt/Cont: |  |  |  | 1.93, 1.28, 0.71, 0.23 |
| TextBox | Comments | Comments: |  |  | DblClick | 1.93, 1.85, 3.81, 0.23 |
| Rectangle | Box25 |  |  |  |  | 2.01, 0.04, 3.99, 0.46 |
| Rectangle | Box26 |  |  |  |  | 0.77, 0.58, 5.03, 1.58 |
| Subform | NMIS_PROCESS_LABELS_subform1 |  | Form.NMIS_PROCESS_LABELS_subform1 (master: CN → child: CN) |  |  | 0.51, 2.28, 6.95, 1.57 |
| TextBox | CN |  | =[Agreement_Lot_CN_Select] |  |  | 5.52, 0.17, 0.00, 0.00 |
| Rectangle | Box39 |  |  |  |  | 0.48, 2.23, 7.02, 1.67 |
| ComboBox | Agreement_Lot_CN_Select | Nursery ID: |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID AS Nursery_ID, [Agreement_Lot_What_It_Is Query].Current_Product FROM [Agreement_Lot_What_It_Is Query] INNER JOIN ((NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN) ON [Agreement_Lot_What_It_Is Query].CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_PRODUCT_TYPES.PRODUCT_GROUP)<>"PROPAGULE") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, [Agreement_Lot_What_It_Is Query].Current_Product ORDER BY NMIS_AGREEMENT_LOTS.ID; | Change | 3.48, 0.10, 2.31, 0.31 |
| Subform | NMIS_PROCESS_LABELS_subform2 |  | Form.NMIS_PROCESS_LABELS_subform2 (master: CN → child: CN) |  |  | 4.28, 0.64, 1.44, 1.15 |
| Label | Label16 | 3 |  |  |  | 0.00, 0.00, 0.60, 0.63 |
| CommandButton | Preview_Prooof_Label | Print Proof Label |  |  | Click | 1.53, 4.24, 1.36, 0.49 |
| TextBox | Lift_Date_Override |  |  |  |  | 6.16, 0.92, 0.72, 0.25 |
| Label | Label50 | Lift Date Override |  |  |  | 6.02, 0.73, 1.09, 0.19 |
| Label | Label51 | Pack Date |  |  |  | 6.23, 1.43, 0.64, 0.16 |
| TextBox | Pack_Date |  |  |  |  | 6.16, 1.62, 0.72, 0.25 |
| Rectangle | Box53 |  |  |  |  | 5.88, 0.58, 1.27, 1.58 |
| TextBox | Date_Lifted |  | =IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].[Form]![Lift_Date_Override]) |  |  | 6.04, 0.33, 0.00, 0.00 |
| ComboBox | Text36 | Order Selected: | =IIf(IsNull([Agreement_Lot_CN_Select]),Null,[NMIS_PROCESS_LABELS_subform1].[Form]![Order_CN]) | SELECT NMIS_ORDERS.CN, Left$([CN],Len([CN])-7) & " - " & [ASSOCIATE_NAME] & " -  " & [ACTIVITY_NAME] AS Order_Client FROM NMIS_ACTIVITY_CODES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ORDERS.ACTIVITY_CODE; |  | 1.82, 3.95, 5.69, 0.24 |
| CommandButton | Preview_Processing_Table_Sign | Table Sign |  |  | Click | 0.33, 4.33, 0.76, 0.29 |
| TextBox | Number_of_Boxes |  |  |  |  | 6.25, 4.46, 0.75, 0.24 |
| Label | No_Boxes_Label | # Bag/Boxes |  |  |  | 6.25, 4.25, 0.75, 0.19 |
| TextBox | Labels_Per |  |  |  |  | 7.05, 4.46, 0.68, 0.24 |
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
```
