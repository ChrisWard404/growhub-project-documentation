# Form: Lifting_Priorties_BU

**Caption:** Lifting_Priorties  
**Record source:**

```sql
SELECT Lifting_Priorties.* FROM Lifting_Priorties ORDER BY Lifting_Priorties.Location, Lifting_Priorties.BED_SORT_ORDER, Lifting_Priorties.[Lot ID];
```

**Backend tables referenced:** `Lifting_Priorties`, `NMIS_CONTACTS`  
**Opens:** `Report:Lifting_Priorities`, `Report:Lifting_Priorties_Specs`, `Report:Processing_Client_Heads_Up`, `Report:TOLIFT_BY_PRIORITY`, `Report:TOLIFT_Lift_Priorities_Reset_Priorities_to_99`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Location_Label | Location |  |  |  | 0.85, 0.54, 0.93, 0.19 |
| Label | Lot ID_Label | Lot ID |  |  |  | 1.83, 0.54, 1.09, 0.19 |
| Label | Species/Age Class_Label | Species |  |  |  | 2.96, 0.54, 0.66, 0.19 |
| Label | Feet To Lift_Label | Ft To Lift |  |  |  | 8.93, 0.54, 0.60, 0.19 |
| Label | Ft Notet_Label | Ft to Lift Note |  |  |  | 9.58, 0.54, 0.84, 0.19 |
| Label | Net Order_Label | Net Order |  |  |  | 6.00, 0.54, 0.67, 0.19 |
| Label | Net Note_Label | Order Note |  |  |  | 6.71, 0.54, 0.83, 0.19 |
| Label | Lot Length_Label | Inv Ft |  |  |  | 7.59, 0.54, 0.62, 0.19 |
| Label | Net Inv_Label | Net Inv |  |  |  | 5.39, 0.54, 0.56, 0.19 |
| Label | Partial_Lift_Label | Partial |  |  |  | 10.49, 0.54, 0.43, 0.19 |
| Label | Priority_Label | Priority |  |  |  | 0.27, 0.54, 0.53, 0.19 |
| Label | Label22 | Lifting Priorities |  |  |  | 4.58, 0.08, 1.75, 0.28 |
| Label | Label24 | Age Class |  |  |  | 3.65, 0.54, 1.69, 0.19 |
| Label | Label26 | Ft Lifted |  |  |  | 8.27, 0.54, 0.60, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Location |  | Location |  |  | 0.85, 0.03, 0.93, 0.21 |
| TextBox | Lot ID |  | Lot ID |  |  | 1.83, 0.03, 1.09, 0.21 |
| TextBox | Species/Age Class |  | Species |  |  | 2.97, 0.03, 0.65, 0.21 |
| TextBox | Feet To Lift |  | Feet To Lift |  | DblClick, Exit | 8.93, 0.03, 0.59, 0.21 |
| TextBox | Ft Note |  | Ft Note |  |  | 9.58, 0.03, 0.84, 0.21 |
| TextBox | Net Order |  | Net Order |  | DblClick | 6.00, 0.03, 0.67, 0.21 |
| TextBox | Net Note |  | Net Note |  | DblClick | 6.72, 0.03, 0.81, 0.21 |
| TextBox | Lot Length |  | Lot Length |  |  | 7.59, 0.03, 0.61, 0.21 |
| TextBox | Net Inv |  | Net Inv |  |  | 5.39, 0.03, 0.56, 0.21 |
| TextBox | Priority |  | Priority |  | DblClick | 0.27, 0.03, 0.53, 0.21 |
| TextBox | Age Class |  | Age Class |  |  | 3.68, 0.03, 1.65, 0.21 |
| TextBox | LIFTED |  | LIFTED |  |  | 8.27, 0.03, 0.59, 0.21 |
| CheckBox | Partial_Lift |  | Partial_Lift |  |  | 10.66, 0.07, 0.00, 0.00 |
| CommandButton | Open_Specs | s |  |  | Click | 0.06, 0.03, 0.18, 0.22 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Client_Heads_Up | Client "Heads Up" |  |  | Click | 7.39, 0.04, 1.17, 0.29 |
| ComboBox | HeadsUp_Contact_CN | Heads Up contact: |  | SELECT NMIS_CONTACTS.CN, [Last_Name] & IIf(Not IsNull([first_name]),", " & [first_name],"") AS Contact FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])); |  | 5.68, 0.07, 1.53, 0.21 |
| TextBox | Min_Priority | Show Priorities |  |  | DblClick | 3.49, 0.07, 0.25, 0.21 |
| CommandButton | Preview_Lifting_Priority_Report | Preview Lifting Priority Report |  |  | Click | 0.12, 0.04, 1.90, 0.29 |
| CommandButton | Reset_Priorities | Reset to 99 |  |  | Click | 10.16, 0.04, 0.80, 0.29 |
| Label | Label46 | to |  |  |  | 3.82, 0.09, 0.18, 0.19 |
| TextBox | Max_Priority |  |  |  | DblClick | 4.07, 0.07, 0.25, 0.21 |
| CommandButton | Command50 | Detailed Report |  |  | Click | 8.71, 0.04, 1.17, 0.29 |

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
```
