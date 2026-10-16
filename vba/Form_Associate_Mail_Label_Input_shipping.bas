Option Compare Database

Private Sub ASSOCIATE_Lookup_AfterUpdate()

    Like_Client = ASSOCIATE_Lookup
    
End Sub

Private Sub ASSOCIATE_Lookup_by_Name_AfterUpdate()

    Like_Client = ASSOCIATE_Lookup_by_Name
    
End Sub

Private Sub ASSOCIATE_Lookup_by_Name_Enter()

    ASSOCIATE_Lookup = Null
    
End Sub

Private Sub ASSOCIATE_Lookup_Enter()

    
    ASSOCIATE_Lookup_by_Name = Null
    
End Sub

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub