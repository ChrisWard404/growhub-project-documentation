# Form: NMIS_ID_ACTIVITIES_ACTIVITIES3_subform

**Caption:** NMIS ID Cultural Activities subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_ORDERS`, `NMIS_TICKETS`, `NMIS_TREATMENT_PRODUCTS`  
**Embedded in:** `Form:NMIS_ID_ACTIVITY_FORM`  
**Form events with code:** Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Activity Date |  |  |  | 1.36, 0.06, 0.64, 0.37 |
| Label | Label33 | Activity Code |  |  |  | 2.03, 0.06, 0.82, 0.37 |
| TextBox | Index |  | Index |  |  | 0.88, 0.04, 0.50, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 1.48, 0.04, 0.88, 0.00 |
| Label | Label54 | Fiscal Year |  |  |  | 0.81, 0.06, 0.53, 0.37 |
| Label | Label56 | Treatment Product |  |  |  | 3.95, 0.06, 1.07, 0.37 |
| Label | Label58 | Activity Units |  |  |  | 2.90, 0.06, 0.54, 0.37 |
| Label | Label60 | Amount/ Unit |  |  |  | 5.05, 0.06, 0.59, 0.37 |
| Label | Label52 | Activities |  |  |  | 0.00, 0.06, 0.76, 0.37 |
| Label | Label68 | Unit Code |  |  |  | 3.47, 0.06, 0.44, 0.37 |
| Label | Label70 | Units Presc. |  |  |  | 5.67, 0.06, 0.52, 0.37 |
| Label | Label77 | Order No. |  |  |  | 6.22, 0.06, 0.61, 0.37 |
| Label | Label80 | Contract Item |  |  |  | 7.66, 0.06, 0.61, 0.37 |
| Label | Label83 | Activity Hours |  |  |  | 8.31, 0.06, 0.53, 0.37 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 0.11, 0.04, 0.74, 0.00 |
| Label | Label87 | Ticket  ID |  |  |  | 6.86, 0.06, 0.75, 0.37 |
| TextBox | CN |  | CN |  |  | 2.52, 0.03, 0.74, 0.00 |
| TextBox | Text89 |  | Index |  |  | 3.71, 0.04, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | NMIS_ID_ACTIVITIES.ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Not In ("SDTRAN","CONE","SDEXTR","SDTRMT","SPCSVC"))) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="SOW" Or (NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="ADDNON")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME; | Change, DblClick, Enter | 2.03, 0.03, 0.84, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  | Change, DblClick, Enter | 1.36, 0.03, 0.64, 0.20 |
| TextBox | NOTE |  | NOTE |  | Change | 1.32, 0.25, 7.60, 0.20 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.81, 0.03, 0.54, 0.20 |
| ComboBox | TREATMENT_PRODUCT_ID |  | TREATMENT_PRODUCT_ID | SELECT NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_ID, NMIS_TREATMENT_PRODUCTS.TREATMENT_PRODUCT_DESC FROM NMIS_TREATMENT_PRODUCTS;  |  | 3.95, 0.03, 1.07, 0.20 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  | Change, DblClick, Enter, Exit | 2.90, 0.03, 0.54, 0.20 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 5.05, 0.03, 0.59, 0.20 |
| Label | Label64 | Note: |  |  |  | 0.82, 0.25, 0.41, 0.20 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.47, 0.03, 0.44, 0.20 |
| TextBox | ACTIVITY_UNITS_PRESCRIBED |  | ACTIVITY_UNITS_PRESCRIBED |  |  | 5.67, 0.03, 0.53, 0.20 |
| CommandButton | Properties_Button | Click for Properties |  |  | Click | 0.08, 0.07, 0.60, 0.35 |
| ComboBox | ORDER_CN |  | ORDER_CN | SELECT NMIS_ORDERS.CN, Left$(nmis_orders.cn,Len(nmis_orders.cn)-7) AS [Order], NMIS_ORDERS.CLIENT_ASSOCIATE, [Order_Amt] & "M" AS ORDER_AMT2, NMIS_ORDERS.ACTIVITY_CODE FROM NMIS_ORDERS GROUP BY NMIS_ORDERS.CN, Left$(nmis_orders.cn,Len(nmis_orders.cn)-7), NMIS_ORDERS.CLIENT_ASSOCIATE, [Order_Amt] & "M", NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.AGREEMENT_LOT_CN HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_ID_ACTIVITY_FORM]![CN])); | Exit | 6.23, 0.03, 0.62, 0.20 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 7.66, 0.03, 0.62, 0.20 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 8.31, 0.03, 0.53, 0.20 |
| ComboBox | Ticket_ID |  | TICKET_CN | SELECT NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO FROM NMIS_TICKETS GROUP BY NMIS_TICKETS.CN, NMIS_TICKETS.TKT_NO; |  | 6.87, 0.03, 0.76, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Activity_Code.Locked = False
    
End Sub

Private Sub ACTIVITY_CODE_Enter()

    If IsNull(Activity_Code) Then
        Activity_Code.Locked = False
    Else
        Activity_Code.Locked = True
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_DATE_DblClick(Cancel As Integer)

    ACTIVITY_DATE.Locked = False
    
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE.Locked = False
    Else
        ACTIVITY_DATE.Locked = True
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_UNITS_DblClick(Cancel As Integer)

    ACTIVITY_UNITS.Locked = False
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(ACTIVITY_UNITS) Then
        ACTIVITY_UNITS.Locked = False
    Else
        ACTIVITY_UNITS.Locked = True
    End If
    
    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_FORM]![Default_Date]
    End If
    
    If IsNull(Activity_Code) Then
        ACTIVITY_DATE = Forms![NMIS_ID_ACTIVITY_FORM]![Default_Activity_Code]
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)

    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_UNITS) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub Form_Current()

    ORDER_CN.Requery
    
End Sub

Private Sub NOTE_Change()

    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub Order_CN_Change()

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Order_CN_Enter()

    'If Not IsNull(ORDER_CN) Then
        ORDER_CN.Requery
    'End If
    
End Sub

Private Sub ORDER_CN_Exit(Cancel As Integer)

    If IsNull(CONTRACT_ITEM) Then
        CONTRACT_ITEM = _
        Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ORDERS_Contract_Item].Form![CONTRACT_ITEM]
    End If

End Sub

Private Sub Properties_Button_Click()

        Call Property_Module_Form_Open(Forms![NMIS_ID_ACTIVITY_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![PROPERTIES_MODULE], CN, AGREEMENT_LOT_CN, ORDER_CN, Ticket_ID)

End Sub
```
