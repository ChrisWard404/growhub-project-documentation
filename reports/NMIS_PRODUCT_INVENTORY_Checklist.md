# Report: NMIS_PRODUCT_INVENTORY_Checklist

**Caption:** NMIS_Plant_Inventory  
**Record source:**

```sql
NMIS_PRODUCT_INVENTORY_Query
```

**Grouping/sorting:** `Reporting_Parent`, `CLIENT_ASSOCIATE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
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

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Combo179 |  | Reporting_Parent | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & "  " & [ASSOCIATE_NAME] AS ASSOCIATE_CODE_AND_NAME FROM NMIS_ASSOCIATES;  |  | 0.04, 0.00, 4.11, 0.21 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | NURSERY_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & "  " & [ASSOCIATE_NAME] AS ASSOCIATE_CODE_AND_NAME FROM NMIS_ASSOCIATES;  |  | 0.18, 0.01, 3.80, 0.20 |

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
