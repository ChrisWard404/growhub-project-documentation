Option Explicit

Private Sub refresh_Click()
On Error GoTo Err_refresh_Click

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70

Exit_refresh_Click:
    Exit Sub

Err_refresh_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_refresh_Click
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_AGREEMENT_LOT_CN_DblClick

    [AGREEMENT_LOT_CN].Locked = False
    MsgBox "AGREEMENT LOT is now unlocked for editing"
    
Exit_AGREEMENT_LOT_CN_DblClick:
    Exit Sub

Err_AGREEMENT_LOT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_AGREEMENT_LOT_CN_DblClick
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)
    
    [AGREEMENT_LOT_CN].Locked = True
    
End Sub

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

    [Associate].Locked = False
    MsgBox "Associate is now unlocked for editing"
    
End Sub

Private Sub ASSOCIATE_Enter()

    If [Associate] <> "" Then
        [Associate].Locked = True
    Else
        [Associate].Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)

    [Associate].Locked = True
    
End Sub

Private Sub BEGIN_FY_Exit(Cancel As Integer)

    [END_FY] = [BEGIN_FY] + [Total_FY]
    
End Sub

Private Sub Form_Current()

    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If
 
End Sub

Private Sub Open_Products_Form_Click()
On Error GoTo Err_Open_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Products_Form_Click:
    Exit Sub

Err_Open_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Products_Form_Click
    
End Sub

Private Sub Open_Source_Lot_Form_Click()
On Error GoTo Err_Open_Source_Lot_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Form_Click
    
End Sub

Private Sub Lookup_Lots_Click()
On Error GoTo Err_Lookup_Lots_Click

    Dim stDocName As String

    stDocName = "refresh"
    DoCmd.RunMacro stDocName

Exit_Lookup_Lots_Click:
    Exit Sub

Err_Lookup_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lookup_Lots_Click
    
End Sub

Private Sub Open_Agreement_Lots_New_Form_Click()
On Error GoTo Err_Open_Agreement_Lots_New_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![NMIS_AGREEMENTS]![AGREEMENT_LOT_CN]", , acNormal
    Else
        If Not IsNull(source_id) Then
            DoCmd.OpenForm "NMIS_AGREEMENT_LOTS_NEW", acNormal, "", "", acAdd, acHidden
        Else
            MsgBox "Source Lot must be entered"
        End If
    End If
    
Exit_Open_Agreement_Lots_New_Form_Click:
    Exit Sub

Err_Open_Agreement_Lots_New_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Agreement_Lots_New_Form_Click
    
End Sub

Private Sub Refresh_and_Close_Click()
On Error GoTo Err_Refresh_and_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Refresh_and_Close_Click:
    Exit Sub

Err_Refresh_and_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Refresh_and_Close_Click
    
End Sub

Private Sub Open_Species_Form_Click()
On Error GoTo Err_Open_Species_Form_Click
    
    DoCmd.OpenForm "NMIS_SPECIES", acNormal, , , acFormAdd

Exit_Open_Species_Form_Click:
    Exit Sub

Err_Open_Species_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Species_Form_Click
    
End Sub

Private Sub source_id_DblClick(Cancel As Integer)

    MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
    DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal, , , acFormAdd

End Sub

Private Sub source_id_Exit(Cancel As Integer)
    
    If [source_id] > "" Then
        [SPECIES_PRODUCT_CN].Requery
    End If

End Sub

Private Sub source_id_NotInList(NewData As String, Response As Integer)
On Error GoTo Err_source_id_NotInList

'Lot not currently in Source Database, Give option to enter as new lot."
    
    [source_id].Undo
    Response = MsgBox("Lot Not Currently in Database. Do you want to Enter this Source Lot?", vbYesNo)
    
    If Response = vbYes Then
        MsgBox "Click on the Source Lot ID Label above the Source Lot ID Entry Field After adding new lots"
        DoCmd.OpenForm "NMIS_SOURCE_LOTS_INPUT", acNormal, , , acFormAdd
    End If
    
Exit_source_id_NotInList:
    Exit Sub

Err_source_id_NotInList:
    Resume Exit_source_id_NotInList
    
End Sub
Private Sub Requery_Click()
On Error GoTo Err_Requery_Click

    [source_id].Requery
    MsgBox "Source Lots Updated. You may now use any lots you added."
    
Exit_Requery_Click:
    Exit Sub

Err_Requery_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Requery_Click
    
End Sub

Private Sub SPECIES_PRODUCT_CN_Change()

    [END_FY] = [BEGIN_FY] + [Total_FY]
    
End Sub
Private Sub Open_Bend_Lots_Form_Click()
On Error GoTo Err_Open_Bend_Lots_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_Bend"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Bend_Lots_Form_Click:
    Exit Sub

Err_Open_Bend_Lots_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Bend_Lots_Form_Click
    
End Sub