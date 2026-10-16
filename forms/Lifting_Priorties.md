# Form: Lifting_Priorties

**Caption:** Lifting_Priorties  
**Backend tables referenced:** `Lifting_Priorties`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_ORDERS`, `NMIS_SPECIES`  
**Subforms/subreports:** `Form.Lifting_Priorties_Data_Subform`, `Form.Lifting_Priority_Comments subform`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`, `Report:Lifting_Priorities`, `Report:Lifting_Priorities_Checklist`, `Report:Lifting_Priorities_Precooler`, `Report:Lifting_Priorties_Specs`, `Report:Lifting_priorities_detailed`, `Report:Processing_Client_Heads_Up`, `Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99`  
**Opened from (VBA):** `Form_Lifting_Locations_Form`, `Form_Lifting_Priorty_Table_Rebuild_Form`, `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box153 |  |  |  |  | 0.00, 0.00, 5.58, 0.54 |
| Label | Label22 | Lifting Priorities |  |  |  | 5.83, 0.10, 1.75, 0.28 |
| TextBox | Sort_By | Sorted By: |  |  | Click | 8.76, 0.16, 0.91, 0.21 |
| CommandButton | Tip_on_Sorting | Tip |  |  | Click | 9.75, 0.15, 0.31, 0.24 |
| ComboBox | Select_For_Stock_Type | Stock Type: |  | SELECT Lifting_Priorties.[Age Class] FROM Lifting_Priorties WHERE (((Lifting_Priorties.Species) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Species]),"*",[Forms]![Lifting_Priorties]![Select_For_Species]))) GROUP BY Lifting_Priorties.[Age Class] ORDER BY Lifting_Priorties.[Age Class]; | AfterUpdate, Enter | 1.74, 0.27, 1.28, 0.21 |
| ComboBox | Select_For_Species | Species: |  | SELECT Lifting_Priorties.Species, NMIS_SPECIES.VERNACULAR FROM Lifting_Priorties INNER JOIN NMIS_SPECIES ON Lifting_Priorties.Species = NMIS_SPECIES.PLNTMSTR_SYMBOL WHERE (((Lifting_Priorties.[Age Class]) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Stock_Type]),"*",[Forms]![Lifting_Priorties]![Select_For_Stock_Type]))) GROUP BY Lifting_Priorties.Species, NMIS_SPECIES.VERNACULAR ORDER BY NMIS_SPECIES.VERNACULAR; | AfterUpdate, Enter | 1.74, 0.04, 1.28, 0.21 |
| Label | View_Label | Select For (Blank for All) |  |  |  | 0.05, 0.04, 0.82, 0.44 |
| ComboBox | Select_For_Lot_ID | Lot ID: |  | SELECT Lifting_Priorties.[Lot ID] FROM Lifting_Priorties GROUP BY Lifting_Priorties.[Lot ID] ORDER BY Lifting_Priorties.[Lot ID]; | AfterUpdate, Enter | 3.81, 0.28, 0.96, 0.21 |
| TextBox | Select_Like_Location | Like Loc: |  |  | AfterUpdate, Enter | 3.81, 0.05, 0.95, 0.21 |
| CommandButton | View_All | View All |  |  | Click | 4.90, 0.11, 0.61, 0.28 |
| CheckBox | Hide_zero_tolift | Hide 0 to lift |  |  | AfterUpdate | 10.75, 0.15, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl51 |  |  |  |  | 0.00, 0.04, 12.12, 6.42 |
| Page | Data |  |  |  |  | 0.08, 0.33, 11.95, 6.03 |
| Subform | Lifting_Priorties_Subform |  | Form.Lifting_Priorties_Data_Subform |  | Enter | 0.08, 0.33, 11.95, 6.03 |
| Page | Reports |  |  |  | Click | 0.09, 0.33, 11.94, 6.03 |
| TextBox | Min_Priority | Show Priorities |  |  | DblClick, Enter, GotFocus | 1.51, 0.90, 0.25, 0.21 |
| TextBox | Max_Priority |  |  |  | DblClick | 2.09, 0.90, 0.25, 0.21 |
| CommandButton | Preview_Lifting_Priority_Report |  Lifting Priority Report |  |  | Click | 0.51, 2.38, 2.00, 0.29 |
| CommandButton | Command50 | Detailed Lifting Priority Report |  |  | Click | 0.51, 2.69, 2.00, 0.29 |
| Label | Label46 | to |  |  |  | 1.84, 0.92, 0.18, 0.19 |
| ComboBox | HeadsUp_Contact_CN | Heads Up contact: |  | SELECT NMIS_CONTACTS.CN, [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name],"") AS Contact, NMIS_CONTACTS.HISTORICAL FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) ORDER BY [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name],""); |  | 1.69, 3.58, 1.53, 0.21 |
| CommandButton | Client_Heads_Up | Client "Heads Up" |  |  | Click | 0.51, 4.28, 2.00, 0.29 |
| Rectangle | Box56 |  |  |  |  | 0.32, 0.50, 11.30, 4.33 |
| Rectangle | Box57 |  |  |  |  | 0.45, 3.49, 2.92, 1.22 |
| CommandButton | Command59 |  Lifting Priority Checklist |  |  | Click | 0.38, 5.33, 2.00, 0.29 |
| CheckBox | Include_0_ft | Include 0 ft |  |  |  | 3.41, 0.93, 0.25, 0.12 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_CONTACTS AS NMIS_CONTACTS_1 RIGHT JOIN (NMIS_CONTACTS RIGHT JOIN ((NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN Lifting_Priorties ON NMIS_AGREEMENT_LOTS.ID = Lifting_Priorties.[Lot ID]) ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_CONTACTS.CN = NMIS_ORDERS.CONTACT_CN) ON NMIS_CONTACTS_1.CN = NMIS_ORDERS.SECONDARY_CONTACT_CN WHERE (((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![Lifting_Priorties]![Like_Client] & "*") AND ((NMIS_ORDERS.ORDER_AMT)>0) AND ((Lifting_Priorties.[Feet To Lift])>0 Or (Lifting_Priorties.[Feet To Lift]) Is Null) AND ((Lifting_Priorties.Priority)<>99 And (Lifting_Priorties.Priority)>=[Forms]![Lifting_Priorties]![Min_Priority] And (Lifting_Priorties.Priority)<=[Forms]![Lifting_Priorties]![Max_Priority])) GROUP BY NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 1.69, 3.92, 1.53, 0.21 |
| CommandButton | Preview_Lifting_Priority_Precooler_Report | Lifting Priority Report - Precooler |  |  | Click | 0.51, 3.00, 2.00, 0.29 |
| TextBox | Comments | Rreport Comments: |  |  |  | 0.50, 1.40, 3.04, 0.91 |
| Subform | Lifting_Priority_Comments subform | Lifting Priority Comments: | Form.Lifting_Priority_Comments subform |  |  | 4.00, 1.18, 7.42, 3.54 |
| TextBox | Report_Date | Report Date: |  |  |  | 1.35, 0.58, 0.68, 0.21 |
| CheckBox | Data_Processed | No Location Changes |  |  |  | 3.54, 5.42, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "Lifting_priorities_detailed"
    
    DoCmd.Requery
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
    End If
    DoCmd.SetWarnings False
    'Update Order_Services_String Table
    'Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    'Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    'Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdi
    DoCmd.OpenQuery "TOLIFT_BY_PRIORITY_MT Query"
    DoCmd.OpenQuery "TOLIFT_ORDER_MT Query"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Feet_To_Lift_DblClick(Cancel As Integer)

    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [Net Order] = [Net Inv]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Feet_To_Lift_Exit(Cancel As Integer)

    If ([Feet To Lift] + [LIFTED]) < [LOT_LENGTH] Then
        Partial_Lift = -1
    End If
    DoCmd.GoToControl "Priority"
    
End Sub

Private Sub Command59_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities_Checklist"
    
    DoCmd.Requery
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Form_Open(Cancel As Integer)

[Sort_By].Visible = True
Tip_on_Sorting.Visible = True
[Lifting_Priorties_Subform].SetFocus
'DoCmd.GoToControl "[Priority]"

End Sub

Private Sub Hide_zero_tolift_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Lifting_Priorties_Subform_Enter()

Forms![Lifting_Priorties]![Select_For_Species].Visible = True
Forms![Lifting_Priorties]![Select_For_Stock_Type].Visible = True
Forms![Lifting_Priorties]![Select_Like_Location].Visible = True
Forms![Lifting_Priorties]![Select_For_Lot_ID].Visible = True
Forms![Lifting_Priorties]![View_All].Visible = True
Forms![Lifting_Priorties]![View_Label].Visible = True
Forms![Lifting_Priorties]![Sort_By].Visible = True
Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = True
Forms![Lifting_Priorties]![Box153].Visible = True
[Hide_zero_tolift].Visible = True

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
    
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Net_Note_DblClick(Cancel As Integer)
    
    Net_Note = "Destroy"
    
End Sub

Private Sub Net_Order_DblClick(Cancel As Integer)

    [Net Order] = [Net Inv]
    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Open_Specs_Click()

    DoCmd.OpenReport "Lifting_Priorties_Specs", acPreview
    
End Sub

Private Sub Min_Priority_Enter()

Forms![Lifting_Priorties]![Sort_By].Visible = False
Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = False

End Sub

Private Sub Min_Priority_GotFocus()
        
    Forms![Lifting_Priorties]![Select_For_Species].Visible = False
    Forms![Lifting_Priorties]![Select_For_Stock_Type].Visible = False
    Forms![Lifting_Priorties]![Select_Like_Location].Visible = False
    Forms![Lifting_Priorties]![Select_For_Lot_ID].Visible = False
    Forms![Lifting_Priorties]![View_All].Visible = False
    Forms![Lifting_Priorties]![View_Label].Visible = False
    Forms![Lifting_Priorties]![Box153].Visible = False
    'Forms![Lifting_Priorties]![Sort_By].Visible = False
    Forms![Lifting_Priorties]!Tip_on_Sorting.Visible = False
    [Hide_zero_tolift].Visible = False
    
End Sub

Private Sub Preview_Lifting_Priority_Precooler_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities_Precooler"
    
    DoCmd.Requery
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    If Not Data_Processed Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub
Private Sub Reset_Priorities_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_Reset_Priorities_to_99"
    
    Response = MsgBox("Are you sure you want reset ALL to priority 99?", vbYesNo)
    
    DoCmd.Requery
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

End Sub

Private Sub Reports_Click()

    [Hide_zero_tolift].Visible = False
    MsgBox "here"
    
End Sub

Private Sub Select_For_Lot_ID_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Lot_ID_Enter()

    Select_For_Stock_Type = Null
    Select_For_Species = Null
    Select_Like_Location = "*"
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Species_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Species_Enter()

    Select_For_Lot_ID = Null
    Select_Like_Location = "*"
    Select_For_Species.Requery
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Stock_Type_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_For_Stock_Type_Enter()

    Select_For_Lot_ID = Null
    Select_Like_Location = "*"
    Select_For_Stock_Type.Requery
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_Like_Location_AfterUpdate()

    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Select_Like_Location_Enter()

    Select_For_Lot_ID = Null
    Select_For_Stock_Type = Null
    Select_For_Species = Null
    [Lifting_Priorties_Subform].Requery
    
End Sub

Private Sub Sort_By_Click()

    Sort_By.Visible = False
    
End Sub

Private Sub Tip_on_Sorting_Click()

    MsgBox "Click on one of the following Column Headings to sort by that Column." _
        & vbCrLf & "" _
        & vbCrLf & "Priority" _
        & vbCrLf & "Location" _
        & vbCrLf & "Lot ID" _
        & vbCrLf & "Species" _
        & vbCrLf & "Stock Type", vbInformation
   
End Sub
Private Sub View_All_Click()
On Error GoTo Err_View_All_Click

    Select_For_Stock_Type = Null
    Select_For_Species = Null
    Select_Like_Location = "*"
    Select_For_Lot_ID = Null
    [Lifting_Priorties_Subform].Requery

Exit_View_All_Click:
    Exit Sub

Err_View_All_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_All_Click
    
End Sub
```
