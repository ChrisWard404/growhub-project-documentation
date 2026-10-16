# Form: Native_Seed_Harvest_Summary

**Caption:** Propagule Harvest Summary  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`  
**Opens:** `Report:Native_Seed_Harvest_Summary`, `Report:Native_Seed_Harvest_Summary2`, `Report:Native_Seed_Harvest_Summary_By_species2`, `Report:Native_Seed_Harvest_by_Species_Summary`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Client Select | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_ASSOCIATES INNER JOIN (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN=NMIS_AGREEMENT_LOTS.CN) ON (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) INNER JOIN Species_Product_End_Prod_Group_and_Desc ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN=Species_Product_End_Prod_Group_and_Desc.CN GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, Species_Product_End_Prod_Group_and_Desc.PRODUCT_GROUP HAVING (((Species_Product_End_Prod_Group_and_Desc.PRODUCT_GROUP)="propagule")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE;  |  | 2.01, 1.07, 1.08, 0.24 |
| CommandButton | Preview Yield Summary By Client Report | Click to Preview Report  |  |  | Click | 0.71, 2.19, 0.96, 0.67 |
| TextBox | Year | FY: |  |  |  | 2.01, 0.73, 0.50, 0.24 |
| CommandButton | Preview Yield Summary By Client Report with Totals | Click to Preview Report with Species Totals |  |  | Click | 0.71, 2.94, 0.96, 0.67 |
| CommandButton | Preview Yield Summary By Species Report | Click to Preview Report  |  |  | Click | 2.45, 2.19, 0.96, 0.67 |
| CommandButton | Preview Yield Summary By Species Report with Totals | Click to Preview Report with Totals |  |  | Click | 2.45, 2.94, 0.96, 0.67 |
| Rectangle | Box16 |  |  |  |  | 0.44, 1.77, 1.46, 1.92 |
| Label | Label17 | By Client |  |  |  | 0.90, 1.85, 0.62, 0.17 |
| Rectangle | Box18 |  |  |  |  | 2.16, 1.77, 1.46, 1.92 |
| Label | Label19 | By Species |  |  |  | 2.58, 1.85, 0.69, 0.17 |
| ComboBox | Like_Plntmstr_Symbol | Like Species: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM (NMIS_ASSOCIATES INNER JOIN (NMIS_AGREEMENTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN=NMIS_AGREEMENT_LOTS.CN) ON (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) INNER JOIN Species_Product_End_Prod_Group_and_Desc ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN=Species_Product_End_Prod_Group_and_Desc.CN GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, Species_Product_End_Prod_Group_and_Desc.PRODUCT_GROUP HAVING (((Species_Product_End_Prod_Group_and_Desc.PRODUCT_GROUP)="propagule")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE;  |  | 2.01, 1.41, 1.08, 0.24 |
| Label | Label22 | Propagule Harvest Summary |  |  |  | 0.52, 0.15, 3.07, 0.30 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Preview_Yield_Summary_By_Client_Report_Click()
On Error GoTo Err_Preview_Yield_Summary_By_Client_Report_Click

    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Yield_Summary_By_Client_Rep:
    Exit Sub

Err_Preview_Yield_Summary_By_Client_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Yield_Summary_By_Client_Rep
    
End Sub

Private Sub Preview_Yield_Summary_By_Client_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary2"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Yield_Summary_By_Species_Report_Click()
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_by_Species_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Yield_Summary_By_Species_Report_with_Totals_Click()
    
    Dim stDocName As String

    stDocName = "Native_Seed_Harvest_Summary_By_species2"
    DoCmd.OpenReport stDocName, acPreview

End Sub
```
