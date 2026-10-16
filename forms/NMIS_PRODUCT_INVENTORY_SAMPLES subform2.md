# Form: NMIS_PRODUCT_INVENTORY_SAMPLES subform2

**Caption:** Inventory Counts  
**Record source:**

```sql
SELECT NMIS_PRODUCT_INVENTORY_SAMPLES.ID_ACTIVITY_CN, NMIS_PRODUCT_INVENTORY_SAMPLES.SAMPLE_NO, NMIS_PRODUCT_INVENTORY_SAMPLES.SAMPLE_COUNT, NMIS_PRODUCT_INVENTORY_SAMPLES.SMALL, NMIS_PRODUCT_INVENTORY_SAMPLES.TARGET, NMIS_PRODUCT_INVENTORY_SAMPLES.LARGE FROM NMIS_PRODUCT_INVENTORY_SAMPLES ORDER BY NMIS_PRODUCT_INVENTORY_SAMPLES.ID_ACTIVITY_CN, NMIS_PRODUCT_INVENTORY_SAMPLES.SAMPLE_NO;
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORY_SAMPLES`  
**Embedded in:** `Form:NMIS_PRODUCT_INVENTORIES2`, `Form:NMIS_PRODUCT_INVENTORIES3`  
**Opens:** `Form:NMIS_PRODUCT_INVENTORY_SIZES2 subform`  
**Form events with code:** AfterInsert  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SAMPLE_NO_Label | Sample # |  |  |  | 0.04, 0.04, 0.69, 0.20 |
| Label | SAMPLE_COUNT_Label | Count # |  |  |  | 0.80, 0.04, 0.58, 0.20 |
| Label | SMALL_Label | Small |  |  |  | 1.44, 0.04, 0.46, 0.20 |
| Label | TARGET_Label | Target |  |  |  | 2.51, 0.04, 0.47, 0.20 |
| Label | LARGE_Label | Large |  |  |  | 1.96, 0.04, 0.49, 0.20 |
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 0.92, 0.04, 0.00, 0.00 |
| TextBox | Next_Count |  |  |  |  | 0.12, 0.04, 0.67, 0.00 |
| Label | Label22 | Total |  |  |  | 3.07, 0.04, 0.40, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SAMPLE_NO |  | SAMPLE_NO |  |  | 0.04, 0.01, 0.69, 0.20 |
| TextBox | SAMPLE_COUNT |  | SAMPLE_COUNT |  | DblClick | 0.81, 0.01, 0.57, 0.20 |
| TextBox | SMALL |  | SMALL |  |  | 1.46, 0.01, 0.46, 0.20 |
| TextBox | TARGET |  | TARGET |  |  | 2.51, 0.01, 0.47, 0.20 |
| TextBox | LARGE |  | LARGE |  | Exit | 1.96, 0.01, 0.49, 0.20 |
| TextBox | TOTAL_SIZED |  | =(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0)) |  |  | 3.03, 0.01, 0.42, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Max_Sample_No |  | =Max([SAMPLE_NO]) |  |  | 0.05, 0.02, 0.69, 0.20 |
| TextBox | Sum_of_Sample_Count |  | =Sum([SAMPLE_COUNT]) |  |  | 0.82, 0.02, 0.57, 0.20 |
| TextBox | Sum_of_Small |  | =Sum([SMALL]) |  |  | 1.47, 0.02, 0.46, 0.20 |
| TextBox | Sum_of_Target |  | =Sum([TARGET]) |  |  | 2.52, 0.02, 0.47, 0.20 |
| TextBox | Sum_of_Large |  | =Sum([LARGE]) |  |  | 1.97, 0.02, 0.49, 0.20 |
| TextBox | Sum_Of_Total_Sized |  | =Sum(Nz([SMALL],0)+Nz([LARGE],0)+NZ([TARGET],0)) |  |  | 3.03, 0.02, 0.42, 0.20 |
| TextBox | Mean |  | =Sum([SAMPLE_COUNT])/Max([SAMPLE_NO]) |  |  | 1.86, 0.33, 0.57, 0.20 |
| TextBox | SumX2 |  | =Sum([SAMPLE_COUNT]^2) |  |  | 2.51, 0.33, 0.46, 0.20 |
| TextBox | SumXsq |  | =Sum([SAMPLE_COUNT])^2 |  |  | 3.01, 0.33, 0.49, 0.20 |
| TextBox | STD |  | =IIf(Nz([Max_Sample_No],1)>1,(Sqr(([SumX2]-([SumXsq]/[Max_Sample_No]))/([Max_Sample_No]-1))),Null) |  |  | 0.44, 0.33, 0.47, 0.20 |
| TextBox | CF |  | =[STD]/[Mean]*100 |  |  | 1.39, 0.33, 0.47, 0.20 |
| Label | Shipping Factor label | SD: |  |  |  | 0.08, 0.32, 0.31, 0.21 |
| Label | Label35 | CV: |  |  |  | 1.01, 0.32, 0.31, 0.21 |

## Code-behind (VBA)

```vb
Private Sub Form_AfterInsert()

    Next_Count = Nz(SAMPLE_NO, 0) + 1
    DoCmd.Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub LARGE_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_COUNT) And Not IsNull(SMALL) Then
    
            Sample_Count_Taken = SAMPLE_COUNT
        If IsNull(LARGE) Then
            LARGE = 0
        End If
        
        TARGET = Sample_Count_Taken - (Nz(SMALL, 0) + Nz(LARGE, 0))
        
        If TARGET < 0 Then
            TARGET = 0
        End If
        
    End If
    
End Sub

Private Sub SAMPLE_COUNT_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_PRODUCT_INVENTORY_SIZES2 subform"
 
End Sub
```
