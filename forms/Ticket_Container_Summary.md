# Form: Ticket_Container_Summary

**Caption:** Ticket/TSO Unit Summary  
**Opened from (VBA):** `Form_NMIS_SHIPPING_TICKET subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label7 | # Units |  |  |  | 0.89, 0.92, 0.50, 0.21 |
| Label | Label8 | Unit Code |  |  |  | 1.44, 0.92, 0.85, 0.21 |
| Label | Label9 | Unit Description |  |  |  | 2.35, 0.92, 1.90, 0.21 |
| Label | Label12 | Unit Summary |  |  |  | 2.29, 0.08, 1.42, 0.28 |
| TextBox | Ticket_No |  | =IIf(IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![EXT_DOC_REF]),"Ticket " & [Forms]![NMIS_SHIPPING_TICKET subform]![TKT_NO],"TSO " & [Forms]![NMIS_SHIPPING_TICKET subform]![EXT_DOC_REF]) |  |  | 1.95, 0.46, 2.12, 0.29 |
| Label | Label17 | Est Racks |  |  |  | 5.11, 0.92, 0.67, 0.21 |
| Label | Label20 | Units/Rack |  |  |  | 4.31, 0.92, 0.75, 0.21 |
| Label | Label22 | Tkt |  |  |  | 0.18, 0.92, 0.67, 0.21 |
| CommandButton | Print_Ticket_Container_Summary_Form | Command24 |  |  | Click | 0.18, 0.17, 0.40, 0.40 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Units |  | Units |  |  | 0.89, 0.03, 0.50, 0.21 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 1.44, 0.03, 0.85, 0.21 |
| TextBox | UNIT_DESC |  | UNIT_DESC |  |  | 2.36, 0.03, 1.89, 0.21 |
| TextBox | Text18 |  | Rack Est |  |  | 5.11, 0.03, 0.67, 0.21 |
| TextBox | Text21 |  | AREA_PER_CONTAINER |  |  | 4.30, 0.03, 0.75, 0.21 |
| TextBox | TKT_NO |  | TKT_NO |  |  | 0.18, 0.03, 0.67, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text15 |  | =Sum([Units]) |  |  | 0.89, 0.04, 0.50, 0.21 |
| Label | Label16 | Total: |  |  |  | 0.32, 0.04, 0.52, 0.21 |
| TextBox | Text19 |  | =Sum([Rack Est]) |  |  | 5.11, 0.04, 0.67, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Print_Ticket_Container_Summary_Form_Click()
On Error GoTo Err_Print_Ticket_Container_Summary_Form_Click

    Dim stDocName As String
    Dim MyForm As Form

    stDocName = "Ticket_Container_Summary"
    Set MyForm = Screen.ActiveForm
    DoCmd.SelectObject acForm, stDocName, True
    DoCmd.PrintOut
    DoCmd.SelectObject acForm, MyForm.Name, False

Exit_Print_Ticket_Container_Summary_Form:
    Exit Sub

Err_Print_Ticket_Container_Summary_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Ticket_Container_Summary_Form
    
End Sub
```
