# Form: Associate_Input

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC`, `Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Select an Client  |  |  |  | 1.59, 0.08, 2.02, 0.28 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Like_Client | Client: |  | SELECT [NMIS_ASSOCIATES].[ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES ORDER BY [NMIS_ASSOCIATES].[ASSOCIATE_NAME];  |  | 2.25, 1.58, 1.75, 0.28 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub
```
