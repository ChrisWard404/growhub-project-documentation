Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_BY_PRIORITY"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
    
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Processing_PRIORITY_AfterUpdate()

End Sub

Private Sub Column_AfterUpdate()
    
    Default_Column = Column
    
End Sub

Private Sub Column_Enter()
    
    If PROCESSING_PRIORITY = 21 Or _
        PROCESSING_PRIORITY = 41 Or _
         PROCESSING_PRIORITY = 61 Then
        Default_Column = Default_Column + 1
    End If
    If Default_Column > 4 Then
        Default_Column = 4
    End If
    
    If IsNull(Column) Then
        Column = Default_Column
    End If
    
End Sub

Private Sub Column_Exit(Cancel As Integer)

        Default_Column = Column
        
End Sub

Private Sub Process_Table_PRIORITY_Enter()

    If IsNull(Process_Table_PRIORITY) Then
        Process_Table_PRIORITY = Next_Priority
    End If
    
End Sub

Private Sub Process_Table_PRIORITY_Exit(Cancel As Integer)

    Next_Priority = Process_Table_PRIORITY + 1
    
End Sub

Private Sub Table_AfterUpdate()
    
    Default_Table = Table
    Next_Priority = 1
    
End Sub

Private Sub Table_Enter()

    If IsNull(Table) Then
        Table = Default_Table
    End If
    
End Sub

Private Sub Table_Exit(Cancel As Integer)

        Default_Table = Table
        
End Sub

Private Sub Update_Click()
    
        DoCmd.Requery

End Sub