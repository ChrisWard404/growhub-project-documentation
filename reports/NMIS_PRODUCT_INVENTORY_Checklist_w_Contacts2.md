# Report: NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2

**Caption:** NMIS_Plant_Inventory  
**Grouping/sorting:** `LAST_NAME`, `FIRST_NAME`, `Name`  
**Subforms/subreports:** `Report.NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport`  
**Opens:** `Form:BeginFY_EndFY_Associate_Species_Input`  
**Opened from (VBA):** `Form_NMIS_PRODUCT_INVENTORY_FORM`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.67, 0.16, 2.81, 0.19 |
| Label | Label33 | Plant Inventory Client Checklist |  |  |  | 2.80, 0.55, 2.53, 0.22 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.45, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.45, 0.00, 3.24, 0.16 |
| Label | Label180 | ____________________________________________________________________________________________________________ |  |  |  | 0.00, 0.77, 7.93, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Name |  | Name |  |  | 0.00, 0.00, 1.46, 0.21 |
| TextBox | PHONE_NUMBER |  | PHONE_NUMBER |  |  | 1.47, 0.00, 0.00, 0.21 |
| TextBox | PHONE_TYPE |  | PHONE_TYPE |  |  | 2.49, 0.00, 1.38, 0.21 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport |  | Report.NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport (master: CN → child: CN) |  |  | 0.19, 0.03, 3.34, 0.18 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.19, 2.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.82, 0.19, 2.13, 0.18 |
| Label | Label113 | ____________________________________________________________________________________________________________ |  |  |  | 0.06, 0.00, 7.93, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```
