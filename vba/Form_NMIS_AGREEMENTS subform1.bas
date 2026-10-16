Option Compare Database

Private Sub Form_Current()

    SPECIES_PRODUCT_CN.Requery
    
End Sub

Private Sub Open_NMIS_Agreements_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENTS"
    stLinkCriteria = "[CN]=" & "'" & Me![CN] & "'"

    DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Forms![NMIS_AGREEMENTS]![Like_Like_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Fy_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_End_Fy_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Species].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Species_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Client].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Client_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_for_Product_Type_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Product].Visible = False
    Forms![NMIS_AGREEMENTS]![Filter_For_Product_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup].Visible = False
    Forms![NMIS_AGREEMENTS]![Agreement_Lookup_Label].Visible = False
    Forms![NMIS_AGREEMENTS]![No_Agreement_lot].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Agreement_Lots].Visible = False
    Forms![NMIS_AGREEMENTS]![Open_Bend_Lots_Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Products Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Source Lot Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Wildcard_Tip].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Agreement_Lots Label].Visible = False
    Forms![NMIS_AGREEMENTS]![Open Agreement Lots Form].Visible = False
    Forms![NMIS_AGREEMENTS]![Green_Background_Box].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Species_Prod_Desc].Visible = False
    Forms![NMIS_AGREEMENTS]![Like_Species_Prod_Desc Label].Visible = False
    
End Sub
