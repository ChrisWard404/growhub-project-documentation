# Form: Associate_Mail_Label_Input

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Form.NMIS_ASSOCIATES_ADDRESSES`  
**Opened from (VBA):** `Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Associate Mailing/Shipping Labels |  |  |  | 1.65, 0.12, 3.38, 0.28 |
| CommandButton | Preview_Report | Click to Preview Label |  |  | Click | 2.50, 3.81, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 6.46, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.17, 6.34, 2.17 |
| ComboBox | Like_Client | Associate: |  | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME];  |  | 5.08, 3.44, 1.08, 0.23 |
| CheckBox | Use_Ship_Address | Use Shipping Address |  |  |  | 3.51, 3.48, 0.12, 0.00 |
| Subform | NMIS_ASSOCIATES_ADDRESSES |  | Form.NMIS_ASSOCIATES_ADDRESSES (master: [Like_Client] → child: ASSOCIATE) |  |  | 0.21, 1.22, 6.18, 1.70 |
| ComboBox | ASSOCIATE_Lookup |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | AfterUpdate, Enter | 3.88, 0.85, 1.04, 0.24 |
| ComboBox | ASSOCIATE_Lookup_by_Name |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.ASSOCIATE FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | AfterUpdate, Enter | 1.08, 0.85, 2.75, 0.24 |
| Label | Label251 | Find Associate by Name                                 by CODE     |  |  |  | 1.08, 0.62, 3.82, 0.21 |
| TextBox | Attn | Attn: |  |  |  | 0.88, 3.04, 3.42, 0.21 |

## Code-behind (VBA)

```vb
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
```
