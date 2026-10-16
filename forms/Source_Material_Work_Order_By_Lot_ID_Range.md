# Form: Source_Material_Work_Order_By_Lot_ID_Range

**Caption:** Source Material Work Order  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  
**Opens:** `Report:NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE`, `Report:Seed_Bank_Work_Order_by_ID_Range`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Source Material Withdrawal Requests by Agreement Lot ID |  |  |  | 1.47, 0.11, 2.14, 0.76 |
| ComboBox | Stored_At_Associate | Stored At Associate: |  | SELECT [NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME] FROM NMIS_ASSOCIATES INNER JOIN (NMIS_SOURCE_LOTS INNER JOIN NMIS_AGREEMENTS ON [NMIS_SOURCE_LOTS].[CN]=[NMIS_AGREEMENTS].[SOURCE_LOT_CN]) ON ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE]) AND ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE]) GROUP BY [NMIS_SOURCE_LOTS].[STORED_AT_ASSOCIATE], [NMIS_ASSOCIATES].[ASSOCIATE_NAME];  |  | 2.06, 1.11, 2.38, 0.23 |
| ComboBox | Begin_ID | Begin ID / Entry Order: |  | SELECT NMIS_AGREEMENT_LOTS.CN, [ID] & " / " & [index] AS [ID / Ent Ord], NMIS_AGREEMENT_LOTS.Index AS [Entry Order], Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.INSERTED_DATE FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Source_Material_Work_Order_By_Lot_ID_Range]![FY])) ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , IIf([Forms]![Source_Material_Work_Order_By_Lot_ID_Range]![Sort_By_Entry_Order]=True,IIf([index]<10,"0","") & IIf([index]<100,"0","") & IIf([index]<1000,"0","") & IIf([index]<10000,"0","") & IIf([index]<100000,"0","") & IIf([index]<1000000,"0","") & IIf([index]<10000000,"0","") & IIf([index]<100000000,"0","") & [index],[id]); | Change, Enter | 2.03, 1.75, 2.17, 0.25 |
| ComboBox | End_ID | End ID / Entry Order: |  | SELECT NMIS_AGREEMENT_LOTS.CN, [ID] & " / " & [index] AS [ID / Ent Ord], NMIS_AGREEMENT_LOTS.Index AS [Entry Order], Source_Lot_ID_and_Source_string.ID_SOURCE2 AS Source, NMIS_AGREEMENT_LOTS.BEGIN_FY AS [Begin FY], NMIS_AGREEMENT_LOTS.INSERTED_DATE FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN WHERE (((NMIS_AGREEMENT_LOTS.BEGIN_FY)=[Forms]![Source_Material_Work_Order_By_Lot_ID_Range]![FY])) ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , IIf([Forms]![Source_Material_Work_Order_By_Lot_ID_Range]![Sort_By_Entry_Order]=True,IIf([index]<10,"0","") & IIf([index]<100,"0","") & IIf([index]<1000,"0","") & IIf([index]<10000,"0","") & IIf([index]<100000,"0","") & IIf([index]<1000000,"0","") & IIf([index]<10000000,"0","") & IIf([index]<100000000,"0","") & [index],[id]); | Enter | 2.03, 2.09, 2.17, 0.25 |
| Line | Line14 |  |  |  |  | 0.08, 0.96, 4.79, 0.00 |
| CommandButton | Print Work Orders | Click to Preview/Print Requests |  |  | Click | 1.96, 2.42, 1.29, 0.58 |
| TextBox | FY | FY: |  |  |  | 2.03, 1.12, 0.68, 0.24 |
| Label | Label18 | Optional |  |  |  | 4.24, 2.08, 0.73, 0.24 |
| CheckBox | Sort_By_Entry_Order | By Entry Order: |  |  |  | 2.03, 1.49, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Offsite_Source_Order_Form_Click()
On Error GoTo Err_Preview_Offsite_Source_Order_Form_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Offsite_Source_Order_Form_C:
    Exit Sub

Err_Preview_Offsite_Source_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Offsite_Source_Order_Form_C
    
End Sub

Private Sub Begin_ID_Change()
    
    End_ID = Null
    
End Sub

Private Sub Begin_ID_Enter()

    Begin_ID.Requery
    
End Sub

Private Sub End_ID_Enter()

    End_ID.Requery
    
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_by_ID_Range"
    
    If Not IsNull(Begin_ID) Then
    If Begin_ID > End_ID Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_ID) Then
            End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN ID", vbExclamation
    End If

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub
```
