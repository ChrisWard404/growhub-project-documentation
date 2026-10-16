# Form: NMIS_PRODUCT_INVENTORY_SAMPLES subform

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORIES`  
**Embedded in:** `Form:**********dbdNMIS_PRODUCT_INVENTORIES`, `Form:NMIS_PRODUCT_INVENTORIES`  
**Opens:** `Form:NMIS_PRODUCT_INVENTORY_SIZES2c subform`  
**Form events with code:** AfterInsert  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SAMPLE_NO_Label | Sample # |  |  |  | 0.04, 0.04, 0.69, 0.20 |
| Label | SAMPLE_COUNT_Label | Count # |  |  |  | 0.80, 0.04, 0.58, 0.20 |
| Label | SMALL_Label | Small |  |  |  | 1.47, 0.04, 0.46, 0.20 |
| Label | TARGET_Label | Target |  |  |  | 2.54, 0.04, 0.47, 0.20 |
| Label | LARGE_Label | Large |  |  |  | 1.99, 0.04, 0.49, 0.20 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.95, 0.04, 0.00, 0.00 |
| TextBox | Next_Count |  |  |  |  | 0.12, 0.04, 0.67, 0.00 |
| Label | Label22 | Total |  |  |  | 3.10, 0.04, 0.40, 0.20 |
| TextBox | EmptyCellTemp |  | =([Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Inventory_Factors_For_Cycle subform].[Form]![Cells_Per_Container]/[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Inventory_Factors_For_Cycle subform].[Form]![INV_SAMPLES_PER_CONTAINER]) |  |  | 2.07, 0.04, 0.67, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SAMPLE_NO |  | SAMPLE_NO |  |  | 0.04, 0.01, 0.69, 0.20 |
| TextBox | SAMPLE_COUNT |  | SAMPLE_COUNT |  | AfterUpdate, DblClick | 0.81, 0.01, 0.57, 0.20 |
| TextBox | SMALL |  | SMALL |  | Exit | 1.49, 0.01, 0.46, 0.20 |
| TextBox | TARGET |  | TARGET |  |  | 2.54, 0.01, 0.47, 0.20 |
| TextBox | LARGE |  | LARGE |  | Exit | 1.99, 0.01, 0.49, 0.20 |
| TextBox | TOTAL_SIZED |  | =(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0)) |  |  | 3.06, 0.01, 0.42, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Max_Sample_No |  | =Max([SAMPLE_NO]) |  |  | 0.05, 0.04, 0.69, 0.20 |
| TextBox | Sum_of_Sample_Count |  | =Sum([SAMPLE_COUNT]) |  |  | 0.82, 0.04, 0.57, 0.20 |
| TextBox | Sum_of_Small |  | =Sum([SMALL]) |  |  | 1.50, 0.04, 0.46, 0.20 |
| TextBox | Sum_of_Target |  | =Sum([TARGET]) |  |  | 2.55, 0.04, 0.47, 0.20 |
| TextBox | Sum_of_Large |  | =Sum([LARGE]) |  |  | 2.00, 0.04, 0.49, 0.20 |
| TextBox | Sum_Of_Total_Sized |  | =Sum(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0)) |  |  | 3.06, 0.04, 0.42, 0.20 |
| TextBox | Mean |  | =Sum([SAMPLE_COUNT])/Max([SAMPLE_NO]) |  |  | 1.85, 0.29, 0.57, 0.20 |
| TextBox | SumX2 |  | =Sum([SAMPLE_COUNT]^2) |  |  | 2.50, 0.29, 0.46, 0.20 |
| TextBox | SumXsq |  | =Sum([SAMPLE_COUNT])^2 |  |  | 3.00, 0.29, 0.49, 0.20 |
| TextBox | STD |  | =IIf(Nz([Max_Sample_No],1)>1,(Sqr(([SumX2]-([SumXsq]/[Max_Sample_No]))/([Max_Sample_No]-1))),Null) |  |  | 0.43, 0.29, 0.47, 0.20 |
| TextBox | CF |  | =[STD]/[Mean]*100 |  |  | 1.38, 0.29, 0.47, 0.20 |
| Label | Shipping Factor label | SD: |  |  |  | 0.07, 0.28, 0.31, 0.21 |
| Label | Label35 | CV: |  |  |  | 1.00, 0.28, 0.31, 0.21 |
| TextBox | SampleCount |  | =Count([SAMPLE_NO]) |  |  | 0.96, 0.29, 0.49, 0.20 |
| TextBox | CheckSampleCountMessage |  | =IIf([Max_Sample_No]<>[SampleCount],"CHECK SAMPLE #'s") |  |  | 1.96, 0.29, 1.56, 0.21 |

## Code-behind (VBA)

```vb
Private Sub Form_AfterInsert()

    'Next_Count = Nz(SAMPLE_NO, 0) + 1
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub LARGE_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_COUNT) Then 'And Not IsNull(SMALL) Then
    
        Sample_Count_Taken = SAMPLE_COUNT
        
        If IsNull(LARGE) Then
            LARGE = 0
        End If
        
        TARGET = Forms![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Inventory_Factors_For_Cycle subform].Form![INV_SIZE_SAMPLE] - _
            (Nz(SMALL, 0) + Nz(LARGE, 0))
        
        If TARGET < 0 Then
            TARGET = 0
        End If
        
    End If
    
End Sub

Private Sub SAMPLE_COUNT_AfterUpdate()
    
    If SAMPLE_NO = 0 Then
        SAMPLE_NO = Nz([Max_Sample_No], 0) + 1
    End If
    
    If Forms![NMIS_PRODUCT_INVENTORIES]![Count_Empties] Then
            SAMPLE_COUNT = EmptyCellTemp - SAMPLE_COUNT
    End If
    
End Sub

Private Sub SAMPLE_COUNT_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORY_SIZES2c subform"
 
End Sub

Private Sub SMALL_Exit(Cancel As Integer)

    If IsNull(SMALL) Then
            SMALL = 0
        End If
End Sub
```
