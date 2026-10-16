Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_AfterUpdate()

    Plntmstr_Symbol = "*"
    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

Like_Client = "*"
CONTACT_CN = Null

End Sub

Private Sub OutYears_Report_Detailed_by_Forest_Click()
On Error GoTo Err_OutYears_Report_Detailed_by_Forest_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Detailed_by_Forest"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Detailed_by_Forest_Click:
    Exit Sub

Err_OutYears_Report_Detailed_by_Forest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Detailed_by_Forest_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Forest_Dist_species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Forest_Dist_Species_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forestt_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forestt_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Forest_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product_SPD_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product_SPD_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_SPD_Query"
    DoCmd.OpenQuery stDocName

Exit_OutYears_Report_Summary_Grand_by_Product_SPD_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product_SPD_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product2_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product2_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product2"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product2_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product2_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Client_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Client_Sub_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_Forest_Sub"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Client_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Client_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Client_Sub_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Species_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Species_Sub_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_Species_Sub"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Species_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Species_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Species_Sub_Click
    
End Sub

Private Sub Regional_Summary_Click()
On Error GoTo Err_Regional_Summary_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Grand_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_Click:
    Exit Sub

Err_Regional_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_Click
    
End Sub

Private Sub Regional_Summary_With_Forest_Level_Detail_Click()
On Error GoTo Err_Regional_Summary_With_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_With_Forest_Level_Detail_Click:
    Exit Sub

Err_Regional_Summary_With_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_With_Forest_Level_Detail_Click
    
End Sub

Private Sub Regional_Summary_Without_Forest_Level_Detail_Click()
On Error GoTo Err_egional_Summary_Without_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region2"
    DoCmd.OpenReport stDocName, acPreview

Exit_egional_Summary_Without_Forest_Level_Detail_Click:
    Exit Sub

Err_egional_Summary_Without_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_egional_Summary_Without_Forest_Level_Detail_Click
    
End Sub