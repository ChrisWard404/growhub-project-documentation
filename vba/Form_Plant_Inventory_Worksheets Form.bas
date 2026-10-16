Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Create_Plant_Inventory_Size_Matrix_Worksheets_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_matrix"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Plant_Inventory_Worksheets_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet"
   
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Plant_Inventory_Worksheets_With_Size_Matrix_Click()

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet_w_matrix"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Inventory_Worksheets_Product_Select_MT"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Location_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
    
End Sub

Private Sub Lot_ID_1_Enter()
    
    [Product] = "*"
    [Plntmstr_Symbol] = "*"
    [BEGIN_FY] = "*"
    [END_FY] = "*"
    
End Sub
Private Sub Clear_ids_Click()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    [Lot_ID_5] = Null
End Sub

Private Sub Product_Enter()

    [Lot_ID_1] = Null
    [Lot_ID_2] = Null
    [Lot_ID_3] = Null
    [Lot_ID_4] = Null
    
    Product.Requery
    
End Sub