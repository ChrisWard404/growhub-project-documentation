# Report: PROOF_ALL

**Caption:** PROOF_ALL_LOTS  
**Grouping/sorting:** `Page_Break`, `Sort`, `CATEGORY_DESC`, `PRODUCT_CLASS`, `END_FY`, `ID`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Report.PROOF_ALL_AGR`, `Report.PROOF_ALL_ORD`, `Report.PROOF_ALL_SOW`, `Report.PROOF_ALL_LFT`, `Report.PROOF_ALL_LCT`, `Report.PROOF_ALL_PCT`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Report events with code:** Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.83, 0.42, 2.56, 0.21 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 9.21, 0.17, 1.21, 0.00 |
| TextBox | REPORT_DATE |  | =Now() |  |  | 9.21, 0.00, 1.21, 0.00 |
| Label | Label44 | Review All Lots Processed - FY |  |  |  | 0.00, 0.00, 2.08, 0.21 |
| TextBox | FISCAL_YEAR |  | =[Forms]![Switchboard]![FY_For_Reports] |  |  | 2.04, 0.00, 0.46, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.88, 0.04, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.75, 0.21, 2.78, 0.20 |
| Label | Label34 | Client |  |  |  | 0.57, 0.88, 0.45, 0.16 |
| Label | Label35 | M's |  |  |  | 1.20, 0.88, 0.45, 0.16 |
| Label | Label36 | Client |  |  |  | 2.19, 0.88, 0.45, 0.16 |
| Label | Label37 | Agreement/Request |  |  |  | 0.48, 0.71, 1.22, 0.17 |
| Label | Label38 | Code |  |  |  | 2.66, 0.88, 0.45, 0.16 |
| Label | Label39 | Processing Order |  |  |  | 1.74, 0.71, 4.79, 0.17 |
| Label | Label40 | Spcl Svcs |  |  |  | 3.18, 0.88, 0.96, 0.16 |
| Label | Label41 | Specs |  |  |  | 4.82, 0.88, 0.50, 0.16 |
| Label | Label42 | Packed |  |  |  | 6.58, 0.88, 0.44, 0.17 |
| Label | Label43 | M's |  |  |  | 6.70, 0.71, 0.23, 0.17 |
| Label | Label45 | Sown |  |  |  | 8.39, 0.88, 0.41, 0.16 |
| Label | Label46 | Lift |  |  |  | 8.72, 0.88, 0.45, 0.16 |
| Label | Label48 | Lift |  |  |  | 9.25, 0.88, 0.42, 0.16 |
| Label | Label49 | Proc. |  |  |  | 9.79, 0.88, 0.41, 0.16 |
| Label | Label50 | Grow Container |  |  |  | 8.31, 0.71, 0.95, 0.17 |
| Label | Label51 | Lift Container |  |  |  | 9.23, 0.71, 1.03, 0.17 |
| Label | Label60 | M's |  |  |  | 5.60, 0.88, 0.51, 0.16 |
| Label | Label61 | O'run |  |  |  | 6.08, 0.88, 0.45, 0.16 |
| Rectangle | Box67 |  |  |  |  | 0.49, 0.88, 1.21, 0.17 |
| Rectangle | Box68 |  |  |  |  | 1.70, 0.88, 4.83, 0.17 |
| Rectangle | Box69 |  |  |  |  | 8.33, 0.88, 0.92, 0.17 |
| Rectangle | Box70 |  |  |  |  | 9.25, 0.88, 1.00, 0.17 |
| Label | Label80 | Grade % |  |  |  | 7.09, 0.88, 0.50, 0.17 |
| Label | Label81 |  Ord ID |  |  |  | 1.69, 0.88, 0.45, 0.16 |
| TextBox | Show_Notes |  | =[Show Notes (y to show or blank to not show)] |  |  | 7.21, 0.12, 0.88, 0.33 |
| Line | Line103 |  |  |  |  | 0.00, 1.04, 10.25, 0.00 |
| Label | Label105 | CItem |  |  |  | 7.68, 0.88, 0.36, 0.17 |
| Label | Label106 | Hourly |  |  |  | 7.67, 0.71, 0.62, 0.17 |
| Label | Label107 | Hrs |  |  |  | 8.05, 0.88, 0.24, 0.17 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Sort |  | Sort | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS display FROM NMIS_ASSOCIATES; |  | 0.00, 0.03, 5.96, 0.25 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CATEGORY_CODE | Category: | CATEGORY_DESC |  |  | 0.73, 0.02, 2.21, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box115 |  |  |  |  | 0.00, 0.00, 10.46, 0.19 |
| TextBox | PRODUCT_CLASS |  | Product_Species |  |  | 0.69, 0.02, 1.48, 0.18 |
| TextBox | ID |  | ID |  |  | 0.00, 0.02, 0.69, 0.18 |
| TextBox | INV_SPECS |  | SIZE |  |  | 2.92, 0.02, 0.73, 0.18 |
| TextBox | GROSS_INV |  | GROSS_INV |  |  | 4.98, 0.02, 0.52, 0.18 |
| TextBox | NET_INV |  | NET_INV |  |  | 5.88, 0.02, 0.63, 0.18 |
| Subform | PROOF_ALL_AGR |  | Report.PROOF_ALL_AGR (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 0.53, 0.20, 1.17, 0.11 |
| TextBox | AGR_LOT_CN |  | AGR_LOT_CN |  |  | 0.25, 0.02, 0.29, 0.18 |
| Subform | PROOF_ALL_ORD |  | Report.PROOF_ALL_ORD (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 1.75, 0.20, 6.63, 0.10 |
| Subform | PROOF_ALL_SOW |  | Report.PROOF_ALL_SOW (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 8.38, 0.19, 0.40, 0.10 |
| Subform | PROOF_ALL_LFT |  | Report.PROOF_ALL_LFT (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 8.79, 0.19, 0.46, 0.10 |
| Subform | PROOF_ALL_LCT |  | Report.PROOF_ALL_LCT (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 9.21, 0.19, 0.46, 0.10 |
| Subform | PROOF_ALL_PCT |  | Report.PROOF_ALL_PCT (master: AGR_LOT_CN → child: AGR_LOT_CN) |  |  | 9.70, 0.19, 0.75, 0.10 |
| Label | INV_SPECS_Label |  Req Specs: |  |  |  | 2.19, 0.02, 0.73, 0.17 |
| Label | GROSS_INV_Label | Gross: |  |  |  | 4.52, 0.02, 0.45, 0.17 |
| Label | NET_INV_Label | Net: |  |  |  | 5.54, 0.02, 0.34, 0.17 |
| TextBox | Total_Orders |  | =[PROOF_ALL_ORD].[Report]![Sum_Orders] |  |  | 7.31, 0.02, 0.50, 0.18 |
| TextBox | Total_Packed |  | =NZ([PROOF_ALL_ORD].[Report]![Sum_Packed],"No Pack") |  |  | 8.48, 0.02, 0.53, 0.18 |
| Label | Label95 | Total Order: |  |  |  | 6.52, 0.02, 0.78, 0.17 |
| Label | Label96 | Total Pack: |  |  |  | 7.81, 0.02, 0.71, 0.17 |
| TextBox | Text97 |  | SumOfAMOUNT_REQUESTED |  |  | 3.97, 0.02, 0.54, 0.18 |
| Label | Label98 | Req: |  |  |  | 3.66, 0.02, 0.30, 0.17 |
| TextBox | Obligation |  | =IIf([Net_Inv]>=[SumOfAmount_Requested],[SumOfAmount_Requested],[Net_Inv]) |  |  | 0.00, 0.19, 0.71, 0.12 |
| TextBox | Obligation_Not_Met |  | =IIf(Round([Obligation],3)>Round([Total_Orders],3),"**Obligation Bal " & Round([Obligation]-(IIf(nz([Total_Packed],0)<nz([Total_Orders],0),nz([Total_Packed],0),nz([Total_Orders],0))),3) & " M **","") |  |  | 8.99, 0.02, 1.47, 0.18 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line77 |  |  |  |  | 0.00, 0.00, 10.30, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label85 | field/container destroy |  |  |  | 7.78, 0.00, 1.35, 0.16 |
| Label | Label86 | precooler destroy |  |  |  | 9.31, 0.00, 0.96, 0.16 |
| Label | Label87 | P |  |  |  | 10.29, 0.01, 0.14, 0.15 |
| Label | Label88 | O |  |  |  | 9.14, 0.01, 0.12, 0.15 |
| Label | Label101 | Order Specs <> Req Specs |  |  |  | 4.50, 0.00, 1.56, 0.16 |
| Label | Label104 | Order Client <> Req Parent |  |  |  | 2.17, 0.00, 2.10, 0.16 |
| Label | Label108 | 2nd Sort |  |  |  | 6.30, 0.00, 0.57, 0.17 |
| Label | Label109 | j |  |  |  | 1.97, 0.00, 0.20, 0.21 |
| Label | Label110 | k |  |  |  | 4.29, 0.00, 0.20, 0.21 |
| Label | Label111 | l |  |  |  | 6.09, 0.00, 0.20, 0.21 |
| Label | Label113 | Dbl Sort Hr. |  |  |  | 7.12, 0.00, 0.69, 0.17 |
| Label | Label114 | m |  |  |  | 6.92, 0.00, 0.20, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)
On Error GoTo Err_Report_Open

    Dim stDocName As String

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"

    DoCmd.SetWarnings True
    
Exit_Report_Open:
    Exit Sub

Err_Report_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Report_Open

End Sub
```
