# Form: Plant_Processing_Table_Priorties_Data_Subform

**Caption:** Lifting_Priorties  
**Record source:**

```sql
SELECT NMIS_Processing_Table_Priorities.PROCESSING_FY, NMIS_Processing_Table_Priorities.PROCESS, IIf(IsNull([Processing_PRIORITY]),99,[Processing_PRIORITY]) AS Plant_Processing_Table_Priority_Sort, NMIS_Processing_Table_Priorities.PROCESSING_DATE, NMIS_Processing_Table_Priorities.TABLE, NMIS_Processing_Table_Priorities.PROCESSING_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_Processing_Table_Priorities.NOTE, NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_Processing_Table_Priorities.ORDER_CN, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ORDER_AMT, Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7) AS [Order ID], NMIS_Processing_Table_Priorities.COLUMN, NMIS_Processing_Table_Priorities.AMT_OVERRIDE FROM NMIS_Processing_Table_Priorities INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_Processing_Table_Priorities.ORDER_CN = NMIS_ORDERS.CN WHERE (((NMIS_Processing_Table_Priorities.PROCESSING_FY) Like [Forms]![Plant_Processing_Table_Priorties]![Like_Harvest_FY] Or (NMIS_Processing_Table_Priorities.PROCESSING_FY) Like "*" Or (NMIS_Processing_Table_Priorities.PROCESSING_FY) Is Null) AND ((NMIS_Processing_Table_Priorities.PROCESSING_DATE)=[Forms]![Plant_Processing_Table_Priorties]![Default_Date]) AND ((NMIS_Processing_Table_Priorities.TABLE) Like [Forms]![Plant_Processing_Table_Priorties]![Like_Table] & "*")) ORDER BY NMIS_Processing_Table_Priorities.PROCESSING_FY DESC , NMIS_Processing_Table_Priorities.PROCESSING_DATE, NMIS_Processing_Table_Priorities.TABLE, NMIS_Processing_Table_Priorities.PROCESSING_PRIORITY, NMIS_AGREEMENT_LOTS.ID;
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ORDERS`, `NMIS_Processing_Table_Priorities`  
**Embedded in:** `Form:Plant_Processing_Table_Priorties`  
**Opens:** `Report:Lifting_Priorities`, `Report:Processing_Client_Heads_Up`, `Report:TOLIFT_BY_PRIORITY`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Lot ID_Label | Order ID |  |  |  | 1.41, 0.19, 0.66, 0.19 |
| Label | Feet To Lift_Label |  FY |  |  |  | 9.61, 0.19, 0.43, 0.19 |
| Label | Ft Notet_Label | Process Note |  |  |  | 6.67, 0.19, 2.91, 0.19 |
| Label | Partial_Lift_Label | Processed |  |  |  | 0.02, 0.19, 0.69, 0.19 |
| Label | Priority_Label | Priority |  |  |  | 2.55, 0.19, 0.47, 0.19 |
| Label | Label55 | Date |  |  |  | 0.76, 0.19, 0.60, 0.19 |
| Label | Label57 | Table |  |  |  | 2.10, 0.19, 0.41, 0.19 |
| Label | Label60 | Lot ID |  |  |  | 4.98, 0.18, 1.03, 0.20 |
| Label | Label62 | Clilent |  |  |  | 6.05, 0.18, 0.57, 0.20 |
| Label | Label64 | Amt (M) |  |  |  | 4.29, 0.18, 0.65, 0.20 |
| Label | Label66 | Column |  |  |  | 3.06, 0.19, 0.48, 0.19 |
| Label | Label74 | Amt (M) Override |  |  |  | 3.59, 0.04, 0.66, 0.33 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Process_FY |  | PROCESSING_FY |  |  | 9.61, 0.03, 0.42, 0.21 |
| TextBox | NOTE |  | NOTE |  |  | 6.67, 0.03, 2.91, 0.21 |
| TextBox | Process_Table_PRIORITY |  | PROCESSING_PRIORITY |  | Enter, Exit | 2.55, 0.03, 0.46, 0.21 |
| CheckBox | Process |  | PROCESS |  |  | 0.30, 0.06, 0.00, 0.00 |
| TextBox | Process_DATE |  | PROCESSING_DATE |  |  | 0.76, 0.03, 0.59, 0.21 |
| ComboBox | Lot_ID |  | ORDER_CN | SELECT NMIS_ORDERS.CN, NMIS_AGREEMENT_LOTS.ID, Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7) AS [Order ID] FROM NMIS_SPECIES_PRODUCT_END_PROD_GROUP RIGHT JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCT_END_PROD_GROUP.SPECIES_PRODUCT_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN WHERE (((NMIS_SPECIES_PRODUCT_END_PROD_GROUP.PRODUCT_GROUP)="plant") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Plant_Processing_Table_Priorties]![Like_Processing_FY])) ORDER BY NMIS_AGREEMENT_LOTS.END_FY DESC , NMIS_AGREEMENT_LOTS.ID, NMIS_ORDERS.CN; |  | 4.98, 0.03, 1.04, 0.21 |
| TextBox | Table |  | TABLE |  | AfterUpdate, Enter, Exit | 2.10, 0.03, 0.40, 0.21 |
| TextBox | Amt |  | ORDER_AMT |  |  | 4.29, 0.03, 0.65, 0.20 |
| TextBox | Client |  | CLIENT_ASSOCIATE |  |  | 6.05, 0.03, 0.56, 0.21 |
| ComboBox | Order_ID |  | ORDER_CN | SELECT NMIS_ORDERS.CN, Left$([nmis_orders].[CN],Len([nmis_orders].[CN])-7) AS [Order ID], NMIS_AGREEMENT_LOTS.ID FROM NMIS_ORDERS INNER JOIN (NMIS_SPECIES_PRODUCT_END_PROD_GROUP RIGHT JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCT_END_PROD_GROUP.SPECIES_PRODUCT_CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Plant_Processing_Table_Priorties]![Like_Processing_FY]) AND ((NMIS_SPECIES_PRODUCT_END_PROD_GROUP.PRODUCT_GROUP)="plant")) ORDER BY NMIS_ORDERS.FISCAL_YEAR DESC , NMIS_ORDERS.CN; |  | 1.41, 0.03, 0.65, 0.21 |
| ComboBox | Column |  | COLUMN | 1;2;3;4 | AfterUpdate, Enter, Exit | 3.06, 0.03, 0.50, 0.21 |
| TextBox | AMT_OVERRIDE |  | AMT_OVERRIDE |  |  | 3.59, 0.03, 0.65, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Update | Update Priorities |  |  | Click | 6.75, 0.04, 1.23, 0.29 |
| TextBox | Default_Column | Column: |  |  |  | 8.21, 0.06, 0.20, 0.19 |
| TextBox | Default_Table | Table: |  |  |  | 8.90, 0.06, 0.20, 0.19 |
| TextBox | Next_Priority | Priority: |  |  |  | 9.70, 0.06, 0.20, 0.19 |
| TextBox | Text76 | Table 1 Total: | =Sum(IIf([process]=False,IIf([Table]="1",nz([AMT_OVERRIDE],[ORDER_AMT]),0))) |  |  | 1.08, 0.08, 0.53, 0.21 |
| TextBox | Text78 | Table 2 Total: | =Sum(IIf([process]=False,IIf([Table]="2",nz([AMT_OVERRIDE],[ORDER_AMT]),0))) |  |  | 2.73, 0.08, 0.53, 0.21 |
| TextBox | Text80 | Table 3 Total: | =Sum(IIf([process]=False,IIf([Table]="3",nz([AMT_OVERRIDE],[ORDER_AMT]),0))) |  |  | 4.38, 0.08, 0.53, 0.21 |
| TextBox | Text82 | Side Sort Total: | =Sum(IIf([process]=False,IIf([Table]="ss",nz([AMT_OVERRIDE],[ORDER_AMT]),0))) |  |  | 6.10, 0.08, 0.53, 0.21 |

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

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
    
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Processing_PRIORITY_AfterUpdate()

End Sub

Private Sub Column_AfterUpdate()
    
    Default_Column = Column
    
End Sub

Private Sub Column_Enter()
    
    If PROCESSING_PRIORITY = 21 Or _
        PROCESSING_PRIORITY = 41 Or _
         PROCESSING_PRIORITY = 61 Then
        Default_Column = Default_Column + 1
    End If
    If Default_Column > 4 Then
        Default_Column = 4
    End If
    
    If IsNull(Column) Then
        Column = Default_Column
    End If
    
End Sub

Private Sub Column_Exit(Cancel As Integer)

        Default_Column = Column
        
End Sub

Private Sub Process_Table_PRIORITY_Enter()

    If IsNull(Process_Table_PRIORITY) Then
        Process_Table_PRIORITY = Next_Priority
    End If
    
End Sub

Private Sub Process_Table_PRIORITY_Exit(Cancel As Integer)

    Next_Priority = Process_Table_PRIORITY + 1
    
End Sub

Private Sub Table_AfterUpdate()
    
    Default_Table = Table
    Next_Priority = 1
    
End Sub

Private Sub Table_Enter()

    If IsNull(Table) Then
        Table = Default_Table
    End If
    
End Sub

Private Sub Table_Exit(Cancel As Integer)

        Default_Table = Table
        
End Sub

Private Sub Update_Click()
    
        DoCmd.Requery

End Sub
```
