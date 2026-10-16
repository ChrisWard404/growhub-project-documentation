# Form: NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform

**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_SVCS_Labeler`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.83, 0.03, 0.71, 0.19 |
| Label | MGMT_CODE_PCT_Label | % |  |  |  | 1.58, 0.03, 0.54, 0.19 |
| TextBox | FISCAL_YEAR_USED |  | FISCAL_YEAR_USED |  |  | 2.17, 0.04, 0.46, 0.00 |
| Label | Associate_Label | Associate |  |  |  | 0.04, 0.03, 0.75, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  | DblClick | 0.83, 0.04, 0.71, 0.20 |
| TextBox | MGMT_CODE_PCT |  | MGMT_CODE_PCT |  |  | 1.58, 0.04, 0.60, 0.21 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 2.17, 0.04, 0.58, 0.00 |
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES; | DblClick | 0.04, 0.04, 0.75, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PCT_TOTAL | % Total | =Sum([MGMT_CODE_PCT]) |  |  | 1.54, 0.04, 0.60, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)

    CLIENT_ASSOCIATE = Forms![NMIS_PROCESS_LABELS_MAIN]![CLIENT]
    
End Sub

Private Sub MGMT_CODE_DblClick(Cancel As Integer)

    MGMT_CODE = Forms![NMIS_PROCESS_LABELS_MAIN]![CLIENT]
    
End Sub
```
