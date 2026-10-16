# Form: Lifting_Priorties_Data_Subform

**Caption:** Lifting_Priorties  
**Record source:**

```sql
SELECT Lifting_Priorties.*, IIf([Forms]![Lifting_Priorties]![Sort_By]="Location",[LOCATION],IIf([Forms]![Lifting_Priorties]![Sort_By]="Priority",Val([PRIORITY]),IIf([Forms]![Lifting_Priorties]![Sort_By]="Lot ID",[Lot ID],IIf([Forms]![Lifting_Priorties]![Sort_By]="Species",[Species],IIf([Forms]![Lifting_Priorties]![Sort_By]="Stock Type",[Age Class] & [Species],[LOCATION]))))) AS Sort_By, IIf(([Forms]![Lifting_Priorties]![Hide_zero_tolift] And [Feet To Lift]=0),"yes","no") AS hide_zero_ft_tolift FROM Lifting_Priorties WHERE (((IIf(([Forms]![Lifting_Priorties]![Hide_zero_tolift] And [Feet To Lift]=0),"yes","no"))="No") AND ((Lifting_Priorties.Location) Like [Forms]![Lifting_Priorties]![Select_Like_Location] & "*") AND ((Lifting_Priorties.[Lot ID]) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_lot_ID]),"*",[Forms]![Lifting_Priorties]![Select_For_Lot_ID] & "*")) AND ((Lifting_Priorties.Species) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Species]),"*",[Forms]![Lifting_Priorties]![Select_For_Species])) AND ((Lifting_Priorties.[Age Class]) Like IIf(IsNull([Forms]![Lifting_Priorties]![Select_For_Stock_Type]),"*",[Forms]![Lifting_Priorties]![Select_For_Stock_Type]))) ORDER BY IIf([Forms]![Lifting_Priorties]![Sort_By]="Location",[LOCATION],IIf([Forms]![Lifting_Priorties]![Sort_By]="Priority",Val([PRIORITY]),IIf([Forms]![Lifting_Priorties]![Sort_By]="Lot ID",[Lot ID],IIf([Forms]![Lifting_Priorties]![Sort_By]="Species",[Species],IIf([Forms]![Lifting_Priorties]![Sort_By]="Stock Type",[Age Class] & [Species],[LOCATION]))))), Lifting_Priorties.Location, Lifting_Priorties.BED_SORT_ORDER, Lifting_Priorties.Added;
```

**Backend tables referenced:** `Lifting_Priorties`  
**Embedded in:** `Form:Lifting_Priorties`  
**Opens:** `Form:Lifting_Locations_Form`, `Form:Lifting_Priorty_Table_Rebuild_Form`, `Report:Lifting_Priorities`, `Report:Lifting_Priorties_Specs`, `Report:Processing_Client_Heads_Up`, `Report:TOLIFT_BY_PRIORITY`, `Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Location_Label | Location |  |  | Click | 0.85, 0.04, 1.29, 0.19 |
| Label | Lot ID_Label | Lot ID |  |  | Click | 2.19, 0.04, 1.11, 0.19 |
| Label | Species/Age Class_Label | Species |  |  |  | 3.34, 0.04, 0.66, 0.19 |
| Label | Feet To Lift_Label | Ft To Lift |  |  |  | 9.48, 0.04, 0.60, 0.19 |
| Label | Ft Notet_Label | Ft to Lift Note |  |  |  | 10.14, 0.04, 0.84, 0.19 |
| Label | Net Order_Label | Net Order |  |  |  | 6.55, 0.04, 0.67, 0.19 |
| Label | Net Note_Label | Order Note |  |  |  | 7.26, 0.04, 0.83, 0.19 |
| Label | Lot Length_Label | Inv Ft |  |  |  | 8.15, 0.04, 0.62, 0.19 |
| Label | Net Inv_Label | Net Inv |  |  |  | 5.94, 0.04, 0.56, 0.19 |
| Label | Partial_Lift_Label | Partial |  |  |  | 11.04, 0.04, 0.43, 0.19 |
| Label | Priority_Label | Priority |  |  | Click | 0.27, 0.04, 0.53, 0.19 |
| Label | Age_Class_Label | Stock Type |  |  | Click | 4.04, 0.04, 1.84, 0.19 |
| Label | Label26 | Ft Lifted |  |  |  | 8.82, 0.04, 0.60, 0.19 |
| TextBox | Location_Backup |  |  |  |  | 2.73, 0.03, 1.28, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Location |  | Location |  | DblClick, Enter, Exit | 0.85, 0.03, 1.28, 0.21 |
| TextBox | Lot ID |  | Lot ID |  | Enter | 2.19, 0.03, 1.09, 0.21 |
| TextBox | Species/Age Class |  | Species |  |  | 3.32, 0.03, 0.65, 0.21 |
| TextBox | Feet To Lift |  | Feet To Lift |  | DblClick, Exit | 9.48, 0.03, 0.59, 0.21 |
| TextBox | Ft Note |  | Ft Note |  |  | 10.14, 0.03, 0.84, 0.21 |
| TextBox | Net Order |  | Net Order |  | DblClick | 6.55, 0.03, 0.67, 0.21 |
| TextBox | Net Note |  | Net Note |  | DblClick | 7.27, 0.03, 0.81, 0.21 |
| TextBox | Lot Length |  | Lot Length |  | DblClick, Enter, Exit | 8.15, 0.03, 0.61, 0.21 |
| TextBox | Net Inv |  | Net Inv |  | DblClick, Enter | 5.94, 0.03, 0.56, 0.21 |
| TextBox | Priority |  | Priority |  | Change, DblClick, Exit | 0.27, 0.03, 0.53, 0.21 |
| TextBox | Age Class |  | Age Class |  | DblClick, Enter | 4.03, 0.03, 1.83, 0.21 |
| TextBox | LIFTED |  | LIFTED |  | DblClick, Enter | 8.82, 0.03, 0.59, 0.21 |
| CheckBox | Partial_Lift |  | Partial_Lift |  |  | 11.21, 0.07, 0.00, 0.00 |
| CommandButton | Open_Specs | s |  |  | Click | 0.06, 0.03, 0.18, 0.22 |
| CheckBox | Added | Added | Added |  |  | 10.68, 0.06, 0.00, 0.00 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Reset_Priorities | Reset to 99... |  |  | Click | 9.06, 0.04, 0.84, 0.29 |
| CommandButton | Delete_Lifted_Lots | Update... |  |  | Click | 0.06, 0.04, 1.23, 0.29 |
| CommandButton | Rebuild_Lifting_Priority_Table | Rebuild... |  |  | Click | 10.02, 0.04, 0.84, 0.29 |

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

    stDocName = "TOLIFT_BY_PRIORITY"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Age_Class_DblClick(Cancel As Integer)
    
    Age_Class.Locked = False
    
End Sub

Private Sub Age_Class_Enter()

    If Not IsNull(Age_Class) Then
        Age_Class.Locked = True
    Else
        Age_Class.Locked = False
    End If
End Sub

Private Sub Age_Class_Label_Click()
On Error GoTo Err_Age_Class_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Stock Type"
   DoCmd.Requery
   
Exit_Age_Class_Label_Click:
    Exit Sub

Err_Age_Class_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Age_Class_Label_Click
End Sub

Private Sub Delete_Lifted_Lots_Click()
    
    Response = MsgBox("This will delete lifted lots and add or update orders. Continue?", vbYesNo)
    
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Delete_Lifted_mt"
        DoCmd.OpenQuery "TOLIFT_Lift_Prioities_Clear"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Delete_Lifted_at"
        DoCmd.OpenForm "Lifting_Locations_Form", , , , , acHidden
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Append_New_Orders_at"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Update_mt"
        DoCmd.OpenQuery "TOLIFT_Lift_Priorities_Update"
        DoCmd.Close acForm, "LIFTING_LOCATIONS_FORM"
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

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

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub LIFTED_DblClick(Cancel As Integer)

    LIFTED.Locked = False
    
End Sub

Private Sub LIFTED_Enter()

    If Not IsNull(LIFTED) Then
        LIFTED.Locked = True
    Else
        LIFTED.Locked = False
    End If
End Sub

Private Sub LOCATION_AfterUpdate()
    Response = MsgBox("Are you Sure you want to change the Location?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [LOCATION] = Location_Backup
        End If
    
End Sub

Private Sub Location_DblClick(Cancel As Integer)

    If IsNull(LOCATION) Then
        LOCATION = "Precooler"
        Priority = 100
    End If
    
End Sub

Private Sub Location_Enter()

    Location_Backup = LOCATION

End Sub

Private Sub Location_Exit(Cancel As Integer)

End Sub

Private Sub Location_Label_Click()
On Error GoTo Err_Location_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Location"
   DoCmd.Requery
   
Exit_Location_Label_Click:
    Exit Sub

Err_Location_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Location_Label_Click
End Sub

Private Sub LOT_ID_DblClick(Cancel As Integer)

    Lot_ID.Locked = False
    
End Sub

Private Sub Lot_ID_Enter()

    If Not IsNull(Lot_ID) Then
        Lot_ID.Locked = True
    Else
        Lot_ID.Locked = False
    End If
End Sub

Private Sub Lot_ID_Label_Click()
On Error GoTo Err_Lot_ID_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Lot ID"
   DoCmd.Requery
   
Exit_Lot_ID_Label_Click:
    Exit Sub

Err_Lot_ID_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_ID_Label_Click
End Sub

Private Sub Lot_Length_DblClick(Cancel As Integer)

    LOT_LENGTH.Locked = False
    
End Sub

Private Sub Lot_Length_Enter()

    If Not IsNull(LOT_LENGTH) Then
        LOT_LENGTH.Locked = True
    Else
        LOT_LENGTH.Locked = False
    End If
End Sub

Private Sub Lot_Length_Exit(Cancel As Integer)

    If IsNull(LOT_LENGTH) Then
        LOT_LENGTH.Locked = True
    Else
        LOT_LENGTH.Locked = False
    End If
End Sub

Private Sub Net_Inv_DblClick(Cancel As Integer)

    NET_INV.Locked = False
    
End Sub

Private Sub Net_Inv_Enter()

    If Not IsNull(NET_INV) Then
        NET_INV.Locked = True
    Else
        NET_INV.Locked = False
    End If
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

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Change()

    Added = False
    
End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Priority_Label_Click()
On Error GoTo Err_Priority_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Priority"
   DoCmd.Requery
   
Exit_Priority_Label_Click:
    Exit Sub

Err_Priority_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Priority_Label_Click
End Sub

Private Sub Rebuild_Lifting_Priority_Table_Click()
    
    DoCmd.OpenForm "Lifting_Locations_Form", , , , , acHidden
    DoCmd.OpenForm "Lifting_Priorty_Table_Rebuild_Form"

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

Private Sub Species_Age_Class_DblClick(Cancel As Integer)

    Species_Age_Class.Locked = False
    
End Sub

Private Sub Species_Age_Class_Enter()

    If Not IsNull(Species_Age_Class) Then
        Species_Age_Class.Locked = True
    Else
        Species_Age_Class.Locked = False
    End If
End Sub

Private Sub Species_Age_Class_Label_Click()
On Error GoTo Err_Species_Age_Class_Label_Click

   Forms![Lifting_Priorties]![Sort_By] = "Species"
   DoCmd.Requery
   
Exit_Species_Age_Class_Label_Click:
    Exit Sub

Err_Species_Age_Class_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Age_Class_Label_Click
End Sub
```
