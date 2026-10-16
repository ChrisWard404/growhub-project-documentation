# Legacy NMIS reports (reachable only)

Each reachable Access report: record source, grouping, bound fields and calculated expressions.

## Report: **NMIS_Source_Non-WCF_Storage_Billing_Report
- **Caption:** Non-WCF Storage Billing Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › **NMIS_Source_Non-WCF_Storage_Billing_Report
- **Record source:** ``
- **Grouping:** ASSOCIATE → PLNTMSTR_SYMBOL
- **Fields:** ASSOCIATE, Charge_per_Unit, PLNTMSTR_SYMBOL, SumOfSum Of ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=[SumOfSum Of ACTIVITY_UNITS]*[Charge_per_Unit]`
  - GroupFooter0: `=Sum([SumOfSum Of ACTIVITY_UNITS]*[Charge_per_Unit])`
  - GroupFooter0: `=Sum([SumOfSum Of ACTIVITY_UNITS])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: ACCOMPLISHMENT_REPORT
- **Caption:** Accomplishment Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › ACCOMPLISHMENT_REPORT
- **Record source:** `SELECT [ACCOMPLISHMENT ct].REGION, [ACCOMPLISHMENT ct].CC, [ACCOMPLISHMENT ct].TYN, [ACCOMPLISHMENT ct].[Total Of AMOUNT], [ACCOMPLISHMENT ct].CDEST, [ACCOMPLISHMENT_NumLots ct].CDEST, [ACCOMPLISHMENT ct].FDEST, [ACCOMPLISHMENT_NumLots ct].FDEST, [ACCOMPLISHMENT ct].PDEST, [ACCOMPLISHMENT_NumLots ct].PDEST, [ACCOMPLISHMENT ct].PICKUP, [ACCOMPLISHMENT_NumLots ct].PICKUP, [ACCOMPLISHMENT ct].SDEST, [ACCOMPLISHMENT_NumLots ct].SDEST, [ACCOMPLISHMENT ct].SHIP, [ACCOMPLISHMENT_NumLots ct].SHIP, [ACCOMPLISHMENT ct].XFERTO, [ACCOMPLISHMENT_NumLots ct].XFERTO, [ACCOMPLISHMENT ct].XPLT, [ACCOMPLISHMENT_NumLots ct].XPLT, [ACCOMPLISHMENT ct].XPLTP, [ACCOMPLISHMENT_NumLots ct].XPLTP FROM [ACCOMPLISHMENT ct] INNER JOIN [ACCOMPLISHMENT_NumLots ct] ON ([ACCOMPLISHMENT ct].[Total Of AMOUNT] = [ACCOMPLISHMENT_NumLots ct].[Total Of AMOUNT]) AND ([ACCOMPLISHMENT ct].REGION = [ACCOMPLISHMENT_NumLots ct].REGION) AND ([ACCOMPLISHMENT ct].CC = [ACCOMPLISHMENT_NumLots ct].CC) AND ([ACCOMPLISHMENT ct].TYN = [ACCOMPLISHMENT_NumLots ct].TYN);`
- **Grouping:** CC → TYN → REGION
- **Fields:** ACCOMPLISHMENT ct.CDEST, ACCOMPLISHMENT ct.FDEST, ACCOMPLISHMENT ct.PDEST, ACCOMPLISHMENT ct.PICKUP, ACCOMPLISHMENT ct.SHIP, ACCOMPLISHMENT ct.XFERTO, ACCOMPLISHMENT ct.XPLT, ACCOMPLISHMENT ct.XPLTP, CC, TYN, region
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - ReportHeader: `=[Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.PICKUP]),"/" & [ACCOMPLISHMENT_NumLots ct.PICKUP])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.FDEST]),"/" & [ACCOMPLISHMENT_NumLots ct.FDEST])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.PDEST]),"/" & [ACCOMPLISHMENT_NumLots ct.PDEST])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.CDEST]),"/" & [ACCOMPLISHMENT_NumLots ct.CDEST])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.SHIP]),"/" & [ACCOMPLISHMENT_NumLots ct.SHIP])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.XFERTO]),"/" & [ACCOMPLISHMENT_NumLots ct.XFERTO])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.XPLT]),"/" & [ACCOMPLISHMENT_NumLots ct.XPLT])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots ct.XPLTP]),"/" & [ACCOMPLISHMENT_NumLots ct.XPLTP])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[CDEST])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[FDEST])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[PDEST])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[PICKUP])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[SHIP])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[XFERTO])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[XPLT])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT ct].[XPLTP])`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PICKUP]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.FDEST]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PDEST]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.CDEST]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.SHIP]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XFERTO]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLT]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLTP]))`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct].[CDEST])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct].[FDEST])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct].[PDEST])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct].[PICKUP])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct].[SHIP])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct].[XFERTO])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct.XPLT])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT ct].[XPLTP])`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PICKUP]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.FDEST]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PDEST]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.CDEST]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.SHIP]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XFERTO]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLT]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLTP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLTP]))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="/number = Number of lots"`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[CDEST])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[FDEST])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[PDEST])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[PICKUP])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[SHIP])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[XFERTO])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[XPLT])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT ct].[XPLTP])`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PICKUP]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.FDEST]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.PDEST]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.CDEST]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.SHIP]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XFERTO]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots ct.XPLT]))`

## Report: ACCOMPLISHMENT_REPORT_region
- **Caption:** Accomplishment Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › ACCOMPLISHMENT_REPORT_region
- **Record source:** ``
- **Grouping:** CC → TYN → Forest
- **Fields:** ACCOMPLISHMENT_region ct.CDEST, ACCOMPLISHMENT_region ct.FDEST, ACCOMPLISHMENT_region ct.PDEST, ACCOMPLISHMENT_region ct.PICKUP, ACCOMPLISHMENT_region ct.SHIP, ACCOMPLISHMENT_region ct.XFERTO, ACCOMPLISHMENT_region ct.XPLT, ACCOMPLISHMENT_region ct.XPLTP, CC, Forest, TYN
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - ReportHeader: `=[Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.PICKUP]),"/" & [ACCOMPLISHMENT_NumLots_region ct.PICKUP])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.FDEST]),"/" & [ACCOMPLISHMENT_NumLots_region ct.FDEST])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.PDEST]),"/" & [ACCOMPLISHMENT_NumLots_region ct.PDEST])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.CDEST]),"/" & [ACCOMPLISHMENT_NumLots_region ct.CDEST])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.SHIP]),"/" & [ACCOMPLISHMENT_NumLots_region ct.SHIP])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.XFERTO]),"/" & [ACCOMPLISHMENT_NumLots_region ct.XFERTO])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.XPLT]),"/" & [ACCOMPLISHMENT_NumLots_region ct.XPLT])`
  - Detail: `=IIf(Not IsNull([ACCOMPLISHMENT_NumLots_region ct.XPLTP]),"/" & [ACCOMPLISHMENT_NumLots_region ct.XPLTP])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[CDEST])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[FDEST])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[PDEST])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[PICKUP])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[SHIP])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[XFERTO])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[XPLT])`
  - GroupFooter3: `=Sum([ACCOMPLISHMENT_region ct].[XPLTP])`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.PICKUP]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.FDEST]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.PDEST]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.CDEST]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.SHIP]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XFERTO]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XPLT]))`
  - GroupFooter3: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XPLTP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XPLTP]))`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct].[CDEST])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct].[FDEST])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct].[PDEST])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct].[PICKUP])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct].[SHIP])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct].[XFERTO])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct.XPLT])`
  - GroupFooter1: `=Sum([ACCOMPLISHMENT_region ct].[XPLTP])`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.PICKUP]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.FDEST]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.PDEST]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.CDEST]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.SHIP]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XFERTO]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XPLT]))`
  - GroupFooter1: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XPLTP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XPLTP]))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="/number = Number of lots"`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[CDEST])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[FDEST])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[PDEST])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[PICKUP])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[SHIP])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[XFERTO])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[XPLT])`
  - ReportFooter: `=Sum([ACCOMPLISHMENT_region ct].[XPLTP])`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.PICKUP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.PICKUP]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.FDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.FDEST]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.PDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.PDEST]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.CDEST])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.CDEST]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.SHIP])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.SHIP]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XFERTO])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XFERTO]))`
  - ReportFooter: `=IIf(Not IsNull(Sum([ACCOMPLISHMENT_NumLots_region ct.XPLT])),"/" & Sum([ACCOMPLISHMENT_NumLots_region ct.XPLT]))`

## Report: Agreement_Lot_Associate_Subform
- **Caption:** Field_tag_agreements subreport
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance › Agreement_Lot_Associate_Subform
- **Record source:** `SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, [ASSOCIATE_NAME] & " - " & [CLIENT_ASSOCIATE] & " " & [AMOUNT_REQUESTED] & NMIS_PRODUCTS.UNIT_CODE AS CLIENT_ASSOCIATE_STRING FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN) INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE=NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENTS.SPECIES_PRODUCT_CN;`
- **Grouping:** 
- **Fields:** CLIENT_ASSOCIATE_STRING

## Report: Agreement_lot_by_End_Season
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Agreement_lot_by_End_Season
- **Record source:** ``
- **Grouping:** Cost_Center → ID → CLIENT_ASSOCIATE
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, AMOUNT_REQUESTED, CLIENT_ASSOCIATE, Cost_Center, End_Season, M_from_last_inv, NET_INV, PCT_of_Total, Species_Products_String, TOTAL_REQUEST
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Agreement Lots with End Season " & [End_Season] & " Agreements"`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Agreement_Lot_Destroy_Checkist_Client_Subreport
- **Caption:** Field_tag_agreements subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checkist_Client_Subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** CLIENT_ASSOCIATE_STRING, SumOfAMOUNT_REQUESTED

## Report: Agreement_Lot_Destroy_Checklist
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist
- **Record source:** ``
- **Grouping:** Cost_Center → Product_Class_for_Processing → ID → END_FY
- **Subreports:** Report.Agreement_Lot_Destroy_Checkist_Client_Subreport, Report.Agreement_Lot_Destroy_Checklist subreport, Report.Agreement_Lot_Destroy_Checklist_CCSum subreport, Report.Agreement_Lot_Destroy_Checklist_GrandSum subreport
- **Fields:** ACTIVITY_DATE, Amount_Requested, Cost_Center, GROSS_INV, ID, NET_INV, Obligation, Product_Class_for_Processing, SIZE_SPEC_STRING, date_range
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Stock Destroyed Checklist FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Agreement_Lot_Destroy_Checklist subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist subreport
- **Record source:** `*Agreement_Lot_Destroy_Checklist_Subreport_Table`
- **Grouping:** ID → Charged_To2 → ID_Act_CN → Order2 → ACTIVITY_DATE → ACTIVITY_CODE
- **Subreports:** Report.Agreement_Lot_Destroy_Checklist_Sum subreport, Report.agreement_Lot_Higrade_ORDERS subreport
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, AMT_PER_UNIT, CandN_NOTES, Charged_To2, Destroyed_Net, Destroyed_gross, Order2, Order_Size_Specs, Packed_Net, UNIT_CODE, Units_Destroyed
- **Calculated:**
  - GroupFooter1: `=Sum([Destroyed_Net])`
  - GroupFooter1: `=Sum([Destroyed_gross])`
  - GroupFooter1: `=Sum([Packed_Net])`
  - GroupFooter1: `=IIf([Charged_To2]="Client",IIf((Nz([Sum_Packed_Net],0)>=[Reports]![Agreement_Lot_Destroy_Checklist]![Amount_Requested] And Nz([Sum_Destroyed_Net],0)>0) Or ([Agreement_Lot_Destroy_Checklist_Sum subreport].[Report]![Charged_To] Like "Client" And [Agreement_Lot_Destroy_Checklist_Sum subreport].[Report]![Total]>[Reports]![Agreement_Lot_Destroy_Checklist]![Amount_Requested] And Nz([Sum_Packed_Net],0)<[Reports]![Agreement_Lot_Destroy_Checklist]![Amount_Requested]),"**Client Destroy Possibly Too Much**",Null))`
  - GroupFooter0: `=Sum([Destroyed_Net])`
  - GroupFooter0: `=Sum([Destroyed_gross])`
  - GroupFooter0: `=Sum([Packed_Net])`

## Report: Agreement_Lot_Destroy_Checklist_CCSum subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist_CCSum subreport
- **Record source:** ``
- **Grouping:** Charged_To
- **Fields:** Charged_To, Cost_Center, SumOfDestroyed_Net

## Report: Agreement_Lot_Destroy_Checklist_GrandSum subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist_GrandSum subreport
- **Record source:** ``
- **Grouping:** Charged_To
- **Fields:** Charged_To, SumOfDestroyed_Net

## Report: Agreement_Lot_Destroy_Checklist_Sum subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist subreport › Agreement_Lot_Destroy_Checklist_Sum subreport
- **Record source:** ``
- **Grouping:** Charged_To
- **Fields:** Charged_To, Total
- **Calculated:**
  - Detail: `=IIf([Sum_Total]>0.001,IIf([Charged_To] Like "*Client*",IIf([Total]<>[Sum_Total] And [Total]<[Reports]![Agreement_Lot_Destroy_Checklist]![Obligation],"**Less Than Firm Order**",IIf([Total]<>[Sum_Total] And [Total]<[Reports]![Agreement_Lot_Destroy_Checklist]![Amount_Requested],"**Greater Than Firm Order, Less Than Request**")),IIf([Total]=[Sum_Total],"**Check Client Obligation**")))`
  - ReportFooter: `=Sum([Total])`

## Report: Agreement_Lot_Grow_Locations_Subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_Holdover_Report › Agreement_Lot_Grow_Locations_Subreport
- **Record source:** `**Trans_Totals_By_Loc_and_amt_per_unit_Grow_sublot2`
- **Grouping:** LOCATION → BeginIndex → Sublot
- **Fields:** BeginIndex, EndIndex, Gross_Density, LOCATION, Net_Density, Sublot, Total_Activity_Units, UNIT_CODE

## Report: Agreement_Lot_Higrade_Checklist
- **Caption:** Lot Hi-Grade Checklist
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist
- **Record source:** ``
- **Grouping:** Cost_Center → Product_Class_for_Processing → ID → END_FY
- **Subreports:** Report.Agreement_Lot_Destroy_Checkist_Client_Subreport, Report.Agreement_Lot_Higrade_Checklist subreport, Report.Agreement_Lot_Higrade_Checklist_CCSum subreport, Report.Agreement_Lot_Higrade_Checklist_GrandSum subreport
- **Fields:** ACTIVITY_DATE, Amount_Requested, Cost_Center, GROSS_INV, ID, NET_INV, Obligation, Product_Class_for_Processing, SIZE_SPEC_STRING
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Stock Hi-Graded Checklist FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Agreement_Lot_Higrade_Checklist subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist subreport
- **Record source:** `*Agreement_Lot_Higrade_Checklist_Subreport_Table`
- **Grouping:** ID → Charged_To2 → Order2 → ACTIVITY_DATE → ACTIVITY_CODE
- **Subreports:** Report.Agreement_Lot_Higrade_Checklist_Sum subreport, Report.agreement_Lot_Higrade_ORDERS subreport
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, AMT_PER_UNIT, CandN_NOTES, Charged_To2, Destroyed_Net, Destroyed_gross, Higrade, Order2, Order_Size_Specs, Packed_Net, UNIT_CODE, Units_Destroyed
- **Calculated:**
  - GroupFooter1: `=Sum([Destroyed_Net])`
  - GroupFooter1: `=Sum([Destroyed_gross])`
  - GroupFooter1: `=Sum([Packed_Net])`
  - GroupFooter1: `=IIf([Charged_To2]="Client",IIf(([Sum_Packed_Net]>=[Reports]![Agreement_Lot_Higrade_Checklist]![Amount_Requested] And nz([Sum_Destroyed_Net],0)>0) Or ([Agreement_Lot_Destroy_Checklist_Sum subreport].[Report]![Charged_To] Like "*Client*" And [Agreement_Lot_Destroy_Checklist_Sum subreport].[Report]![Total]>[Reports]![Agreement_Lot_Higrade_Checklist]![Amount_Requested] And nz([Sum_Packed_Net],0)<[Reports]![Agreement_Lot_Higrade_Checklist]![Amount_Requested]),"**Client Destroy Possibly Too Much**",Null))`
  - GroupFooter0: `=Sum([Destroyed_Net])`
  - GroupFooter0: `=Sum([Destroyed_gross])`
  - GroupFooter0: `=Sum([Packed_Net])`

## Report: Agreement_Lot_Higrade_Checklist_CCSum subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist_CCSum subreport
- **Record source:** ``
- **Grouping:** Charged_To
- **Fields:** Charged_To, Cost_Center, SumOfDestroyed_Net

## Report: Agreement_Lot_Higrade_Checklist_GrandSum subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist_GrandSum subreport
- **Record source:** ``
- **Grouping:** Charged_To
- **Fields:** Charged_To, SumOfDestroyed_Net

## Report: Agreement_Lot_Higrade_Checklist_Sum subreport
- **Caption:** Agreement_Lot_Destroy_Checklist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Higrade_Checklist › Agreement_Lot_Higrade_Checklist subreport › Agreement_Lot_Higrade_Checklist_Sum subreport
- **Record source:** ``
- **Grouping:** Charged_To
- **Fields:** Charged_To, Total
- **Calculated:**
  - Detail: `=IIf([Sum_Total]>0.001,IIf([Charged_To] Like "*Client*",IIf([Total]<>[Sum_Total] And [Total]<[Reports]![Agreement_Lot_Higrade_Checklist]![Obligation],"**Less Than Firm Order**",IIf([Total]<>[Sum_Total] And [Total]<[Reports]![Agreement_Lot_Higrade_Checklist]![Amount_Requested],"**Greater Than Firm Order, Less Than Request**")),IIf([Total]=[Sum_Total],"**Check Client Obligation**")))`
  - ReportFooter: `=Sum([Total])`

## Report: agreement_Lot_Higrade_ORDERS subreport
- **Caption:** agreement_Lot_Higrade_ORDERS subreport
- **Menu path:** Switchboard › Client_Bill_Menu › Agreement_Lot_Destroy_Checklist › Agreement_Lot_Destroy_Checklist subreport › agreement_Lot_Higrade_ORDERS subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, ORDER_AMT, OVERRUN_ALL, OVERRUN_AMT
- **Calculated:**
  - Detail: `=nz([ORDER_AMT],0)+nz([OVERRUN_AMT],0)`

## Report: Agreement_lot_multiple_req_amt_from_last_inv
- **Caption:** Agreement_lot_multiple_req_amt_from_last_inv
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Agreement_lot_multiple_req_amt_from_last_inv
- **Record source:** `Agreement_lot_multiple_req_amt_from_last_inv`
- **Grouping:** ID → CLIENT_ASSOCIATE
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, AMOUNT_REQUESTED, CLIENT_ASSOCIATE, End_Season, M_from_last_inv, NET_INV, PCT_of_Total, Species_Products_String, TOTAL_REQUEST
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Agreement_Lot_Source_Calcs
- **Caption:** 
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Agreement_Lot_Source_Calcs
- **Record source:** ``
- **Grouping:** 
- **Fields:** CHECK_STRAT, GROSS_SOURCE_PER_UNIT, HARVEST_ASF_ADJUSTMENT, HARVEST_FACTOR_1, HARVEST_FACTOR_2, HARVEST_FACTOR_3, SOURCE_CALC, SOURCE_GERM_PCT, SOURCE_PURITY_PCT, SOURCE_REQUIRED, SOURCE_STRATIFIED, THINNING_PROBABILITY_PCT, TOTAL_REQUEST
- **Calculated:**
  - Detail: `=IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL])`
  - Detail: `=IIf(IsNull([HF1_CODE]),"HF1",[HF1_CODE])`
  - Detail: `=IIf(IsNull([HF2_CODE]),"HF2",[HF2_CODE])`
  - Detail: `=IIf(IsNull([HF3_CODE]),"HF3",[HF3_CODE])`
  - Detail: `=IIf(IsNull([HF4_CODE]),"HF4",[HF4_CODE])`
  - Detail: `=IIf([HF1_FORMULA_OP]="/","10000/",Null)`
  - Detail: `=IIf([HF2_FORMULA_OP]="/","10000/",Null)`
  - Detail: `=IIf([HF3_FORMULA_OP]="/","10000/",Null)`
  - Detail: `=IIf([HF4_FORMULA_OP]="/","10000/",Null)`

## Report: Agreement_Lot_Source_Calcs_Review
- **Caption:** 
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Source_Calcs_Review
- **Record source:** ``
- **Grouping:** borc → PRODUCT_DESC → Vernacular_With_Code → ID
- **Fields:** EST_CONTAINERS_REQUIRED, GROSS_SOURCE_PER_UNIT, HARVEST_ASF_ADJUSTMENT, HARVEST_FACTOR_1, HARVEST_FACTOR_2, HARVEST_FACTOR_3, HF1_CODE, HF2_CODE, HF3_CODE, NOTE, Product_Desc, SOURCE_CALC, SOURCE_GERM_PCT, SOURCE_PURITY_PCT, SOURCE_REQUIRED, Seed_Per_Cell, THINNING_PROBABILITY_PCT, TOTAL_REQUEST, Vernacular_With_Code
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="SPC"`
  - Detail: `=IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL])`
  - Detail: `=IIf([HF1_FORMULA_OP]="/","10000/",Null)`
  - Detail: `=IIf([HF2_FORMULA_OP]="/","10000/",Null)`
  - Detail: `=IIf([HF3_FORMULA_OP]="/","10000/",Null)`
  - Detail: `=IIf([HF4_FORMULA_OP]="/","10000/",Null)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Agreement_Lot_Sow_Order_Oyjord_Report
- **Caption:** 
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Oyjord_Report
- **Record source:** ``
- **Grouping:** Cost_Center → SOWING_ORDER → SowGroup → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → Major_Client → SOURCE → SIZE_SPEC_STRING
- **Subreports:** Report.Agreement_Lot_Sow_Order_Oyjord_Sub_Report
- **Fields:** CALIBRATION_FUNNEL_SETTING_ID, CALIBRATION_REV_SOURCE_UNITS, CALIBRATION_SOURCE_UNITS, CALIBRATION_TRAVEL_PER_REV, CCHeader, EST_CONTAINERS_REQUIRED, Major_Client, NMIS_AGREEMENT_LOTS_ID, NUMBER_CALIBRATION_CONTAINERS, PageHeader, Pagefooter, SPECIES_PRODUCT_DESC
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=[Vernacular_With_Code] & " " & [SPECIES_PRODUCT_DESC]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Agreement_Lot_Sow_Order_Oyjord_Sub_Report
- **Caption:** 
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Oyjord_Report › Agreement_Lot_Sow_Order_Oyjord_Sub_Report
- **Record source:** `SELECT Last(NMIS_OYJORD_SETTINGS3.TRAVEL_PER_REVOLUTION) AS LastOfTRAVEL_PER_REVOLUTION, NMIS_OYJORD_SETTINGS3.GEAR, Last(NMIS_OYJORD_SETTINGS3.ZMAX) AS LastOfZMAX, Last(NMIS_OYJORD_SETTINGS3.TURNS) AS LastOfTURNS, NMIS_OYJORD_SETTINGS3.gearsort FROM NMIS_OYJORD_SETTINGS3 WHERE (((NMIS_OYJORD_SETTINGS3.TRAVEL_PER_REVOLUTION)<=[Reports]![Agreement_Lot_Sow_Order_Oyjord_Report]![CALIBRATION_TRAVEL_PER_REV]) AND (((Abs([Reports]![Agreement_Lot_Sow_Order_Oyjord_Report]![CALIBRATION_TRAVEL_PER_REV]-[TRAVEL_PER_REVOLUTION]))/[Reports]![Agreement_Lot_Sow_Order_Oyjord_Report]![CALIBRATION_TRAVEL_PER_REV])<0.05)) GROUP BY NMIS_OYJORD_SETTINGS3.GEAR, NMIS_OYJORD_SETTINGS3.gearsort ORDER BY Last(NMIS_OYJORD_SETTINGS3.TRAVEL_PER_REVOLUTION) DESC , NMIS_OYJORD_SETTINGS3.GEAR DESC , NMIS_OYJORD_SETTINGS3.gearsort DESC;`
- **Grouping:** 
- **Fields:** GEAR, LastOfTRAVEL_PER_REVOLUTION, LastOfTURNS, LastOfZMAX
- **Calculated:**
  - Detail: `=[LastOfTRAVEL_PER_REVOLUTION]`

## Report: Agreement_Lot_Sow_Order_Report
- **Caption:** 
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Report
- **Record source:** ``
- **Grouping:** Cost_Center → SOWING_ORDER → SowGroup → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, AMOUNT_REQUESTED, ASC, Agreement_Est_Containers, BegFYSeason, CCHeader, CLIENT_ASSOCIATE, PCT_of_Total, PLNTMSTR_SYMBOL, PRODUCT_DESC, PageHeader, Pagefooter, Prev_Agr_Lot, SIZE_SPEC_STRING, SOWING_ORDER, SPECIES_PRODUCT_DESC, SR, Seed_Per_Cell, Source_ID
- **Calculated:**
  - PageHeaderSection: `="(" & [UNIT_CODE] & ")"`
  - PageHeaderSection: `="(" & [UNIT_CODE] & ")"`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Cost_Center]="B","Est. Bed Feet","Est.  Cont.")`
  - PageHeaderSection: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse]`
  - GroupHeader1: `=[Vernacular_With_Code] & " " & [SPECIES_PRODUCT_DESC]`
  - Detail: `=IIf([PCT_of_Total]<100,"*","")`
  - Detail: `=IIf([ASC]<([AMOUNT_REQUESTED]-(0.05*[AMOUNT_REQUESTED])),"#","")`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Agreement_Est_Containers])`
  - GroupFooter3: `=Sum([ASC])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Agreement_Est_Containers])`
  - GroupFooter2: `=Sum([ASC])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Agreement_Est_Containers])`
  - GroupFooter1: `=Sum([ASC])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([Agreement_Est_Containers])`
  - ReportFooter: `=Sum([ASC])`

## Report: Agreement_Lot_Sow_Order_Sow_Group_Summary
- **Caption:** AGREEMENT_LOT_SOWING_ORDER_Group_Summary
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › Agreement_Lot_Sow_Order_Sow_Group_Summary
- **Record source:** ``
- **Grouping:** Cost_Center → SOWING_ORDER → SowGroup → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → CLIENT_ASSOCIATE
- **Fields:** Cost_Center, SowOrder
- **Calculated:**
  - PageHeaderSection: `="(" & [UNIT_CODE] & ")"`
  - PageHeaderSection: `="(" & [UNIT_CODE] & ")"`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Agreement Lots Sowing Order Summary for " & [Begin_FY]`
  - PageHeaderSection: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - PageHeaderSection: `="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol]`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Agreement_Est_Containers])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter2: `=[Sowgroup] & IIf([Sowgroup]="None"," - No Sowing Group Assigned",IIf(Not IsNull([SowGroup_Description])," - " & [SowGroup_Description],""))`
  - GroupFooter2: `=Sum([Total_Containers])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Agreement_Est_Containers])`
  - GroupFooter1: `=Sum([ASC])`
  - GroupFooter1: `=Sum([Total_Containers])`
  - PageFooterSection: `=Now()`

## Report: Agreement_Lot_vs_agreement_check_Subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check › Agreement_Lot_vs_agreement_check_Subreport
- **Record source:** `NMIS_AGREEMENTS`
- **Grouping:** 
- **Fields:** AMOUNT_REQUESTED, CLIENT_ASSOCIATE, NOTE, ORIG_AMOUNT_REQUESTED

## Report: Annual_Report_Plant_Inventory_Detailed_Summary report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Detailed_Summary report
- **Record source:** `Annual_Report_Product_Inventory_Summary`
- **Grouping:** END_FY → CC → Current_Product → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL → ID
- **Fields:** CC, CLIENT_ASSOCIATE, Current_Product, END_FY, ID, PLNTMSTR_SYMBOL, [AMOUNT_REQUESTED], [Actual_Sow_Calculated], [Firm_Order], [Gross_InvP], [Net_InvP]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Gross_InvP])`
  - GroupFooter1: `=Sum([Net_InvP])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - GroupFooter0: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Gross_InvP])`
  - GroupFooter0: `=Sum([Net_InvP])`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([Net_InvP])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([Gross_InvP])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([Net_InvP])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([Gross_InvP])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Net_InvP])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([Gross_InvP])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Net_InvP])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([Gross_InvP])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated])`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`

## Report: Annual_Report_Plant_Inventory_Summary report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Summary report
- **Record source:** `Annual_Report_Product_Inventory_Summary`
- **Grouping:** END_FY → CC → Current_Product → END_FY → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL
- **Fields:** CC, CLIENT_ASSOCIATE, Current_Product, END_FY, ID, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Gross_InvP])`
  - GroupFooter1: `=Sum([Net_InvP])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([Net_InvP])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([Gross_InvP])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([Net_InvP])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([Gross_InvP])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Net_InvP])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([Gross_InvP])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Net_InvP])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([Gross_InvP])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated])`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`

## Report: Annual_Report_Plant_Inventory_Summary_by_class_species report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Annual_Report_Plant_Inventory_Summary_by_class_species report
- **Record source:** `Annual_Report_Product_Inventory_Summary`
- **Grouping:** END_FY → CC → Current_Product → END_FY → PLNTMSTR_SYMBOL
- **Fields:** CC, Current_Product, END_FY, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Gross_InvP])`
  - GroupFooter1: `=Sum([Net_InvP])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([Net_InvP])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([Gross_InvP])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([Net_InvP])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([Gross_InvP])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Net_InvP])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([Gross_InvP])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Net_InvP])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([Gross_InvP])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated])`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`

## Report: ASSOCIATE_LIST
- **Caption:** MAIL_LABELS_BY_GROUP Query
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › ASSOCIATE_LIST
- **Record source:** `ASSOCIATE_LIST Query`
- **Grouping:** GROUP_NAME → ASSOCIATE_NAME_UPPER
- **Fields:** ASSOCIATE, ASSOCIATE_NAME_UPPER, CITY, DEPT, EMAIL_ADDR, GROUP_NAME, MAIL_ADDR, PRINT_LABEL, STATE, STREET_ADDR
- **Calculated:**
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Balances_By_Age_Class_and_End_Date
- **Caption:** Balance by Age Class
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Balances_By_Age_Class_and_End_Date
- **Record source:** `Age_Class_balances_from_transactions_by_activity_date`
- **Grouping:** CATEGORY_CODE → END_FY → AGE_CLASS_CURRENT
- **Fields:** AGE_CLASS_CURRENT, Age_Class_Next, Age_Class_Previous, As_Of_Date, CATEGORY_CODE, CountOfID, END_FY, Gross, Net, PRODUCT_DESC
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([Gross])`
  - GroupFooter2: `=Sum([Net])`
  - GroupFooter2: `=Sum([CountOfID])`
  - GroupFooter1: `=Sum([Gross])`
  - GroupFooter1: `=Sum([Net])`
  - GroupFooter1: `=Sum([CountOfID])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Balances_By_Age_Class_and_End_Date2
- **Caption:** Balance by Age Class
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Balances_By_Age_Class_and_End_Date2
- **Record source:** `Age_Class_balances_from_transactions_by_activity_date2`
- **Grouping:** CATEGORY_CODE → END_FY → AGE_CLASS_CURRENT
- **Fields:** AGE_CLASS_CURRENT, As_Of_Date, CATEGORY_CODE, CountOfID, END_FY, Gross, Net, PRODUCT_DESC
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([Gross])`
  - GroupFooter2: `=Sum([Net])`
  - GroupFooter2: `=Sum([CountOfID])`
  - GroupFooter1: `=Sum([Gross])`
  - GroupFooter1: `=Sum([Net])`
  - GroupFooter1: `=Sum([CountOfID])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Balances_By_Age_Class_and_End_Date2_no_net
- **Caption:** Balance by Age Class
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Balances_By_Age_Class_and_End_Date2_no_net
- **Record source:** `Age_Class_balances_from_transactions_by_activity_date2`
- **Grouping:** CATEGORY_CODE → END_FY → AGE_CLASS_CURRENT
- **Fields:** AGE_CLASS_CURRENT, As_Of_Date, CATEGORY_CODE, CountOfID, END_FY, Gross, PRODUCT_DESC
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([Gross])`
  - GroupFooter2: `=Sum([CountOfID])`
  - GroupFooter1: `=Sum([Gross])`
  - GroupFooter1: `=Sum([CountOfID])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Balances_By_Age_Class_and_End_Date_w_Lots
- **Caption:** Balance by Age Class
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Balances_By_Age_Class_and_End_Date_w_Lots
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → END_FY → AGE_CLASS_CURRENT → ID
- **Fields:** AGE_CLASS_CURRENT, Age_Class_Next, Age_Class_Previous, As_Of_Date, CATEGORY_CODE, END_FY, Gross, ID, Net, PRODUCT_DESC
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Gross])`
  - GroupFooter0: `=Sum([Net])`
  - GroupFooter0: `="Subtotal for " & [PRODUCT_DESC]`
  - GroupFooter0: `=Sum([CountOfID])`
  - GroupFooter2: `=Sum([Gross])`
  - GroupFooter2: `=Sum([Net])`
  - GroupFooter2: `=Sum([CountOfID])`
  - GroupFooter1: `=Sum([Gross])`
  - GroupFooter1: `=Sum([Net])`
  - GroupFooter1: `=Sum([CountOfID])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Client_Bill_Billing_Parent_MGMT_Code subreport
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist › Client_Bill_Billing_Parent_MGMT_Code subreport
- **Record source:** ``
- **Grouping:** CLIENT → JC
- **Fields:** CHARGE, JC
- **Calculated:**
  - GroupFooter2: `=Sum([CHARGE])`

## Report: Client_Bill_Client_MGMT_Code subreport
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail › Client_Bill_Client_MGMT_Code subreport
- **Record source:** ``
- **Grouping:** CLIENT → JC
- **Fields:** CHARGE, JC
- **Calculated:**
  - ReportFooter: `=Sum([CHARGE])`

## Report: Client_Bill_Income_Dist_Client_Jobcode_Subform
- **Caption:** Client Bill Income Dist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail › Client_Bill_Income_Dist_Client_Jobcode_Subform
- **Record source:** `SELECT [CLIENT] & IIf([JOB_CODE]<>[CLIENT]," " & UCase([JOB_CODE])) AS JC, CLIENT_BILL_INCOME_DIST1.CLIENT, CLIENT_BILL_INCOME_DIST1.JOB_CODE, nz([MGMT_CODE],"Undefined") AS MC, Sum(Round(IIf([OVERRIDE]="AT",1,[UNITS])*[CHARGE_PER_UNIT]*([PERCENT_OF_CHARGE]/100),2)) AS INCOME FROM CLIENT_BILL_INCOME_DIST1 LEFT JOIN NMIS_PRODUCT_MGMT_CODES_QUERY ON CLIENT_BILL_INCOME_DIST1.PMC_LINK = NMIS_PRODUCT_MGMT_CODES_QUERY.PMC_LINK WHERE (((IIf(IsNull([Forms]![Client_Bill_Menu]![Contact_CN]),"ALL",[Contact_CN])) Like IIf(IsNull([Forms]![Client_Bill_Menu]![Contact_CN]),"ALL",[Forms]![Client_Bill_Menu]![Contact_CN])) AND ((CLIENT_BILL_INCOME_DIST1.BILL_CODE)<>"HOLD")) GROUP BY [CLIENT] & IIf([JOB_CODE]<>[CLIENT]," " & UCase([JOB_CODE])), CLIENT_BILL_INCOME_DIST1.CLIENT, CLIENT_BILL_INCOME_DIST1.JOB_CODE, nz([MGMT_CODE],"Undefined") ORDER BY nz([MGMT_CODE],"Undefined");`
- **Grouping:** CLIENT → MC
- **Fields:** INCOME, MC
- **Calculated:**
  - GroupFooter1: `=Sum([INCOME])`

## Report: Client_Bill_Income_Dist_Client_Parent_Subform
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist › Client_Bill_Income_Dist_Client_Parent_Subform
- **Record source:** ``
- **Grouping:** Reporting_Parent → MC
- **Fields:** INCOME, MC
- **Calculated:**
  - GroupFooter1: `=Sum([INCOME])`

## Report: Client_Bill_Income_Dist_Client_Subform
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail › Client_Bill_Income_Dist_Client_Subform
- **Record source:** ``
- **Grouping:** CLIENT → MC
- **Fields:** INCOME, MC
- **Calculated:**
  - GroupFooter1: `=Sum([INCOME])`

## Report: Client_Bill_Income_Dist_sum_Subform
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist › Client_Bill_Income_Dist_sum_Subform
- **Record source:** ``
- **Grouping:** MC
- **Fields:** INCOME, MC
- **Calculated:**
  - ReportFooter: `=Sum([INCOME])`

## Report: Client_Bill_Income_Dist_Summary_Bill_Stat_Subform
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED › Client_Bill_Income_Dist_Summary_Bill_Stat_Subform
- **Record source:** ``
- **Grouping:** MC
- **Fields:** INCOME, MC
- **Calculated:**
  - ReportFooter: `=Sum([INCOME])`

## Report: Client_Bill_Income_Dist_Summary_Subform
- **Caption:** Client Bill Income Dist subreport
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED2 › Client_Bill_Income_Dist_Summary_Subform
- **Record source:** `SELECT nz([MGMT_CODE],"Undefined") AS MC, Sum(Round(IIf([OVERRIDE]="AT",1,[UNITS])*[CHARGE_PER_UNIT]*([PERCENT_OF_CHARGE]/100),2)) AS INCOME FROM CLIENT_BILL_INCOME_DIST1 LEFT JOIN NMIS_PRODUCT_MGMT_CODES_QUERY ON CLIENT_BILL_INCOME_DIST1.PMC_LINK = NMIS_PRODUCT_MGMT_CODES_QUERY.PMC_LINK WHERE (((IIf(IsNull([Forms]![Client_Bill_Menu]![Contact_CN]),"ALL",[Contact_CN])) Like IIf(IsNull([Forms]![Client_Bill_Menu]![Contact_CN]),"ALL",[Forms]![Client_Bill_Menu]![Contact_CN])) AND ((CLIENT_BILL_INCOME_DIST1.CLIENT) Like [Forms]![Client_Bill_Menu]![Like_Client] & "*") AND ((CLIENT_BILL_INCOME_DIST1.BILL_CODE)<>"HOLD")) GROUP BY nz([MGMT_CODE],"Undefined") ORDER BY nz([MGMT_CODE],"Undefined");`
- **Grouping:** MC
- **Fields:** INCOME, MC
- **Calculated:**
  - ReportFooter: `=Sum([INCOME])`

## Report: CLIENT_BILL_INVOICE
- **Caption:** **CLIENT_BILL
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE
- **Record source:** `CLIENT_BILL_INVOICE`
- **Grouping:** Reporting_Parent → CLIENT → JC → PRIORITY → TYPE → CAT → PRODUCT → BILL_CODE → BILL_DESC
- **Subreports:** Report.Client_Bill_Income_Dist_Client_Jobcode_Subform, Report.Client_Bill_Unit_Jobcode_Total_Subform, Report.Client_Bill_Income_Dist_Client_Subform, Report.Client_Bill_Parent_Total_Subform2, Report.Client_Bill_Income_Dist_Client_Parent_Subform
- **Fields:** ASSOCIATE_NAME, BILL_CODE, BILL_DESC, CAT, CHARGE_PER_UNIT, CLIENT, ITEM_COST, JC, PARENT_NAME, PRIORITY_NAME, PRODUCT, TYPE, UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Now()`
  - GroupFooter3: `=Sum([ITEM_COST])`
  - GroupFooter0: `=[ASSOCIATE_NAME] & " Total Charges"`
  - GroupFooter1: `="Total Charges"`

## Report: CLIENT_BILL_INVOICE_Client_Checklist
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Client_Checklist
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT → JC → Bill_Group → PRIORITY → CAT → Bill_Code_n_Desc → TYPE → PRODUCT → ID
- **Subreports:** Report.Client_Bill_Income_Dist_Client_Parent_Subform, Report.Client_Bill_Billing_Parent_MGMT_Code subreport, Report.Client_Bill_Billing_Parent_MGMT_Code subreport, Report.Client_Bill_Income_Dist_sum_Subform
- **Fields:** BC, BD, CHARGE_PER_UNIT, ITEM_COST, Like_Client, SumOfUNITS, TYPE, [ID], [ID_SOURCE], [PARENT_NAME], ct, prod
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Date()`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - PageHeaderSection: `="Selected for Like Client: " & [Forms]![Client_Bill_Menu]![Like_Client]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Contact_CN]`
  - PageHeaderSection: `="Selected for Like Jobcode: " & [Forms]![Client_Bill_Menu]![LikeJobCode] & "  AND NOT Like Job code: " & [Forms]![Client_Bill_Menu]![NotLikeJC]`
  - Detail: `=IIf(IsNull([CHARGE_PER_UNIT]),"Undefined","")`
  - GroupFooter4: `=Sum([ITEM_COST])`
  - ReportFooter: `="Grand Total"`
  - ReportFooter: `=Sum([ITEM_COST])`
  - ReportFooter: `=IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FALURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.")`

## Report: CLIENT_BILL_INVOICE_COMBINED
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED
- **Record source:** ``
- **Grouping:** Bill_Status → CATEGORY_CODE → PRIORITY → TYPE → PRODUCT → BILL_CODE → BILL_DESC
- **Subreports:** Report.Client_Bill_Income_Dist_Summary_Bill_Stat_Subform
- **Fields:** BILL_CODE, BILL_DESC, Bill_Status, CATEGORY_CODE, CPU, ITEM_COST, PRIORITY_NAME, PRODUCT, SumOfUNITS, TYPE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Invoice Summary for Invoicing Period " & [Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - PageHeaderSection: `="Selected for Like Client: " & [Forms]![Client_Bill_Menu]![Like_Client]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Contact_CN]`
  - PageHeaderSection: `="Selected for Like Jobcode: " & [Forms]![Client_Bill_Menu]![LikeJobCode] & "  AND NOT Like Job code: " & [Forms]![Client_Bill_Menu]![NotLikeJC]`
  - GroupFooter0: `=Sum([ITEM_COST])`
  - GroupFooter0: `=Sum([SumOfUNITS])`
  - GroupFooter1: `=Sum([ITEM_COST])`
  - GroupFooter2: `=Sum([ITEM_COST])`
  - PageFooterSection: `=Date() & "   " & Time()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FALURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.")`

## Report: CLIENT_BILL_INVOICE_COMBINED2
- **Caption:** **CLIENT_BILL
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_COMBINED2
- **Record source:** `CLIENT_BILL_INVOICE_COMBINED2`
- **Grouping:** CATEGORY_CODE → PRIORITY → TYPE → PRODUCT → BILL_CODE → BILL_DESC
- **Subreports:** Report.Client_Bill_Income_Dist_Summary_Subform
- **Fields:** BILL_CODE, BILL_DESC_LONG, CATEGORY_CODE, ITEM_COST, PRIORITY_NAME, PRODUCT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="FY " & [Forms]![Switchboard]![FY_For_Reports] & " Billing Summary as of " & Date()`
  - GroupFooter1: `=Sum([ITEM_COST])`
  - GroupFooter0: `=Sum([ITEM_COST])`
  - GroupFooter2: `=Sum([ITEM_COST])`
  - PageFooterSection: `=Date() & "   " & Time()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([ITEM_COST])`

## Report: CLIENT_BILL_INVOICE_Shipping
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_Shipping
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT → JC → Bill_Group → PRIORITY → CAT → Bill_Code_n_Desc → TYPE → PRODUCT → ID
- **Fields:** ASSOCIATE_NAME, BC, BD, Bill_Group, CAT, CHARGE_PER_UNIT, CLIENT, ITEM_COST, JC, Like_Client, PARENT_NAME, SumOfUNITS, TYPE, [ID], [ID_SOURCE], ct, prod
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Date()`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Contact_CN]`
  - PageHeaderSection: `="Selected for Like Jobcode: " & [Forms]![Client_Bill_Menu]![LikeJobCode] & "  AND NOT Like Job code: " & [Forms]![Client_Bill_Menu]![NotLikeJC]`
  - Detail: `=IIf(IsNull([CHARGE_PER_UNIT]),"Undefined","")`
  - GroupFooter0: `=IIf([priority]=1,Sum([SumOfUnits]))`
  - GroupFooter0: `=IIf([priority]=1,[Type])`
  - GroupFooter0: `=IIf([priority]=1,[CHARGE_PER_UNIT])`
  - GroupFooter0: `=IIf([priority]=1,Sum([ITEM_COST]))`
  - GroupFooter0: `=IIf(Not IsNull([PRODUCT_CAT]),[PRODUCT_CAT] & IIf([Priority]=1," " & [BILL_DESC_LONG]))`
  - GroupFooter6: `=IIf([priority]>1,Sum([SumOfUnits]))`
  - GroupFooter6: `=IIf([priority]>1,[Type])`
  - GroupFooter6: `=IIf([priority]>1,[CHARGE_PER_UNIT])`
  - GroupFooter6: `=IIf([priority]>1,Sum([ITEM_COST]))`
  - GroupFooter6: `=IIf(IsNull([PRODUCT_CAT]),[bc] & "  " & [bd] & " Totals")`
  - GroupFooter5: `=Sum([ITEM_COST])`
  - GroupFooter5: `=IIf([priority]=1,Sum([SumOfUNITS]))`
  - GroupFooter3: `=Sum([ITEM_COST])`
  - GroupFooter1: `=[ASSOCIATE_NAME] & " Total Charges"`
  - GroupFooter1: `=Sum([ITEM_COST])`
  - GroupFooter4: `=[PARENT_NAME] & " Total Charges"`
  - GroupFooter4: `=Sum([ITEM_COST])`
  - ReportFooter: `=Sum([ITEM_COST])`
  - ReportFooter: `=IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FALURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.")`

## Report: CLIENT_BILL_INVOICE_w_lot_detail
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_w_lot_detail
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT → JC → Bill_Group → PRIORITY → CAT → Bill_Code_n_Desc → TYPE → PRODUCT → ID
- **Subreports:** Report.Client_Bill_Income_Dist_Client_Jobcode_Subform, Report.Client_Bill_Income_Dist_Client_Subform, Report.Client_Bill_Client_MGMT_Code subreport, Report.Client_Bill_Income_Dist_Client_Parent_Subform, Report.Client_Bill_Billing_Parent_MGMT_Code subreport
- **Fields:** ASSOCIATE_NAME, BCProd, BD, Bill_Group, CLIENT, CPU, Check_PMC, Chg_Override_Note, ID_Source2, ITEM_COST, JC, Like_Client, PRIORITY_NAME, PRODUCT_CAT, SumOfUNITS, TYPE, [ID], [PARENT_NAME], ct, prod
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Date()`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Contact_CN]`
  - GroupHeader2: `=IIf([priority]=1,"Units")`
  - GroupHeader2: `=IIf([priority]=1,"Type")`
  - GroupHeader2: `=IIf([priority]=1,"$/Unit")`
  - GroupHeader2: `=IIf([priority]=1,"Bill Amount")`
  - GroupHeader5: `=IIf([Priority]=1,[BILL_DESC_LONG])`
  - Detail: `=IIf(IsNull([CPU]),"Undefined","")`
  - Detail: `=IIf([OVERRIDE]="AT","TR")`
  - GroupFooter0: `=IIf([priority]=1,Sum([SumOfUnits]))`
  - GroupFooter0: `=IIf([priority]=1,[Type])`
  - GroupFooter0: `=IIf([priority]=1,Sum([ITEM_COST]))`
  - GroupFooter0: `=IIf(Not IsNull([PRODUCT_CAT]),[PRODUCT_CAT] & " Totals")`
  - GroupFooter5: `=Sum([ITEM_COST])`
  - GroupFooter5: `=IIf([priority]=1,Sum([SumOfUNITS]))`
  - GroupFooter3: `=Sum([ITEM_COST])`
  - GroupFooter1: `=[ASSOCIATE_NAME] & " Total Charges"`
  - GroupFooter1: `=Sum([ITEM_COST])`
  - GroupFooter4: `=[PARENT_NAME] & " Total Charges"`
  - GroupFooter4: `=Sum([ITEM_COST])`
  - GroupFooter4: `=[Forms]![Client_Bill_Menu]![Title_Line]`
  - GroupFooter4: `=[Forms]![Client_Bill_Menu]![Signature_Line]`
  - GroupFooter4: `=IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FAILURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.")`
  - GroupFooter4: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
  - GroupFooter4: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
  - GroupFooter4: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
  - GroupFooter4: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
  - GroupFooter4: `=IIf([Forms]![Client_Bill_Menu]![RemitTo],"Remit Payment to:")`
  - GroupFooter4: `=[Forms]![Client_Bill_Menu]![Comments]`
  - GroupFooter4: `=IIf([Forms]![Client_Bill_Menu]![RemitTo],"MAKE CHECK PAYABLE TO: FOREST SERVICE")`
  - GroupFooter4: `=IIf([Forms]![Client_Bill_Menu]![RemitTo],"INCULDE FMMI BILL NUMBER WITH PAYMENT")`
  - PageFooterSection: `=Now()`

## Report: CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc
- **Caption:** **CLIENT_BILL
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT → JC → PRIORITY → CAT → BILL_CODE → BILL_DESC → TYPE → PRODUCT → ID
- **Subreports:** Report.Client_Bill_Income_Dist_Client_Jobcode_Subform, Report.Client_Bill_Unit_Jobcode_Total_Subform, Report.Client_Bill_Income_Dist_Client_Subform, Report.Client_Bill_Parent_Total_Subform2, Report.Client_Bill_Income_Dist_Client_Parent_Subform
- **Fields:** ASSOCIATE_NAME, BILL_CODE, BILL_DESC_LONG, CHARGE_PER_UNIT, CLIENT, ID, ID_SOURCE, ITEM_COST, JC, Like_Client, PARENT_NAME, PRIORITY_NAME, PRODUCT_CAT, TYPE, UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Now()`
  - Detail: `=IIf(IsNull([CHARGE_PER_UNIT]),"Undefined","")`
  - GroupFooter0: `=Sum([UNITS])`
  - GroupFooter0: `=Sum([ITEM_COST])`
  - GroupFooter2: `=Sum([ITEM_COST])`
  - GroupFooter2: `=Sum([UNITS])`
  - GroupFooter3: `=Sum([ITEM_COST])`
  - GroupFooter1: `=[ASSOCIATE_NAME] & " Total Charges"`
  - GroupFooter4: `="Total Charges"`

## Report: CLIENT_BILL_INVOICE_wo_lot_detail
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILL_INVOICE_wo_lot_detail
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT → JC → Bill_Group → PRIORITY → CAT → Bill_Code_n_Desc → TYPE → PRODUCT → CHARGE_PER_UNIT
- **Subreports:** Report.Client_Bill_Income_Dist_Client_Jobcode_Subform, Report.Client_Bill_Income_Dist_Client_Subform, Report.Client_Bill_Client_MGMT_Code subreport, Report.Client_Bill_Income_Dist_Client_Parent_Subform, Report.Client_Bill_Billing_Parent_MGMT_Code subreport
- **Fields:** ASSOCIATE_NAME, BC, BD, Bill_Group, CLIENT, CPU, Chg_Override_Note, ITEM_COST, JC, Like_Client, PARENT_NAME, PRIORITY_NAME, SumOfUNITS, TYPE, [ID], [ID_SOURCE], ct, prod
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Date()`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Contact_CN]`
  - GroupHeader2: `=IIf([priority]=1,"Units")`
  - GroupHeader2: `=IIf([priority]=1,"Type")`
  - GroupHeader2: `=IIf([priority]=1,"$/Unit")`
  - GroupHeader2: `=IIf([priority]=1,"Bill Amount")`
  - Detail: `=IIf(IsNull([CHARGE_PER_UNIT]),"Undefined","")`
  - GroupFooter7: `=IIf([priority]=1,Sum([SumOfUnits]))`
  - GroupFooter7: `=IIf([priority]=1,[Type])`
  - GroupFooter7: `=IIf([priority]=1,[CPU])`
  - GroupFooter7: `=IIf([priority]=1,Sum([ITEM_COST]))`
  - GroupFooter7: `=IIf(Not IsNull([PRODUCT_CAT]),[PRODUCT_CAT] & IIf([Priority]=1," " & [BILL_DESC_LONG]))`
  - GroupFooter6: `=IIf([priority]>1,Sum([SumOfUnits]))`
  - GroupFooter6: `=IIf([priority]>1,[Type])`
  - GroupFooter6: `=IIf([priority]>1,[CPU])`
  - GroupFooter6: `=IIf([priority]>1,Sum([ITEM_COST]))`
  - GroupFooter6: `=[bc] & "  " & [bd] & " Totals"`
  - GroupFooter5: `=Sum([ITEM_COST])`
  - GroupFooter5: `=IIf([priority]=1,Sum([SumOfUNITS]))`
  - GroupFooter3: `=Sum([ITEM_COST])`
  - GroupFooter1: `=[ASSOCIATE_NAME] & " Total Charges"`
  - GroupFooter1: `=Sum([ITEM_COST])`
  - GroupFooter4: `=[PARENT_NAME] & " Total Charges"`
  - GroupFooter4: `=Sum([ITEM_COST])`
  - GroupFooter4: `=[Forms]![Client_Bill_Menu]![Title_Line]`
  - GroupFooter4: `=[Forms]![Client_Bill_Menu]![Signature_Line]`
  - GroupFooter4: `=IIf([Forms]![Client_Bill_Menu]![InterestChargeStatement],"FAILURE TO MAKE PAYMENTS BY THE DUE DATE WILL RESULT IN THE ASSESSMENT OF LATE PAYMENT CHARGES (INTEREST, ADMINISTRATIVE COST, AND/OR PENALTY CHARGES) IN ACCORDANCE WITH YOUR CONTRACT, PERMIT, OR THE DEBT COLLECTION ACT OF 1982 AS AMENDED. POSTMARKS ARE NOT HONORED. LATE FEES DO NOT APPLY FOR BILLINGS IN ADVANCE OF RECEIPT OF GOODS OR SERVICES.")`

## Report: Client_Bill_Parent_Total_Subform2
- **Caption:** Tag pairs without Nursery ID's (bareroot)
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE › Client_Bill_Parent_Total_Subform2
- **Record source:** ``
- **Grouping:** Reporting_Parent
- **Fields:** Reporting_Parent
- **Calculated:**
  - GroupFooter0: `=Sum([ITem_COST])`

## Report: CLIENT_BILL_PREVIEW_LOTS
- **Caption:** CLIENT_BILL_Crosstab
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING › CLIENT_BILL_PREVIEW_LOTS
- **Record source:** `CLIENT_BILL_PREVIEW_Crosstab`
- **Grouping:** CLIENT → JOB_CODE → PRODUCT_DESC → LOT_ID
- **Fields:** ASSOCIATE_NAME, CDEST, CLIENT, CNDEST, CPROC  STANDARD, FDEST, JOB_CODE, LOT_ID, PACK  STANDARD, PACK  SUBSPEC, PDEST, PICKUP, PRODUCT_DESC, PXPLT  STANDARD, PXPLT  SUBSPEC, PXPLTP  STANDARD, SHIP, XPLTP, [HOLD  STANDARD], [PACK  HIGRADE]
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=NZ([XPLTN],0)+NZ([XPLT],0)`
  - GroupFooter1: `=Sum([CPROC  STANDARD])`
  - GroupFooter1: `=Sum([PACK  STANDARD])`
  - GroupFooter1: `=Sum([PACK  SUBSPEC])`
  - GroupFooter1: `=Sum([PACK  HIGRADE])`
  - GroupFooter1: `=Sum([PXPLT  STANDARD])`
  - GroupFooter1: `=Sum([PXPLT  SUBSPEC])`
  - GroupFooter1: `=Sum([HOLD  STANDARD])`
  - GroupFooter1: `=Sum([CNDEST])`
  - GroupFooter1: `=Sum([PXPLTP  STANDARD])`
  - GroupFooter1: `=Sum([FDEST])`
  - GroupFooter1: `=Sum([PDEST])`
  - GroupFooter1: `=Sum([PICKUP])`
  - GroupFooter1: `=Sum([SHIP])`
  - GroupFooter1: `=Sum([CDEST])`
  - GroupFooter1: `=Sum(NZ([XPLTN],0)+NZ([XPLT],0))`
  - GroupFooter1: `=Sum([XPLTP])`
  - GroupFooter2: `=Sum([CPROC  STANDARD])`
  - GroupFooter2: `=Sum([PACK  STANDARD])`
  - GroupFooter2: `=Sum([PACK  SUBSPEC])`
  - GroupFooter2: `=Sum(NZ([PACK  HIGRADE],Null))`
  - GroupFooter2: `=Sum([PXPLT  STANDARD])`
  - GroupFooter2: `=Sum([PXPLT  SUBSPEC])`
  - GroupFooter2: `=Sum([HOLD  STANDARD])`
  - GroupFooter2: `=Sum([PXPLTP  STANDARD])`
  - GroupFooter2: `=Sum([CNDEST])`
  - GroupFooter2: `=Sum([FDEST])`
  - GroupFooter2: `=Sum([PDEST])`
  - GroupFooter2: `=Sum([PICKUP])`
  - GroupFooter2: `=Sum([SHIP])`
  - GroupFooter2: `=Sum([CDEST])`
  - GroupFooter2: `=Sum(NZ([XPLTN],0)+NZ([XPLT],0))`
  - GroupFooter2: `=Sum([XPLTP])`
  - GroupFooter0: `=Sum([CPROC  STANDARD])`
  - GroupFooter0: `=Sum([PACK  STANDARD])`
  - GroupFooter0: `=Sum([PACK  SUBSPEC])`
  - GroupFooter0: `=Sum([PACK  HIGRADE])`
  - GroupFooter0: `=Sum([PXPLT  STANDARD])`
  - GroupFooter0: `=Sum([PXPLT  SUBSPEC])`
  - GroupFooter0: `=Sum([HOLD  STANDARD])`
  - GroupFooter0: `=Sum([CNDEST])`
  - GroupFooter0: `=Sum([PXPLTP  STANDARD])`
  - GroupFooter0: `=Sum([FDEST])`
  - GroupFooter0: `=Sum([PDEST])`
  - GroupFooter0: `=Sum([PICKUP])`
  - GroupFooter0: `=Sum([SHIP])`
  - GroupFooter0: `=Sum([CDEST])`
  - GroupFooter0: `=Sum(NZ([XPLTN],0)+NZ([XPLT],0))`
  - GroupFooter0: `=Sum([XPLTP])`

## Report: CLIENT_BILL_PREVIEW_LOTS2
- **Caption:** CLIENT_BILL_Crosstab
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_LOTS2
- **Record source:** `CLIENT_BILL_PREVIEW_Crosstab`
- **Grouping:** CLIENT → JOB_CODE → PRODUCT_DESC → LOT_ID
- **Fields:** ASSOCIATE_NAME, CDEST, CLIENT, CNDEST, CPROC  STANDARD, FDEST, JOB_CODE, LOT_ID, PACK  STANDARD, PACK  SUBSPEC, PDEST, PICKUP, PRODUCT_DESC, PXPLT  STANDARD, PXPLT  SUBSPEC, PXPLTP  STANDARD, SHIP, XPLTP, [HOLD  STANDARD], [PACK  HIGRADE]
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![Current FY:]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - Detail: `=NZ([XPLTN],0)+NZ([XPLT],0)`
  - GroupFooter1: `=Sum([CPROC  STANDARD])`
  - GroupFooter1: `=Sum([PACK  STANDARD])`
  - GroupFooter1: `=Sum([PACK  SUBSPEC])`
  - GroupFooter1: `=Sum([PACK  HIGRADE])`
  - GroupFooter1: `=Sum([PXPLT  STANDARD])`
  - GroupFooter1: `=Sum([PXPLT  SUBSPEC])`
  - GroupFooter1: `=Sum([HOLD  STANDARD])`
  - GroupFooter1: `=Sum([CNDEST])`
  - GroupFooter1: `=Sum([PXPLTP  STANDARD])`
  - GroupFooter1: `=Sum([FDEST])`
  - GroupFooter1: `=Sum([PDEST])`
  - GroupFooter1: `=Sum([PICKUP])`
  - GroupFooter1: `=Sum([SHIP])`
  - GroupFooter1: `=Sum([CDEST])`
  - GroupFooter1: `=Sum(NZ([XPLTN],0)+NZ([XPLT],0))`
  - GroupFooter1: `=Sum([XPLTP])`
  - GroupFooter2: `=Sum([CPROC  STANDARD])`
  - GroupFooter2: `=Sum([PACK  STANDARD])`
  - GroupFooter2: `=Sum([PACK  SUBSPEC])`
  - GroupFooter2: `=Sum(NZ([PACK  HIGRADE],Null))`
  - GroupFooter2: `=Sum([PXPLT  STANDARD])`
  - GroupFooter2: `=Sum([PXPLT  SUBSPEC])`
  - GroupFooter2: `=Sum([HOLD  STANDARD])`
  - GroupFooter2: `=Sum([PXPLTP  STANDARD])`
  - GroupFooter2: `=Sum([CNDEST])`
  - GroupFooter2: `=Sum([FDEST])`
  - GroupFooter2: `=Sum([PDEST])`
  - GroupFooter2: `=Sum([PICKUP])`
  - GroupFooter2: `=Sum([SHIP])`
  - GroupFooter2: `=Sum([CDEST])`
  - GroupFooter2: `=Sum(NZ([XPLTN],0)+NZ([XPLT],0))`
  - GroupFooter2: `=Sum([XPLTP])`
  - GroupFooter0: `=Sum([CPROC  STANDARD])`
  - GroupFooter0: `=Sum([PACK  STANDARD])`
  - GroupFooter0: `=Sum([PACK  SUBSPEC])`
  - GroupFooter0: `=Sum([PACK  HIGRADE])`
  - GroupFooter0: `=Sum([PXPLT  STANDARD])`
  - GroupFooter0: `=Sum([PXPLT  SUBSPEC])`
  - GroupFooter0: `=Sum([HOLD  STANDARD])`
  - GroupFooter0: `=Sum([CNDEST])`
  - GroupFooter0: `=Sum([PXPLTP  STANDARD])`
  - GroupFooter0: `=Sum([FDEST])`
  - GroupFooter0: `=Sum([PDEST])`
  - GroupFooter0: `=Sum([PICKUP])`
  - GroupFooter0: `=Sum([SHIP])`
  - GroupFooter0: `=Sum([CDEST])`
  - GroupFooter0: `=Sum(NZ([XPLTN],0)+NZ([XPLT],0))`
  - GroupFooter0: `=Sum([XPLTP])`

## Report: CLIENT_BILL_PREVIEW_LOTS_SVCS
- **Caption:** CLIENT_BILL_SVCS_Crosstab
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING › CLIENT_BILL_PREVIEW_LOTS_SVCS
- **Record source:** `CLIENT_BILL_PREVIEW_Crosstab_SVCS`
- **Grouping:** CLIENT → JOB_CODE → PRODUCT_DESC → LOT_ID
- **Fields:** 2NDSRT, ASSOCIATE_NAME, BAG, BGBX, BND100, BNDL10, BNDL20, BNDL25, BNDL50, BOX, BOXU, CLIENT, FRZR, JOB_CODE, LOT_ID, NOSVC, PRODUCT_DESC, RACK, SDLTST, STRAP, TOTE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![Current FY:]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - GroupFooter0: `=Sum([BAG])`
  - GroupFooter0: `=Sum([BGBX])`
  - GroupFooter0: `=Sum([BND100])`
  - GroupFooter0: `=Sum([BNDL20])`
  - GroupFooter0: `=Sum([BNDL25])`
  - GroupFooter0: `=Sum([BNDL50])`
  - GroupFooter0: `=Sum([BOX])`
  - GroupFooter0: `=Sum([BOXU])`
  - GroupFooter0: `=Sum([2NDSRT])`
  - GroupFooter0: `=Sum([FRZR])`
  - GroupFooter0: `=Sum([NOSVC])`
  - GroupFooter0: `=Sum([SDLTST])`
  - GroupFooter0: `=Sum([STRAP])`
  - GroupFooter0: `=Sum([RACK])`
  - GroupFooter0: `=Sum([TOTE])`
  - GroupFooter0: `=Sum([BNDL10])`
  - GroupFooter2: `=Sum([BAG])`
  - GroupFooter2: `=Sum([BGBX])`
  - GroupFooter2: `=Sum([BND100])`
  - GroupFooter2: `=Sum([BNDL20])`
  - GroupFooter2: `=Sum([BNDL25])`
  - GroupFooter2: `=Sum([BNDL50])`
  - GroupFooter2: `=Sum([BOX])`
  - GroupFooter2: `=Sum([BOXU])`
  - GroupFooter2: `=Sum([2NDSRT])`
  - GroupFooter2: `=Sum([FRZR])`
  - GroupFooter2: `=Sum([NOSVC])`
  - GroupFooter2: `=Sum([SDLTST])`
  - GroupFooter2: `=Sum([STRAP])`
  - GroupFooter2: `=Sum([RACK])`
  - GroupFooter2: `=Sum([TOTE])`
  - GroupFooter2: `=Sum([BNDL10])`
  - GroupFooter1: `=Sum([BAG])`
  - GroupFooter1: `=Sum([BGBX])`
  - GroupFooter1: `=Sum([BND100])`
  - GroupFooter1: `=Sum([BNDL20])`
  - GroupFooter1: `=Sum([BNDL25])`
  - GroupFooter1: `=Sum([BNDL50])`
  - GroupFooter1: `=Sum([BOX])`
  - GroupFooter1: `=Sum([BOXU])`
  - GroupFooter1: `=Sum([2NDSRT])`
  - GroupFooter1: `=Sum([FRZR])`
  - GroupFooter1: `=Sum([NOSVC])`
  - GroupFooter1: `=Sum([SDLTST])`
  - GroupFooter1: `=Sum([STRAP])`
  - GroupFooter1: `=Sum([RACK])`
  - GroupFooter1: `=Sum([TOTE])`
  - GroupFooter1: `=Sum([BNDL10])`

## Report: CLIENT_BILL_PREVIEW_LOTS_SVCS2
- **Caption:** CLIENT_BILL_SVCS_Crosstab
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_LOTS_SVCS2
- **Record source:** `CLIENT_BILL_PREVIEW_Crosstab_SVCS`
- **Grouping:** CLIENT → JOB_CODE → PRODUCT_DESC → LOT_ID
- **Fields:** 2NDSRT, ASSOCIATE_NAME, BAG, BGBX, BND100, BNDL10, BNDL20, BNDL25, BNDL50, BOX, BOXU, CLIENT, FRZR, JOB_CODE, LOT_ID, NOSVC, PRODUCT_DESC, RACK, SDLTST, STRAP, TOTE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - GroupFooter0: `=Sum([BAG])`
  - GroupFooter0: `=Sum([BGBX])`
  - GroupFooter0: `=Sum([BND100])`
  - GroupFooter0: `=Sum([BNDL20])`
  - GroupFooter0: `=Sum([BNDL25])`
  - GroupFooter0: `=Sum([BNDL50])`
  - GroupFooter0: `=Sum([BOX])`
  - GroupFooter0: `=Sum([BOXU])`
  - GroupFooter0: `=Sum([2NDSRT])`
  - GroupFooter0: `=Sum([FRZR])`
  - GroupFooter0: `=Sum([NOSVC])`
  - GroupFooter0: `=Sum([SDLTST])`
  - GroupFooter0: `=Sum([STRAP])`
  - GroupFooter0: `=Sum([RACK])`
  - GroupFooter0: `=Sum([TOTE])`
  - GroupFooter0: `=Sum([BNDL10])`
  - GroupFooter2: `=Sum([BAG])`
  - GroupFooter2: `=Sum([BGBX])`
  - GroupFooter2: `=Sum([BND100])`
  - GroupFooter2: `=Sum([BNDL20])`
  - GroupFooter2: `=Sum([BNDL25])`
  - GroupFooter2: `=Sum([BNDL50])`
  - GroupFooter2: `=Sum([BOX])`
  - GroupFooter2: `=Sum([BOXU])`
  - GroupFooter2: `=Sum([2NDSRT])`
  - GroupFooter2: `=Sum([FRZR])`
  - GroupFooter2: `=Sum([NOSVC])`
  - GroupFooter2: `=Sum([SDLTST])`
  - GroupFooter2: `=Sum([STRAP])`
  - GroupFooter2: `=Sum([RACK])`
  - GroupFooter2: `=Sum([TOTE])`
  - GroupFooter2: `=Sum([BNDL10])`
  - GroupFooter1: `=Sum([BAG])`
  - GroupFooter1: `=Sum([BGBX])`
  - GroupFooter1: `=Sum([BND100])`
  - GroupFooter1: `=Sum([BNDL20])`
  - GroupFooter1: `=Sum([BNDL25])`
  - GroupFooter1: `=Sum([BNDL50])`
  - GroupFooter1: `=Sum([BOX])`
  - GroupFooter1: `=Sum([BOXU])`
  - GroupFooter1: `=Sum([2NDSRT])`
  - GroupFooter1: `=Sum([FRZR])`
  - GroupFooter1: `=Sum([NOSVC])`
  - GroupFooter1: `=Sum([SDLTST])`
  - GroupFooter1: `=Sum([STRAP])`
  - GroupFooter1: `=Sum([RACK])`
  - GroupFooter1: `=Sum([TOTE])`
  - GroupFooter1: `=Sum([BNDL10])`

## Report: CLIENT_BILL_PREVIEW_TICKETS
- **Caption:** SHIPPED
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILLING_PREVIEW_BILLING › CLIENT_BILL_PREVIEW_TICKETS
- **Record source:** `CLIENT_BILL_PREVIEW_TICKETS`
- **Grouping:** DELIVERED_TO_ASSOCIATE → ACTIVITY_CODE → JOB_CODE → PRODUCT_DESC → ID
- **Subreports:** Report.CLIENT_BILL_PREVIEW_TKT_COSTS
- **Fields:** ACTIVITY_NAME, AGREEMENT_LOT_ID_AND_SOURCE, ASSOCIATE_NAME, CLIENT, CONTAINERS, DELIVERED_TO_ASSOCIATE, DESIRED_DATE, EXT_DOC_REF, FISCAL_YEAR, JOB_CODE, PARENT_NAME, PRODUCT_DESC, SHIPPED, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - GroupFooter7: `=Sum([shipped])`
  - GroupFooter7: `=Sum([CONTAINERS])`
  - GroupFooter6: `=Sum([shipped])`
  - GroupFooter6: `=Sum([CONTAINERS])`
  - GroupFooter5: `=Sum([shipped])`
  - GroupFooter5: `=Sum([CONTAINERS])`
  - GroupFooter4: `=Sum([shipped])`
  - GroupFooter4: `=Sum([CONTAINERS])`

## Report: CLIENT_BILL_PREVIEW_TICKETS2
- **Caption:** SHIPPED
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_TICKETS2
- **Record source:** `CLIENT_BILL_PREVIEW_TICKETS2`
- **Grouping:** DELIVERED_TO_ASSOCIATE → ACTIVITY_CODE → JOB_CODE → PRODUCT_DESC → ID
- **Subreports:** Report.CLIENT_BILL_PREVIEW_TKT_COSTS
- **Fields:** ACTIVITY_NAME, AGREEMENT_LOT_ID_AND_SOURCE, ASSOCIATE_NAME, CLIENT, CONTAINERS, DELIVERED_TO_ASSOCIATE, DESIRED_DATE, EXT_DOC_REF, FISCAL_YEAR, JOB_CODE, PARENT_NAME, PRODUCT_DESC, SHIPPED, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date]`
  - GroupFooter7: `=Sum([shipped])`
  - GroupFooter7: `=Sum([CONTAINERS])`
  - GroupFooter6: `=Sum([shipped])`
  - GroupFooter6: `=Sum([CONTAINERS])`
  - GroupFooter5: `=Sum([shipped])`
  - GroupFooter5: `=Sum([CONTAINERS])`
  - GroupFooter4: `=Sum([shipped])`
  - GroupFooter4: `=Sum([CONTAINERS])`

## Report: CLIENT_BILL_PREVIEW_TKT_COSTS
- **Caption:** NMIS_ASSOCIATES
- **Menu path:** Switchboard › Client_Bill_Menu › CLIENT_BILLING_PREVIEW_BILLING2 › CLIENT_BILL_PREVIEW_TICKETS2 › CLIENT_BILL_PREVIEW_TKT_COSTS
- **Record source:** `CLIENT_BILL_PREVIEW_TKT_COSTS`
- **Grouping:** ASSOCIATE_NAME → DESIRED_DATE → TKT_NO
- **Fields:** ASSOCIATE_NAME, CHARGE_PER_TICKET, DELIVERED_TO_ASSOCIATE, DESIRED_DATE, EXT_DOC_REF, TKT_NO

## Report: Client_Bill_Unit_Jobcode_Total_Subform
- **Caption:** Tag pairs without Nursery ID's (bareroot)
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › CLIENT_BILL_INVOICE › Client_Bill_Unit_Jobcode_Total_Subform
- **Record source:** ``
- **Grouping:** Reporting_Parent
- **Fields:** CLIENT, JC
- **Calculated:**
  - GroupFooter0: `=Sum([ITem_COST])`

## Report: Clients_Not_Currently_Growing
- **Caption:** Clients Not Currently Growing
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Clients_Not_Currently_Growing
- **Record source:** `client_and_Contacts_not_growing`
- **Grouping:** CLIENT_ASSOCIATE → LAST_NAME → FIRST_NAME
- **Fields:** ASSOCIATE_NAME, CLIENT_ASSOCIATE, SumOfSumOfAMOUNT_REQUESTED
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=[First_Name] & IIf(Not IsNull([first_name])," ") & [last_name] & IIf(Not IsNull([historical])," (Historical)")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Container_Location_Index
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index
- **Record source:** ``
- **Grouping:** Facility → Location_Parent → Location → BEGIN_INDEX → END_INDEX → id2
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport
- **Fields:** BEGIN_INDEX, Containers_In_Lot, DESCRIPTION, END_INDEX, FirstOfNOTE, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, SUBLOT_NO, Sublot_ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - Detail: `=[Major_Client] & "-" & [ID2] & "    " & [ID_Source]`
  - Detail: `=[NMIS_ID_LOCATIONS subreport].[Report]![Ft_In_Lot]`
  - GroupFooter0: `=Sum([Containers_In_Lot])`
  - GroupFooter0: `=Sum([Cells])`
  - GroupFooter0: `=Sum([Area])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Format(Date(),"Long Date") & " " & Format(Time(),"Long Time")`

## Report: Container_Location_Index_fs_vs_non
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index_fs_vs_non
- **Record source:** ``
- **Grouping:** Facility → Location_Parent → Location → BEGIN_INDEX → END_INDEX → id2
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport
- **Fields:** BEGIN_INDEX, Containers_In_Lot, DESCRIPTION, END_INDEX, FirstOfNOTE, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, SUBLOT_NO, Sublot_ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `="Forest Service R" & Mid$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],2,1)`
  - PageHeaderSection: `="Non-Region and non-Forest Service"`
  - Detail: `=[Major_Client] & "-" & [ID2] & "    " & [ID_Source]`
  - Detail: `=[NMIS_ID_LOCATIONS subreport].[Report]![Ft_In_Lot]`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Format(Date(),"Long Date") & " " & Format(Time(),"Long Time")`

## Report: Container_Location_Index_Inv_Stat
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index_Inv_Stat
- **Record source:** ``
- **Grouping:** Facility → Location_Parent → Location → BEGIN_INDEX → END_INDEX → id2
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport
- **Fields:** BEGIN_INDEX, Containers_In_Lot, DESCRIPTION, END_INDEX, FirstOfNOTE, Inv_Type, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, SUBLOT_NO, Sublot_ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `="No Inv"`
  - PageHeaderSection: `="Count Inv"`
  - PageHeaderSection: `="Size Inv"`
  - Detail: `=[Major_Client] & "-" & [ID2] & "    " & [ID_Source]`
  - Detail: `=[NMIS_ID_LOCATIONS subreport].[Report]![Ft_In_Lot]`
  - GroupFooter0: `=Sum([Containers_In_Lot])`
  - GroupFooter0: `=Sum([Cells])`
  - GroupFooter0: `=Sum([Area])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Format(Date(),"Long Date") & " " & Format(Time(),"Long Time")`

## Report: Container_Location_Proofsheet
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Proofsheet
- **Record source:** ``
- **Grouping:** L1_Label → L1 → Location → SOW_DIRECTION_SORT → BEGIN_INDEX → END_INDEX → ID_Sublot_No
- **Fields:** BEGIN_INDEX, Containers_In_Lot, END_INDEX, ID_Sublot_No, L1, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - GroupFooter0: `=Sum([Containers_In_Lot])`
  - GroupFooter0: `=Sum([Cells])`
  - GroupFooter0: `=Sum([Area])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`

## Report: Container_Location_Proofsheet_fs_vs_non
- **Caption:** Container Facility Location Proofsheet
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Proofsheet_fs_vs_non
- **Record source:** `Container_Location_Proofsheet Query`
- **Grouping:** L1_Label → L1 → Location → SOW_DIRECTION_SORT → BEGIN_INDEX → END_INDEX → ID_Sublot_No
- **Fields:** BEGIN_INDEX, Containers_In_Lot, END_INDEX, ID_Sublot_No, L1, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `="Forest Service R" & Mid$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],2,1)`
  - PageHeaderSection: `="Non-Region and Non-Forest Service "`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`

## Report: Container_Location_Proofsheet_Inv_Stat
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Proofsheet_Inv_Stat
- **Record source:** ``
- **Grouping:** L1_Label → L1 → Location → SOW_DIRECTION_SORT → BEGIN_INDEX → END_INDEX → ID_Sublot_No
- **Fields:** BEGIN_INDEX, Containers_In_Lot, END_INDEX, ID_Sublot_No, Inv_Type, L1, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `="No Inv"`
  - PageHeaderSection: `="Count Inv"`
  - PageHeaderSection: `="Size Inv"`
  - GroupFooter0: `=Sum([Containers_In_Lot])`
  - GroupFooter0: `=Sum([Cells])`
  - GroupFooter0: `=Sum([Area])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`

## Report: CONTRACT_PAYMENT_ESTIMATE_INVOICE
- **Caption:** LIFT_CONTRACT_ESTIMATE_INVOICE
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Payment_Estimate_Invoice › CONTRACT_PAYMENT_ESTIMATE_INVOICE
- **Record source:** ``
- **Grouping:** Level → sort → Item_No
- **Fields:** ADDRESS, ASSOCIATE_NAME, CITY_STATE_ZIP, CONTRACT_NO, Changes, Contract, Estimate_No, INCREASES_DECREASES, Inclusive_Dates, Item, Item_No, NET_CONTRACT_AMOUNT, ORIGINAL_CONTRACT_AMT, PROJECT_NAME, Prev_Est, REMARKS, Rev_Tot, SIGN_DATE, This_Est, Total_To_Date, Unit, Unit_Price, [DISCOUNT_PCT], [RETENTION_PCT], [Total_Earned_to_Date]
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="NMIS " & Now()`
  - ReportFooter: `=Sum([Total_Earned_to_Date])`
  - ReportFooter: `=nz([Retention_PCT],0)/100*[ORIGINAL_CONTRACT_AMOUNT]`
  - ReportFooter: `=Val([Prev_Pmt])`
  - ReportFooter: `=nz([Discount_PCT],0)/100*[ORIGINAL_CONTRACT_AMOUNT]`
  - ReportFooter: `=NZ([DEDUCTION],0)`
  - ReportFooter: `=[Retention]+[PREVIOUS_PAYMENTS]+[Discount]+[Deductions]`
  - ReportFooter: `=[Subtotal_Earned_To_Date]-[Total_Deductions]`

## Report: CONTRACT_WORK_ORDER_FS-6300-12
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Contract_Work_Order › CONTRACT_WORK_ORDER_FS-6300-12
- **Record source:** ``
- **Grouping:** 
- **Fields:** ADDRESS, ASSOCIATE_NAME, CITY_STATE_ZIP, CONTRACT_NO, DATE, Est_and_Amend, NON_COMPLIANCE, PROJECT_NAME, Phones, REFERENCE, SIGNATURE_TITLE, WORK_ORDER, WORK_ORDERED
- **Calculated:**
  - Detail: `="NMIS " & Now()`

## Report: Current_Inventory_By_Unit
- **Caption:** Current_Inventory_By_Unit
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance › Current_Inventory_By_Unit
- **Record source:** `SELECT Transaction_Totals_By_Unit_Code_and_amt_per_unit.AGREEMENT_LOT_CN, Transaction_Totals_By_Unit_Code_and_amt_per_unit.UNIT_CODE, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Total_Activity_Units, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Net_Density_R, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Gross_Density_R, Sum([Total_Activity_Units]*[Net_Density_R]/[UNIT_MULTIPLIER]) AS Net, Sum([Total_Activity_Units]*[Gross_Density_R]/[UNIT_MULTIPLIER]) AS Gross FROM Transaction_Totals_By_Unit_Code_and_amt_per_unit GROUP BY Transaction_Totals_By_Unit_Code_and_amt_per_unit.AGREEMENT_LOT_CN, Transaction_Totals_By_Unit_Code_and_amt_per_unit.UNIT_CODE, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Total_Activity_Units, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Net_Density_R, Transaction_Totals_By_Unit_Code_and_amt_per_unit.Gross_Density_R;`
- **Grouping:** UNIT_CODE
- **Fields:** Gross, Gross_Density_R, Net, Net_Density_R, Total_Activity_Units, UNIT_CODE
- **Calculated:**
  - GroupFooter0: `=Sum([Net])`
  - GroupFooter0: `=Sum([Gross])`
  - ReportFooter: `=Sum([Net])`
  - ReportFooter: `=Sum([Gross])`

## Report: Destroy_act_tot_vs_trans_total_checklist
- **Caption:** NMIS_AGREEMENT_LOT_Activities_and Transactions
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Destroy_act_tot_vs_trans_total_checklist
- **Record source:** `destroy_act_tot_vs_trans_total`
- **Grouping:** TKT_NO → ID → CN → ACTIVITY_DATE
- **Subreports:** Report.NMIS_TRANSACTIONS_destroy_check subreport
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, CN, Check_Order_FY, ID, LastOfNOTE, NMIS_ID_ACTIVITIES.FISCAL_YEAR, Order/FY, TKT_NO, Transaction Total, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`

## Report: E-MAIL_LIST_FOR_SURPLUS
- **Caption:** E-MAIL_LIST_FOR_SURPLUS Query
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › E-MAIL_LIST_FOR_SURPLUS
- **Record source:** `E-MAIL_LIST_FOR_SURPLUS Query`
- **Grouping:** ASSOCIATE_NAME
- **Fields:** ASSOCIATE, ASSOCIATE_NAME, EMAIL_ADDR

## Report: EXTRACTION_BY_MGMT_CODE subreport
- **Caption:** EXTRACTION_BY_MGMT_CODE subreport
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing › EXTRACTION_BY_MGMT_CODE subreport
- **Record source:** ``
- **Grouping:** BILLING_ASSOCIATE → Management_Code
- **Fields:** Amount, Management_Code
- **Calculated:**
  - GroupFooter2: `=Sum([AMOUNT])`

## Report: EXTRACTION_INCOME_BY_MGMT_CODE subreport
- **Caption:** EXTRACTION_BY_MGMT_CODE subreport
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing › EXTRACTION_INCOME_BY_MGMT_CODE subreport
- **Record source:** ``
- **Grouping:** BILLING_ASSOCIATE → Income_Classification_MGMT_CODE
- **Fields:** Amount, Income_Classification_MGMT_CODE
- **Calculated:**
  - GroupFooter2: `=Sum([AMOUNT])`

## Report: Field_Form_Plants
- **Caption:** Stock Monitoring Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants
- **Record source:** ``
- **Grouping:** FirstOfCost_Center → MinOfMinOfLOCATION → MaxOfSOW_DIRECTION_SORT → MaxOfSOW_DIRECTION_SORT → ID → Sublot
- **Subreports:** Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Fields:** END_FY, Extra_Note_Line, FirstOfCost_Center, From_To, Grow_Units, ID, ID_SOURCE, Lot_Note, Major_Client, MaxOfMinOfACTIVITY_DATE, Sublot, SumOfTotal_Activity_Units, TOTAL_REQUEST
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - GroupFooter0: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter0: `="Total " & [Grow_Units]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Form_Plants_Inv_Count_Checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Count_Checklist
- **Record source:** ``
- **Grouping:** Field → MinOfMinOfMinOfLOCATION → MaxOfMaxOfSOW_DIRECTION_SORT → ID → SUBLOT_NO
- **Fields:** Dist_Between, Dist_Between_Code, Field, From_To, Gross, ID_SPLIT_LOT, Inv_Type, Plots_Int, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units, sb
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse]`
  - GroupFooter3: `=Sum([Plots_Int])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="j"`

## Report: Field_Form_Plants_Inv_Count_Checklist_pagebreak
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Count_Checklist_pagebreak
- **Record source:** ``
- **Grouping:** Field → MinOfMinOfMinOfLOCATION → MaxOfMaxOfSOW_DIRECTION_SORT → ID → SUBLOT_NO
- **Fields:** Dist_Between, Dist_Between_Code, Field, From_To, Gross, ID_SPLIT_LOT, Inv_Type, Plots_Int, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units, sb
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse]`
  - GroupFooter3: `=Sum([Plots_Int])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="j"`

## Report: Field_Form_Plants_Inv_Size_Checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants_Inv_Size_Checklist
- **Record source:** ``
- **Grouping:** Field → MinOfMinOfMinOfLOCATION → MaxOfMaxOfSOW_DIRECTION_SORT → ID → SUBLOT_NO
- **Fields:** Dist_Between, Dist_Between_Code, Field, From_To, GD, Gross, Plots_Int, SIZE, SOURCE, SUBLOT_NO, Size_per_Plot, SumOfTotal_Activity_Units, adj_gross_by_cy_inv, sb
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse]`
  - Detail: `=[ID] & IIf(Not IsNull([Sublot_no])," Split Lot")`
  - GroupFooter3: `=Sum([Plots_Int])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter3: `=Sum([Size])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="j"`
  - PageFooterSection: `="Prev Yr Count Reduced by " & [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Reduce_Prev_Yr_Counts] & "%"`
  - PageFooterSection: `="k"`

## Report: Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Size_Checklist_Container_pagebreak
- **Record source:** ``
- **Grouping:** Field → MinOfMinOfMinOfLOCATION → MaxOfMaxOfSOW_DIRECTION_SORT → ID → SUBLOT_NO
- **Fields:** CycleGrowContainer, DistBetween, Field, From_To, GD, Gross, INV_SIZE_SAMPLE, Plots_Int, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units, adj_gross_by_cy_inv, sb
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse]`
  - Detail: `=[ID] & IIf(Not IsNull([Sublot_no])," Split Lot")`
  - GroupFooter3: `=Sum([Plots_Int])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter3: `=Sum([INV_SIZE_SAMPLE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="j"`
  - PageFooterSection: `="Prev Yr Count Reduced by " & [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Reduce_Prev_Yr_Counts] & "%"`
  - PageFooterSection: `="k"`
  - PageFooterSection: `="l"`

## Report: Field_Form_Plants_Inv_Size_Checklist_pagebreak
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants_For_Inventory_Sizing › Field_Form_Plants_Inv_Size_Checklist_pagebreak
- **Record source:** ``
- **Grouping:** Field → MinOfMinOfMinOfLOCATION → MaxOfMaxOfSOW_DIRECTION_SORT → ID → SUBLOT_NO
- **Fields:** Dist_Between, Dist_Between_Code, Field, From_To, GD, Gross, Plots_Int, SIZE, SOURCE, SUBLOT_NO, Size_per_Plot, SumOfTotal_Activity_Units, adj_gross_by_cy_inv, sb
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Field_Form_Plants_For_Inventory_Sizing]![Diverse]`
  - Detail: `=[ID] & IIf(Not IsNull([Sublot_no])," Split Lot")`
  - GroupFooter3: `=Sum([Plots_Int])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter3: `=Sum([Size])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="j"`
  - PageFooterSection: `="Prev Yr Count Reduced by " & [Forms]![Field_Form_Plants_For_Inventory_Sizing]![Reduce_Prev_Yr_Counts] & "%"`
  - PageFooterSection: `="k"`

## Report: Field_Form_Plants_w_specs
- **Caption:** Stock Monitoring Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants_w_specs
- **Record source:** ``
- **Grouping:** FirstOfCost_Center → MinOfMinOfLOCATION → MaxOfSOW_DIRECTION_SORT → ID → SUBLOT_NO
- **Subreports:** Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Fields:** END_FY, Extra_Note_Line, FirstOfCost_Center, From_To, Grow_Units, ID, Lot_Note, Major_Client, MaxOfMinOfACTIVITY_DATE, SUBLOT_NO, SumOfTotal_Activity_Units, TOTAL_REQUEST, wii
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Min Sow Date: " & [Forms]![Field_Form_Plants]![MinSowDate]`
  - PageHeaderSection: `="Max Sow Date: " & [Forms]![Field_Form_Plants]![MaxSowDate]`
  - PageHeaderSection: `="End FY: " & [Forms]![Field_Form_Plants]![Like_End_FY]`
  - PageHeaderSection: `="Begin FY: " & [Forms]![Field_Form_Plants]![Like_Begin_FY]`
  - PageHeaderSection: `=IIf([Forms]![Field_Form_Plants]![Like_Age_Class]="*","Selected for All Stock Types ","Selected for " & [Forms]![Field_Form_Plants]![Like_Age_Class])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter3: `="Total " & [Grow_Units]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Form_Plants_w_specs_ByLotID
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants_w_specs_ByLotID
- **Record source:** ``
- **Grouping:** FirstOfCost_Center → ID → MinOfMinOfLOCATION → MaxOfSOW_DIRECTION_SORT → SUBLOT_NO
- **Subreports:** Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Fields:** END_FY, Extra_Note_Line, FirstOfCost_Center, From_To, Grow_Units, ID, Lot_Note, Major_Client, MaxOfMinOfACTIVITY_DATE, SUBLOT_NO, SumOfTotal_Activity_Units, TOTAL_REQUEST, wii
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Min Sow Date: " & [Forms]![Field_Form_Plants]![MinSowDate]`
  - PageHeaderSection: `="Max Sow Date: " & [Forms]![Field_Form_Plants]![MaxSowDate]`
  - PageHeaderSection: `="End FY: " & [Forms]![Field_Form_Plants]![Like_End_FY]`
  - PageHeaderSection: `="Begin FY: " & [Forms]![Field_Form_Plants]![Like_Begin_FY]`
  - PageHeaderSection: `=IIf([Forms]![Field_Form_Plants]![Like_Age_Class]="*","Selected for All Stock Types ","Selected for " & [Forms]![Field_Form_Plants]![Like_Age_Class])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter3: `="Total " & [Grow_Units]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Form_Propagule
- **Caption:** Field Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule
- **Record source:** ``
- **Grouping:** END_PRODUCT_TYPE → MinOfMinOfLOCATION → SUBLOT_NO
- **Subreports:** Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport
- **Fields:** END_PRODUCT_TYPE, ID, LastOfNOTE, Major_Client, MaxOfMaxOfLOCATION, MinOfACTIVITY_DATE, MinOfMinOfLOCATION, Name, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Show Monitoring  Notes (Y/N or Blank for NO)]`
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter1: `=(Sum([SumOfTotal_Activity_Units])/6857)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Form_Propagule_by_ID_Condensed
- **Caption:** Field Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_by_ID_Condensed
- **Record source:** ``
- **Grouping:** END_PRODUCT_TYPE → ID → SUBLOT_NO → MinOfMinOfLOCATION
- **Fields:** END_PRODUCT_TYPE, ID, Major_Client, MaxOfMaxOfLOCATION, MinOfACTIVITY_DATE, MinOfMinOfLOCATION, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter1: `=(Sum([SumOfTotal_Activity_Units])/6857)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Form_Propagule_Condensed_by_Client
- **Caption:** Field Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Condensed_by_Client
- **Record source:** ``
- **Grouping:** Major_Client → ID → MinOfMinOfLOCATION → SOURCE → SUBLOT_NO
- **Fields:** ID, Major_Client, MaxOfMaxOfLOCATION, MinOfACTIVITY_DATE, MinOfMinOfLOCATION, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=Round([SumOfTotal_Activity_Units]/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N],3)`
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter1: `=Sum(([SumOfTotal_Activity_Units])/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Form_Propagule_Condensed_w_acres
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Condensed_w_acres
- **Record source:** ``
- **Grouping:** END_PRODUCT_TYPE → MinOfMinOfLOCATION → SUBLOT_NO
- **Fields:** END_PRODUCT_TYPE, ID, Major_Client, MaxOfMaxOfLOCATION, MinOfACTIVITY_DATE, MinOfMinOfLOCATION, Name, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=Round([SumOfTotal_Activity_Units]/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N],2)`
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter1: `=Round(Sum([SumOfTotal_Activity_Units])/[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N],2)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Form_Propagule_Landscape_letter
- **Caption:** Field Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Landscape_letter
- **Record source:** ``
- **Grouping:** MinOfMinOfLOCATION → SUBLOT_NO
- **Subreports:** Report.NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Prop_wide subreport
- **Fields:** ID, LastOfNOTE, Major_Client, MaxOfMaxOfLOCATION, MinOfACTIVITY_DATE, MinOfMinOfLOCATION, Name, SOURCE, SUBLOT_NO, SumOfTotal_Activity_Units
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `=[Show Monitoring  Notes (Y/N or Blank for NO)]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_Location_Index
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Index
- **Record source:** ``
- **Grouping:** Field → Location → BED_SORT_ORDER → id2
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport
- **Fields:** BEGIN_INDEX, DESCRIPTION, END_INDEX, FirstOfNOTE, Ft_In_Lot, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, SB, SUBLOT_NO, Sublot_ID, ZONE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Plant"),"Lots Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports],Null)`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Plant"),"Lots NOT Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports],Null)`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Propagule"),"Propagule Production Lot",Null)`
  - Detail: `=[NMIS_ID_LOCATIONS subreport].Report!Ft_In_Lot`
  - Detail: `=[Major_Client] & "-" & [ID2] & "    " & [ID_Source]`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Format(Date(),"Long Date") & " " & Format(Time(),"Long Time")`
  - PageFooterSection: `="j"`

## Report: Field_Location_Index_fs_vs_non
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Index_fs_vs_non
- **Record source:** ``
- **Grouping:** Field → Location → BED_SORT_ORDER → id2
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport
- **Fields:** BEGIN_INDEX, DESCRIPTION, END_INDEX, FirstOfNOTE, Ft_In_Lot, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, SB, SUBLOT_NO, Sublot_ID, ZONE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `="Forest Service R" & Mid$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],2,1)`
  - PageHeaderSection: `="Non-Region and Non-Forest Service "`
  - PageHeaderSection: `=IIf(([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Propagule"),"Propagule Production Lot",Null)`
  - Detail: `=Nz([NMIS_ID_LOCATIONS subreport].[Report]![Ft_In_Lot],0)`
  - Detail: `=[Major_Client] & "-" & [ID2] & "    " & [ID_Source]`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Format(Date(),"Long Date") & " " & Format(Time(),"Long Time")`
  - PageFooterSection: `="j"`

## Report: Field_Location_Index_Inv_Stat
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Index_Inv_Stat
- **Record source:** ``
- **Grouping:** Field → Location → BED_SORT_ORDER → id2
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport
- **Fields:** BEGIN_INDEX, DESCRIPTION, END_INDEX, FirstOfNOTE, Ft_In_Lot, Inv_Type, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location, Location_Parent, SB, SUBLOT_NO, Sublot_ID, ZONE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `="No Inv"`
  - PageHeaderSection: `="Count Inv"`
  - PageHeaderSection: `="Size Inv"`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only**")`
  - Detail: `=[NMIS_ID_LOCATIONS subreport].Report!Ft_In_Lot`
  - Detail: `=[Major_Client] & "-" & [ID2] & "    " & [ID_Source]`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Format(Date(),"Long Date") & " " & Format(Time(),"Long Time")`
  - PageFooterSection: `="j"`

## Report: Field_Location_Proofsheet
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Proofsheet
- **Record source:** ``
- **Grouping:** L1 → Location → SOW_DIRECTION_SORT
- **Fields:** BEGIN_INDEX, END_INDEX, Ft_In_Lot, ID_Sublot_No, LOCATION_ZONE, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location_Parent, PLNTMSTR_SYMBOL, PRODUCT_GROUP, SB
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Plant"),"Lots Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports],Null)`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Plant"),"Lots NOT Scheduled for lift fy " & [Forms]![Switchboard]![FY_For_Reports],Null)`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Current_FY_Lift]=-1 And ([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Propagule"),"Propagule Production Lot",Null)`
  - GroupHeader3: `=IIf(Sum([Ft_In_Lot])>[Index_Max],"**",IIf([Forms]![Field_Map Form]![Highlight_Short_Beds] And ([Index_Max]-Sum([Ft_In_Lot]))>0.1*[Index_Max],"*","")) & Sum([Ft_In_Lot])`
  - GroupHeader3: `="(Max:" & [INDEX_MAX] & ")"`
  - GroupFooter0: `=Sum([Ft_In_Lot])`
  - GroupFooter0: `=Round(Sum([Ft_In_Lot])/[Forms]![Field_Map Form]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N],2)`
  - GroupFooter0: `=Round(Sum([Ft_In_Lot])/10890,2)`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="j"`

## Report: Field_Location_Proofsheet_fs_vs_non
- **Caption:** Field Map Proofsheet
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Proofsheet_fs_vs_non
- **Record source:** `Field_Location_Proofsheet Query`
- **Grouping:** L1 → Location → SOW_DIRECTION_SORT
- **Fields:** BEGIN_INDEX, END_INDEX, Ft_In_Lot, ID_Sublot_No, LOCATION_ZONE, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location_Parent, PLNTMSTR_SYMBOL, PRODUCT_GROUP, SB
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only*")`
  - PageHeaderSection: `="Forest Service R" & Mid$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],2,1)`
  - PageHeaderSection: `="Non-Region and non-Forest Service"`
  - PageHeaderSection: `=IIf(([Forms]![Field_Map Form]![PRODUCT_GROUP]="*" Or [Forms]![Field_Map Form]![PRODUCT_GROUP]="Propagule"),"Propagule Production Lot",Null)`
  - GroupHeader3: `=IIf(Sum([Ft_In_Lot])>[Index_Max],"**",IIf([Forms]![Field_Map Form]![Highlight_Short_Beds] And ([Index_Max]-Sum([Ft_In_Lot]))>0.1*[Index_Max],"*","")) & Sum([Ft_In_Lot])`
  - GroupHeader3: `="(Max:" & [INDEX_MAX] & ")"`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="j"`

## Report: Field_Location_Proofsheet_Inv_Stat
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Field_Location_Proofsheet_Inv_Stat
- **Record source:** ``
- **Grouping:** L1 → Location → SOW_DIRECTION_SORT
- **Fields:** BEGIN_INDEX, END_INDEX, Ft_In_Lot, ID_Sublot_No, Inv_Type, LOCATION_ZONE, Like_Begin_FY, Like_Client, Like_End_FY, Like_Plntmstr_Symbol, Like_Product_Group, Location_Parent, PLNTMSTR_SYMBOL, PRODUCT_GROUP, SB
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Like_Age_Class]="*","Selected for All Age Classes ","Selected for " & [Forms]![Field_Map Form]![Like_Age_Class])`
  - PageHeaderSection: `=IIf([Forms]![Field_Map Form]![Split_Lots_Only],"**Split Lots Only**")`
  - PageHeaderSection: `="No Inv"`
  - PageHeaderSection: `="Count Inv"`
  - PageHeaderSection: `="Size Inv"`
  - GroupHeader3: `=IIf(Sum([Ft_In_Lot])>[Index_Max],"**",IIf([Forms]![Field_Map Form]![Highlight_Short_Beds] And ([Index_Max]-Sum([Ft_In_Lot]))>0.1*[Index_Max],"*","")) & Sum([Ft_In_Lot])`
  - GroupHeader3: `="(Max:" & [INDEX_MAX] & ")"`
  - GroupFooter0: `=Sum([Ft_In_Lot])`
  - GroupFooter0: `=Round(Sum([Ft_In_Lot])/[Forms]![Field_Map Form]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N],2)`
  - GroupFooter0: `=Round(Sum([Ft_In_Lot])/10890,2)`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="j"`

## Report: Field_Location_Worksheet
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Location_Worksheet › Field_Location_Worksheet
- **Record source:** ``
- **Grouping:** Field → ZONE → Location
- **Fields:** INDEX_MAX, LOCATION, Location_Parent, ZONE, ac, ac_grow, info
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=IIf(Not IsNull([zone]),"Irrigation Zone" & "  " & [zone])`
  - GroupFooter2: `=IIf(Not IsNull([zone]),"Irrigation Zone" & "  " & [zone])`
  - GroupFooter1: `=Sum([INDEX_MAX])`
  - GroupFooter1: `=Sum([ac])`
  - GroupFooter1: `=Sum([ac_grow])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Format(Date(),"Long Date") & " " & Format(Time(),"Long Time")`

## Report: Field_tag_agreements_050357 subreport
- **Caption:** Field_tag_agreements subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_Intermec_050357 › Field_tag_agreements_050357 subreport
- **Record source:** `SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, [CLIENT_ASSOCIATE] & " " & [ASSOCIATE_NAME] AS CA, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_PRODUCTS.UNIT_CODE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_PRODUCTS INNER JOIN (NMIS_ASSOCIATES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENTS.SPECIES_PRODUCT_CN) ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE)) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN;`
- **Grouping:** 
- **Fields:** AMOUNT_REQUESTED, ASSOCIATE_NAME, UNIT_CODE

## Report: Field_tag_pairs_TP_BR
- **Caption:** Tag pairs without Nursery ID's (bareroot)
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_tag_pairs_TP_BR
- **Record source:** `Field_tag_transplant_BR Query`
- **Grouping:** ID → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** BEGIN_FY, END_FY, ID, ID_ORIGINAL, SOURCE_LOT_CN, SPECIES_PRODUCT_CN
- **Calculated:**
  - Detail: `=[TOTAL_REQUEST] & "M"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `=[TOTAL_REQUEST] & "M"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_tag_pairs_TP_BRCO
- **Caption:** Tag pairs Transplant Client Owned
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_tag_pairs_TP_BRCO
- **Record source:** `Field_tag_transplant_BRCO Query`
- **Grouping:** PREVIOUS_NURSERY_ASSOCIATE → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** BEGIN_FY, END_FY, ID, Orig_ID, PREVIOUS_NURSERY_ASSOCIATE, SOURCE_LOT_CN, SPECIES_PRODUCT_CN
- **Calculated:**
  - Detail: `=[TOTAL_REQUEST] & "M"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `=[TOTAL_REQUEST] & "M"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_tag_pairs_w_NIds
- **Caption:** Tag pairs with Nursery ID's
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_w_NIds
- **Record source:** `Field_tag_pairs Query`
- **Grouping:** BorC → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** AKA, BEGIN_FY, END_FY, ID, PREVIOUS_NURSERY_ASSOCIATE, Previous_ID, SOURCE_LOT_CN, SPECIES_PRODUCT_CN, UNIT
- **Calculated:**
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `=IIf([ID]<>[ID_ORIGINAL],[ID_ORIGINAL])`
  - Detail: `=IIf([ID]<>[ID_ORIGINAL],[ID_ORIGINAL])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_tag_pairs_w_NIds_040207
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_040207
- **Record source:** ``
- **Grouping:** BorC → ID → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** ID, PRODUCT_DESC, SOURCE_LOT_CN
- **Calculated:**
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_tag_pairs_w_NIds_bailing
- **Caption:** Tag pairs with Nursery ID's
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_bailing
- **Record source:** `Field_tag_pairs_Bailing Query`
- **Grouping:** ID → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** AKA, BEGIN_FY, END_FY, ID, PREVIOUS_NURSERY_ASSOCIATE, Previous_ID, SOURCE_LOT_CN, SPECIES_PRODUCT_CN, UNIT
- **Calculated:**
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `=IIf([ID]<>[ID_ORIGINAL],[ID_ORIGINAL])`
  - Detail: `=IIf([ID]<>[ID_ORIGINAL],[ID_ORIGINAL])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_tag_pairs_w_NIds_Intermec
- **Caption:** Tag pairs with Nursery ID's - Labelprinter
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_w_NIds_Intermec
- **Record source:** `Field_tag_pairs Query`
- **Grouping:** PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** AKA, BEGIN_FY, BEGIN_SEASON_CODE, END_FY, END_SEASON_CODE, ID, ID_ORIGINAL, PLNTMSTR_SYMBOL, PREVIOUS_NURSERY_ASSOCIATE, PRODUCT_CLASS, Previous_ID, SIZE_SPEC_STRING, SOURCE_CODE, SOURCE_LOT_CN, UNIT
- **Calculated:**
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `=IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT")`
  - Detail: `=IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT")`

## Report: Field_tag_pairs_w_NIds_Intermec_040207
- **Caption:** Tag pairs with Nursery ID's - Label Printer
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_Intermec_040207
- **Record source:** `Field_tag_pairs Query`
- **Grouping:** PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** ID, PRODUCT_DESC, SOURCE_LOT_CN

## Report: Field_tag_pairs_w_NIds_Intermec_050357
- **Caption:** Tag pairs with Nursery ID's - Label Printer
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › Field_tag_pairs_w_NIds_Intermec_050357
- **Record source:** `Field_tag_pairs Query`
- **Grouping:** PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements_050357 subreport, Report.Field_tag_agreements_050357 subreport
- **Fields:** ID, SOURCE_CODE, SOURCE_LOT_CN, V_SPD
- **Calculated:**
  - Detail: `=IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT")`
  - Detail: `=IIf([Forms]![Field_Tags]![Split_Lot],"SPLIT LOT")`

## Report: Field_tag_pairs_wo_NIds
- **Caption:** 
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_wo_NIds
- **Record source:** ``
- **Grouping:** PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** AKA, BEGIN_FY, END_FY, ID, PREVIOUS_NURSERY_ASSOCIATE, Previous_ID, SOURCE_LOT_CN, SPECIES_PRODUCT_CN, UNIT
- **Calculated:**
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `="*" & [ID] & "*"`
  - Detail: `="*" & [ID] & "*"`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Field_tag_pairs_wo_NIds_Intermec
- **Caption:** Tag pairs without Nursery ID's - Label Printer
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › Field_tag_pairs_wo_NIds_Intermec
- **Record source:** `Field_tag_pairs Query`
- **Grouping:** PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport, Report.Field_tag_agreements subreport
- **Fields:** AKA, BEGIN_FY, BEGIN_SEASON_CODE, END_FY, END_SEASON_CODE, ID, PLNTMSTR_SYMBOL, PREVIOUS_NURSERY_ASSOCIATE, PRODUCT_CLASS, Previous_ID, SIZE_SPEC_STRING, SOURCE_CODE, SOURCE_LOT_CN, UNIT
- **Calculated:**
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`
  - Detail: `=[TOTAL_REQUEST] & [Product_Unit]`

## Report: field_tag_PotStakes_Datamax
- **Caption:** Pot Stakes with Nursery ID's - DataMax
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Tags › field_tag_PotStakes_Datamax
- **Record source:** `Field_tag_pairs Query`
- **Grouping:** PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SIZE_SPEC_STRING → Major_Client → SOURCE_CODE
- **Subreports:** Report.Field_tag_agreements subreport
- **Fields:** AKA, ID, PLNTMSTR_SYMBOL, PREVIOUS_NURSERY_ASSOCIATE, SPECIES_PRODUCT_CN
- **Calculated:**
  - Detail: `=[Forms]![Field_Tags]![Date]`

## Report: Husky_Lpro_Daily_Dump_Container_Totals Subreport
- **Caption:** **Husky_lpro_xfer_hlift_table2 subreport
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › Husky_Lpro_Daily_Dump_Report › Husky_Lpro_Daily_Dump_Container_Totals Subreport
- **Record source:** `SELECT [**Husky_lpro_xfer_hlift_table2].Date, [**Husky_lpro_xfer_hlift_table2].Field_Container, Sum([**Husky_lpro_xfer_hlift_table2].Containers) AS SumOfContainers FROM [**Husky_lpro_xfer_hlift_table2] GROUP BY [**Husky_lpro_xfer_hlift_table2].Date, [**Husky_lpro_xfer_hlift_table2].Field_Container;`
- **Grouping:** 
- **Fields:** Field_Container, SumOfContainers

## Report: Husky_Lpro_Daily_Dump_Report
- **Caption:** Lifting Husky (LPRO) Data Transfer
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › Husky_Lpro_Daily_Dump_Report
- **Record source:** `**Husky_lpro_xfer_hlift_table2`
- **Grouping:** Date → index
- **Subreports:** Report.Husky_Lpro_Daily_Dump_Container_Totals Subreport
- **Fields:** Containers, Contract_Item, Date, Feet_Lifted, Field_Container, Nursery_ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Feet_Lifted])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Husky_Mpro_Dump_Report_by_Location2
- **Caption:** Husk Mpro Dump Report By Location
- **Menu path:** Switchboard › Forms_Open Module.Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard › NMIS_ID_LOCATIONS_FORM_Husky › Husky_Mpro_Dump_Report_by_Location2
- **Record source:** ``
- **Grouping:** LOCATION_TYPE → Locmod → SOW_DIRECTION_SORT → Riser_Begin → Riser_End → ID
- **Fields:** Ft_In_Lot, ID_Sublot, INDEX_MAX, Locmod, PLNTMSTR_SYMBOL, Riser_Begin, Riser_End
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Format(Date(),"Short Date")`
  - GroupHeader3: `=IIf(Sum([Ft_In_Lot])>[Index_Max],"**","") & Sum([Ft_In_Lot])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Labels MAIL_LABELS_BY_ASSOC
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Labels MAIL_LABELS_BY_ASSOC
- **Record source:** `MAIL_LABELS_BY_ASSOC Query`
- **Grouping:** ASSOCIATE_NAME_UPPER
- **Fields:** 
- **Calculated:**
  - Detail: `= Trim( [ASSOCIATE])`
  - Detail: `=Trim([ASSOCIATE_NAME_UPPER])`
  - Detail: `=Trim([ADDRESS])`
  - Detail: `=Trim([UCITY] & ", " & [STATE])`
  - Detail: `=Trim([ZIPCODE])`

## Report: Labels MAIL_LABELS_BY_GROUP
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Labels MAIL_LABELS_BY_GROUP
- **Record source:** `MAIL_LABELS_BY_GROUP Query`
- **Grouping:** GROUP_NAME → ASSOCIATE_NAME_UPPER
- **Fields:** GROUP_NAME
- **Calculated:**
  - Detail: `=Trim([ASSOCIATE_NAME_UPPER])`
  - Detail: `=Trim([DEPT])`
  - Detail: `= Trim( [ADDRESS])`
  - Detail: `=Trim([CITY1] & ",  " & [STATE] & "     " & [ZIPCODE])`

## Report: Labels MAIL_LABELS_BY_GROUP_w
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Labels MAIL_LABELS_BY_GROUP_w
- **Record source:** `MAIL_LABELS_BY_GROUP Query`
- **Grouping:** GROUP_NAME → ASSOCIATE_NAME_UPPER
- **Fields:** GROUP_NAME
- **Calculated:**
  - Detail: `=Trim([ASSOCIATE_NAME_UPPER])`
  - Detail: `=Trim([DEPT])`
  - Detail: `=Trim([ADDRESS])`
  - Detail: `=Trim([CITY1] & ", " & [STATE] & "  " & [ZIPCODE])`
  - Detail: `=Trim("Associate # " & [ASSOCIATE])`

## Report: LIFT_CONTRACT_ACCUMULATED
- **Caption:** LIFT_CONTRACT_ACCUM
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LIFT_CONTRACT_ACCUMULATED
- **Record source:** `LIFT_CONTRACT_ACCUM Query`
- **Grouping:** FISCAL_YEAR → CONTRACT_ITEM
- **Fields:** CONTRACT_ITEM, CONTRACT_ITEM_DESC, CONTRACT_NO, PAYMENT, PAYMENT_PER_UNIT, SumOfNO_FEET, SumOfNO_MBIN, SumOfNO_PTUB, [Payment Period Begin Date], [Payment Period End Date]
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=Now()`
  - GroupFooter1: `=Sum([PAYMENT])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: LIFT_CONTRACT_ESTIMATE_INVOICE
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LIFT_CONTRACT_ESTIMATE_INVOICE
- **Record source:** ``
- **Grouping:** FISCAL_YEAR → CONTRACT_ITEM
- **Fields:** CONTRACT_ITEM, CONTRACT_ITEM_DESC, P2, PAYMENT_PER_UNIT, UNIT_CODE, Units2
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Contract No. : " & [CONTRACT_NO]`
  - PageHeaderSection: `="Inclusive Dates: " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - GroupFooter1: `=Sum([P2])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`

## Report: LIFT_FIELD_CONTAINER_DENSITY
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LIFT_FIELD_CONTAINER_DENSITY
- **Record source:** ``
- **Grouping:** ID
- **Fields:** ACTIVITY_DATE, AMT_PER_UNIT, AMT_PER_UNIT_INV_GROSS, CONTRACT_ITEM, ID, NUMBER_OF_ACTIVITY_UNITS, UNIT_CODE, USE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Lift_Location_Worksheet
- **Caption:** 
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › Lift_Location_Worksheet
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: Lifting_Priorities
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorities
- **Record source:** ``
- **Grouping:** ShowNote → Priority → Location → BED_SORT_ORDER → Lot ID
- **Fields:** Bed_Bal, Comment, FTL, Ft_to_Lift_Note, Loc2, Lot ID, MaxOfROOT_PRUNE_TARGET, NO, Net Note, Priority, SUBLOT_NO, Species_Age_Class_Over_12
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Priorties]![Report_Date]`
  - GroupHeader2: `=[Forms]![Lifting_Priorties]![Comments]`
  - GroupFooter0: `=Sum([FTL])`
  - GroupFooter0: `=Sum([NO])`
  - GroupFooter0: `=Sum([Bed_Bal])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="% of tops over " & IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","30.5 cm","12 Inches")`
  - ReportFooter: `=Sum([FTL])`
  - ReportFooter: `=Sum([NO])`
  - ReportFooter: `=Sum([Bed_Bal])`

## Report: Lifting_Priorities_Checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorities_Checklist
- **Record source:** ``
- **Grouping:** Sort_By → Location → BED_SORT_ORDER → Lot ID
- **Fields:** Bed_Bal, Feet To Lift, Ft_to_Lift_Note, Loc2, Lot ID, MaxOfROOT_PRUNE_TARGET, Net Note, Net Order, Priority, Species_Age_Class_Over_12
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Date()`
  - PageHeaderSection: `=[Forms]![Lifting_Priorties]![Sort_By]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="% of tops over " & IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","30.5 cm","12 Inches")`
  - ReportFooter: `=Sum([Feet To Lift])`
  - ReportFooter: `=Sum([Net Order])`
  - ReportFooter: `=Sum([Bed_Bal])`

## Report: Lifting_Priorities_Client_Associate Subreport
- **Caption:** Field_tag_agreements subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Specs › Lifting_Priorities_Client_Associate Subreport
- **Record source:** `SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, "(" & [Associate] & ")  " & [ASSOCIATE_NAME] & " - " & [CLIENT_ASSOCIATE] & " " & [AMOUNT_REQUESTED] & "M" AS CLIENT_ASSOCIATE_STRING FROM NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE);`
- **Grouping:** 
- **Fields:** CLIENT_ASSOCIATE_STRING

## Report: Lifting_Priorities_Precooler
- **Caption:** NMIS_TOLIFT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorities_Precooler
- **Record source:** ``
- **Grouping:** Priority → Location → BED_SORT_ORDER → Lot ID
- **Fields:** Bed_Bal, Comment, Feet To Lift, Location, Lot ID, Major_Client, Net Order, Partial_Lift, Priority, Species_Age_Class_Over_12
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Priorties]![Report_Date]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `="% of tops over " & IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="050357","30.5 cm","12 Inches")`
  - ReportFooter: `=[Forms]![Lifting_Priorties]![Comments]`

## Report: Lifting_Priorties subreport1
- **Caption:** Lifting_Priorties subreport1
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Processing_Client_Heads_Up › Lifting_Priorties subreport1
- **Record source:** ``
- **Grouping:** 
- **Fields:** note

## Report: Lifting_Priorties_Specs
- **Caption:** Lifting_Priorties_Specs
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Specs
- **Record source:** ``
- **Grouping:** Order ID → CLIENT_ASSOCIATE → ACTIVITY_CODE
- **Subreports:** Report.Lifting_Priorities_Client_Associate Subreport
- **Fields:** ACTIVITY_CODE, CLIENT_ASSOCIATE, CLN, Header, NN, ORDER_AMT, ORDER_SIZE_SPEC_STRING, OVERRUN_ALL, OVERRUN_AMT, Order ID, ROOT_PRUNE_TARGET, SIZE_SPEC_STRING, Species_Products_String_Longest

## Report: LOTS_LIFTED_DAILY
- **Caption:** LOTS_LIFTED_DAILY
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_LIFTED_DAILY
- **Record source:** `LIFT_DAILY Query`
- **Grouping:** ACTIVITY_DATE → CONTRACT_ITEM → FIELD → FLD_CONT → ID
- **Fields:** ACTIVITY_DATE, CONTRACT_ITEM, FEET, FIELD, FLD_CONT, ID, NO_FLD_CONT, Not_All_Lifted
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - GroupFooter3: `=Sum([LIFT_DAILY Query]![FEET])`
  - GroupFooter3: `=Sum([LIFT_DAILY Query]![NO_FLD_CONT])`
  - GroupFooter4: `=Sum([LIFT_DAILY Query]![FEET])`
  - GroupFooter4: `=Sum([LIFT_DAILY Query]![NO_FLD_CONT])`
  - GroupFooter5: `=Sum([LIFT_DAILY Query]![FEET])`
  - GroupFooter5: `=Sum([LIFT_DAILY Query]![NO_FLD_CONT])`
  - GroupFooter0: `=Sum([LIFT_DAILY Query]![FEET])`
  - GroupFooter0: `=Sum([LIFT_DAILY Query]![NO_FLD_CONT])`

## Report: LOTS_LIFTED_DAILY_CONTRACT
- **Caption:** 
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › LOTS_LIFTED_DAILY_CONTRACT
- **Record source:** ``
- **Grouping:** ACTIVITY_DATE → CI → FIELD → ID
- **Subreports:** Report.LOTS_LIFTED_DAILY_CONTRACT_HOURLY subreport
- **Fields:** ACTIVITY_DATE, CI, CONTRACT_NO, FEET, FIELD, ID, MBIN, Not_All_Lifted, PTUB
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - GroupFooter3: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - GroupFooter3: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - GroupFooter3: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`
  - GroupFooter5: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - GroupFooter5: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - GroupFooter5: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`
  - PageFooterSection: `=Now()`

## Report: LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary
- **Caption:** Lots Lifted Daily by Contract Item
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary
- **Record source:** `LIFT_DAILY_CONTRACT Query`
- **Grouping:** ACTIVITY_DATE → CI → ID
- **Fields:** ACTIVITY_DATE, CI, CONTRACT_NO, Date_Range
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`
  - GroupFooter1: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - GroupFooter1: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - GroupFooter1: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`
  - PageFooterSection: `=Now()`
  - ReportFooter: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - ReportFooter: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - ReportFooter: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`

## Report: LOTS_LIFTED_DAILY_CONTRACT_HOURLY subreport
- **Caption:** 
- **Menu path:** Switchboard › Husky_lpro_data_input_check_form › LOTS_LIFTED_DAILY_CONTRACT › LOTS_LIFTED_DAILY_CONTRACT_HOURLY subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** CI, NOTE, SumOfACTIVITY_HOURS

## Report: LOTS_LIFTED_DAILY_CONTRACT_Summary
- **Caption:** LOTS_LIFTED_DAILY_CONTRACT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_LIFTED_DAILY_CONTRACT_Summary
- **Record source:** `LIFT_DAILY_CONTRACT Query`
- **Grouping:** CI → ID
- **Fields:** CI, CONTRACT_NO, Date_Range
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - GroupFooter2: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`
  - PageFooterSection: `=Now()`
  - ReportFooter: `=Sum([LIFT_DAILY_CONTRACT Query]![FEET])`
  - ReportFooter: `=Sum([LIFT_DAILY_CONTRACT Query]![MBIN])`
  - ReportFooter: `=Sum([LIFT_DAILY_CONTRACT Query]![PTUB])`

## Report: LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary
- **Record source:** ``
- **Grouping:** ACTIVITY_DATE → Age_Class → ACTIVITY_CODE → ID
- **Fields:** ACTIVITY_DATE, Age_Class, CONTRACT_ITEM, Date_Range
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - GroupFooter0: `=Sum([Pack (m)])`
  - GroupFooter0: `=Sum([Pack Gr (m)])`
  - GroupFooter0: `=[Activity_Code] & " - " & [activity_name]`
  - GroupFooter0: `=Sum([ACTIVITY_HOURS])`
  - GroupFooter0: `=(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100`
  - GroupFooter1: `=Sum([Pack (m)])`
  - GroupFooter1: `=Sum([Pack Gr (m)])`
  - GroupFooter1: `=Sum([ACTIVITY_HOURS])`
  - GroupFooter1: `=(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Pack (m)])`
  - ReportFooter: `=Sum([Pack Gr (m)])`
  - ReportFooter: `=Sum([ACTIVITY_HOURS])`
  - ReportFooter: `=(Sum([Pack Gr (m)])-Sum([Pack (m)]))/Sum([Pack Gr (m)])*100`

## Report: LOTS_WO_EXTRACTION_AMOUNTS
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_WO_EXTRACTION_AMOUNTS
- **Record source:** ``
- **Grouping:** Product_Class_for_Cycle2 → AGREEMENT_LOT_ID
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_ID, CLIENT_ASSOCIATE, CandN_NOTES, ORD_ID, Product_Class_for_Cycle2, SumOfORDER_AMT
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: LOTS_WO_LIFT_AMOUNTS
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_WO_LIFT_AMOUNTS
- **Record source:** ``
- **Grouping:** PRODUCT_CLASS → ID → ORD_ID
- **Fields:** ACTIVITY_CODE, CLIENT_ASSOCIATE, CandN_NOTES, ID, ORD_ID, Product_Class_for_Cycle, SumOfORDER_AMT
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: LOTS_WO_PACK_AMOUNTS
- **Caption:** LOTS_WO_PACK_AMOUNTS
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › LOTS_WO_PACK_AMOUNTS
- **Record source:** `LOTS_WO_PACK_AMOUNTS`
- **Grouping:** Cost_Center → PRODUCT_CLASS → LOT_ID
- **Fields:** ACTIVITY_CODE, CLIENT_ASSOCIATE, CandN_NOTES, LOT_ID, ORDER_AMT, PACK_ID, PRODUCT_CLASS
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Native_Seed_Harvest_by_Species_Summary
- **Caption:** Packaging Summary
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary › Native_Seed_Harvest_by_Species_Summary
- **Record source:** ``
- **Grouping:** PLNTMSTR_SYMBOL → Sort → Source_Location → Bed_Start
- **Fields:** Bed_End, Bed_Start, ID, PLNTMSTR_SYMBOL, Source_Location, Total_Containers, UNIT_CODE, [year2]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([Weight])`
  - GroupHeader2: `=Sum([No_of_Boxes])`
  - GroupFooter0: `=Sum([Weight])`
  - GroupFooter0: `=Sum([No_of_Boxes])`
  - GroupFooter0: `=Sum([Total_Containers])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Weight])`
  - ReportFooter: `=Sum([No_of_Boxes])`
  - ReportFooter: `=Sum([Total_Containers])`

## Report: Native_Seed_Harvest_Summary
- **Caption:** Packaging Summary
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary › Native_Seed_Harvest_Summary
- **Record source:** ``
- **Grouping:** Client → Contact → Plntmstr_symbol → Sort → Source_Location → Bed_Start
- **Fields:** Bed_End, Bed_Start, ClientName, Contact, ID, Source_Location, UNIT_CODE, [year2]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([Weight])`
  - GroupHeader2: `=Sum([No_Of_Boxes])`
  - GroupFooter0: `=Sum([Weight])`
  - GroupFooter0: `=Sum([No_of_Boxes])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Weight])`
  - ReportFooter: `=Sum([No_of_Boxes])`

## Report: Native_Seed_Harvest_Summary2
- **Caption:** Packaging Summary
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Native_Seed_Harvest_Summary › Native_Seed_Harvest_Summary2
- **Record source:** ``
- **Grouping:** Client → PLNTMSTR_SYMBOL → Sort → Source_Location → Bed_Start
- **Fields:** Bed_End, Bed_Start, ClientName, ID, PLNTMSTR_SYMBOL, Source_Location, UNIT_CODE, [year2]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([Weight])`
  - GroupHeader2: `=Sum([No_of_Boxes])`
  - GroupFooter2: `=Sum([Weight])`
  - GroupFooter2: `=Sum([No_of_Boxes])`
  - GroupFooter0: `=Sum([Weight])`
  - GroupFooter0: `=Sum([No_of_Boxes])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Weight])`
  - ReportFooter: `=Sum([No_of_Boxes])`

## Report: NMIS_AGREEMENT_LOT_Transaction_Balance
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance
- **Record source:** ``
- **Grouping:** AGREEMENT_LOT_ID_AND_SOURCE → ACTIVITY_DATE → ACTIVITY_CODE
- **Subreports:** Report.Agreement_Lot_Associate_Subform, Report.Current_Inventory_By_Unit
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, Act_Amt_N, Agreement_lot_CN, BEGIN_FY, END_FY, EST_CONTAINERS_REQUIRED, Gross_Adj, NMIS_PRODUCTS.UNIT_CODE, Net_Adj, Order, PREVIOUS_AGREEMENT_LOT_CN, SOURCE_LOT_CN, TOTAL_REQUEST, [ID]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader0: `=[ID] & IIf(Not IsNull([ID_ORIGINAL])," (" & [ID_Original] & ")","")`
  - GroupFooter0: `=Sum([Gross_Adj])`
  - GroupFooter0: `=Sum([Net_Adj])`
  - GroupFooter0: `=Sum([Act_Amt_N])`
  - PageFooterSection: `=Now()`

## Report: NMIS_AGREEMENT_LOT_Transaction_Balance_by_order
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE › NMIS_AGREEMENT_LOT_Transaction_Balance_by_order
- **Record source:** ``
- **Grouping:** AGREEMENT_LOT_ID_AND_SOURCE → Order → ACTIVITY_DATE → ACTIVITY_CODE
- **Subreports:** Report.Agreement_Lot_Associate_Subform, Report.Current_Inventory_By_Unit
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, Act_Amt_N, Agreement_lot_CN, BEGIN_FY, END_FY, EST_CONTAINERS_REQUIRED, Gross_Adj, NMIS_PRODUCTS.UNIT_CODE, Net_Adj, Order, PREVIOUS_AGREEMENT_LOT_CN, SOURCE_LOT_CN, TOTAL_REQUEST, [ID], tkt
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader0: `=[ID] & IIf(Not IsNull([ID_ORIGINAL])," (" & [ID_Original] & ")","")`
  - GroupFooter0: `=Sum([Gross_Adj])`
  - GroupFooter0: `=Sum([Net_Adj])`
  - GroupFooter0: `=Sum([Act_Amt_N])`
  - PageFooterSection: `=Now()`

## Report: NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check
- **Caption:** Agreement Lots vs Agreements Check
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check
- **Record source:** `Ageement_Lot_and_Agreements_Total_Request_Check`
- **Grouping:** 
- **Subreports:** Report.Agreement_Lot_vs_agreement_check_Subreport
- **Fields:** BEGIN_FY, END_FY, ID, ID_ORIGINAL, ID_SOURCE2, SumOfAMOUNT_REQUESTED, TOTAL_REQUEST
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_AGREEMENT_LOTS subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES › NMIS_AGREEMENT_LOTS subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** ID, PLNTMSTR_SYMBOL, SourceID, TOTAL_REQUEST, UNIT_CODE
- **Calculated:**
  - Detail: `=[FYs]`

## Report: NMIS_AGREEMENT_LOTS subreport2
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_FACTORS › NMIS_AGREEMENT_LOTS subreport2
- **Record source:** ``
- **Grouping:** 
- **Fields:** ID, PLNTMSTR_SYMBOL, SourceID, TOTAL_REQUEST, UNIT_CODE
- **Calculated:**
  - Detail: `=[FYs]`

## Report: NMIS_AGREEMENT_Lots_Activities_and_Transactions
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT › NMIS_AGREEMENT_Lots_Activities_and_Transactions
- **Record source:** ``
- **Grouping:** ID → ACTIVITY_DATE → NMIS_ID_ACTIVITIES.CN → NMIS_ID_ACTIVITIES.CN
- **Subreports:** Report.Agreement_Lot_Associate_Subform, Report.NMIS_TRANSACTIONS subreport, Report.Current_Inventory_By_Unit
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_HOURS, ACTIVITY_UNITS, Agreement_lot_CN, BEGIN_FY, CONTRACT_ITEM, END_FY, EST_CONTAINERS_REQUIRED, NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_PRODUCTS.UNIT_CODE, ORDER_CN, PREVIOUS_AGREEMENT_LOT_CN, SOURCE_LOT_CN, TKT_NO, TKT_NO_NOTE, TOTAL_REQUEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & IIf(Not IsNull([ID_ORIGINAL])," (" & [ID_Original] & ")","")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `=[ID]`

## Report: NMIS_AGREEMENT_Lots_Activities_wo_Transactions
- **Caption:** NMIS_AGREEMENT_LOT_Activities_wo Transactions
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT › NMIS_AGREEMENT_Lots_Activities_wo_Transactions
- **Record source:** `NMIS_AGREEMENT_Lots_Activities_and_Transactions_Query`
- **Grouping:** ID → ACTIVITY_DATE → NMIS_ID_ACTIVITIES.CN
- **Subreports:** Report.Agreement_Lot_Associate_Subform, Report.Current_Inventory_By_Unit
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_HOURS, ACTIVITY_UNITS, Agreement_lot_CN, BEGIN_FY, CONTRACT_ITEM, END_FY, EST_CONTAINERS_REQUIRED, NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.UNIT_CODE, NMIS_PRODUCTS.UNIT_CODE, ORDER_CN, PREVIOUS_AGREEMENT_LOT_CN, SOURCE_LOT_CN, TKT_NO_NOTE, TOTAL_REQUEST
- **Calculated:**
  - GroupHeader3: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader3: `=[ID] & IIf(Not IsNull([ID_ORIGINAL])," (" & [ID_Original] & ")","")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `=[ID]`

## Report: NMIS_AGREEMENT_LOTS_current subreport
- **Caption:** NMIS_AGREEMENT_LOTS subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop › NMIS_AGREEMENT_LOTS_current subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** ID, ID_ORIGINAL, ID_SOURCE2, TOTAL_REQUEST, UNIT_CODE
- **Calculated:**
  - Detail: `=[FYs]`

## Report: NMIS_AGREEMENTS subreport
- **Caption:** NMIS_AGREEMENTS subreport
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › NMIS_AGREEMENTS subreport
- **Record source:** `SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, Sum(NMIS_AGREEMENTS.AMOUNT_REQUESTED) AS SumOfAMOUNT_REQUESTED FROM NMIS_AGREEMENTS GROUP BY NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.CLIENT_ASSOCIATE;`
- **Grouping:** 
- **Fields:** CLIENT_ASSOCIATE, SumOfAMOUNT_REQUESTED

## Report: NMIS_AGREEMENTS_Holdover_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_Holdover_Report
- **Record source:** ``
- **Grouping:** ASSOCIATE → CLIENT_ASSOCIATE → Cost_Center → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → ID_N_ORIG
- **Subreports:** Report.Agreement_Lot_Grow_Locations_Subreport
- **Fields:** AMOUNT_REQUESTED, ASSOCIATE, CLIENT_ASSOCIATE, End, Gross, ID, ID_SOURCE2, Net, PLNTMSTR_SYMBOL, PRODUCT_DESC, SPECIES_PRODUCT_DESC, SumOfTotal_Activity_Units, [Cost_Center], begin
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`

## Report: NMIS_AGREEMENTS_Holdover_Report_by_product
- **Caption:** Holdover Lots Needing Adjustment
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_Holdover_Report_by_product
- **Record source:** ``
- **Grouping:** Cost_Center → PRODUCT_DESC → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → ASSOCIATE → CLIENT_ASSOCIATE → ID_N_ORIG
- **Subreports:** Report.Agreement_Lot_Grow_Locations_Subreport
- **Fields:** ACTIVITY_CODE, AMOUNT_REQUESTED, CLIENT_ASSOCIATE, CONTACT, End, Gross, ID, ID_SOURCE2, NOTE, Net, New_Agreement_lot, PRODUCT_DESC, Partial_Lift, SumOfTotal_Activity_Units, [Cost_Center], begin
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `="Original Size Specs : " & [SIZE_SPEC_STRING]`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Net])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([Net])`

## Report: NMIS_AGREEMENTS_Report
- **Caption:** 
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report
- **Record source:** ``
- **Grouping:** ASSOCIATE → CLIENT_ASSOCIATE → UNIT_CODE → PRODUCT_DESC → PLNTMSTR_SYMBOL → Species_Products_String_Longer → Contact_Name → NMIS_AGREEMENT_LOTS_ID
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, AMOUNT_REQUESTED, ASSOCIATE, CLIENT_ASSOCIATE, Contact_Name, End, NOTE, ORIG_AMOUNT_REQUESTED, PRODUCT_DESC, Prev_Agr_Lot, Source_Used_for_Agreement, Species_Products_String_Longer, UNIT_CODE, [CLIENT_ASSOCIATE], begin
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - PageHeaderSection: `="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol]`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_AGREEMENTS_Report_by_stocktype
- **Caption:** NMIS_AGREEMENT_LOTS
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report_by_stocktype
- **Record source:** `Agreement_Lot_Confirmation_Query`
- **Grouping:** PRODUCT_DESC → ASSOCIATE → CLIENT_ASSOCIATE → UNIT_CODE → PLNTMSTR_SYMBOL → Species_Products_String_Longer → Contact_Name → NMIS_AGREEMENT_LOTS_ID
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, AMOUNT_REQUESTED, ASSOCIATE, CLIENT_ASSOCIATE, Contact_Name, End, NOTE, ORIG_AMOUNT_REQUESTED, PRODUCT_DESC, Prev_Agr_Lot, Source_Used_for_Agreement, Species_Products_String_Longer, UNIT_CODE, [CLIENT_ASSOCIATE], begin
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - PageHeaderSection: `="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol]`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_AGREEMENTS_Report_by_stocktype_hold
- **Caption:** NMIS_AGREEMENT_LOTS
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report_by_stocktype_hold
- **Record source:** ``
- **Grouping:** PRODUCT_DESC → ASSOCIATE → CLIENT_ASSOCIATE → UNIT_CODE → PLNTMSTR_SYMBOL → Species_Products_String_Longer → Contact_Name → NMIS_AGREEMENT_LOTS_ID
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, AMOUNT_REQUESTED, ASSOCIATE, CLIENT_ASSOCIATE, Contact_Name, End, NOTE, ORIG_AMOUNT_REQUESTED, PRODUCT_DESC, Prev_Agr_Lot, Species_Products_String_Longer, UNIT_CODE, [CLIENT_ASSOCIATE], begin
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - PageHeaderSection: `="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol]`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_AGREEMENTS_Report_w_cost_est
- **Caption:** 
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Report_w_cost_est
- **Record source:** ``
- **Grouping:** ASSOCIATE → CLIENT_ASSOCIATE → UNIT_CODE → PRODUCT_DESC → PLNTMSTR_SYMBOL → Species_Products_String_Longer → Contact_Name → NMIS_AGREEMENT_LOTS_ID
- **Fields:** AMOUNT_REQUESTED, ASSOCIATE, CLIENT_ASSOCIATE, Contact_Name, End, G SChg_dollar, ID_SOURCE2, NMIS_AGREEMENT_LOTS_ID, NOTE, ORIG_AMOUNT_REQUESTED, PRODUCT_DESC, Prev_Agr_Lot, SL SurChg_dollar, Source_Used_for_Agreement, Species_Products_String_Longer, Std Chg, Total Chg $, Total Chg/M, UNIT_CODE, Vernacular_With_Code, [CLIENT_ASSOCIATE], begin
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - PageHeaderSection: `="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol]`
  - PageHeaderSection: `="Estimated Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Total Chg $])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Total Chg $])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Total Chg $])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Source_Used_for_Agreement])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([Total Chg $])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_AGREEMENTS_Summary_Report
- **Caption:** Agreement Confirmation Summary Report
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_AGREEMENTS_Summary_Report
- **Record source:** `Agreement_Lot_Confirmation_Query`
- **Grouping:** DIVERSE → ASSOCIATE → UNIT_CODE → PRODUCT_DESC → PLNTMSTR_SYMBOL → Contact_Name → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ASSOCIATE, PRODUCT_DESC, Scientific_Name, Vernacular_With_Code
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - PageHeaderSection: `="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol]`
  - PageHeaderSection: `=IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species")`
  - PageHeaderSection: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Contact_CN]`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `="Total For " & IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species") & ":"`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([ORIG_AMOUNT_REQUESTED])`

## Report: NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report
- **Record source:** ``
- **Grouping:** borc → BEGIN_FY → Current_Product → Name → Major_Client → ID
- **Fields:** AKA, BEGIN_FY, Current_Product, EST_CONTAINERS_REQUIRED, ID, Major_Client, NOTE, Name, TOTAL_REQUEST, What_It_Is, borc
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Date()`

## Report: NMIS_ASSOC_LIST_SURPLUS
- **Caption:** NMIS_ASSOC_LIST_SURPLUS
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOC_LIST_SURPLUS
- **Record source:** `NMIS_ASSOC_LIST_SURPLUS Query`
- **Grouping:** ASSOCIATE
- **Subreports:** Report.NMIS_ASSOC_PHONE subrep
- **Fields:** ADDRESS, ASSOCIATE, ASSOCIATE_NAME, CSZ, DEPARTMENT
- **Calculated:**
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOC_PHONE subrep
- **Caption:** NMIS_ASSOC_PHONE subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOC_LIST_SURPLUS › NMIS_ASSOC_PHONE subrep
- **Record source:** `NMIS_ASSOC_LIST_SPLUS_PHONES Query`
- **Grouping:** ASSOCIATE
- **Fields:** ASSOCIATE, PHONE_NUMBER

## Report: NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST
- **Caption:** Associates Contacts Phone Numbers
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST
- **Record source:** ``
- **Grouping:** Region → ASSOCIATE → sort → CONTACT_NAME_UPPER
- **Subreports:** Report.NMIS_PHONE_NUMBERS subreport
- **Fields:** ASSOCIATE, ASSOCIATE_NAME, CONTACT_NAME_UPPER, PHONE_NUMBER, PHONE_TYPE
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST
- **Caption:** Associates Contacts Phone Numbers with Orders for Current FY
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST
- **Record source:** ``
- **Grouping:** ASSOCIATE → CONTACT_NAME_UPPER
- **Fields:** ASSOCIATE, Contact_Name, PHONE_NUMBER, PHONE_TYPE, [ASSOCIATE_NAME]
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="Associate Contacts and Phone Numbers For Agreements with Begin FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2
- **Caption:** Associates Contacts Phone Numbers with Orders for Current FY
- **Menu path:** Switchboard › NMIS_AGREEMENT_LOTS_Report › NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2
- **Record source:** ``
- **Grouping:** ASSOCIATE → CONTACT_NAME_UPPER
- **Fields:** ASSOCIATE, Contact_Name, PHONE_NUMBER, PHONE_TYPE, [ASSOCIATE_NAME]
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="Associate Contacts and Phone Numbers For Agreements with Begin FY " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - ReportHeader: `=[Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse]`
  - ReportHeader: `="Selected for Begin FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY]`
  - ReportHeader: `="Selected for End FY Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY]`
  - ReportHeader: `="Selected for Client Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client]`
  - ReportHeader: `="Selected for Species Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![plntmstr_symbol]`
  - ReportHeader: `="Selected for End Prod Like " & [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_Product]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOCIATES_AND_PHONE_CHECKLIST
- **Caption:** Associates Contacts Phone Numbers
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES_AND_PHONE_CHECKLIST
- **Record source:** ``
- **Grouping:** ASSOCIATE → CONTACT_NAME_UPPER
- **Subreports:** Report.NMIS_PHONE_NUMBERS subreport
- **Fields:** ASSOCIATE, ASSOCIATE_NAME, CONTACT_DESC, CONTACT_NAME_UPPER, EMAIL_ADDR, PHONE_NUMBER, PHONE_TYPE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST
- **Caption:** Associates Contacts Phone Numbers with Orders for Current FY
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST
- **Record source:** ``
- **Grouping:** ASSOCIATE → CONTACT_NAME_UPPER
- **Fields:** ASSOCIATE, Contact_Name, PHONE_NUMBER, PHONE_TYPE, [ASSOCIATE_NAME]
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST
- **Record source:** ``
- **Grouping:** Associate_Parent → ASSOCIATE → CONTACT_NAME_UPPER
- **Fields:** ASSOCIATE, Associate_Parent, BE_AT_PACK, Contact_Name, EMAIL_ADDR, FISCAL_YEAR, PHONE_NUMBER, PHONE_TYPE, [ASSOCIATE_NAME]
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST
- **Caption:** Associates Contacts Phone Numbers with Orders for Current FY
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST
- **Record source:** ``
- **Grouping:** ASSOCIATE → CONTACT_NAME_UPPER
- **Fields:** ASSOCIATE, Contact_Name, FISCAL_YEAR, PHONE_NUMBER, PHONE_TYPE, [ASSOCIATE_NAME]
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC
- **Caption:** Mailing Intermec
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC
- **Record source:** `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER, IIf([Forms]![Associate_Mail_Label_Input]![Use_Ship_Address]=0,IIf(IsNull([MAIL_ADDR]),[STREET_ADDR],[MAIL_ADDR]),[SHIP_ADDR]) AS ADDRESS_LINE1, IIf([Forms]![Associate_Mail_Label_Input]![Use_Ship_Address]=0,IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),[CITY] & IIf(Not IsNull([STATE]),", ","") & [STATE] & " " & [ZIPCODE],[STREET_ADDR]),[SHIP_CITY] & IIf(Not IsNull([SHIP_STATE]),", ","") & [SHIP_STATE] & " " & [SHIP_ZIPCODE]) AS ADDRESS_LINE2, IIf([Forms]![Associate_Mail_Label_Input]![Use_Ship_Address]=0,IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),"",[CITY] & IIf(Not IsNull([STATE]),", ","") & [STATE] & " " & [ZIPCODE]),"") AS ADDRESS_LINE3 FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![Associate_Mail_Label_Input]![Like_Client]));`
- **Grouping:** 
- **Fields:** ADDRESS_LINE1, ADDRESS_LINE2, ADDRESS_LINE3, ASSOCIATE_NAME_UPPER
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - Detail: `=IIf(Not IsNull([Forms]![Associate_Mail_Label_Input]![Attn]),"Attn: " & [Forms]![Associate_Mail_Label_Input]![Attn])`

## Report: NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping
- **Caption:** Mailing Intermec
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping
- **Record source:** `SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER, IIf([Forms]![Associate_Mail_Label_Input_shipping]![Use_Ship_Address]=0,IIf(IsNull([MAIL_ADDR]),[STREET_ADDR],[MAIL_ADDR]),[SHIP_ADDR]) AS ADDRESS_LINE1, IIf([Forms]![Associate_Mail_Label_Input_shipping]![Use_Ship_Address]=0,IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),[CITY] & IIf(Not IsNull([STATE]),", ","") & [STATE] & " " & [ZIPCODE],[STREET_ADDR]),[SHIP_CITY] & IIf(Not IsNull([SHIP_STATE]),", ","") & [SHIP_STATE] & " " & [SHIP_ZIPCODE]) AS ADDRESS_LINE2, IIf([Forms]![Associate_Mail_Label_Input_shipping]![Use_Ship_Address]=0,IIf((IsNull([MAIL_ADDR]) Or IsNull([STREET_ADDR])),"",[CITY] & IIf(Not IsNull([STATE]),", ","") & [STATE] & " " & [ZIPCODE]),"") AS ADDRESS_LINE3 FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE)=[Forms]![Associate_Mail_Label_Input_shipping]![Like_Client]));`
- **Grouping:** 
- **Fields:** ADDRESS_LINE1, ADDRESS_LINE2, ADDRESS_LINE3, ASSOCIATE_NAME_UPPER
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - Detail: `=IIf(Not IsNull([Forms]![Associate_Mail_Label_Input_shipping]![Attn]),"Attn: " & [Forms]![Associate_Mail_Label_Input_shipping]![Attn])`

## Report: NMIS_CLIENT_MGMT_CODES subreport
- **Caption:** NMIS_CLIENT_MGMT_CODES subreport
- **Menu path:** Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE › NMIS_CLIENT_MGMT_CODES subreport
- **Record source:** `SELECT NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, [NMIS_CLIENT_MGMT_CODES].[CLIENT_ASSOCIATE] & " " & [MGMT_CODE] & " " & Round((([MGMT_CODE_PCT]/100)*[PCT_of_Total]),0) & "%" AS PAYEE_MGMT_CODE_N_PCT, [FIRST_NAME] & " " & [LAST_NAME] AS Contact_Name FROM ([Agreement_PCT_of_Total Query] INNER JOIN (NMIS_CLIENT_MGMT_CODES INNER JOIN NMIS_AGREEMENTS ON NMIS_CLIENT_MGMT_CODES.AGREEMENT_CN = NMIS_AGREEMENTS.CN) ON [Agreement_PCT_of_Total Query].CN = NMIS_AGREEMENTS.CN) LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN GROUP BY NMIS_AGREEMENTS.AGREEMENT_LOT_CN, NMIS_AGREEMENTS.SOURCE_LOT_CN, [NMIS_CLIENT_MGMT_CODES].[CLIENT_ASSOCIATE] & " " & [MGMT_CODE] & " " & Round((([MGMT_CODE_PCT]/100)*[PCT_of_Total]),0) & "%", [FIRST_NAME] & " " & [LAST_NAME];`
- **Grouping:** 
- **Fields:** Contact_Name, PAYEE_MGMT_CODE_N_PCT

## Report: NMIS_CLIENT_MGMT_CODES2 subreport
- **Caption:** NMIS_CLIENT_MGMT_CODES subreport
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing › NMIS_CLIENT_MGMT_CODES2 subreport
- **Record source:** `SELECT [EXTRACTION_BY_MGMT_CODE].[SOURCE_LOT_CN], Sum([EXTRACTION_BY_MGMT_CODE].[Hourly_Charges]) AS SumOfHourly_Charges, Sum([EXTRACTION_BY_MGMT_CODE].[SumOfCHARGE_USED_FOR_ACTIVITY]) AS SumOfSumOfCHARGE_USED_FOR_ACTIVITY, [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE_N_PCT], [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE], Sum(IIf([HOURLY_CHARGES]>0,[HOURLY_CHARGES],0)+IIf([SumOfCHARGE_USED_FOR_ACTIVITY]>0,[SumOfCHARGE_USED_FOR_ACTIVITY],0)) AS SUM_Of_CHARGES FROM EXTRACTION_BY_MGMT_CODE GROUP BY [EXTRACTION_BY_MGMT_CODE].[SOURCE_LOT_CN], [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE_N_PCT], [EXTRACTION_BY_MGMT_CODE].[MGMT_CODE] HAVING (((Sum(IIf([HOURLY_CHARGES]>0,[HOURLY_CHARGES],0)+IIf([SumOfCHARGE_USED_FOR_ACTIVITY]>0,[SumOfCHARGE_USED_FOR_ACTIVITY],0)))>0));`
- **Grouping:** MGMT_CODE_N_PCT
- **Fields:** MGMT_CODE_N_PCT, SumOfHourly_Charges, SumOfSumOfCHARGE_USED_FOR_ACTIVITY

## Report: NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport
- **Caption:** NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Seed_Bank_Work_Order › Seed_Bank_Work_Order subreport › NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport
- **Record source:** `SELECT NMIS_CLIENT_MGMT_CODES.AGREEMENT_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, [MGMT_CODE] & " " & (Round([MGMT_CODE_PCT]*[Reports]![Seed_Bank_Work_Order]![Seed_Bank_Work_Order subreport].[Report]![AMOUNT_REQUESTED]/[Reports]![Seed_Bank_Work_Order]![TOTAL_REQUEST],2)) & "%" AS Jobcode_and_pct, [Reports]![Seed_Bank_Work_Order]![Seed_Bank_Work_Order subreport].[Report]![AMOUNT_REQUESTED]/[Reports]![Seed_Bank_Work_Order]![TOTAL_REQUEST]*100 AS Expr1 FROM NMIS_CLIENT_MGMT_CODES;`
- **Grouping:** 
- **Fields:** AGREEMENT_CN, CLIENT_ASSOCIATE, Jobcode_and_pct

## Report: NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order_by_ID_range subreport
- **Caption:** NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport
- **Menu path:** Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › Seed_Bank_Work_Order_by_ID_Range › Seed_Bank_Work_Order_by_ID_range subreport › NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order_by_ID_range subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_CN, CLIENT_ASSOCIATE, Jobcode_and_pct

## Report: NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport
- **Caption:** NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_ticket › NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport
- **Record source:** `SELECT NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE, NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT, IIf([NMIS_CLIENT_MGMT_CODES]![MGMT_CODE]>"",[NMIS_CLIENT_MGMT_CODES]![CLIENT_ASSOCIATE] & " " & [NMIS_CLIENT_MGMT_CODES]![MGMT_CODE] & " " & [NMIS_CLIENT_MGMT_CODES]![MGMT_CODE_PCT] & "%","") AS Charge_To FROM NMIS_CLIENT_MGMT_CODES WHERE (((NMIS_CLIENT_MGMT_CODES.ACTIVITY_ID_CN) Is Not Null));`
- **Grouping:** 
- **Fields:** ACTIVITY_ID_CN, Charge_To

## Report: NMIS_CONTACT_AND_PHONE_CHECKLIST
- **Caption:** Associates Contacts Phone Numbers
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_CONTACT_AND_PHONE_CHECKLIST
- **Record source:** `SELECT NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_PHONE_TYPES.PHONE_TYPE, NMIS_CONTACTS.CONTACT_DESC, NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_CONTACTS.CN FROM (NMIS_PHONE_TYPES RIGHT JOIN NMIS_PHONE_NUMBERS ON NMIS_PHONE_TYPES.CN = NMIS_PHONE_NUMBERS.PHONE_TYPE_CN) RIGHT JOIN NMIS_CONTACTS ON NMIS_PHONE_NUMBERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HOME_ASSOCIATE) Not Like "99*" And (NMIS_CONTACTS.HOME_ASSOCIATE) Like [Like Client CODE (Blank for all)] & "*") AND ((NMIS_CONTACTS.CONTACT_NAME_UPPER) Is Not Null) AND ((NMIS_CONTACTS.HISTORICAL)=No Or (NMIS_CONTACTS.HISTORICAL) Is Null));`
- **Grouping:** CONTACT_NAME_UPPER → HOME_ASSOCIATE
- **Subreports:** Report.NMIS_CONTACT_LINKS subreport
- **Fields:** CONTACT_DESC, CONTACT_NAME_UPPER, HOME_ASSOCIATE, PHONE_NUMBER, PHONE_TYPE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_CONTACT_LINKS subreport
- **Caption:** NMIS_CONTACT_LINKS subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_CONTACT_AND_PHONE_CHECKLIST › NMIS_CONTACT_LINKS subreport
- **Record source:** `SELECT NMIS_CONTACTS.CN, NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS.CONTACT_DESC, NMIS_CONTACTS.HOME_ASSOCIATE FROM NMIS_CONTACTS RIGHT JOIN (NMIS_ASSOCIATES LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_CONTACT_LINKS.LINK_ASSOCIATE) ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN GROUP BY NMIS_CONTACTS.CN, NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_CONTACTS.CONTACT_DESC, NMIS_CONTACTS.HOME_ASSOCIATE, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACTS.HISTORICAL HAVING (((NMIS_CONTACTS.CONTACT_NAME_UPPER) Is Not Null) AND ((NMIS_CONTACTS.HISTORICAL)=No Or (NMIS_CONTACTS.HISTORICAL) Is Null));`
- **Grouping:** 
- **Subreports:** Report.NMIS_PHONE_NUMBERS subreport2
- **Fields:** ASSOCIATE, ASSOCIATE_NAME

## Report: NMIS_Containers_type_Grow_Checklist
- **Caption:** NMIS_Grow_Containers_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_Containers_type_Grow_Checklist
- **Record source:** `SELECT NMIS_UNITS.* FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="g"));`
- **Grouping:** UNIT_CODE
- **Fields:** AREA_PER_CONTAINER, CELLS_PER_CONTAINER, CELL_DIMENSIONS, UNIT_CODE, UNIT_DESC, UNIT_MULTIPLIER
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Containers_type_Store_Checklist
- **Caption:** NMIS Store Containers Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_Containers_type_Store_Checklist
- **Record source:** `SELECT NMIS_UNITS.* FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="Store"));`
- **Grouping:** UNIT_CODE
- **Fields:** AREA_PER_CONTAINER, CELLS_PER_CONTAINER, CELL_DIMENSIONS, UNIT_CODE, UNIT_DESC, UNIT_MULTIPLIER
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_ID_ACTIVITIES subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT_All_Tests › NMIS_ID_ACTIVITIES subreport
- **Record source:** ``
- **Grouping:** SOURCE_LOT_CN → ACTIVITY_DATE
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, AL_ID_NOTE, Balance_G, No_Effect, SOURCE_LOT_CN, TICKET_CN, UNIT_CODE
- **Calculated:**
  - GroupFooter0: `=[Balance]`
  - GroupFooter0: `="LB"`
  - GroupFooter0: `="G"`

## Report: NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Caption:** NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Plants › Field_Form_Plants › NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Record source:** `SELECT NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE, IIf(Not ([Forms]![Field_Form_Plants]![Hide_Monitoring_Notes]),IIf(Not IsNull([NOTE]),[ACTIVITY_DATE] & " Monitoring Note: " & [note],"")) AS NOTE_PLUS, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY WHERE (((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE)="MONFCO") AND ((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.NOTE) Is Not Null)) ORDER BY NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE;`
- **Grouping:** 
- **Fields:** NOTE_PLUS

## Report: NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Prop_wide subreport
- **Caption:** NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule_Landscape_letter › NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Prop_wide subreport
- **Record source:** `SELECT NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE, IIf([Reports]![Field_Form_Propagule_Landscape_letter]![Show_Monitoring_Notes] Like "Y*",IIf(Not IsNull([NOTE]),[ACTIVITY_DATE] & " Monitoring Note: " & [note],"")) AS NOTE_PLUS, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY WHERE (((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE)="MONFCO") AND ((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.NOTE) Is Not Null)) ORDER BY NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE;`
- **Grouping:** 
- **Fields:** NOTE_PLUS

## Report: NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport
- **Caption:** NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Field_Form_Propagule › NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY_Propagule subreport
- **Record source:** `SELECT NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE, IIf([Reports]![Field_Form_Propagule]![Show_Monitoring_Notes] Like "Y*",IIf(Not IsNull([NOTE]),[ACTIVITY_DATE] & " Monitoring Note: " & [note],"")) AS NOTE_PLUS, NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY WHERE (((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_CODE)="MONFCO") AND ((NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.NOTE) Is Not Null)) ORDER BY NMIS_ID_ACTIVITIES_AGREEMENT_LOTS_CURRENT_FY.ACTIVITY_DATE;`
- **Grouping:** 
- **Fields:** NOTE_PLUS

## Report: NMIS_ID_ACTIVITIES_source subreport
- **Caption:** 
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2 › NMIS_ID_ACTIVITIES_source subreport
- **Record source:** ``
- **Grouping:** SOURCE_LOT_CN → ACTIVITY_DATE
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, Balance_G, NOTE, No_Effect, SOURCE_LOT_CN, TICKET_CN, UNIT_CODE
- **Calculated:**
  - GroupFooter0: `=[Balance]`
  - GroupFooter0: `="LB"`
  - GroupFooter0: `="G"`

## Report: NMIS_ID_ACTIVITIES_source_card
- **Caption:** NMIS_ID_ACTIVITIES subreport
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_Card_Activities › NMIS_ID_ACTIVITIES_source_card
- **Record source:** `SELECT NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.UNIT_CODE, IIf(Not IsNull([NMIS_AGREEMENT_LOTS].[id]),[NMIS_ID_ACTIVITIES].[Note] & " " & "Agreement Lot: " & [NMIS_AGREEMENT_LOTS].[id],[NMIS_ID_ACTIVITIES].[NOTE]) AS AL_ID_NOTE, NMIS_ID_ACTIVITIES.TICKET_CN, IIf([balance_effect]<>"NOEFFECT",[activity_Units]) AS Balance, IIf([Balance_Effect]="NOEFFECT","j") AS No_Effect, NMIS_ID_ACTIVITIES.NOTE FROM NMIS_AGREEMENT_LOTS RIGHT JOIN (NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON (NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE) AND (NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE)) ON NMIS_AGREEMENT_LOTS.CN = NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN WHERE (((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN) Is Not Null));`
- **Grouping:** SOURCE_LOT_CN → ACTIVITY_DATE
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, NOTE, No_Effect, SOURCE_LOT_CN, TICKET_CN, UNIT_CODE
- **Calculated:**
  - GroupFooter0: `=Sum([Balance])`
  - GroupFooter0: `=[UNIT_CODE]`

## Report: NMIS_ID_LOCATIONS subreport
- **Caption:** NMIS_ID_LOCATIONS subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Field_Map Form › Container_Location_Index › NMIS_ID_LOCATIONS subreport
- **Record source:** `**Transaction_Total_Bed_Ft`
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, SumOfTotal_Activity_Units

## Report: NMIS_ID_LOCATIONS subreport1
- **Caption:** NMIS_ID_LOCATIONS subreport1
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2 › NMIS_ID_LOCATIONS subreport1
- **Record source:** `SELECT NMIS_ID_LOCATIONS.SOURCE_LOT_CN, NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.UNIT_CODE, NMIS_ID_LOCATIONS.SUBLOT_NO FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN) Is Not Null));`
- **Grouping:** 
- **Fields:** LOCATION, SUBLOT_NO, UNIT_CODE

## Report: NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Caption:** NMIS_ID_LOCATIONS subreport1
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Bank_Receiving_Work_List › NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Record source:** ``
- **Grouping:** 
- **Fields:** loc

## Report: NMIS_LOCATIONS_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_LOCATION_TYPES › NMIS_LOCATIONS_CHECKLIST
- **Record source:** ``
- **Grouping:** LOCATION_TYPE → LOCATION
- **Fields:** Header, INDEX_MAX, LOCATION2, LOCATION_DESC, ZONE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Non-WCF_Storage_Billing_Report
- **Caption:** 
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report
- **Record source:** ``
- **Grouping:** Billing_Associate → STORED_FOR_ASSOCIATE → DIVERSE → SPECIES_GROUP → PLNTMSTR_SYMBOL → Loc_Key → Min_Chg_Used → Unit_Price
- **Fields:** Billing_Associate, Client_bill_amt2, Loc_Key, Min_Chg_Used, PLNTMSTR_SYMBOL, SPECIES_GROUP, STORED_FOR_ASSOCIATE, SumOfClient_bill_amt, Traditional_Category
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Non-WCF Storage Invoice Report: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date]`
  - GroupFooter5: `=Sum([bill_amt])`
  - GroupFooter5: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter5: `=Val(nz([Unit_Price1],0))`
  - GroupFooter5: `=Sum([lots])`
  - GroupFooter3: `=[Traditional_Category] & " Totals"`
  - GroupFooter3: `=Sum([bill_amt])`
  - GroupFooter3: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=IIf(Sum([bill_amt])<[Forms]![Non_WCF_Storage_Billing_Report]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Client_min_bill_amt],"*Min Bill Amt*","")`
  - GroupFooter4: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter4: `=[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line]`
  - GroupFooter4: `=[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([bill_amt])`
  - ReportFooter: `=Sum([Sum Of ACTIVITY_UNITS])`

## Report: NMIS_Non-WCF_Storage_Billing_Report_P
- **Caption:** Non-WCF Storage Billing Report
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_P
- **Record source:** ``
- **Grouping:** Billing_Associate → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL → ID_Sublot
- **Fields:** Billing_Associate, CLIENT_ASSOCIATE, ID_Sublot, Min_Chg_Used, PLNTMSTR_SYMBOL, SOURCE, Sum Of ACTIVITY_UNITS, Unit_Price, bill_amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date]`
  - PageHeaderSection: `="Product Non-WCF Storage Billing Report"`
  - PageHeaderSection: `="Balance as of " & [Forms]![Non_WCF_Storage_Billing_Report]![Storage_bill_Date]`
  - GroupFooter1: `=Sum(Round([bill_amt],4))`
  - GroupFooter1: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter2: `=Sum(Round([bill_amt],4))`
  - GroupFooter2: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=Sum(Round([bill_amt],4))`
  - GroupFooter0: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line]`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Non-WCF_Storage_Billing_Report_S
- **Caption:** Non-WCF Storage Billing Report
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S
- **Record source:** ``
- **Grouping:** Billing_Associate → PLNTMSTR_SYMBOL → ID
- **Fields:** Billing_Associate, ID, PLNTMSTR_SYMBOL, SOURCE, SumOfSum Of ACTIVITY_UNITS, Unit_Price, bill_amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Source Non-WCF Storage Billing Report"`
  - PageHeaderSection: `="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date]`
  - GroupFooter1: `=Sum(Round([bill_amt],4))`
  - GroupFooter1: `=Sum([SumOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=Sum(Round([bill_amt],4))`
  - GroupFooter0: `=Sum([SumOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line]`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Non-WCF_Storage_Billing_Report_S_Freezer
- **Caption:** Non-WCF Storage Billing Report
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S_Freezer
- **Record source:** ``
- **Grouping:** Billing_Associate → PLNTMSTR_SYMBOL → ID
- **Fields:** Billing_Associate, ID, LastOfSum Of ACTIVITY_UNITS, Location, Min_Chg_Used, PLNTMSTR_SYMBOL, SOURCE, Unit_Price, bill_amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Source Non-WCF Storage Billing Report"`
  - PageHeaderSection: `="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date]`
  - GroupFooter1: `=Sum(Round([bill_amt],4))`
  - GroupFooter1: `=Sum([LastOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=Sum(Round([bill_amt],4))`
  - GroupFooter0: `=Sum([LastOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line]`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary
- **Caption:** Non-WCF Storage Billing Report
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary
- **Record source:** ``
- **Grouping:** Billing_Associate → PLNTMSTR_SYMBOL → Min_Chg_Used → ID
- **Fields:** Billing_Associate, Min_Chg_Used, PLNTMSTR_SYMBOL, Unit_Price1
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Source Non-WCF FREEZER Storage Billing Report"`
  - PageHeaderSection: `="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date]`
  - GroupFooter2: `=Sum(Round([bill_amt],4))`
  - GroupFooter2: `=Sum([LastOfSum Of ACTIVITY_UNITS])`
  - GroupFooter2: `=Sum([lots])`
  - GroupFooter0: `=Sum(Round([bill_amt],4))`
  - GroupFooter0: `=Sum([LastOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line]`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer
- **Caption:** Non-WCF Storage Billing Report
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer
- **Record source:** ``
- **Grouping:** Billing_Associate → PLNTMSTR_SYMBOL → ID
- **Fields:** Billing_Associate, ID, LastOfSum Of ACTIVITY_UNITS, Location, Min_Chg_Used, PLNTMSTR_SYMBOL, SOURCE, Unit_Price, bill_amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Source Non-WCF Storage Billing Report"`
  - PageHeaderSection: `="Billing Date: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date]`
  - GroupFooter1: `=Sum(Round([bill_amt],4))`
  - GroupFooter1: `=Sum([LastOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=Sum(Round([bill_amt],4))`
  - GroupFooter0: `=Sum([LastOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line]`
  - GroupFooter0: `=[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Non-WCF_Storage_Billing_w_lots_Report
- **Caption:** 
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › NMIS_Non-WCF_Storage_Billing_w_lots_Report
- **Record source:** ``
- **Grouping:** Billing_Associate → STORED_FOR_ASSOCIATE → DIVERSE → SPECIES_GROUP → PLNTMSTR_SYMBOL → ID_Sublot → key
- **Fields:** Billing_Associate, Client_bill_amt2, ID_Sublot, Loc_Key, Min_Chg_Used, PLNTMSTR_SYMBOL, SOURCE, SPECIES_GROUP, STORED_FOR_ASSOCIATE, SumOfClient_bill_amt, SumOfSum Of ACTIVITY_UNITS, SumOfbill_amt, Traditional_Category
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Non-WCF Storage Invoice Report: " & [Forms]![Non_WCF_Storage_Billing_Report]![Bill_Date]`
  - Detail: `=Val([Unit_Price])`
  - GroupFooter1: `=Sum([SumOfbill_amt])`
  - GroupFooter1: `=Sum([SumOfSum Of ACTIVITY_UNITS])`
  - GroupFooter3: `=[Traditional_Category] & " Totals"`
  - GroupFooter3: `=Sum([SumOfbill_amt])`
  - GroupFooter3: `=Sum([SumOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=Sum([SumOfSum Of ACTIVITY_UNITS])`
  - GroupFooter0: `=IIf(Sum([SumOfbill_amt])<[Forms]![Non_WCF_Storage_Billing_Report]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Client_min_bill_amt],"*Min Bill Amt*","")`
  - GroupFooter4: `=Sum([SumOfSum Of ACTIVITY_UNITS])`
  - GroupFooter4: `=[Forms]![Non_WCF_Storage_Billing_Report]![Title_Line]`
  - GroupFooter4: `=[Forms]![Non_WCF_Storage_Billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfbill_amt])`
  - ReportFooter: `=Sum([SumOfSum Of ACTIVITY_UNITS])`

## Report: NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport
- **Caption:** 
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler › NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** ACTIVITY_NAME

## Report: NMIS_ORDERS_PROCESSING_TABLE_SIGN
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_PROCESSING_TABLE_SIGN
- **Record source:** ``
- **Grouping:** ORDER_ID → CN
- **Subreports:** Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport, Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport, Report.Processing_Table_Sign_Precooler_Totals, Report.Processing_Table_Sign_Precooler_Totals
- **Fields:** CLIENT, ORDER, Order_M
- **Calculated:**
  - Detail: `="Ht: " & [HT_RANGE] & "in."`
  - Detail: `="Cal: " & [CALIPER_MIN] & "mm"`
  - Detail: `="RP: " & [ROOT_PRUNE_TARGET] & "in."`
  - Detail: `="Cal: " & [CALIPER_MIN] & "mm"`
  - Detail: `="RP: " & [ROOT_PRUNE_TARGET] & "in."`
  - Detail: `="Ht: " & [HT_RANGE] & "in."`

## Report: NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler
- **Caption:** ORDER PROCESSING TABLE SIGN
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler
- **Record source:** `SELECT NMIS_AGREEMENT_LOTS.ID, Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) AS ORDER_ID, NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, [ORDER_AMT] & "m" AS Order_M, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, [ID] & "/" & Left$([NMIS_ORDERS].[CN],Len([NMIS_ORDERS].[CN])-7) AS [ORDER], [ASSOCIATE_NAME] & " (" & [aSSOCIATE] & ")" AS CLIENT, [SPEC_MIN] & IIf(Not IsNull([SPEC_MAX])," - " & [SPEC_MAX],"+") AS HT_RANGE, NMIS_ORDERS.CN, NMIS_ORDERS.AGREEMENT_LOT_CN FROM (NMIS_ASSOCIATES RIGHT JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN]));`
- **Grouping:** ORDER_ID → CN
- **Subreports:** Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport, Report.NMIS_ORDER_PROCESSING_TABLE_SIGN_SERVICES subreport, Report.Processing_Table_Sign_Precooler_Totals, Report.Processing_Table_Sign_Precooler_Totals
- **Fields:** CLIENT, ORDER, Order_M
- **Calculated:**
  - Detail: `="Ht: " & [HT_RANGE] & "in."`
  - Detail: `="Cal: " & [CALIPER_MIN] & "mm"`
  - Detail: `="RP: " & [ROOT_PRUNE_TARGET] & "in."`
  - Detail: `="Cal: " & [CALIPER_MIN] & "mm"`
  - Detail: `="RP: " & [ROOT_PRUNE_TARGET] & "in."`
  - Detail: `="Ht: " & [HT_RANGE] & "in."`

## Report: NMIS_OYJORD_Settings_Checklist
- **Caption:** NMIS_UNITS_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_OYJORD_Settings_Checklist
- **Record source:** `SELECT NMIS_OYJORD_SETTINGS.*, " Oyjord # " & [OYJORD_ID] & " Calibration Checklist" AS Page_Header, IIf([Gear]=0,4,[gear]) AS Gear_Sort_Order FROM NMIS_OYJORD_SETTINGS;`
- **Grouping:** OYJORD_ID → Gear_Sort_Order → GEAR → TRAVEL_PER_REVOLUTION
- **Fields:** GEAR, Page_Header, TRAVEL_PER_REVOLUTION, TURNS, ZMAX
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_OYJORD_Settings_Field_Checklist
- **Caption:** NMIS_Oyjord_Field_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_OYJORD_Settings_Field_Checklist
- **Record source:** `SELECT NMIS_OYJORD_SETTINGS.*, " Oyjord # " & [OYJORD_ID] & " Calibration Field Checklist" AS Page_Header, IIf([Gear]=0,4,[gear]) AS Gear_Sort_Order FROM NMIS_OYJORD_SETTINGS;`
- **Grouping:** OYJORD_ID → TRAVEL_PER_REVOLUTION → Gear_Sort_Order → GEAR
- **Fields:** GEAR, Page_Header, TRAVEL_PER_REVOLUTION, TURNS, ZMAX
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PHONE_NUMBERS subreport
- **Caption:** NMIS_PHONE_NUMBERS subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST › NMIS_PHONE_NUMBERS subreport
- **Record source:** ``
- **Grouping:** PHONE_TYPE
- **Fields:** PHONE_NUMBER, PHONE_TYPE

## Report: NMIS_PHONE_NUMBERS subreport2
- **Caption:** NMIS_PHONE_NUMBERS subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_CONTACT_AND_PHONE_CHECKLIST › NMIS_CONTACT_LINKS subreport › NMIS_PHONE_NUMBERS subreport2
- **Record source:** `SELECT NMIS_PHONE_NUMBERS.ASSOCIATE, NMIS_PHONE_NUMBERS.PHONE_NUMBER, NMIS_PHONE_TYPES.PHONE_TYPE FROM NMIS_PHONE_TYPES INNER JOIN NMIS_PHONE_NUMBERS ON NMIS_PHONE_TYPES.CN=NMIS_PHONE_NUMBERS.PHONE_TYPE_CN;`
- **Grouping:** PHONE_TYPE
- **Fields:** PHONE_NUMBER, PHONE_TYPE

## Report: NMIS_PROCESS_PACK_LABELS
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, CALIPER_MIN, CLIENT_ASSOCIATE, FORTP, NO_FREEZE, ROOT_PRUNE_TARGET
- **Calculated:**
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted]`
  - PageHeaderSection: `=[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX])`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: NMIS_PROCESS_PACK_LABELS_040207
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_040207
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, NO_FREEZE, ORDER_SIZE_SPEC_STRING
- **Calculated:**
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table]`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments]`

## Report: NMIS_PROCESS_PACK_LABELS_050357
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_050357
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, FOREST, FORTP, NO_FREEZE, ORDER_SIZE_SPEC_STRING
- **Calculated:**
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table]`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![PACK_ID]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments] & " " & [Contract_Lot_ID]`

## Report: NMIS_PROCESS_PACK_LABELS_090707
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_090707
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, FORTP, NO_FREEZE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments]`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: NMIS_PROCESS_PACK_LABELS_ODD_BOX
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_ODD_BOX
- **Record source:** ``
- **Grouping:** 
- **Fields:** 

## Report: NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207
- **Record source:** ``
- **Grouping:** 
- **Fields:** 

## Report: NMIS_PROCESS_PACK_LABELS_PROOF
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_PROOF
- **Record source:** `SELECT NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.CN FROM NMIS_ORDERS GROUP BY NMIS_ORDERS.AGREEMENT_LOT_CN, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.CN HAVING (((NMIS_ORDERS.AGREEMENT_LOT_CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Ageement_Lot_CN_Select]) AND ((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN]));`
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, CALIPER_MIN, CLIENT_ASSOCIATE, ROOT_PRUNE_TARGET
- **Calculated:**
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted]`
  - PageHeaderSection: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![PACK_ID]`
  - PageHeaderSection: `=[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX])`

## Report: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE
- **Record source:** ``
- **Grouping:** Number_Of_Tags
- **Fields:** AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, FORTP, Tag_Number
- **Calculated:**
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Pack_Date`
  - Detail: `=IIf([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont]>"",[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont],"__________")`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Comments`
  - Detail: `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!NMIS_PROCESS_LABELS_subform2.Form!DATE_LIFT,[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override)`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Number_Of_Containers]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Pack_Date]`
  - Detail: `=IIf([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont]>"",[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont],"__________")`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Comments]`
  - Detail: `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override])`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Number_Of_Containers]`

## Report: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_1
- **Record source:** ``
- **Grouping:** Number_Of_Tags
- **Fields:** AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, FORTP, Tag_Number
- **Calculated:**
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Pack_Date`
  - Detail: `=IIf([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont]>"",[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont],"__________")`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Comments`
  - Detail: `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!NMIS_PROCESS_LABELS_subform2.Form!DATE_LIFT,[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override)`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Number_Of_Containers]`

## Report: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3
- **Caption:** Preview Packing Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_3
- **Record source:** ``
- **Grouping:** Number_Of_Tags
- **Fields:** AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, FORTP, Tag_Number
- **Calculated:**
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Pack_Date`
  - Detail: `=IIf([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont]>"",[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![Trees/Cont],"__________")`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Comments`
  - Detail: `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!NMIS_PROCESS_LABELS_subform2.Form!DATE_LIFT,[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form!Lift_Date_Override)`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Number_Of_Containers]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Pack_Date]`
  - Detail: `=IIf([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont]>"",[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont],"__________")`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Comments]`
  - Detail: `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override])`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Number_Of_Containers]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Pack_Date]`
  - Detail: `=IIf([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont]>"",[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Trees/Cont],"__________")`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Comments]`
  - Detail: `=IIf(IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override]),[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![NMIS_PROCESS_LABELS_subform2].[Form]![DATE_LIFT],[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Lift_Date_Override])`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Number_Of_Containers]`

## Report: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change
- **Caption:** 
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form › NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - Detail: `=[Forms]![NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form]![Like_Lot_ID]`
  - Detail: `=[Forms]![NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form]![Like_Lot_ID]`

## Report: NMIS_PROCESS_QI_LABELS
- **Caption:** Preview Quality Monitoring Label
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_QI_LABELS
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, CALIPER_MIN, CLIENT_ASSOCIATE, FORTP, ID, NO_QM_SAMPLE, PACK_ID, ROOT_PRUNE_TARGET
- **Calculated:**
  - Detail: `="Top: ht: " & [SPEC_MIN] & " - " & [Spec_max] & "   Cal: " & [caliper_min]`
  - Detail: `='I' & [ID]`
  - Detail: `='P' & [Pack_ID]`
  - Detail: `="Date: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date]`
  - Detail: `="Table: " & [Forms]![NMIS_PROCESS_LABELS_MAIN]![Table]`
  - Detail: `='T' & [spec_Min] & "+" & [spec_Max] & '+' & [Caliper_Min]`
  - Detail: `="Prune: " & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '-' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '-' & ([Root_Prune_Target]+1.5)) & " Target: " & [ROOT_Prune_TARGET] & " Inches"`
  - Detail: `="Take: " & Round([Order_Amt]*10,0) & " From " & [ORDER_AMT] & " M"`
  - Detail: `='*R' & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '+' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '+' & ([Root_Prune_Target]+1.5)) & "*"`
  - Detail: `='Z' & Round([Order_Amt]*10,0)`
  - Detail: `="Order ID: " & [PACK_ID]`
  - Detail: `="Pack Contract Item: " & [Contract_Item]`
  - Detail: `='C' & [Contract_Item]`
  - Detail: `="Lot ID: " & [ID]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Pack_Date]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Trees/Cont]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Table]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Comments]`
  - Detail: `=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Date_Lifted]`
  - Detail: `=[SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX])`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: NMIS_PROCESS_QI_LABELS_from_table_priorities
- **Caption:** Preview Quality Monitoring Label
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › NMIS_PROCESS_QI_LABELS_from_table_priorities
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, FORTP, ID, NO_QM_SAMPLE, PACK_ID
- **Calculated:**
  - Detail: `="Top: ht: " & [SPEC_MIN] & IIf(IsNull([SPEC_MAX]),"+"," - " & [SPEC_MAX]) & "   Cal: " & [caliper_min]`
  - Detail: `="Date: " & [PROCESSING_DATE]`
  - Detail: `=IIf([TABLE]="ss","Side Sort","Table: " & [TABLE])`
  - Detail: `="Prune: " & IIf([ACTIVITY_CODE] Like "PXPLT*",([Root_Prune_Target]-1) & '-' & ([Root_Prune_Target]+1),([Root_Prune_Target]-1.5) & '-' & ([Root_Prune_Target]+1.5)) & " Target: " & [ROOT_Prune_TARGET] & " Inches"`
  - Detail: `="Take: " & Round([Order_Amt]*10,0) & " From " & [ORDER_AMT] & " M"`
  - Detail: `="Pack Contract Item: " & [Contract_Item]`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `="Root Min: " & [Root_prune_min]`
  - Detail: `="Order: " & [ORDER_AMT] & " M"`

## Report: NMIS_Processing_Table_Priorities_c1_pc subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c1_pc subreport
- **Record source:** ``
- **Grouping:** TABLE → FirstOfPROCESSING_PRIORITY → ID
- **Subreports:** Report.Table_assignment_Precool mt Subrep
- **Fields:** ASSOCIATE_NAME, ID, [T2]

## Report: NMIS_Processing_Table_Priorities_c1_pms subreport
- **Caption:** NMIS_Processing_Table_Priorities_PMS subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c1_pms subreport
- **Record source:** ``
- **Grouping:** PROCESSING_PRIORITY → Order_ID
- **Fields:** ACTIVITY_CODE, ASSOCIATE_NAME, ID_Order, NOTE, [T2]
- **Calculated:**
  - Detail: `=IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override])`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: NMIS_Processing_Table_Priorities_c2 subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c2 subreport
- **Record source:** ``
- **Grouping:** PROCESSING_PRIORITY → Order_ID
- **Subreports:** Report.Table_assignment_Precool mt Subrep
- **Fields:** ACTIVITY_CODE, ASSOCIATE_NAME, ID_Order, NOTE, [T2]
- **Calculated:**
  - Detail: `=IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override])`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: NMIS_Processing_Table_Priorities_c2_pc subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c2_pc subreport
- **Record source:** ``
- **Grouping:** TABLE → FirstOfPROCESSING_PRIORITY → ID
- **Subreports:** Report.Table_assignment_Precool mt Subrep
- **Fields:** ASSOCIATE_NAME, ID, [T2]

## Report: NMIS_Processing_Table_Priorities_c2_pms subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c2_pms subreport
- **Record source:** ``
- **Grouping:** PROCESSING_PRIORITY → Order_ID
- **Fields:** ACTIVITY_CODE, ASSOCIATE_NAME, ID_Order, NOTE, [T2]
- **Calculated:**
  - Detail: `=IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override])`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: NMIS_Processing_Table_Priorities_c3 subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c3 subreport
- **Record source:** ``
- **Grouping:** PROCESSING_PRIORITY → Order_ID
- **Subreports:** Report.Table_assignment_Precool mt Subrep
- **Fields:** ACTIVITY_CODE, ASSOCIATE_NAME, ID_Order, NOTE, [T2]
- **Calculated:**
  - Detail: `=IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override])`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: NMIS_Processing_Table_Priorities_c3_pc subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c3_pc subreport
- **Record source:** ``
- **Grouping:** TABLE → FirstOfPROCESSING_PRIORITY → ID
- **Subreports:** Report.Table_assignment_Precool mt Subrep
- **Fields:** ASSOCIATE_NAME, ID, [T2]

## Report: NMIS_Processing_Table_Priorities_c3_pms subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c3_pms subreport
- **Record source:** ``
- **Grouping:** PROCESSING_PRIORITY → Order_ID
- **Fields:** ACTIVITY_CODE, ASSOCIATE_NAME, ID_Order, NOTE, [T2]
- **Calculated:**
  - Detail: `=IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override])`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: NMIS_Processing_Table_Priorities_c4 subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c4 subreport
- **Record source:** ``
- **Grouping:** PROCESSING_PRIORITY → Order_ID
- **Subreports:** Report.Table_assignment_Precool mt Subrep
- **Fields:** ACTIVITY_CODE, ASSOCIATE_NAME, ID_Order, NOTE, T2
- **Calculated:**
  - Detail: `=IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override])`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: NMIS_Processing_Table_Priorities_c4_pc subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc › NMIS_Processing_Table_Priorities_c4_pc subreport
- **Record source:** ``
- **Grouping:** TABLE → FirstOfPROCESSING_PRIORITY → ID
- **Subreports:** Report.Table_assignment_Precool mt Subrep
- **Fields:** ASSOCIATE_NAME, ID, [T2]

## Report: NMIS_Processing_Table_Priorities_c4_pms subreport
- **Caption:** NMIS_Processing_Table_Priorities subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms › NMIS_Processing_Table_Priorities_c4_pms subreport
- **Record source:** ``
- **Grouping:** PROCESSING_PRIORITY → Order_ID
- **Fields:** ACTIVITY_CODE, ASSOCIATE_NAME, ID_Order, NOTE, T2
- **Calculated:**
  - Detail: `=IIf(IsNull([amt_override]),IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)),[amt_override])`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report
- **Record source:** `NMIS_PRODUCT_INVENTORY_Query`
- **Grouping:** Cost_Center → End_Season → Age_Class_Condensed → PLNTMSTR_SYMBOL → Species_Products_String_Longest → SPECIES_PRODUCT_DESC → NMIS_AGREEMENT_LOTS_ID → SOURCE
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class_Condensed, BEGIN_FY, Cost_Center, Density, END_FY, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, Species_Product_CN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Diverse]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Contact_CN]`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Like_Client]),"Selected for Like Client: " & [Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Like_Client])`
  - GroupHeader5: `="*Requested for FY " & [END_SEASON] & "*"`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report
- **Record source:** `NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query`
- **Grouping:** BorC → Age_Class → PLNTMSTR_SYMBOL → LastOfCLIENT_ASSOCIATE → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class, BorC, ID_SOURCE, Inv_Type, [Actual_Sow_Calculated2], [Firm_Order], [GROSS_INV], [NET_INV], [SumOfAMOUNT_REQUESTED]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `="Totals for " & [Age_Class]`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried"`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact
- **Record source:** `NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query`
- **Grouping:** BorC → LastOfCLIENT_ASSOCIATE → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class, BorC, CONTACT_NAME_UPPER, ID_SOURCE, Inv_Type, LastOfCLIENT_ASSOCIATE, [Actual_Sow_Calculated2], [GROSS_INV], [NET_INV], [SumOfAMOUNT_REQUESTED]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `="Totals for " & [Age_Class]`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried"`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc
- **Record source:** `NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query`
- **Grouping:** BorC → LastOfCLIENT_ASSOCIATE → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** Age_Class, BorC, ID_SOURCE, Inv_Type, LastOfCLIENT_ASSOCIATE, [Actual_Sow_Calculated2], [GROSS_INV], [NET_INV], [SumOfAMOUNT_REQUESTED]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"k","")`
  - Detail: `=IIf([Gross]<[TOTAL_REQUEST],"j","")`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `="Totals for " & [Age_Class]`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried"`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report
- **Record source:** ``
- **Grouping:** BorC → Age_Class → PLNTMSTR_SYMBOL → LastOfCLIENT_ASSOCIATE → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, Age_Class, BorC, ID_SOURCE, Inv_Type, [Actual_Sow_Calculated2], [GROSS_INV], [NET_INV], [SumOfAMOUNT_REQUESTED]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `="Totals for " & [Age_Class]`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried"`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report
- **Record source:** `NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query`
- **Grouping:** BorC → Age_Class → PLNTMSTR_SYMBOL → LastOfCLIENT_ASSOCIATE → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, Age_Class, BorC, ID_SOURCE, Inv_Type, [Actual_Sow_Calculated2], [GROSS_INV], [NET_INV], [SumOfAMOUNT_REQUESTED]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `="Totals for " & [Age_Class]`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried"`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report
- **Record source:** ``
- **Grouping:** CatCode → END_FY → DIVERSE → Age_Class → Inv_Type → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class, BorC, CatCode, DIVERSE, END_FY
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="CY 20" & Right$(Date(),2)`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Like_Client],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Begin_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![End_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Plntmstr_Symbol],"*")`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS_INV])`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter0: `=IIf(Count([ACTIVITY_DATE])>0,Count([ACTIVITY_DATE]),[Lots_Not_Inventoried]) & " of " & [Age_Class_Total_Lots] & IIf([Age_Class_Total_Lots]>1," Lots"," Lot") & IIf(Count([ACTIVITY_DATE])=0," Not") & " Inventoried " & [inv_type]`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter2: `=Count([NMIS_AGREEMENT_LOTS_ID])`
  - GroupFooter2: `=[Age_Class_Total_Lots]-[Lots_Inventoried]`
  - GroupFooter2: `=Count([ACTIVITY_DATE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_INV])`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2
- **Record source:** `NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query`
- **Grouping:** CatCode → Age_Class → Inv_Type → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class, BorC, CatCode
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="CY 20" & Right$(Date(),2)`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Like_Client],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Begin_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![End_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Plntmstr_Symbol],"*")`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS_INV])`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter0: `=IIf(Count([ACTIVITY_DATE])>0,Count([ACTIVITY_DATE]),[Lots_Not_Inventoried]) & " of " & [Age_Class_Total_Lots] & IIf([Age_Class_Total_Lots]>1," Lots"," Lot") & IIf(Count([ACTIVITY_DATE])=0," Not") & " Inventoried " & [inv_type]`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter2: `=Count([NMIS_AGREEMENT_LOTS_ID])`
  - GroupFooter2: `=[Age_Class_Total_Lots]-[Lots_Inventoried]`
  - GroupFooter2: `=Count([ACTIVITY_DATE])`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`

## Report: NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report
- **Record source:** `NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query`
- **Grouping:** BorC → DIVERSE → Age_Class_Condensed → Inv_Type → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class_Condensed, BorC, DIVERSE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="CY 20" & Right$(Date(),2)`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Like_Client],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Begin_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![End_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Plntmstr_Symbol],"*")`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS_INV])`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter0: `=IIf(Count([ACTIVITY_DATE])>0,Count([ACTIVITY_DATE]),[Lots_Not_Inventoried]) & " of " & [Age_Class_Total_Lots] & IIf([Age_Class_Total_Lots]>1," Lots"," Lot") & IIf(Count([ACTIVITY_DATE])=0," Not") & " Inventoried " & [inv_type]`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter2: `=Count([NMIS_AGREEMENT_LOTS_ID])`
  - GroupFooter2: `=[Age_Class_Total_Lots]-[Lots_Inventoried]`
  - GroupFooter2: `=Count([ACTIVITY_DATE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_INV])`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`

## Report: NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report
- **Record source:** `NMIS_PRODUCT_INVENTORY_Age_Class_Summary Query`
- **Grouping:** Region → END_FY
- **Fields:** Region
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS_INV])`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter0: `="Ending Fiscal Year: " & [END_FY]`
  - GroupFooter0: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot") & " Inventoried"`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`

## Report: NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report
- **Record source:** ``
- **Grouping:** PARENT_ASSOCIATE → CatCode → END_FY → DIVERSE → Age_Class → Inv_Type → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class, BorC, CatCode, DIVERSE, END_FY, PARENT_ASSOCIATE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="CY 20" & Right$(Date(),2)`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Like_Client],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Begin_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![End_FY],"*")`
  - PageHeaderSection: `=nz([Forms]![BeginFY_EndFY_Associate_Species_Input]![Plntmstr_Symbol],"*")`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS_INV])`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter0: `=IIf(Count([ACTIVITY_DATE])>0,Count([ACTIVITY_DATE]),[Lots_Not_Inventoried]) & " of " & [Age_Class_Total_Lots] & IIf([Age_Class_Total_Lots]>1," Lots"," Lot") & IIf(Count([ACTIVITY_DATE])=0," Not") & " Inventoried " & [inv_type]`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter2: `=Count([NMIS_AGREEMENT_LOTS_ID])`
  - GroupFooter2: `=[Age_Class_Total_Lots]-[Lots_Inventoried]`
  - GroupFooter2: `=Count([ACTIVITY_DATE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_INV])`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter1: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter1: `=Sum([Firm_Order])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`

## Report: NMIS_PRODUCT_INVENTORY_Checklist
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Checklist
- **Record source:** `NMIS_PRODUCT_INVENTORY_Query`
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE
- **Fields:** CLIENT_ASSOCIATE, Reporting_Parent
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2
- **Record source:** ``
- **Grouping:** LAST_NAME → FIRST_NAME → Name
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport
- **Fields:** Name, PHONE_NUMBER, PHONE_TYPE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport
- **Caption:** ***********************DBD subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2 › NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2_subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** CLIENT_ASSOCIATE

## Report: NMIS_PRODUCT_INVENTORY_Client_Summary_Report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_Client_Summary_Report
- **Record source:** `NMIS_PRODUCT_INVENTORY_Query`
- **Grouping:** Cost_Center → END_FY → Age_Class_Condensed → Reporting_Parent → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ASSOCIATE, Cost_Center, [Client_Associate]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Age_Class_Condensed] & " Requested for FY " & [END_FY]`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `="Total for " & [Age_Class_Condensed]`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="Total for Requested for FY " & [END_FY]`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Product_Inventory_Daily_Checklist › NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST
- **Record source:** ``
- **Grouping:** ACTIVITY_DATE → BorC → AGE_STRING → END_FY → PLNTMSTR_SYMBOL → ID → ACTIVITY_DATE
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport
- **Fields:** ACTIVITY_DATE, AGE_STRING, Actual_Sow_Calculated, BorC, CV, Density, END_FY, GROSS_INV, ID, Inv_Type, Lot_Total_Ft, Lot_Total_Request, Major_Client, NET_INV, NOTE, PLNTMSTR_SYMBOL, Shortage, Thin, Total_Samples
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Total_Samples])`
  - GroupFooter2: `=Sum([Total_Samples])`
  - GroupFooter1: `=Sum([Total_Samples])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Product_Inventory_Daily_Checklist › NMIS_PRODUCT_INVENTORY_DAILY_CHECKLIST › NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport
- **Record source:** ``
- **Grouping:** AGREEMENT_LOT_CN → Location
- **Fields:** Location

## Report: NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist
- **Caption:** Size_Spec_Ingrowth_percents_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist
- **Record source:** `NMIS_PRODUCT_INVENTORY_INGROWTH_Pcts`
- **Grouping:** Spec_Range → Ht
- **Fields:** 1-2, 2_5, 3, 3_5, 4, 5, 5+, HT_HEADING, Spec_Range
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport
- **Caption:** 
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport
- **Record source:** `SELECT [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].AGREEMENT_LOT_CN, [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].Location FROM [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS] GROUP BY [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].AGREEMENT_LOT_CN, [**NMIS_PRODUCT_INVENTORY_REPORT_LOCATIONS].Location;`
- **Grouping:** AGREEMENT_LOT_CN → Location
- **Fields:** Location

## Report: NMIS_PRODUCT_INVENTORY_No_Subtotals_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_No_Subtotals_Report
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → End_Season → Cost_Center → Age_Class_Condensed → PLNTMSTR_SYMBOL → Species_Products_String_Longest → SPECIES_PRODUCT_DESC → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class_Condensed, BEGIN_FY, CLIENT_ASSOCIATE, Contact, Cost_Center, Density, END_FY, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, Reporting_Parent, Species_Product_CN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Diverse]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Contact_CN]`
  - GroupHeader5: `="*Requested for FY " & [END_SEASON] & "*"`
  - Detail: `=IIf([Net_Inv]<(0.95*[TOTAL_REQUEST]),"*","")`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Report
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → End_Season → Cost_Center → Age_Class_Condensed → PLNTMSTR_SYMBOL → Species_Products_String_Longest → SPECIES_PRODUCT_DESC → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class_Condensed, BEGIN_FY, CLIENT_ASSOCIATE, Contact, Cost_Center, Density, END_FY, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, Reporting_Parent, Species_Product_CN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Diverse]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Contact_CN]`
  - GroupHeader5: `="*Requested for FY " & [END_SEASON] & "*"`
  - Detail: `=IIf([Net_Inv]<(0.95*[TOTAL_REQUEST]),"*","")`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_Report2
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Report2
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → End_Season → Cost_Center → Age_Class_Condensed → PLNTMSTR_SYMBOL → Species_Products_String_Longest → SPECIES_PRODUCT_DESC → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class_Condensed, BEGIN_FY, CLIENT_ASSOCIATE, Contact, Cost_Center, Density, END_FY, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, Reporting_Parent, Species_Product_CN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Diverse]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Contact_CN]`
  - GroupHeader5: `="*Requested for FY " & [END_SEASON] & "*"`
  - Detail: `=IIf([Net_Inv]<(0.95*[TOTAL_REQUEST]),"*","")`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_Report2Sum
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Report2Sum
- **Record source:** ``
- **Grouping:** End_Season → Cost_Center → Age_Class_Condensed → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class_Condensed, BEGIN_FY, Cost_Center, Density, END_FY, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Diverse]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Contact_CN]`
  - GroupHeader5: `="*Requested for FY " & [END_SEASON] & "*"`
  - Detail: `=IIf([Net_Inv]<(0.95*[TOTAL_REQUEST]),"*","")`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report › NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Record source:** ``
- **Grouping:** AGREEMENT_LOT_CN → Location
- **Fields:** Location

## Report: NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_FORM › NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report
- **Record source:** ``
- **Grouping:** Cost_Center → PLNTMSTR_SYMBOL → End_Season → Age_Class_Condensed → Species_Products_String_Longest → SPECIES_PRODUCT_DESC → NMIS_AGREEMENT_LOTS_ID → SOURCE
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_REPORT_Location_Subreport
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class_Condensed, BEGIN_FY, Cost_Center, Density, END_FY, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, PLNTMSTR_SYMBOL, Species_Product_CN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Diverse]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Contact_CN]`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Like_Client]),"Selected for Like Client: " & [Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Like_Client])`
  - GroupHeader5: `="*Requested for FY " & [END_SEASON] & "*"`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_INVENTORY_Summary subreport
- **Caption:** NMIS_PRODUCT_INVENTORIES subreport
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Product_Inventory_Data_Summary › NMIS_PRODUCT_INVENTORY_Summary subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** ACTIVITY_DATE, Accuracy, Additional_Plot_Spacing, Additional_Plots, Calculated_Plots, GROSS_INV, ID_ACTIVITY_CN, NET_INV, NET_INV_ALT, Net_ALT_as_pct_of_Req, Net_as_pct_of_Req, PCT_PROBABILITY, SAMPLES, Sample_Error, SumX, Total_Sized, mean, sumxsq
- **Calculated:**
  - Detail: `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor_Alt]`
  - Detail: `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor]`
  - Detail: `=IIf(Not IsNull([Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor]),"%","")`
  - Detail: `=IIf(Not IsNull([Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor]),"%","")`
  - Detail: `=[Accuracy]/[mean]*100`

## Report: NMIS_PRODUCT_INVENTORY_Summary_Report
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_Summary_Report
- **Record source:** `NMIS_PRODUCT_INVENTORY_Query`
- **Grouping:** Region → END_FY
- **Fields:** Region
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS_INV])`
  - GroupFooter4: `=Sum([NET_INV])`
  - GroupFooter4: `="*Ordered for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS_INV])`
  - GroupFooter1: `=Sum([NET_INV])`
  - GroupFooter1: `=Sum([Actual_Sow_Calculated])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCT_MGMT_CODES subreport
- **Caption:** NMIS_PRODUCT_MGMT_CODES subreport
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_All_Price_CHECKLIST › NMIS_PRODUCT_MGMT_CODES subreport
- **Record source:** `*NMIS_PRODUCT_CHARGES_Dist_Subreport_Table`
- **Grouping:** MGMT_CODE → PERCENT_OF_CHARGE
- **Fields:** Dollars_Per_Unit, Dollars_Per_amt, MGMT_CODE, PERCENT_OF_CHARGE

## Report: NMIS_PRODUCT_Projected_Charges_by_Category_Unit
- **Caption:** NMIS Product Projected Charges
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Category_Unit
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → Tree_YN → Reporting_Parent → CLIENT_ASSOCIATE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class_Prod_Category_Class, CATEGORY_CODE, CLIENT_ASSOCIATE, No_STD_Chg, Reporting_Parent, Tree_YN, [CHARGE_PER_AMT]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupHeader5: `=[Age_Class_Prod_Category_Class] & " " & [No_STD_Chg]`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_AMT])`
  - GroupFooter2: `=Sum([NET_AMT])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter4: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS_AMT])`
  - GroupFooter4: `=Sum([NET_AMT])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([CHARGE])`
  - GroupFooter5: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS_AMT])`
  - GroupFooter5: `=Sum([NET_AMT])`
  - GroupFooter5: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter5: `=Sum([Firm_Order])`
  - GroupFooter5: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_AMT])`
  - GroupFooter3: `=Sum([NET_AMT])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_AMT])`
  - ReportFooter: `=Sum([NET_AMT])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`

## Report: NMIS_PRODUCT_Projected_Charges_by_Category_Unit2
- **Caption:** NMIS Product Projected Charges
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Category_Unit2
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → Tree_YN → Reporting_Parent → CLIENT_ASSOCIATE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** CATEGORY_CODE, Reporting_Parent, Tree_YN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupFooter4: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS_AMT])`
  - GroupFooter4: `=Sum([NET_AMT])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([CHARGE])`
  - GroupFooter5: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS_AMT])`
  - GroupFooter5: `=Sum([NET_AMT])`
  - GroupFooter5: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter5: `=Sum([Firm_Order])`
  - GroupFooter5: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_AMT])`
  - GroupFooter3: `=Sum([NET_AMT])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_AMT])`
  - ReportFooter: `=Sum([NET_AMT])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`

## Report: NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot
- **Caption:** NMIS Product Projected Charges
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → Tree_YN → Reporting_Parent → CLIENT_ASSOCIATE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class_Prod_Category_Class, CATEGORY_CODE, CLIENT_ASSOCIATE, Lot_ID_SOURCE, No_STD_Chg, Reporting_Parent, Tree_YN, [Actual_Sow_Calculated2], [CHARGE], [CHARGE_PER_AMT], [Firm_Order], [GROSS_AMT], [NET_AMT], [SumOfAMOUNT_REQUESTED]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupHeader5: `=[Age_Class_Prod_Category_Class] & " " & [No_STD_Chg]`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_AMT])`
  - GroupFooter2: `=Sum([NET_AMT])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter4: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS_AMT])`
  - GroupFooter4: `=Sum([NET_AMT])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([CHARGE])`
  - GroupFooter5: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS_AMT])`
  - GroupFooter5: `=Sum([NET_AMT])`
  - GroupFooter5: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter5: `=Sum([Firm_Order])`
  - GroupFooter5: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_AMT])`
  - GroupFooter3: `=Sum([NET_AMT])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_AMT])`
  - ReportFooter: `=Sum([NET_AMT])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`

## Report: NMIS_PRODUCT_Projected_Charges_by_Unit
- **Caption:** NMIS Product Projected Charges
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Unit
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** CLIENT_ASSOCIATE, No_STD_Chg, Reporting_Parent, [CHARGE_PER_AMT]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupFooter2: `=[Age_Class_Prod_Category_Class] & " " & [No_STD_Chg]`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_AMT])`
  - GroupFooter2: `=Sum([NET_AMT])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter4: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS_AMT])`
  - GroupFooter4: `=Sum([NET_AMT])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([CHARGE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_AMT])`
  - ReportFooter: `=Sum([NET_AMT])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`

## Report: NMIS_PRODUCT_Projected_Charges_by_Unit_Category
- **Caption:** NMIS Product Projected Charges
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Unit_Category
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → CATEGORY_CODE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** CATEGORY_CODE, CLIENT_ASSOCIATE, No_STD_Chg, Reporting_Parent, [CHARGE_PER_AMT]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupFooter2: `=[Age_Class_Prod_Category_Class] & " " & [No_STD_Chg]`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_AMT])`
  - GroupFooter2: `=Sum([NET_AMT])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_AMT])`
  - GroupFooter3: `=Sum([NET_AMT])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter4: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS_AMT])`
  - GroupFooter4: `=Sum([NET_AMT])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([CHARGE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_AMT])`
  - ReportFooter: `=Sum([NET_AMT])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`

## Report: NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot
- **Caption:** NMIS Product Projected Charges
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → CATEGORY_CODE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class_Prod_Category_Class, CATEGORY_CODE, CLIENT_ASSOCIATE, Lot_ID_SOURCE, No_STD_Chg, Reporting_Parent, [Actual_Sow_Calculated2], [CHARGE], [CHARGE_PER_AMT], [Firm_Order], [GROSS_AMT], [NET_AMT], [SumOfAMOUNT_REQUESTED]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected Charges for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupHeader5: `=[Age_Class_Prod_Category_Class] & " " & [No_STD_Chg]`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_AMT])`
  - GroupFooter2: `=Sum([NET_AMT])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_AMT])`
  - GroupFooter3: `=Sum([NET_AMT])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter4: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS_AMT])`
  - GroupFooter4: `=Sum([NET_AMT])`
  - GroupFooter4: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([CHARGE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_AMT])`
  - ReportFooter: `=Sum([NET_AMT])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`

## Report: NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot
- **Caption:** NMIS Product Projected Income by Lot
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot
- **Record source:** `NMIS_PRODUCT_Projected_Income_Container_From_Bareoot Query`
- **Grouping:** CATEGORY_CODE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Actual_Sow_Calculated2, AgLotID_Source, Age_Class_Prod_Category_Class, Chg_PSF, GROSS_INV, Inv_Type, Net_Inv, No_STD_Chg, SumOfAMOUNT_REQUESTED, [CHARGE], [CHARGE_PER_AMT], [Firm_Order], [area]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected Container income From Bareroot for FY " & [Forms]![BeginFY_EndFY_Associate_Species_Input]![End_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - Detail: `=[SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot")`
  - GroupFooter2: `=Sum([charge])/Sum([Area])`
  - GroupFooter2: `=Sum([area])`
  - GroupFooter2: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`
  - ReportFooter: `=Sum([charge])/Sum([Area])`
  - ReportFooter: `=Sum([area])`
  - ReportFooter: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`

## Report: NMIS_PRODUCT_Projected_Income
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income
- **Record source:** ``
- **Grouping:** END_FY → CATEGORY_CODE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class_Prod_Category_Class, CATEGORY_CODE, No_STD_Chg, [CHARGE_PER_AMT]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected income for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS_INV])`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter0: `=Sum([CHARGE])`
  - GroupFooter0: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot")`
  - GroupFooter0: `=Sum([charge])/Sum([area])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_INV])`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([charge])/Sum([area])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`
  - ReportFooter: `=Sum([charge])/Sum([area])`

## Report: NMIS_PRODUCT_Projected_Income2
- **Caption:** NMIS Product Projected Income
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income2
- **Record source:** `NMIS_PRODUCT_Projected_Income Query`
- **Grouping:** CATEGORY_CODE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Age_Class_Prod_Category_Class, CATEGORY_CODE, No_STD_Chg, [CHARGE_PER_AMT]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected income for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot")`
  - GroupFooter2: `=Sum([charge])/Sum([area])`
  - GroupFooter2: `=Sum([area])`
  - GroupFooter2: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_INV])`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([charge])/Sum([area])`
  - GroupFooter3: `=Sum([area])`
  - GroupFooter3: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`
  - ReportFooter: `=Sum([charge])/Sum([area])`
  - ReportFooter: `=Sum([area])`
  - ReportFooter: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`

## Report: NMIS_PRODUCT_Projected_Income_by_lot
- **Caption:** NMIS Product Projected Income by Lot
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income_by_lot
- **Record source:** `NMIS_PRODUCT_Projected_Income Query`
- **Grouping:** CATEGORY_CODE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Actual_Sow_Calculated2, AgLotID_Source, Age_Class_Prod_Category_Class, CATEGORY_CODE, Chg_PSF, GROSS_INV, Inv_Type, Net_Inv, No_STD_Chg, SumOfAMOUNT_REQUESTED, [CHARGE], [CHARGE_PER_AMT], [Firm_Order]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected income for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot")`
  - GroupFooter2: `=Sum([charge])/Sum([Area])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_INV])`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([charge])/Sum([Area])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`
  - ReportFooter: `=Sum([charge])/Sum([Area])`

## Report: NMIS_PRODUCT_Projected_Income_by_lot2
- **Caption:** NMIS Product Projected Income by Lot
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › NMIS_PRODUCT_Projected_Income_by_lot2
- **Record source:** `NMIS_PRODUCT_Projected_Income Query`
- **Grouping:** CATEGORY_CODE → Species_Product_Cat_Code → Age_Class → Age_Class_Prod_Category_Class → CHARGE_PER_AMT → NMIS_AGREEMENT_LOTS_ID
- **Fields:** Actual_Sow_Calculated2, AgLotID_Source, Age_Class_Prod_Category_Class, CATEGORY_CODE, Chg_PSF, GROSS_INV, Inv_Type, Net_Inv, No_STD_Chg, SumOfAMOUNT_REQUESTED, [CHARGE], [CHARGE_PER_AMT], [Firm_Order], [area]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Projected income for FY " & [END_FY] & " Based on FY " & [Forms]![Switchboard]![FY_For_Reports] & " Prices"`
  - Detail: `=IIf([Net_Inv]<[TOTAL_REQUEST],"*","")`
  - Detail: `=[SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Count([ACTIVITY_DATE]) & " of " & Count([NMIS_AGREEMENT_LOTS_ID]) & IIf(Count([NMIS_AGREEMENT_LOTS_ID])>1," Lots"," Lot")`
  - GroupFooter2: `=Sum([charge])/Sum([Area])`
  - GroupFooter2: `=Sum([area])`
  - GroupFooter2: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS_INV])`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([Actual_Sow_Calculated2])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([charge])/Sum([Area])`
  - GroupFooter3: `=Sum([area])`
  - GroupFooter3: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([GROSS_INV])`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([Actual_Sow_Calculated2])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([CHARGE])`
  - ReportFooter: `=Sum([charge])/Sum([Area])`
  - ReportFooter: `=Sum([area])`
  - ReportFooter: `=Sum([SumOftotal_Activity_Units]*[sumofPCT_of_Total]/100)`

## Report: NMIS_PRODUCTS_All_Price_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_All_Price_CHECKLIST
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC → NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC → PARENT_ACTIVITY_SORT_ORDER → AC_Sort → ACTIVITY_CODE → PRODUCT_GRADE
- **Subreports:** Report.NMIS_PRODUCT_MGMT_CODES subreport
- **Fields:** ACTIVITY_CODE, CATEGORY_CODE, CHARGE_PER_AMT, CHARGE_PER_UNIT, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC, NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC, NOTE, PARENT_ACTIVITY_CODE, PC_Display, PRODUCT_CLASS, PRODUCT_CLASS_CONDENSED, PRODUCT_GRADE, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCTS_CHECKLIST1
- **Caption:** 
- **Menu path:** Switchboard › xLookup_Tables_Menu › NMIS_PRODUCTS › NMIS_PRODUCTS_CHECKLIST1
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → Begin_Product → End_Product
- **Fields:** Begin_Product, CATEGORY_CODE, CONTAINER_1_FACTOR_CODE, CONTAINER_2_FACTOR_CODE, CONTAINER_3_FACTOR_CODE, End_Product, HARVEST_1_FACTOR_CODE, HARVEST_2_FACTOR_CODE, HARVEST_3_FACTOR_CODE, HARVEST_4_FACTOR_CODE, HISTORICAL, INV_1_FACTOR_CODE, INV_2_FACTOR_CODE, INV_3_FACTOR_CODE, NOTE, Number_of_Species_Products, PRODUCT_CLASS, PRODUCT_CLASS_CONDENSED, PRODUCT_DESC, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCTS_CHECKLIST_current
- **Caption:** NMIS_PRODUCTS
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_PRODUCTS_CHECKLIST_current
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → Begin_Product → End_Product
- **Fields:** Begin_Product, CATEGORY_CODE, End_Product, NOTE, Number_of_Species_Products, PRODUCT_CLASS, PRODUCT_CLASS_CONDENSED, PRODUCT_DESC, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCTS_NO_Charges_CHECKLIST
- **Caption:** Product Charges
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_NO_Charges_CHECKLIST
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC → NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC → PARENT_ACTIVITY_SORT_ORDER → AC_Sort → ACTIVITY_CODE → PRODUCT_GRADE
- **Subreports:** Report.NMIS_PRODUCT_MGMT_CODES subreport
- **Fields:** ACTIVITY_CODE, CATEGORY_CODE, CHARGE_PER_AMT, CHARGE_PER_UNIT, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC, NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC, NOTE, PARENT_ACTIVITY_CODE, PC_Display, PRODUCT_CLASS, PRODUCT_CLASS_CONDENSED, PRODUCT_GRADE, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_Non_Product_Grade_Price_CHECKLIST
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC → NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC → PARENT_ACTIVITY_SORT_ORDER → AC_Sort → ACTIVITY_CODE → PRODUCT_GRADE
- **Subreports:** Report.NMIS_PRODUCT_MGMT_CODES subreport
- **Fields:** ACTIVITY_CODE, CATEGORY_CODE, CHARGE_PER_AMT, CHARGE_PER_UNIT, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC, NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC, NOTE, PARENT_ACTIVITY_CODE, PC_Display, PRODUCT_CLASS, PRODUCT_CLASS_CONDENSED, PRODUCT_GRADE, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_PRODUCT_CHARGES2 › Products_Price_Reports › NMIS_PRODUCTS_With_Product_Grade_Price_CHECKLIST
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC → NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC → PARENT_ACTIVITY_SORT_ORDER → AC_Sort → ACTIVITY_CODE → PRODUCT_GRADE
- **Subreports:** Report.NMIS_PRODUCT_MGMT_CODES subreport
- **Fields:** ACTIVITY_CODE, CATEGORY_CODE, CHARGE_PER_AMT, CHARGE_PER_UNIT, NMIS_PRODUCT_TYPES.PRODUCT_TYPE_DESC, NMIS_PRODUCT_TYPES_1.PRODUCT_TYPE_DESC, NOTE, PARENT_ACTIVITY_CODE, PC_Display, PRODUCT_CLASS, PRODUCT_CLASS_CONDENSED, PRODUCT_GRADE, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Seed_Per_Pound_NEW_Worksheet
- **Caption:** Seed Per Pound Worksheet
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_TESTS_NEW Subform › NMIS_SOURCE_SPP_WORKSHEET_NEW › NMIS_Seed_Per_Pound_NEW_Worksheet
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Lot ID]`
  - PageHeaderSection: `="Test Date: " & [Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Date]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![SAMPLE1]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![SAMPLE2]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![SAMPLE3]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![SAMPLE4]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![SAMPLE5]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![SAMPLE6]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![MAX]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![MIN]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Max_minus_Min]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Total_Weight]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Total_Samples]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Average_100_Seed_Wt]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Ten_PCT_of_Average]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Thousand_Seed_Wt]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Seed_Per_Pound]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Comments]`
  - Detail: `=IIf([Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Max_minus_Min]>[Forms]![NMIS_SOURCE_SPP_WORKSHEET_NEW]![Ten_PCT_of_Average],"*Out of Range*",Null)`

## Report: NMIS_Seed_Per_Pound_Worksheet
- **Caption:** Seed Per Pound Worksheet
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_TESTS Subform › NMIS_SOURCE_SPP_WORKSHEET › NMIS_Seed_Per_Pound_Worksheet
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Lot ID]`
  - PageHeaderSection: `="Test Date: " & [Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Date]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE1]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE2]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE3]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE4]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE5]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE6]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![MAX]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![MIN]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Max_minus_Min]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Total_Weight]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Total_Samples]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Average_Seed_Wt]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Ten_PCT_of_Average]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Thousand_Seed_Wt]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Seed_Per_Pound]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Comments]`
  - Detail: `=IIf([Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Max_minus_Min]>[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Ten_PCT_of_Average],"*Out of Range*",Null)`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE7]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET]![SAMPLE8]`
  - Detail: `="Wt of " & [Forms]![NMIS_SOURCE_SPP_WORKSHEET]![Seeds_Per_Sample] & " Seeds in grams"`

## Report: NMIS_Seed_Per_Pound_Worksheet_ticket
- **Caption:** Seed Per Pound Worksheet
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Ship_Ticket_ID_ACTIVITIES subform › NMIS_SOURCE_TESTS_Ship_Ticket Form › NMIS_SOURCE_SPP_WORKSHEET_ticket › NMIS_Seed_Per_Pound_Worksheet_ticket
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Lot ID]`
  - PageHeaderSection: `="Test Date: " & [Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Date]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE1]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE2]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE3]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE4]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE5]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE6]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![MAX]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![MIN]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Max_minus_Min]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Total_Weight]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Total_Samples]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Average_Seed_Wt]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Ten_PCT_of_Average]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Thousand_Seed_Wt]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Seed_Per_Pound]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Comments]`
  - Detail: `=IIf([Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Max_minus_Min]>[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Ten_PCT_of_Average],"*Out of Range*",Null)`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE7]`
  - Detail: `=[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE8]`
  - Detail: `="Wt of " & [Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Seeds_Per_Sample] & " Seeds in grams"`

## Report: NMIS_SEED_TICKETS_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SEED_TICKETS_CHECKLIST
- **Record source:** ``
- **Grouping:** TICKET_TYPE → TKT_NO
- **Fields:** CHARGE_PER_TICKET, CONTACT_CN, DELIVERED_BY_ASSOCIATE, DELIVERED_TO_ASSOCIATE, DESIRED_DATE, EXT_DOC_REF, FY, GBL_PCT, NOTE, NURSERY_CONTACT_CN, TICKET_TYPE, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SEED_TICKETS_CHECKLIST2
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SEED_TICKETS_CHECKLIST2
- **Record source:** ``
- **Grouping:** TICKET_TYPE → TKT_NO
- **Fields:** CHARGE_PER_TICKET, CLIENT_ASSOCIATE, CONTACT_CN, DELIVERED_BY_ASSOCIATE, DELIVERED_TO_ASSOCIATE, DESIRED_DATE, EXT_DOC_REF, FY, GBL_PCT, LastOfNOTE, NURSERY_CONTACT_CN, SumOfACTIVITY_UNITS, TICKET_TYPE, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Card_2
- **Caption:** NMIS_SOURCE_LOTS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_Card_2
- **Record source:** `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM [NMIS_SOURCE_LastTestData3 Query] RIGHT JOIN (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON [NMIS_SOURCE_LastTestData3 Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![NMIS_SOURCE_LOTS]![CN]));`
- **Grouping:** 
- **Fields:** ID, SOURCE

## Report: NMIS_SOURCE_Card_2_TKT_S
- **Caption:** NMIS_SOURCE_LOTS
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › NMIS_SOURCE_Card_2_TKT_S
- **Record source:** `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM [NMIS_SOURCE_LastTestData3 Query] RIGHT JOIN (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON [NMIS_SOURCE_LastTestData3 Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]));`
- **Grouping:** 
- **Fields:** ID, SOURCE

## Report: NMIS_SOURCE_Card_2_TKT_SW
- **Caption:** NMIS_SOURCE_LOTS
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › NMIS_SOURCE_Card_2_TKT_SW
- **Record source:** `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE FROM [NMIS_SOURCE_LastTestData3 Query] RIGHT JOIN (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON [NMIS_SOURCE_LastTestData3 Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN]));`
- **Grouping:** 
- **Fields:** ID, SOURCE

## Report: NMIS_SOURCE_Card_Activities
- **Caption:** NMIS_SOURCE_LOTS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_Card_Activities
- **Record source:** `SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SOURCE_TESTS.TEST_DATE, NMIS_SOURCE_TESTS.GERM_PCT, NMIS_SOURCE_TESTS.STRATIFIED, NMIS_SOURCE_TESTS.CHECK_STRAT, NMIS_SOURCE_TESTS.GROSS_SOURCE_PER_UNIT, NMIS_SOURCE_TESTS.PURITY_PCT, NMIS_SOURCE_TESTS.MOISTURE_PCT, NMIS_SOURCE_TESTS.CN AS Source_Test_CN, Source_Lot_ID_and_Source_string.ID_SOURCEB, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_TESTS.FILLED_PCT, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, NMIS_SOURCE_TESTS.NOTE FROM (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) LEFT JOIN NMIS_SOURCE_TESTS ON NMIS_SOURCE_LOTS.CN = NMIS_SOURCE_TESTS.SOURCE_LOT_CN WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]));`
- **Grouping:** ID_SOURCEB → TEST_DATE
- **Subreports:** Report.NMIS_ID_ACTIVITIES_source_card
- **Fields:** ID

## Report: NMIS_SOURCE_Card_Front
- **Caption:** NMIS_SOURCE_LOTS
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SOURCE_Card_Front
- **Record source:** ``
- **Grouping:** 
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, CATEGORY_CODE, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID, ID2, MOISTURE_PCT, NOTE, PLNTMSTR_SYMBOL, PURITY_PCT, SOURCE, STORED_FOR_ASSOCIATE
- **Calculated:**
  - PageHeaderSection: `=IIf(Not IsNull([ID2]),"Old ID:",Null)`
  - PageHeaderSection: `=[Forms]![NMIS_SOURCE_LOTS_INPUT]![INSERTED_DATE] & " " & [Forms]![NMIS_SOURCE_LOTS_INPUT]![INSERTED_BY]`
  - PageHeaderSection: `=IIf([Forms]![NMIS_SOURCE_LOTS_INPUT]![Duplicate],"D u p l i c a t e  " & Date())`

## Report: NMIS_SOURCE_Inventory_Client_Checklist_Report
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Client_Checklist_Report
- **Record source:** ``
- **Grouping:** Parent → ASSOCIATE
- **Fields:** ASSOCIATE, Balance
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Inventory_Report
- **Caption:** 
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Report
- **Record source:** ``
- **Grouping:** ASSOCIATE → Diversity → PLNTMSTR_SYMBOL → SOURCE_CODE → ID
- **Fields:** ASSOCIATE, Balance, CATEGORY_CODE, DN, Diversity, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCEB, MOISTURE_PCT, PURITY_PCT, STRATIFIED, TEST_DATE, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `="Total For: " & [Diversity]`
  - GroupFooter2: `=Sum([Balance])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `="Grand Total"`
  - ReportFooter: `=Sum([Balance])`

## Report: NMIS_SOURCE_Inventory_Report_by_species_test_date
- **Caption:** 
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Report_by_species_test_date
- **Record source:** ``
- **Grouping:** PLNTMSTR_SYMBOL → Below_Min_Bal → TEST_DATE → ASSOCIATE → SOURCE_CODE → ID
- **Fields:** Below_Min_Bal, CATEGORY_CODE, DN, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCEB, MOISTURE_PCT, Next_Test, PLNTMSTR_SYMBOL, PURITY_PCT, STRATIFIED, Sum Of ACTIVITY_UNITS, TEST_DATE, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests
- **Caption:** 
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests
- **Record source:** ``
- **Grouping:** PLNTMSTR_SYMBOL → Below_Min_Bal → Last_Test_Date → ASSOCIATE → SOURCE_CODE → ID → TEST_DATE
- **Fields:** Below_Min_Bal, CATEGORY_CODE, DN, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCEB, MOISTURE_PCT, Next_Test, PLNTMSTR_SYMBOL, PURITY_PCT, STRATIFIED, Sum Of ACTIVITY_UNITS, TEST_DATE, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Inventory_wtotals_and_grow_est Report
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_and_grow_est Report
- **Record source:** ``
- **Grouping:** ASSOCIATE → Diversity → PLNTMSTR_SYMBOL → SOURCE_CODE → ID
- **Fields:** ASSOCIATE, Balance, CATEGORY_CODE, DN, Diversity, Est_One_Oh, Est_Two_Oh, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCEB, PLNTMSTR_SYMBOL, PURITY_PCT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Balance])`
  - GroupFooter4: `="Total For: " & [Diversity]`
  - GroupFooter4: `=Sum([Balance])`
  - GroupFooter1: `=Sum([Balance])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207
- **Record source:** ``
- **Grouping:** ASSOCIATE → Diversity → PLNTMSTR_SYMBOL → SOURCE_CODE → ID
- **Fields:** ASSOCIATE, Balance, CATEGORY_CODE, DN, Diversity, Est_Per_Lb, Est_Total, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCEB, PLNTMSTR_SYMBOL, PURITY_PCT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Balance])`
  - GroupFooter4: `="Total For: " & [Diversity]`
  - GroupFooter4: `=Sum([Balance])`
  - GroupFooter1: `=Sum([Balance])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Inventory_wtotals_pn_Report
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_pn_Report
- **Record source:** `NMIS_SOURCE_Inventory_Report_pn_xcel`
- **Grouping:** Species → Species → Seed Zone → Elev → For → DS
- **Fields:** # Stands, Avg # Trees, BREEDING_SUBUNIT, Balance (Lbs), Col Type, Col Yr, Combo, DS, Elev, Fill %, For, Germ%, Lot ID, Moist %, Pur %, SPP, Seed Zone, Species, TREE_NUMBER, Test Date, Test Type
- **Calculated:**
  - GroupFooter0: `=Sum([Balance (Lbs)])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Inventory_wtotals_Report
- **Caption:** 
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_Report
- **Record source:** ``
- **Grouping:** ASSOCIATE → Diversity → PLNTMSTR_SYMBOL → SOURCE_CODE → ID
- **Fields:** ASSOCIATE, Balance, CATEGORY_CODE, DN, Diversity, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCE, MOISTURE_PCT, PLNTMSTR_SYMBOL, PURITY_PCT, STRATIFIED, TEST_DATE, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Balance])`
  - GroupFooter2: `="Total For: " & [Diversity]`
  - GroupFooter2: `=Sum([Balance])`
  - GroupFooter1: `=Sum([Balance])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Inventory_wtotals_wnotes_Report
- **Caption:** 
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_Inventory_wtotals_wnotes_Report
- **Record source:** ``
- **Grouping:** ASSOCIATE → Diversity → PLNTMSTR_SYMBOL → SOURCE_CODE → ID
- **Fields:** ASSOCIATE, Balance, CATEGORY_CODE, DN, Diversity, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCE, MOISTURE_PCT, NOTE, PLNTMSTR_SYMBOL, PURITY_PCT, STRATIFIED, TEST_DATE, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Balance])`
  - GroupFooter2: `="Total For: " & [Diversity]`
  - GroupFooter2: `=Sum([Balance])`
  - GroupFooter1: `=Sum([Balance])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Location_by_ID_Report
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report
- **Record source:** `SELECT NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, [Seed_Balance Query].[Sum Of ACTIVITY_UNITS], NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE FROM (NMIS_LOCATIONS RIGHT JOIN (([Seed_Balance Query] INNER JOIN NMIS_SOURCE_LOTS ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN) LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_SOURCE_LOTS.CN = NMIS_ID_LOCATIONS.SOURCE_LOT_CN) ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN WHERE ((([Seed_Balance Query].[Sum Of ACTIVITY_UNITS])>0.0001) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Species Code (Blank for all)] & "*") AND ((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Client (Blank for all)] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID;`
- **Grouping:** ID
- **Fields:** ID, LOCATION, SOURCE, SUBLOT_NO, Sum Of ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Location_by_ID_Report2
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report2
- **Record source:** ``
- **Grouping:** Reporting_Parent → DIVERSE → Sort → ID → LOCATION
- **Fields:** ID, LOCATION, Reporting_Parent, SUBLOT_NO, Sort, Sum Of ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Location_by_ID_Report3
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report3
- **Record source:** ``
- **Grouping:** Reporting_Parent → DIVERSE → Sort → ID → LOCATION
- **Fields:** ID, LOCATION, Reporting_Parent, SUBLOT_NO, Sort, Sum Of ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Date()`
  - PageHeaderSection: `=[Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Location_by_ID_Report3b
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_ID_Report3b
- **Record source:** ``
- **Grouping:** DIVERSE → Sort → ID → LOCATION
- **Fields:** ID, LOCATION, STORED_FOR_ASSOCIATE, SUBLOT_NO, Sort, Sum Of ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Date()`
  - PageHeaderSection: `=[Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Location_by_Loc_Report
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Location_by_Loc_Report
- **Record source:** `SELECT NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, [Seed_Balance Query].[Sum Of ACTIVITY_UNITS], NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE FROM (NMIS_LOCATIONS RIGHT JOIN (([Seed_Balance Query] INNER JOIN NMIS_SOURCE_LOTS ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN) LEFT JOIN NMIS_ID_LOCATIONS ON NMIS_SOURCE_LOTS.CN = NMIS_ID_LOCATIONS.SOURCE_LOT_CN) ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN WHERE ((([Seed_Balance Query].[Sum Of ACTIVITY_UNITS])>0.0001) AND ((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Species Code (Blank for all)] & "*") AND ((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Client (Blank for all)] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID;`
- **Grouping:** LOCATION → ID → SUBLOT_NO
- **Fields:** ID, LOCATION, SOURCE, SUBLOT_NO, Sum Of ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE
- **Caption:** 
- **Menu path:** Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE
- **Record source:** ``
- **Grouping:** CATEGORY_DESC → CATEGORY_DESC → =[ID_SOURCE2b]
- **Subreports:** Report.NMIS_CLIENT_MGMT_CODES subreport
- **Fields:** CATEGORY_DESC, ID_SOURCE2B, PLNTMSTR_SYMBOL, SOURCE_REQUIRED, STORED_AT_ASSOCIATE
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport
- **Caption:** 
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2 › NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport
- **Record source:** ``
- **Grouping:** SOURCE_TEST_CN → DAYS_STRAT → DAYS
- **Fields:** DAYS, DAYS_STRAT, GERM_PCT

## Report: NMIS_SOURCE_LOTS_REPORT2
- **Caption:** 
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › NMIS_SOURCE_LOTS_REPORT2
- **Record source:** ``
- **Grouping:** ID_SOURCEB → TEST_DATE
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport1, Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport, Report.NMIS_ID_ACTIVITIES_source subreport
- **Fields:** CATEGORY_CODE, CHECK_STRAT, CN, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID, ID_SOURCEB, MOISTURE_PCT, NOTE, PURITY_PCT, STORED_FOR_ASSOCIATE, STRATIFIED, SourceLotNote, Source_Test_CN, TEST_DATE, TYPE_OF_TEST
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_LOTS_REPORT_All_Tests
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT_All_Tests
- **Record source:** ``
- **Grouping:** ID_SOURCEB → TEST_DATE
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport1, Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport, Report.NMIS_ID_ACTIVITIES subreport
- **Fields:** BREEDING_ZONE, CATEGORY_CODE, CHECK_STRAT, CN, COMBINED, FILLED_PCT, GEOGRAPHIC_LOCATION, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID, ID_SOURCEB, MOISTURE_PCT, PURITY_PCT, STORED_FOR_ASSOCIATE, STRATIFIED, Source_Lot_Note, Source_Test_CN, Source_Test_Note, TEST_DATE, TEST_DOCUMENT, TREE_NUMBER, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot
- **Caption:** NMIS_SOURCE_LOTS
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › NMIS_SOURCE_LOTS_REPORT_from_Ag_Lot
- **Record source:** `NMIS_SOURCE_LOTS_GERM_from_Ag_Lot Query`
- **Grouping:** ID_SOURCEB → TEST_DATE
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport1, Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport, Report.NMIS_ID_ACTIVITIES_source subreport
- **Fields:** CATEGORY_CODE, CHECK_STRAT, CN, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID, ID_SOURCEB, MOISTURE_PCT, NOTE, PURITY_PCT, STORED_FOR_ASSOCIATE, STRATIFIED, Source_Test_CN, TEST_DATE
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_LOTS_REPORT_Last_Test_Only
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_LOT_SELECT › NMIS_SOURCE_LOTS_REPORT_Last_Test_Only
- **Record source:** ``
- **Grouping:** ID_SOURCEB → TEST_DATE
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport1, Report.NMIS_SOURCE_LOTS_GERM_TEST_RESULTS Subreport, Report.NMIS_ID_ACTIVITIES subreport
- **Fields:** BREEDING_ZONE, CATEGORY_CODE, CHECK_STRAT, CN, COMBINED, FILLED_PCT, GEOGRAPHIC_LOCATION, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID, ID_SOURCEB, MOISTURE_PCT, PURITY_PCT, STORED_FOR_ASSOCIATE, STRATIFIED, Source_Lot_Note, Source_Test_CN, Source_Test_Note, TEST_DATE, TEST_DOCUMENT, TREE_NUMBER, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Quarterly_Report_by_forest_Checklist
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › Seed_Quarterly_Report › NMIS_SOURCE_Quarterly_Report_by_forest_Checklist
- **Record source:** `Seed_QR_End_Balance_By_Forest Query`
- **Grouping:** Reg → For → Diversity → PLNTMSTR_SYMBOL
- **Fields:** CATEGORY_CODE, Diversity, For
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Reg] & "0000"`
  - PageHeaderSection: `="Balance as of " & [Forms]![Seed_Quarterly_Report]![End_Date]`
  - PageHeaderSection: `=[Forms]![Seed_Quarterly_Report]![Like_Client]`
  - PageHeaderSection: `=[Forms]![Seed_Quarterly_Report]![Category_Code]`
  - GroupHeader2: `=[For] & "00"`
  - GroupHeader1: `=Sum([END_BALANCE])`
  - GroupFooter3: `=[For] & "00"`
  - GroupFooter3: `=Sum([END_BALANCE])`
  - GroupFooter1: `=Sum([END_BALANCE])`
  - GroupFooter1: `=[For] & "0000"`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Quarterly_Report_by_species_Checklist
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › Seed_Quarterly_Report › NMIS_SOURCE_Quarterly_Report_by_species_Checklist
- **Record source:** `Seed_QR_End_Balance_By_Forest Query`
- **Grouping:** Reg → For → Diversity → PLNTMSTR_SYMBOL
- **Fields:** CATEGORY_CODE, Diversity, END_BALANCE, For, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Reg] & "0000"`
  - PageHeaderSection: `="Balance as of " & [Forms]![Seed_Quarterly_Report]![End_Date]`
  - PageHeaderSection: `=[Forms]![Seed_Quarterly_Report]![Like_Client]`
  - PageHeaderSection: `=[Forms]![Seed_Quarterly_Report]![Category_Code]`
  - GroupHeader2: `=[For] & "00"`
  - GroupFooter2: `="Total For: " & [Diversity]`
  - GroupFooter2: `=Sum([END_BALANCE])`
  - GroupFooter3: `=[For] & "00"`
  - GroupFooter3: `=Sum([END_BALANCE])`
  - GroupFooter1: `=Sum([END_BALANCE])`
  - GroupFooter1: `=[For] & "0000"`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_XS_SP_Inventory_wtotals_Report
- **Caption:** 
- **Menu path:** Switchboard › Seed_Inventory_Report › NMIS_SOURCE_XS_SP_Inventory_wtotals_Report
- **Record source:** ``
- **Grouping:** Diversity → PLNTMSTR_SYMBOL → ASSOCIATE → SOURCE_CODE → ID
- **Fields:** CATEGORY_CODE, DN, Diversity, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCE, MOISTURE_PCT, PLNTMSTR_SYMBOL, PURITY_PCT, STRATIFIED, Sum Of ACTIVITY_UNITS, TEST_DATE, TYPE_OF_TEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([Sum Of ACTIVITY_UNITS])`
  - GroupFooter2: `="Total For: " & [Diversity]`
  - GroupFooter2: `=Sum([Sum Of ACTIVITY_UNITS])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report
- **Record source:** ``
- **Grouping:** cy → For → ID
- **Fields:** For, ID, MaxOfACTIVITY_DATE, SOURCE, Sum Of ACTIVITY_UNITS, cy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Source Lot Zero Balance Report for FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SOURCE_Zero_Balance_Report
- **Caption:** NMIS_SOURCE_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › NMIS_SOURCE_Zero_Balance_Report
- **Record source:** ``
- **Grouping:** ID
- **Fields:** ID, MaxOfACTIVITY_DATE, SOURCE, Sum Of ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Source Lot Zero Balance Report for FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_Sow_Order_Checklist
- **Caption:** AGREEMENT_LOT_SOWING_ORDER_Group_Summary
- **Menu path:** Switchboard › NMIS_SOWING_ORDER › NMIS_Sow_Order_Checklist
- **Record source:** `SELECT NMIS_SOWING_ORDER.* FROM NMIS_SOWING_ORDER WHERE (((NMIS_SOWING_ORDER.GROUP) Like nz([Forms]![NMIS_SOWING_ORDER]![Like_Group],"*"))) ORDER BY NMIS_SOWING_ORDER.GROUP, NMIS_SOWING_ORDER.SOWING_ORDER_CODE;`
- **Grouping:** Group → SOWING_ORDER_CODE → SOWING_ORDER
- **Fields:** DESCRIPTION, Group, SOWING_ORDER, SOWING_ORDER_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`

## Report: NMIS_SPECIES_CHECKLIST
- **Caption:** NMIS_SPECIES_CHECKLIST
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_SPECIES › NMIS_SPECIES_CHECKLIST
- **Record source:** `SELECT NMIS_SPECIES.*, NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY.CountOfID AS No_Of_Lots FROM NMIS_SPECIES LEFT JOIN NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY.PLNTMSTR_SYMBOL WHERE (((NMIS_SPECIES.HIDE) Like IIf(Left$(Nz([Show Hide Lots (Y/blank for no)]," "),1)="Y","*",0)) AND ((NMIS_SPECIES.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SPECIES]![Like_Plntmstr_Symbol] & "*"));`
- **Grouping:** GENUS → SPECIES → VARIETY
- **Fields:** DIVERSE, GENUS, HIDE, No_Of_Lots, PLNTMSTR_SYMBOL, SPECIES, SPECIES_ABBREVIATION, SPECIES_GROUP, SPECIES_NO, SPP, SUBSP, VAR, VARIETY, VERNACULAR, XGENUS
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPECIES_CHECKLIST2
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_SPECIES_CHECKLIST2
- **Record source:** ``
- **Grouping:** TorN → GENUS → SPECIES → VARIETY
- **Fields:** GENUS, HIDE, No_Of_Lots, PLNTMSTR_SYMBOL, SPECIES, SPECIES_ABBREVIATION, SPECIES_GROUP, SPECIES_NO, SPP, SUBSP, TorN, VAR, VARIETY, VERNACULAR, XGENUS
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPECIES_CHECKLIST_Not_Hidden
- **Caption:** NMIS_SPECIES_CHECKLIST
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_SPECIES_CHECKLIST_Not_Hidden
- **Record source:** `SELECT NMIS_SPECIES.*, NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY.CountOfID AS No_Of_Lots FROM NMIS_SPECIES LEFT JOIN NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS_PLNTMSTR_SYMBOL_SUMMARY.PLNTMSTR_SYMBOL WHERE (((NMIS_SPECIES.HIDE)=False));`
- **Grouping:** GENUS → SPECIES → VARIETY
- **Fields:** DIVERSE, GENUS, HIDE, No_Of_Lots, PLNTMSTR_SYMBOL, SPECIES, SPECIES_ABBREVIATION, SPECIES_GROUP, SPECIES_NO, SPP, SUBSP, VAR, VARIETY, VERNACULAR, XGENUS
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPECIES_Prices
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › NMIS_SPECIES_Prices
- **Record source:** ``
- **Grouping:** GENUS → SPECIES → VARIETY
- **Fields:** AMOUNT, BASE_AMOUNT, DIVERSE, HIDE, No_Of_Lots, PLNTMSTR_SYMBOL, PRICE_RATE_CODE, SPECIES_ABBREVIATION, SPECIES_GROUP, SPECIES_NO, Scientific_Name, VERNACULAR
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Seed Prices Checklist FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=[amount]*[base_amount]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPECIES_PRODUCTS_AND_CYCLES
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → SORT → DIV → PLNTMSTR_SYMBOL → SPEC_MIN → SPEC_MAX → CALIPER_MIN → CN → NUMBER_OF_FY_MIN
- **Subreports:** Report.NMIS_AGREEMENT_LOTS subreport
- **Fields:** BEGIN_PRODUCT_TYPE, CATEGORY_CODE, CELLS_PER_CONTAINER, CURRENT_PRODUCT_CN, CYCLE_REQUIRES_PROCESSING, END_PRODUCT_TYPE, INV_1_FACTOR_CODE, INV_2_FACTOR_CODE, INV_3_FACTOR_CODE, INV_FACTOR_1, INV_FACTOR_2, INV_FACTOR_3, INV_MAX_CV, INV_SIZE_SAMPLE, INV_TARGET_PCT, NOTE, NUMBER_OF_FY_MAX, NUMBER_OF_FY_MIN, PRODUCT_CLASS, PRODUCT_DESC, Season_Begin_End, Species_Products_String, TOTAL_NUMBER_OF_FY, UNIT, UNIT_CODE, sp_w_al
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader3: `=IIf([DIV]="U","No Species Products",IIf([DIV]="D","Non-Traditonal Species","Traditional Species"))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → SORT → DIV → PLNTMSTR_SYMBOL → SPEC_MIN → SPEC_MAX → CALIPER_MIN → CN → NUMBER_OF_FY_MIN
- **Subreports:** Report.NMIS_AGREEMENT_LOTS_current subreport
- **Fields:** BEGIN_PRODUCT_TYPE, CATEGORY_CODE, CELLS_PER_CONTAINER, CN, CURRENT_PRODUCT_CN, CYCLE_REQUIRES_PROCESSING, END_PRODUCT_TYPE, INV_1_FACTOR_CODE, INV_2_FACTOR_CODE, INV_3_FACTOR_CODE, INV_FACTOR_1, INV_FACTOR_2, INV_FACTOR_3, INV_MAX_CV, INV_SIZE_SAMPLE, INV_TARGET_PCT, NOTE, NUMBER_OF_FY_MAX, NUMBER_OF_FY_MIN, PRODUCT_CLASS, PRODUCT_DESC, Season_Begin_End, Species_Products_String, TOTAL_NUMBER_OF_FY, UNIT, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader3: `=IIf([DIV]="U","No Species Products",IIf([DIV]="D","Non-Traditonal Species","Traditional Species"))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPECIES_PRODUCTS_AND_FACTORS
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_AND_FACTORS
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → PRODUCT_DESC → SORT → DIV → PLNTMSTR_SYMBOL_SPEC_MIN → SPEC_MAX → CALIPER_MIN → CN → LIKE_ASSOCIATE → GERM_MIN
- **Subreports:** Report.NMIS_AGREEMENT_LOTS subreport2
- **Fields:** BEGIN_PRODUCT_TYPE, CATEGORY_CODE, CELLS_PER_CONTAINER, CONTAINER_1_FACTOR_CODE, CONTAINER_2_FACTOR_CODE, CONTAINER_3_FACTOR_CODE, CONTAINER_FACTOR, CONTAINER_FACTOR_1, CONTAINER_FACTOR_2, CONTAINER_FACTOR_3, DESIRED_DENSITY, ELEVATION_MAX, ELEVATION_MIN, END_PRODUCT_TYPE, GERM_MAX, GERM_MIN, HARVEST_1_FACTOR_CODE, HARVEST_2_FACTOR_CODE, HARVEST_3_FACTOR_CODE, HARVEST_4_FACTOR_CODE, HARVEST_FACTOR, HARVEST_FACTOR_1, HARVEST_FACTOR_2, HARVEST_FACTOR_3, HARVEST_FACTOR_4, LIKE_ASSOCIATE, NOTE, PLNTMSTR_SYMBOL, PRODUCT_CLASS, PRODUCT_DESC, Season_Begin_End, Species_Products_String, UNIT_CODE, sp_w_al
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=IIf([DIV]="U","No Species Products",IIf([DIV]="D","Non-Traditonal Species","Traditional Species"))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPECIES_PRODUCTS_CHECKLIST
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Maintenance Subform › Species_Products_Reports › NMIS_SPECIES_PRODUCTS_CHECKLIST
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → SORT → DIV → PLNTMSTR_SYMBOL → AGE_STRING → SPEC_MIN → SPEC_MAX → CALIPER_MIN → SPECIES_PRODUCT_DESC → NMIS_SPECIES_PRODUCTS_Index
- **Subreports:** Report.NMIS_AGREEMENT_LOTS subreport
- **Fields:** BEGIN_PRODUCT_TYPE, BEGIN_SEASON_CODE, CATEGORY_CODE, END_PRODUCT_TYPE, END_SEASON_CODE, NMIS_PRODUCTS_CN, NOTE, PLNTMSTR_SYMBOL, PRODUCT_CLASS, PRODUCT_CLASS_CONDENSED, PRODUCT_DESC, SIZE_SPEC_STRING, SIZE_SPEC_STRING_ALT, SOWING_GROUP, SPECIES_PRODUCT_DESC, TOTAL_NUMBER_OF_FY, TRANSPLANT_GROUP, UNIT_CODE, sp_w_al
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=IIf([DIV]="U","No Species Products",IIf([DIV]="D","Non-Traditonal Species","Traditional Species"))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPLUS_LIST
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_SPLUS_LIST
- **Record source:** ``
- **Grouping:** REGFOR → SPECIES_AGE → ID
- **Fields:** ELEV, ID, ID_SOURCE2, REGFOR, SPECIES_AGE, SURPLUS_AMT, ZONE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: NMIS_SPLUS_LIST_FS
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_SPLUS_LIST_FS
- **Record source:** ``
- **Grouping:** REGFOR → SPECIES_AGE → SOURCE_CODE → ID
- **Fields:** ELEV, ID, ID_SOURCE2, REGFOR, SPECIES_AGE, SURPLUS_AMT, ZONE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupFooter0: `=Sum([SURPLUS_AMT])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`
  - ReportFooter: `=Sum([SURPLUS_AMT])`

## Report: NMIS_TRANSACTIONS subreport
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_ID_ACTIVITY_TRANSACTIONS_FORM › NMIS_AGREEMENT_LOT_SELECT › NMIS_AGREEMENT_Lots_Activities_and_Transactions › NMIS_TRANSACTIONS subreport
- **Record source:** ``
- **Grouping:** LOCATION → SUBLOT_NO → NUMBER_OF_ACTIVITY_UNITS
- **Fields:** AMT_PER_UNIT, AMT_PER_UNIT_INV_GROSS, CHARGE_PER_AMT_OVERRIDE, CHARGE_PER_UNIT_OVERRIDE, CONTRACT_ITEM, ID_LOCATION_CN, NUMBER_OF_ACTIVITY_UNITS

## Report: NMIS_TRANSACTIONS_destroy_check subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Destroy_act_tot_vs_trans_total_checklist › NMIS_TRANSACTIONS_destroy_check subreport
- **Record source:** ``
- **Grouping:** LOCATION → SUBLOT_NO → NUMBER_OF_ACTIVITY_UNITS
- **Fields:** AMT_PER_UNIT, AMT_PER_UNIT_INV_GROSS, CHARGE_PER_AMT_OVERRIDE, CHARGE_PER_UNIT_OVERRIDE, CONTRACT_ITEM, ID_LOCATION_CN, NUMBER_OF_ACTIVITY_UNITS

## Report: NMIS_TRANSACTIONS_packcheck subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Pack_act_tot_vs_trans_total_checklist › NMIS_TRANSACTIONS_packcheck subreport
- **Record source:** ``
- **Grouping:** LOCATION → SUBLOT_NO → NUMBER_OF_ACTIVITY_UNITS
- **Fields:** AMT_PER_UNIT, AMT_PER_UNIT_INV_GROSS, CHARGE_PER_AMT_OVERRIDE, CHARGE_PER_UNIT_OVERRIDE, CONTRACT_ITEM, ID_LOCATION_CN, NUMBER_OF_ACTIVITY_UNITS

## Report: NMIS_TRANSACTIONS_SowXplt_check subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › SowTrans_act_tot_vs_trans_total_checklist › NMIS_TRANSACTIONS_SowXplt_check subreport
- **Record source:** ``
- **Grouping:** LOCATION → SUBLOT_NO → NUMBER_OF_ACTIVITY_UNITS
- **Fields:** AMT_PER_UNIT, AMT_PER_UNIT_INV_GROSS, CHARGE_PER_AMT_OVERRIDE, CHARGE_PER_UNIT_OVERRIDE, CONTRACT_ITEM, ID_LOCATION_CN, NUMBER_OF_ACTIVITY_UNITS

## Report: ORDER_CONFIRM_MC
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_CONFIRM_MT › ORDER_CONFIRM_MC
- **Record source:** ``
- **Grouping:** O_AGR_ID → MGMT_CODE
- **Fields:** CLIENT_ASSOCIATE, MGMT_CODE, MGMT_CODE_PCT, O_AGR_ID

## Report: ORDER_CONFIRM_MT
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_CONFIRM_MT
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → TOTAL_DESC → Species_and_ReqSizeSpecString → DESCRIPTION → ID → ACTIVITY_CODE → ORDERS_CN
- **Subreports:** Report.ORDER_CONFIRM_MC
- **Fields:** ACTIVITY_CODE, ACTIVITY_NAME_Long, AGREEMENT_LOT_ID_AND_SOURCE, ALL, AMOUNT_REQUESTED, ASSOCIATE_NAME, BAP, CALIPER_MIN, CLIENT_ASSOCIATE, CLIENT_NOTE, CONTRACT_ITEM, DESIRED_DATE, Entered, FISCAL_YEAR, Modified, NURSERY_NOTE, ORDERS_CN, ORDER_AMT, ORDER_ID, OVERRUN_AMT, O_GROSS, O_NET, PC, ROOT_PRUNE_TARGET, SC, SPEC_MAX, SPEC_MIN, Species_and_ReqSizeSpecString, TOTAL_DESC
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Contact_CN]`
  - PageHeaderSection: `=IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Has_Desired_Date],"Selected for: Has Desired Ship Date")`
  - PageHeaderSection: `=IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol]<>"*","Selected for: " & [Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol])`
  - PageHeaderSection: `=IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![NoFreeze],"Selected for: No Freeze")`
  - PageHeaderSection: `=[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Product_Group]`
  - Detail: `=Round([ORDER_AMT]+nz([OVERRUN_AMT],0),3)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: ORDER_CONFIRM_NURSERY
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDER_COMFIRMATION_FORM › ORDER_CONFIRM_NURSERY
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → ID → ACTIVITY_CODE → ORDERS_CN
- **Subreports:** Report.ORDER_CONFIRM_MC
- **Fields:** ACTIVITY_CODE, ACTIVITY_NAME_L, AGREEMENT_LOT_ID_AND_SOURCE, ALL, AMOUNT_REQUESTED, ASSOCIATE_NAME, BAP, CALIPER_MIN, CLIENT_ASSOCIATE, CLIENT_NOTE, CONTRACT_ITEM, DESIRED_DATE, Entered, FISCAL_YEAR, Modified, NURSERY_NOTE, ORDERS_CN, ORDER_AMT, ORDER_ID, OVERRUN_AMT, O_GROSS, O_NET, PC, ROOT_PRUNE_TARGET, SC, SPEC_MAX, SPEC_MIN
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Contact_CN]`
  - PageHeaderSection: `=IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Has_Desired_Date],"Selected for: Has Desired Ship Date")`
  - PageHeaderSection: `=IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol]<>"*","Selected for: " & [Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Plntmstr_Symbol])`
  - PageHeaderSection: `=IIf([Forms]![NMIS_ORDER_COMFIRMATION_FORM]![NoFreeze],"Selected for: No Freeze")`
  - PageHeaderSection: `=[Forms]![NMIS_ORDER_COMFIRMATION_FORM]![Product_Group]`
  - Detail: `=Round([ORDER_AMT]+nz([OVERRUN_AMT],0),3)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: ORDER_FORM
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › Forms_Open Module.Open_Propagule_Orders_New_Form_From_Switchboard › NMIS_PROCESSING_ORDERS_INPUT_Propagule › ORDER_FORM
- **Record source:** `ORDER_FORM Query`
- **Grouping:** AGREEMENT_LOT_CN → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.ORDER_FORM_LEN Subrep, Report.ORDER_FORM_LIFT Subrep, Report.ORDER_FORM_SPECS Subrep, Report.ORDER_FORM_QI Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, FISCAL_YEAR, ID, LOT_SURPLUS, NOTE, ORDER_CN, PRODUCT_DESCRIPTION, SOURCE_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: ORDER_FORM mt_040207
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › ORDER_FORM mt_040207
- **Record source:** ``
- **Grouping:** ID → ORDER_CN → CLIENT_ASSOCIATE
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt_040207 Subrep, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered_String, FISCAL_YEAR, ID, LOT_SURPLUS, Modified_String, ORDER_CN, SOURCE_CODE, Species_Product_Description, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - PageFooterSection: `="Order Printed: " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageFooterSection: `=[Entered_String] & " " & [Modified_String]`

## Report: ORDER_FORM mt_040207_edit
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM mt_040207_edit
- **Record source:** ``
- **Grouping:** ID → ORDER_CN → CLIENT_ASSOCIATE
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt_040207 Subrep, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered_String, FISCAL_YEAR, ID, LOT_SURPLUS, Modified_String, ORDER_CN, SOURCE_CODE, Species_Product_Description, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - PageFooterSection: `="Order Printed: " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageFooterSection: `=[Entered_String] & " " & [Modified_String]`

## Report: ORDER_FORM mt_040207_input
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input
- **Record source:** ``
- **Grouping:** ID → ORDER_CN → CLIENT_ASSOCIATE
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt_040207 Subrep, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered_String, FISCAL_YEAR, ID, LOT_SURPLUS, Modified_String, ORDER_CN, SOURCE_CODE, Species_Product_Description, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - PageFooterSection: `="Order Printed: " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageFooterSection: `=[Entered_String] & " " & [Modified_String]`

## Report: ORDER_FORM mt_050357
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › ORDER_FORM mt_050357
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt Subrep_050357, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered String, FISCAL_YEAR, ID, LOT_SURPLUS, ORDER_CN, SOURCE_CODE, Species_Product_Description, Sublot, bap
- **Calculated:**
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***"))`
  - PageFooterSection: `="Order Printed " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`

## Report: ORDER_FORM mt_050357_edit
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM mt_050357_edit
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt Subrep_050357, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered String, FISCAL_YEAR, ID, LOT_SURPLUS, ORDER_CN, SOURCE_CODE, Species_Product_Description, Sublot, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & "/" & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - Detail: `=IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***"))`
  - PageFooterSection: `="Order Printed " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`

## Report: ORDER_FORM mt_050357_input
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_050357_input
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt Subrep_050357, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered String, FISCAL_YEAR, ID, LOT_SURPLUS, ORDER_CN, SOURCE_CODE, Species_Product_Description, Sublot, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - Detail: `=IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***"))`
  - PageFooterSection: `="Order Printed " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`

## Report: ORDER_FORM_BY_LIFT_DATE
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE
- **Record source:** `ORDER_FORM_BY_LD Query`
- **Grouping:** AGREEMENT_LOT_CN → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.ORDER_FORM_LEN Subrep, Report.ORDER_FORM_LIFT Subrep, Report.ORDER_FORM_SPECS Subrep, Report.ORDER_FORM_QI Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, FISCAL_YEAR, ID, LOT_SURPLUS, ORDER_CN, PRODUCT_DESCRIPTION, SOURCE_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Order_Form_Checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › Order_Form_Checklist
- **Record source:** ``
- **Grouping:** Cost_Center → Species_Product_Description → ID → ORDER_CN
- **Fields:** ACTIVITY_CODE, All_Overrun, CLIENT_ASSOCIATE, CONTRACT_ITEM, Cost_Center, DESIRED_DATE, ID, Order_ID, Order_Size_Spec_W_Prune, SERVICES_STRING, SOURCE_CODE, Species_Product_Description, Status, [Total_Order]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([Forms]![Order_Pack_Form]![Has_Desired_Date],"Selected for: Has Desired Ship Date")`
  - PageFooterSection: `=Now()`

## Report: ORDER_FORM_CNCTS mt Subrep
- **Caption:** ORDER_FORM_CNCTS Query
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_CNCTS mt Subrep
- **Record source:** `**ORDER_FORM_CNCTS`
- **Grouping:** ORDERS_CN → Contact_Type → PHONE_AND_TYPE
- **Fields:** Contact, Contact_Type, ORDERS_CN, PHONE_AND_TYPE

## Report: ORDER_FORM_CNCTS Subrep
- **Caption:** ORDER_FORM_CNCTS Query
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_CNCTS Subrep
- **Record source:** `ORDER_FORM_CNCTS Query`
- **Grouping:** 
- **Fields:** ORDERS_CN, PRIMARY, P_PHONE, SECONDARY, S_PHONE

## Report: ORDER_FORM_FLD_CNTNR mt subrep
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LIFT mt Subrep › ORDER_FORM_FLD_CNTNR mt subrep
- **Record source:** `SELECT [**Lot_Lift_CNTNR].*, Round([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/1000,2) AS Gross, Round([NO_FLD_CONT]*[AMT_PER_UNIT]/1000,2) AS Net FROM [**Lot_Lift_CNTNR];`
- **Grouping:** 
- **Fields:** AMT_PER_UNIT, AMT_PER_UNIT_INV_GROSS, C_CN, FLD_CONT, Gross, NO_FLD_CONT, Net

## Report: ORDER_FORM_FLD_CNTNR subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LIFT Subrep › ORDER_FORM_FLD_CNTNR subrep
- **Record source:** `LOT_LIFT_CNTNR Query`
- **Grouping:** 
- **Fields:** C_CN, FLD_CONT, NO_FLD_CONT

## Report: ORDER_FORM_FLD_CNTNR_Totals  mt subrep
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LIFT mt Subrep › ORDER_FORM_FLD_CNTNR_Totals  mt subrep
- **Record source:** `**Lot_Lift_CNTNR`
- **Grouping:** 
- **Fields:** C_CN
- **Calculated:**
  - ReportFooter: `=Sum([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/[UNIT_MULTIPLIER])`
  - ReportFooter: `=Sum([NO_FLD_CONT]*[AMT_PER_UNIT]/[UNIT_MULTIPLIER])`
  - ReportFooter: `=Sum([NO_FLD_CONT])`

## Report: order_form_from_order_edit mt
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › order_form_from_order_edit mt
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt Subrep, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered_String, FISCAL_YEAR, ID, LOT_SURPLUS, Modified_String, ORDER_CN, SOURCE_CODE, Species_Product_Description, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - GroupFooter0: `=IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***"))`
  - PageFooterSection: `="Order Printed: " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageFooterSection: `=[Entered_String] & " " & [Modified_String]`

## Report: order_form_from_order_input mt
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › order_form_from_order_input mt
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt Subrep, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered_String, FISCAL_YEAR, ID, LOT_SURPLUS, Modified_String, ORDER_CN, SOURCE_CODE, Species_Product_Description, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - GroupFooter0: `=IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***",IIf([ACTIVITY_CODE]="XSSRPL","***EXESS/SURPLUS -- DO NOT PROCESS***"))`
  - PageFooterSection: `="Order Printed: " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageFooterSection: `=[Entered_String] & " " & [Modified_String]`

## Report: order_form_from_Order_Print mt
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › order_form_from_Order_Print mt
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.NMIS_AGREEMENTS subreport, Report.ORDER_FORM_LEN mt Subrep, Report.ORDER_FORM_LIFT mt Subrep, Report.ORDER_FORM_SPECS mt Subrep, Report.ORDER_FORM_QI mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, CLI_ORDER, Entered_String, FISCAL_YEAR, ID, LOT_SURPLUS, Modified_String, ORDER_CN, SOURCE_CODE, Species_Product_Description, bap
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageHeaderSection: `=[CountOfAGREEMENT_LOT_CN] & IIf([CountOfAGREEMENT_LOT_CN]>1," Orders for "," Order for ") & [total_Order] & [ALL_OVERRUN] & "M Total"`
  - GroupFooter0: `=IIf([ACTIVITY_CODE]="HOLD","***HOLD -- DO NOT PROCESS***")`
  - PageFooterSection: `="Order Printed: " & Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageFooterSection: `=[Entered_String] & " " & [Modified_String]`

## Report: ORDER_FORM_INV mt Subrep
- **Caption:** ORDER_FORM_STATS Subrep
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LEN mt Subrep › ORDER_FORM_INV mt Subrep
- **Record source:** ``
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, Date_Note, GROSS_INV, Gross_Density_per_Container, NET_INV, SIZE

## Report: ORDER_FORM_INV Subrep
- **Caption:** ORDER_FORM_STATS Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LEN Subrep › ORDER_FORM_INV Subrep
- **Record source:** `NMIS_LOT_INVENTORY Query`
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, GROSS_INV, NET_DENSITY, NET_INV, SIZE

## Report: ORDER_FORM_LEN mt Subrep
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LEN mt Subrep
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.ORDER_FORM_INV mt Subrep, Report.NMIS_PRODUCT_INVENTORY_daily_checklist_Location_Subreport
- **Fields:** AGREEMENT_LOT_CN, Lot_Total_Ft, Unit

## Report: ORDER_FORM_LEN Subrep
- **Caption:** ORDER_FORM_STATS Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LEN Subrep
- **Record source:** `ORDER_FORM_LOT_LEN Query`
- **Grouping:** 
- **Subreports:** Report.ORDER_FORM_LOC Subrep, Report.ORDER_FORM_INV Subrep
- **Fields:** AGREEMENT_LOT_CN, Lot_Total_Ft

## Report: ORDER_FORM_LIFT mt Subrep
- **Caption:** ORDER_FORM Subrep
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_LIFT mt Subrep
- **Record source:** `**Lot_Lift_Ft`
- **Grouping:** ACTIVITY_DATE
- **Subreports:** Report.ORDER_FORM_FLD_CNTNR mt subrep, Report.ORDER_FORM_FLD_CNTNR_Totals  mt subrep
- **Fields:** ACTIVITY_DATE, AGREEMENT_LOT_CN, C_CN, FEET
- **Calculated:**
  - ReportFooter: `=Sum([FEET])`

## Report: ORDER_FORM_LIFT Subrep
- **Caption:** ORDER_FORM Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LIFT Subrep
- **Record source:** `LOT_LIFT_FT Query`
- **Grouping:** ACTIVITY_DATE
- **Subreports:** Report.ORDER_FORM_FLD_CNTNR subrep
- **Fields:** ACTIVITY_DATE, AGREEMENT_LOT_CN, C_CN, FEET

## Report: ORDER_FORM_LOC Subrep
- **Caption:** ORDER_FORM_STATS Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_LEN Subrep › ORDER_FORM_LOC Subrep
- **Record source:** `ORDER_FORM_LOC Query`
- **Grouping:** 
- **Fields:** CN, LOT_LOC

## Report: ORDER_FORM_MCODES mt Subrep
- **Caption:** ORDER_FORM_MCODES Subrep
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_MCODES mt Subrep
- **Record source:** `**Order_Form_MCODES`
- **Grouping:** MGMT_CODE
- **Fields:** Client_JC, MGMT_CODE_PCT, ORDER_CN

## Report: ORDER_FORM_MCODES Subrep
- **Caption:** ORDER_FORM_MCODES Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_MCODES Subrep
- **Record source:** `ORDER_FORM_MCODES Query`
- **Grouping:** MGMT_CODE
- **Fields:** MGMT_CODE, MGMT_CODE_PCT, ORDER_CN

## Report: ORDER_FORM_PACK mt subrep
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › order_form_from_order_input mt › ORDER_FORM_SPECS mt Subrep › ORDER_FORM_PACK mt subrep
- **Record source:** `**Order_Form_Pkc`
- **Grouping:** 
- **Subreports:** Report.ORDER_FORM_PACK1_mt subrep
- **Fields:** FLD_CONT, NO_FLD_CONTS, PACK_CN

## Report: ORDER_FORM_PACK mt subrep_040207
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_PACK mt subrep_040207
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.ORDER_FORM_PACK1_MT subrep_040207
- **Fields:** FLD_CONT, NO_FLD_CONTS, PACK_CN

## Report: ORDER_FORM_PACK mt subrep_050357
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_050357_input › ORDER_FORM_SPECS mt Subrep_050357 › ORDER_FORM_PACK mt subrep_050357
- **Record source:** `**Order_Form_Pkc`
- **Grouping:** 
- **Subreports:** Report.ORDER_FORM_PACK1_mt subrep_050357
- **Fields:** FLD_CONT, NO_FLD_CONTS, PACK_CN

## Report: ORDER_FORM_PACK subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_PACK subrep
- **Record source:** `ORDER_FORM_PKC Query`
- **Grouping:** 
- **Subreports:** Report.ORDER_FORM_PACK1 subrep
- **Fields:** FLD_CONT, NO_FLD_CONTS, PACK_CN

## Report: ORDER_FORM_PACK1 subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep › ORDER_FORM_PACK subrep › ORDER_FORM_PACK1 subrep
- **Record source:** `ORDER_FORM_PKT Query`
- **Grouping:** PACK_CN → NO_OF_CONT
- **Fields:** ACTIVITY_DATE, NO_OF_CONT, PACK_CN, TOTAL_TREES, TREES_PER_CONT

## Report: ORDER_FORM_PACK1_MT subrep_040207
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep › ORDER_FORM_PACK mt subrep_040207 › ORDER_FORM_PACK1_MT subrep_040207
- **Record source:** ``
- **Grouping:** PACK_CN → NO_OF_CONT
- **Fields:** ACTIVITY_DATE, NO_OF_CONT, PACK_CN, TOTAL_TREES, TREES_PER_CONT

## Report: ORDER_FORM_PROPAGULE mt
- **Caption:** NMIS_ORDER_FORM_PROPAGULE
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM_PROPAGULE mt
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE → ORDER_CN
- **Subreports:** Report.ORDER_FORM_SPECS_PROPAGULE mt Subrep
- **Fields:** AGREEMENT_LOT_CN, AMOUNT_REQUESTED, CLIENT, CLIENT_ASSOCIATE, FISCAL_YEAR, ID, No_Harvest, ORDER_CN, PROD_DESC, SOURCE_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - Detail: `=Left$([ORDER_CN],Len([ORDER_CN])-7)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`

## Report: ORDER_FORM_QI mt Subrep
- **Caption:** ORDER_FORM_QI Subrep
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_QI mt Subrep
- **Record source:** `**Order_Form_QI`
- **Grouping:** 
- **Fields:** FLR_SMPL, ORDER_CN, TBL_SMPL

## Report: ORDER_FORM_QI Subrep
- **Caption:** ORDER_FORM_QI Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_QI Subrep
- **Record source:** `ORDER_FORM_QI Query`
- **Grouping:** 
- **Fields:** FLR_SMPL, ORDER_CN, TBL_SMPL

## Report: ORDER_FORM_SPECS mt Subrep
- **Caption:** ORDER_FORM_SPECS Subrep
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › order_form_from_order_input mt › ORDER_FORM_SPECS mt Subrep
- **Record source:** `SELECT [**Order_Form_Specs].* FROM [**Order_Form_Specs];`
- **Grouping:** CN
- **Subreports:** Report.ORDER_FORM_MCODES mt Subrep, Report.ORDER_FORM_CNCTS mt Subrep, Report.ORDER_FORM_PACK mt subrep
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CALIPER_MIN, CLIENT_ASSOCIATE, CN, CONTRACT_ITEM, LastOfCLIENT_NOTE, LastOfNURSERY_NOTE, ORDER_AMT, ORUN_AMT, OVERRUN_ALL, PACKED, PACK_ID, ROOT_PRUNE_MIN, ROOT_PRUNE_TARGET, SERVICES_STRING, SPEC_MAX, SPEC_MIN
- **Calculated:**
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`
  - Detail: `=IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0))`

## Report: ORDER_FORM_SPECS mt Subrep_050357
- **Caption:** ORDER_FORM_SPECS Subrep
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_050357_input › ORDER_FORM_SPECS mt Subrep_050357
- **Record source:** `SELECT [**Order_Form_Specs].* FROM [**Order_Form_Specs];`
- **Grouping:** CN
- **Subreports:** Report.ORDER_FORM_MCODES mt Subrep, Report.ORDER_FORM_CNCTS mt Subrep, Report.ORDER_FORM_PACK mt subrep_050357
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CALIPER_MIN, CLIENT_ASSOCIATE, CN, CONTRACT_ITEM, LastOfCLIENT_NOTE, LastOfNURSERY_NOTE, ORDER_AMT, ORUN_AMT, OVERRUN_ALL, PACKED, PACK_ID, ROOT_PRUNE_TARGET, SERVICES_STRING, SPEC_MAX, SPEC_MIN
- **Calculated:**
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`
  - Detail: `=IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0))`

## Report: ORDER_FORM_SPECS mt_040207 Subrep
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › ORDER_FORM mt_040207_input › ORDER_FORM_SPECS mt_040207 Subrep
- **Record source:** ``
- **Grouping:** CN
- **Subreports:** Report.ORDER_FORM_MCODES mt Subrep, Report.ORDER_FORM_CNCTS mt Subrep, Report.ORDER_FORM_PACK mt subrep_040207
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CALIPER_MIN, CLIENT_ASSOCIATE, CN, CONTRACT_ITEM, LastOfCLIENT_NOTE, LastOfNURSERY_NOTE, ORDER_AMT, ORUN_AMT, OVERRUN_ALL, PACKED, PACK_ID, ROOT_PRUNE_MIN, ROOT_PRUNE_TARGET, SERVICES_STRING, SPEC_MAX, SPEC_MIN
- **Calculated:**
  - Detail: `=IIf(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0)=0 And [OVERRUN_ALL]=True,"ALL",NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0))`
  - Detail: `=IIf([OVERRUN_ALL]=True,"+","")`

## Report: ORDER_FORM_SPECS Subrep
- **Caption:** ORDER_FORM_SPECS Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_FORM_BY_LIFT_DATE › ORDER_FORM_SPECS Subrep
- **Record source:** `ORDER_FORM_SPECS Query`
- **Grouping:** CN
- **Subreports:** Report.ORDER_FORM_MCODES Subrep, Report.ORDER_FORM_CNCTS Subrep, Report.ORDER_FORM_PACK subrep
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CALIPER_MIN, CLIENT_ASSOCIATE, CLIENT_NOTE, CN, CONTRACT_ITEM, NURSERY_NOTE, ORDER_AMT, ORUN_AMT, OVERRUN_ALL, PACKED, PACK_ID, ROOT_PRUNE_TARGET, SERVICES_STRING, SPEC_MAX, SPEC_MIN

## Report: ORDER_FORM_SPECS_PROPAGULE mt Subrep
- **Caption:** ORDER_FORM_SPECS Subrep
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM_PROPAGULE mt › ORDER_FORM_SPECS_PROPAGULE mt Subrep
- **Record source:** `**Order_Form_Specs`
- **Grouping:** CN
- **Subreports:** Report.ORDER_FORM_MCODES mt Subrep, Report.ORDER_FORM_CNCTS mt Subrep, Report.Propagule_Order_Field_Location_Index Subform
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, CN, LastOfCLIENT_NOTE, LastOfNURSERY_NOTE

## Report: ORDER_STAT_PACK_Detaied subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_DETAILED › ORDER_STAT_PACK_Detaied subreport
- **Record source:** ``
- **Grouping:** PACK_CONT → Amt/Unit
- **Fields:** Amt/Unit, PACK_CONT
- **Calculated:**
  - Detail: `="@"`

## Report: ORDER_STATUS
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › ORDER_STATUS
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → DESTINATION_ASSOCIATE → CATEGORY_CODE → PRODUCT_DESC → VERNACULAR → AGREEMENT_LOT_ID_AND_SOURCE
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, Associate_and_Reporting_Parent_Name_W_CODE, CATEGORY_CODE, CONTAINER, CandN_NOTES, DATE_PACK, DATE_SHIP, DESTINATION_ASSOCIATE, FISCAL_YEAR, FREEZER, NN, ORDER_AMOUNT, ORDER_CODE, OVERRUN_ALL, PACK_AMT, PACK_CONT, PRODUCT_DESC, SHIP_AMT, SHIP_CONT, VERNACULAR, order_ID
- **Calculated:**
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Order_Status_Input]![Contact_CN]`
  - Detail: `=IIf(Round([PACK_AMT],2)<Round([ORDER_AMOUNT],2),"*","")`
  - Detail: `=[pack_amt]-nz([ship_amt],0)`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,Sum([ORDER_AMOUNT]),Null)`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,Sum([PACK_AMT]))`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,Sum([pack_amt]-nz([ship_amt],0)))`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,"Totals:",Null)`
  - GroupFooter0: `=Sum([ORDER_AMOUNT])`
  - GroupFooter0: `=Sum([PACK_AMT])`
  - GroupFooter0: `=Sum([SHIP_AMT])`
  - GroupFooter0: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`
  - GroupFooter0: `=Sum([Pack_Cont])`
  - GroupFooter0: `=Sum([Ship_Cont])`
  - GroupFooter2: `=Sum([ORDER_AMOUNT])`
  - GroupFooter2: `=Sum([PACK_AMT])`
  - GroupFooter2: `=Sum([SHIP_AMT])`
  - GroupFooter2: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`
  - GroupFooter2: `=Sum([Pack_Cont])`
  - GroupFooter2: `=Sum([Ship_Cont])`

## Report: ORDER_STATUS_DETAILED
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_DETAILED
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → DESTINATION_ASSOCIATE → CATEGORY_CODE → PRODUCT_DESC → VERNACULAR → ID
- **Subreports:** Report.ORDER_STAT_PACK_Detaied subreport, Report.ORDER_STAT_SHIP_Detaied subreport
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, Associate_and_Reporting_Parent_Name_W_CODE, CATEGORY_CODE, CONTAINER, CandN_NOTES, DATE_PACK, DATE_SHIP, DESTINATION_ASSOCIATE, FISCAL_YEAR, FREEZER, NN, ORDER_AMOUNT, ORDER_CODE, OVERRUN_ALL, PACK_AMT, PACK_CONT, PRODUCT_DESC, SHIP_AMT, SHIP_CONT, VERNACULAR, order_ID
- **Calculated:**
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Order_Status_Input]![Contact_CN]`
  - Detail: `=IIf(Round([PACK_AMT],2)<Round([ORDER_AMOUNT],2),"*","")`
  - Detail: `=[pack_amt]-nz([ship_amt],0)`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,Sum([ORDER_AMOUNT]),Null)`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,Sum([PACK_AMT]))`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,Sum([pack_amt]-nz([ship_amt],0)))`
  - GroupFooter1: `=IIf([CountOfAgreement_Lot_CN]>1,"Totals:",Null)`
  - GroupFooter0: `=Sum([ORDER_AMOUNT])`
  - GroupFooter0: `=Sum([PACK_AMT])`
  - GroupFooter0: `=Sum([SHIP_AMT])`
  - GroupFooter0: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`
  - GroupFooter0: `=Sum([Pack_Cont])`
  - GroupFooter0: `=Sum([Ship_Cont])`
  - GroupFooter2: `=Sum([ORDER_AMOUNT])`
  - GroupFooter2: `=Sum([PACK_AMT])`
  - GroupFooter2: `=Sum([SHIP_AMT])`
  - GroupFooter2: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`
  - GroupFooter2: `=Sum([Pack_Cont])`
  - GroupFooter2: `=Sum([Ship_Cont])`

## Report: ORDER_STATUS_Packed
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_Packed
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → DESTINATION_ASSOCIATE → CATEGORY_CODE → ID
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, Associate_and_Reporting_Parent_Name_W_CODE, CATEGORY_CODE, CONTAINER, CandN_NOTES, DATE_PACK, DATE_SHIP, DESTINATION_ASSOCIATE, FISCAL_YEAR, FREEZER, ORDER_AMOUNT, ORDER_CODE, OVERRUN_ALL, PACK_AMT, PACK_CONT, SHIP_AMT, SHIP_CONT, order_ID
- **Calculated:**
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `="Processing Orders Status PACKED Through: " & Date()`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=IIf(Round([PACK_AMT],2)<Round([ORDER_AMT],2),"*","")`
  - Detail: `=[pack_amt]-nz([ship_amt],0)`
  - GroupFooter0: `=Sum([ORDER_AMOUNT])`
  - GroupFooter0: `=Sum([PACK_AMT])`
  - GroupFooter0: `=Sum([SHIP_AMT])`
  - GroupFooter0: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`
  - GroupFooter2: `=Sum([ORDER_AMOUNT])`
  - GroupFooter2: `=Sum([PACK_AMT])`
  - GroupFooter2: `=Sum([SHIP_AMT])`
  - GroupFooter2: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`

## Report: ORDER_STATUS_Packed_Shortage
- **Caption:** ORDER_STATUS
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › ORDER_STATUS_Packed_Shortage
- **Record source:** `ORDER_STATUS_Packed_Shortage Query`
- **Grouping:** CLIENT_ASSOCIATE → CATEGORY_CODE → ID
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, Associate_and_Reporting_Parent_Name_W_CODE, CATEGORY_CODE, CONTAINER, CandN_NOTES, DATE_PACK, DATE_SHIP, FISCAL_YEAR, FREEZER, ORDER_AMOUNT, ORDER_CODE, OVERRUN_ALL, PACK_AMT, PACK_CONT, SHIP_AMT, SHIP_CONT, order_ID
- **Calculated:**
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Processing Orders Status SHORTAGE Through: " & Date()`
  - Detail: `=IIf([PACK_AMT]<[ORDER_AMT],"*","")`
  - Detail: `=[pack_amt]-nz([ship_amt],0)`
  - GroupFooter0: `=Sum([ORDER_AMOUNT])`
  - GroupFooter0: `=Sum([PACK_AMT])`
  - GroupFooter0: `=Sum([SHIP_AMT])`
  - GroupFooter0: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`
  - GroupFooter2: `=Sum([ORDER_AMOUNT])`
  - GroupFooter2: `=Sum([PACK_AMT])`
  - GroupFooter2: `=Sum([SHIP_AMT])`
  - GroupFooter2: `=Sum(nz([pack_amt]-nz([ship_amt],0),0))`

## Report: Orders_Checklist
- **Caption:** Orders_Summary_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist
- **Record source:** `Orders_Summary1`
- **Grouping:** CATEGORY_CODE → Product_Class_for_Cycle → ID
- **Fields:** BE_AT_PACK, CATEGORY_CODE, END_SEASON_CODE, Firm_Order, ID_Plntmstr_Symbol, LastOfNET_INV, NOTE, Over_All, Product_Class_for_Cycle, SumOfClient_Orders, SumOfOVERRUN_AMT, SumOfSurplus_Orders, TOTAL_REQUEST, Total_Order
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Orders Summary Checklist for FY " & [END_FY]`
  - PageHeaderSection: `="Selected for Activity Code: " & nz([Forms]![NMIS_ORDERS_Reports]![Like_Activity_Code],"*")`
  - PageHeaderSection: `="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*")`
  - GroupFooter2: `=Sum([TOTAL_REQUEST])`
  - GroupFooter2: `=Sum([LastOfNET_INV])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([SumOfClient_Orders])`
  - GroupFooter2: `=[Age_Class] & " Totals"`
  - GroupFooter2: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter2: `=Sum([Total_Order])`
  - GroupFooter2: `=Sum([SumOfSurplus_Orders])`
  - GroupFooter0: `=Sum([TOTAL_REQUEST])`
  - GroupFooter0: `=Sum([LastOfNET_INV])`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter0: `=Sum([SumOfClient_Orders])`
  - GroupFooter0: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter0: `=Sum([Total_Order])`
  - GroupFooter0: `=Sum([SumOfSurplus_Orders])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([TOTAL_REQUEST])`
  - ReportFooter: `=Sum([LastOfNET_INV])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([SumOfClient_Orders])`
  - ReportFooter: `=Sum([SumOfOVERRUN_AMT])`
  - ReportFooter: `=Sum([Total_Order])`
  - ReportFooter: `=Sum([SumOfSurplus_Orders])`

## Report: Orders_Checklist_by_Lot_ID
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist_by_Lot_ID
- **Record source:** ``
- **Grouping:** Cat → ID → Order ID
- **Fields:** BE_AT_PACK, Cat, ID_Plntmstr_Symbol, NOTE, ORDER_AMT, OVERRUN_ALL, OVERRUN_AMT, Order ID, Product_Class_for_Cycle
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Orders Summary Checklist for FY " & [END_FY]`
  - PageHeaderSection: `="Selected for Activity Code: " & nz([Forms]![NMIS_ORDERS_Reports]![Like_Activity_Code],"*")`
  - PageHeaderSection: `="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*")`
  - Detail: `=[ORDER_AMT]+nz([OVERRUN_AMT],0)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Orders_Checklist_LiftInNote
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist_LiftInNote
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → Product_Class_for_Cycle → ID
- **Fields:** BE_AT_PACK, CATEGORY_CODE, END_SEASON_CODE, Firm_Order, ID_Plntmstr_Symbol, LastOfCLIENT_NOTE, LastOfNET_INV, NOTE, Over_All, Product_Class_for_Cycle, SumOfClient_Orders, SumOfOVERRUN_AMT, SumOfSurplus_Orders, TOTAL_REQUEST, Total_Order
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Orders Summary Checklist for FY " & [END_FY]`
  - PageHeaderSection: `="Selected for Activity Code: " & nz([Forms]![NMIS_ORDERS_Reports]![Like_Activity_Code],"*")`
  - PageHeaderSection: `="Selected for 'Lift' in Nursery Note"`
  - PageHeaderSection: `="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*")`
  - GroupFooter2: `=Sum([TOTAL_REQUEST])`
  - GroupFooter2: `=Sum([LastOfNET_INV])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([SumOfClient_Orders])`
  - GroupFooter2: `=[Age_Class] & " Totals"`
  - GroupFooter2: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter2: `=Sum([Total_Order])`
  - GroupFooter2: `=Sum([SumOfSurplus_Orders])`
  - GroupFooter0: `=Sum([TOTAL_REQUEST])`
  - GroupFooter0: `=Sum([LastOfNET_INV])`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter0: `=Sum([SumOfClient_Orders])`
  - GroupFooter0: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter0: `=Sum([Total_Order])`
  - GroupFooter0: `=Sum([SumOfSurplus_Orders])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([TOTAL_REQUEST])`
  - ReportFooter: `=Sum([LastOfNET_INV])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([SumOfClient_Orders])`
  - ReportFooter: `=Sum([SumOfOVERRUN_AMT])`
  - ReportFooter: `=Sum([Total_Order])`
  - ReportFooter: `=Sum([SumOfSurplus_Orders])`

## Report: Orders_Checklist_no_orders
- **Caption:** Orders Summary Checklist NO ORDERS
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Reports › Orders_Checklist_no_orders
- **Record source:** `Orders_Summary_not`
- **Grouping:** CLIENT_ASSOCIATE → CATEGORY_CODE → Age_Class → Contact → ID
- **Fields:** AC, AMOUNT_REQUESTED, CATEGORY_CODE, CLIENT_ASSOCIATE, Client_Gross, Client_Net, Contact, END_SEASON_CODE, Firm_Order_Client, ID_Plntmstr_Symbol, LastOfTOTAL_REQUEST, ObO, PCT_of_Total
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Orders Summary Checklist for FY " & [Forms]![NMIS_ORDERS_Reports]![End_FY] & " - NO ORDERS"`
  - PageHeaderSection: `="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Orders_Checklist_Scheduled_Transplant
- **Caption:** Orders_Summary_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Generic_Scheduled_Transplant › Orders_Checklist_Scheduled_Transplant
- **Record source:** `Orders_Summary1_Scheduled_Transplant`
- **Grouping:** CATEGORY_CODE → Age_Class → ID
- **Fields:** Age_Class, CATEGORY_CODE, END_SEASON, Firm_Order, ID, LastOfNET_INV, Over_All, SumOfClient_Orders, SumOfOVERRUN_AMT, SumOfSurplus_Orders, TOTAL_REQUEST, Total_Order
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Scheduled Transplant Orders Summary Checklist for FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - GroupFooter2: `=Sum([TOTAL_REQUEST])`
  - GroupFooter2: `=Sum([LastOfNET_INV])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([SumOfClient_Orders])`
  - GroupFooter2: `=[Age_Class] & " Totals"`
  - GroupFooter2: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter2: `=Sum([Total_Order])`
  - GroupFooter2: `=Sum([SumOfSurplus_Orders])`
  - GroupFooter0: `=Sum([TOTAL_REQUEST])`
  - GroupFooter0: `=Sum([LastOfNET_INV])`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter0: `=Sum([SumOfClient_Orders])`
  - GroupFooter0: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter0: `=Sum([Total_Order])`
  - GroupFooter0: `=Sum([SumOfSurplus_Orders])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([TOTAL_REQUEST])`
  - ReportFooter: `=Sum([LastOfNET_INV])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([SumOfClient_Orders])`
  - ReportFooter: `=Sum([SumOfOVERRUN_AMT])`
  - ReportFooter: `=Sum([Total_Order])`
  - ReportFooter: `=Sum([SumOfSurplus_Orders])`

## Report: Orders_Checklist_Summary
- **Caption:** Orders_Summary_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › NMIS_ORDERS_Generic_Scheduled_Transplant › Orders_Checklist_Summary
- **Record source:** `Orders_Summary1c`
- **Grouping:** CATEGORY_CODE → Product_Class_for_Cycle → ID
- **Fields:** CATEGORY_CODE, Product_Class_for_Cycle
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Orders Summary Checklist for FY " & [END_FY]`
  - PageHeaderSection: `="Selected for Activity Code: " & nz([Forms]![NMIS_ORDERS_Reports]![Like_Activity_Code],"*")`
  - PageHeaderSection: `="Selected for Season Code: " & Nz([Forms]![NMIS_ORDERS_Reports]![Like_End_Season],"*")`
  - GroupFooter2: `=Sum([TOTAL_REQUEST])`
  - GroupFooter2: `=Sum([LastOfNET_INV])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([SumOfClient_Orders])`
  - GroupFooter2: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter2: `=Sum([Total_Order])`
  - GroupFooter2: `=Sum([SumOfSurplus_Orders])`
  - GroupFooter0: `=Sum([TOTAL_REQUEST])`
  - GroupFooter0: `=Sum([LastOfNET_INV])`
  - GroupFooter0: `=Sum([Firm_Order])`
  - GroupFooter0: `=Sum([SumOfClient_Orders])`
  - GroupFooter0: `=Sum([SumOfOVERRUN_AMT])`
  - GroupFooter0: `=Sum([Total_Order])`
  - GroupFooter0: `=Sum([SumOfSurplus_Orders])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([TOTAL_REQUEST])`
  - ReportFooter: `=Sum([LastOfNET_INV])`
  - ReportFooter: `=Sum([Firm_Order])`
  - ReportFooter: `=Sum([SumOfClient_Orders])`
  - ReportFooter: `=Sum([SumOfOVERRUN_AMT])`
  - ReportFooter: `=Sum([Total_Order])`
  - ReportFooter: `=Sum([SumOfSurplus_Orders])`

## Report: Orders_Shipped_to_other_than_Packed_For
- **Caption:** Orders Shipped to Other than Packed For
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Orders_Shipped_to_other_than_Packed_For
- **Record source:** ``
- **Grouping:** Level → ID → DELIVERED_TO_ASSOCIATE → CLIENT_ASSOCIATE
- **Fields:** Amt Per, Bags/Boxes, CLIENT_ASSOCIATE, DELIVERED_TO_ASSOCIATE, ID, Level, NOTE, Order, Ticket, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=Round([Bags/Boxes]*[Amt Per]/1000,3)`
  - GroupFooter2: `=Sum([Bags/Boxes])`
  - GroupFooter2: `=Sum(Round([Bags/Boxes]*[Amt Per]/1000,3))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Detailed_by_Forest
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Detailed_by_Forest
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → END_FY → BEGIN_FY → Cost_Center → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, ASSOCIATE, AgLotID_Source, Age_Class, Age_Class_Condensed, CLIENT_ASSOCIATE, CN, Cost_Center, Density, END_FY, End_Season, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, PLNTMSTR_SYMBOL, Reporting_Parent, Requested_for_fy, Requested_fy_for_fy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_by_Forest_Dist_Species_Product
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_by_Forest_Dist_Species_Product
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → END_FY → BEGIN_FY → Cost_Center → Age_Class → PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ASSOCIATE, Age_Class, CLIENT_ASSOCIATE, Cost_Center, Reporting_Parent, Species_Product_CN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader6: `="*Requested for FY " & [END_FY] & "*"`
  - GroupHeader5: `="*Requested " & [Begin_FY] & " for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested " & [Begin_FY] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([GROSS])`
  - GroupFooter7: `=Sum([NET_INV_M])`
  - GroupFooter7: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter7: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_by_Region
- **Caption:** NMIS Sowing Request Summary
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_by_Region
- **Record source:** ``
- **Grouping:** Reporting_Region → END_FY → BEGIN_FY → TreeYN → Cost_Center → Age_Class → Reporting_Parent
- **Fields:** Age_Class, Cost_Center, Reporting_Parent, Reporting_Region, TreeYN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader5: `="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter8: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter8: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter7: `="*Requested by " & [Reporting_Region] & "*"`
  - GroupFooter7: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_by_Region2
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_by_Region2
- **Record source:** ``
- **Grouping:** Reporting_Region → END_FY → BEGIN_FY → TreeYN → Cost_Center → Age_Class → Reporting_Parent
- **Fields:** Age_Class, Cost_Center, Reporting_Region, TreeYN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader5: `="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter8: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter8: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter7: `="*Requested by " & [Reporting_Region] & "*"`
  - GroupFooter7: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([AMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([ORIG_AMOUNT_REQUESTED])`

## Report: OutYears_Report_Summary_Forest_Dist_species
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Forest_Dist_species
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → END_FY → BEGIN_FY → Cost_Center → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ASSOCIATE, Age_Class, CLIENT_ASSOCIATE, Cost_Center, PLNTMSTR_SYMBOL, Reporting_Parent
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader1: `="*Requested for FY " & [END_FY] & "*"`
  - GroupHeader5: `="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([GROSS])`
  - GroupFooter7: `=Sum([NET_INV_M])`
  - GroupFooter7: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_Forest_Species
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Forest_Species
- **Record source:** ``
- **Grouping:** Reporting_Parent → END_FY → BEGIN_FY → Cost_Center → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ASSOCIATE, Age_Class, Cost_Center, PLNTMSTR_SYMBOL, Reporting_Parent
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader0: `="*Requested for FY " & [END_FY] & "*"`
  - GroupHeader5: `="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_grand
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_grand
- **Record source:** `OutYears_Report_Query`
- **Grouping:** END_FY → BEGIN_FY → CatCode → Age_Class_Cat
- **Fields:** Age_Class_Cat, CATCODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Requested for FY " & [END_FY]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader5: `="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Firm_Order])`
  - GroupFooter2: `=Sum([CountOfCN]) & IIf(Sum([CountOfCN])>1," Lots"," Lot")`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([Firm_Order])`
  - GroupFooter5: `=Sum([CountOfCN]) & IIf(Sum([CountOfCN])>1," Lots"," Lot")`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([Firm_Order])`
  - GroupFooter4: `=Sum([CountOfCN]) & IIf(Sum([CountOfCN])>1," Lots"," Lot")`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Firm_Order])`
  - GroupFooter3: `=Sum([CountOfCN]) & IIf(Sum([CountOfCN])>1," Lots"," Lot")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_Grand_by_Region
- **Caption:** NMIS Sowing Request Summary
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Grand_by_Region
- **Record source:** ``
- **Grouping:** Reporting_Region → END_FY → TreeYN → Cost_Center
- **Fields:** Cost_Center, Reporting_Region, TreeYN
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `="Requested for FY " & [END_FY]`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter7: `="Total Requested by " & [Reporting_Region]`
  - GroupFooter7: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_grand_Forest_Sub
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_grand_Forest_Sub
- **Record source:** ``
- **Grouping:** END_FY → BEGIN_FY → Cost_Center → Age_Class → Reporting_Parent
- **Fields:** Age_Class, Cost_Center, Reporting_Parent
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Requested for FY " & [END_FY]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader5: `="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_grand_Species_Sub
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_grand_Species_Sub
- **Record source:** ``
- **Grouping:** END_FY → BEGIN_FY → Cost_Center → Age_Class → PLNTMSTR_SYMBOL
- **Fields:** Age_Class, Cost_Center, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Requested for FY " & [END_FY]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for Begin FY Like " & [Forms]![SOW_REQUEST_REPORTS]![Begin_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader5: `="*Requested " & [BEGIN_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `="*Requested " & [Begin_FY2] & " for FY " & [END_FY] & "*"`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `="*Requested for FY " & [END_FY] & "*"`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: OutYears_Report_Summary_Species
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › SOW_REQUEST_REPORTS › OutYears_Report_Summary_Species
- **Record source:** `OutYears_Report_Query`
- **Grouping:** PLNTMSTR_SYMBOL → Cost_Center
- **Fields:** Cost_Center, PLNTMSTR_SYMBOL
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Comment]`
  - PageHeaderSection: `=[Forms]![SOW_REQUEST_REPORTS]![Contact_CN]`
  - PageHeaderSection: `="Selected for End FY >= " & [Forms]![SOW_REQUEST_REPORTS]![End_FY]`
  - PageHeaderSection: `="Selected for Client Like " & [Forms]![SOW_REQUEST_REPORTS]![Like_Client]`
  - PageHeaderSection: `="Selected for Species Like " & [Forms]![SOW_REQUEST_REPORTS]![plntmstr_symbol]`
  - GroupHeader1: `=Sum([AMOUNT_REQUESTED])`
  - GroupHeader1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: oyjord_calibration_checklist
- **Caption:** Calibration Checklist
- **Menu path:** Switchboard › Oyjord_Calibration › oyjord_calibration_checklist
- **Record source:** ``
- **Grouping:** SOWING_GROUP → NMIS_SOURCE_LOTS.ID
- **Fields:** CALIBRATION_FUNNEL_SETTING_ID, CALIBRATION_REV_SOURCE_UNITS, CALIBRATION_SOURCE_UNITS, CALIBRATION_TRAVEL_PER_REV, Comments, Date, NMIS_AGREEMENT_LOTS.ID, NMIS_SOURCE_LOTS.ID, NUMBER_CALIBRATION_CONTAINERS, SG, cru
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="fy " & [Forms]![Oyjord_Calibration]![Begin_fy]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Pack_act_tot_vs_trans_total_checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Pack_act_tot_vs_trans_total_checklist
- **Record source:** ``
- **Grouping:** ID → CN → ACTIVITY_DATE
- **Subreports:** Report.NMIS_TRANSACTIONS_packcheck subreport
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, CN, Check_Order_FY, ID, LastOfNOTE, NMIS_ID_ACTIVITIES.FISCAL_YEAR, Order/FY, Transaction Total, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`

## Report: PACK_PROOF
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF
- **Record source:** ``
- **Grouping:** ACTIVITY_DATE → ID → ORDER_CN
- **Subreports:** Report.PACK_PROOF_O subrep
- **Fields:** ACTIVITY_DATE, ID, agr_lot_cn
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: PACK_PROOF_A subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF › PACK_PROOF_O subrep › PACK_PROOF_A subrep
- **Record source:** ``
- **Grouping:** ORDER_CN
- **Subreports:** Report.PACK_PROOF_T subrep
- **Fields:** ACTIVITY_CODE, ACTIVITY_HOURS, CONTRACT_ITEM, ID_ACTIVITY_CN, ORDER_CN

## Report: PACK_PROOF_HOURLY
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF_HOURLY
- **Record source:** ``
- **Grouping:** ACTIVITY_DATE → CONTRACT_ITEM → ID
- **Fields:** ACTIVITY_DATE, ACTIVITY_HOURS, CONTRACT_ITEM, ID, Order_ID
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([ACTIVITY_HOURS])`
  - GroupFooter1: `=Sum([ACTIVITY_HOURS])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: PACK_PROOF_MISC
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF_MISC
- **Record source:** ``
- **Grouping:** ACTIVITY_DATE → ID → Order_ID → NMIS_ID_ACTIVITIES.CONTRACT_ITEM → NUMBER_OF_ACTIVITY_UNITS
- **Fields:** ACTIVITY_DATE, ACTIVITY_HOURS, AMT_PER_UNIT, ID, LOCATION, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ORDERS.ACTIVITY_CODE, NMIS_TRANSACTIONS.CONTRACT_ITEM, NUMBER_OF_ACTIVITY_UNITS, Order_ID, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: PACK_PROOF_O subrep
- **Caption:** PACK_PROOF_O Query
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF › PACK_PROOF_O subrep
- **Record source:** `**PACK_PROOF_O`
- **Grouping:** CLIENT_ASSOCIATE → ORDER_ID → ACTIVITY_CODE
- **Subreports:** Report.PACK_PROOF_A subrep
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, AGREEMENT_LOT_CN, All, CLIENT_ASSOCIATE, CN, ORDER_AMT, ORDER_ID, SERVICES_STRING

## Report: PACK_PROOF_T subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Processing_Review_by_Activity_Date › PACK_PROOF › PACK_PROOF_O subrep › PACK_PROOF_A subrep › PACK_PROOF_T subrep
- **Record source:** ``
- **Grouping:** UNIT_CODE → NUMBER_OF_ACTIVITY_UNITS
- **Fields:** AMT_PER_UNIT, AMT_PER_UNIT_INV_GROSS, CONTRACT_ITEM, ID_ACTIVITY_CN, NUMBER_OF_ACTIVITY_UNITS, UNIT_CODE
- **Calculated:**
  - ReportFooter: `=Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]>0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT]),3)/1000`
  - ReportFooter: `=IIf(Abs(Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]<0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT_INV_GROSS]),3)/1000)>0,Abs(Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]<0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT_INV_GROSS]),3)/1000),Round(Sum(IIf([NUMBER_OF_ACTIVITY_UNITS]>0,[NUMBER_OF_ACTIVITY_UNITS],0)*[AMT_PER_UNIT]),3)/1000)`

## Report: Packed_for_Outplant_Checklist_by_Class
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Checklist_by_Class
- **Record source:** ``
- **Grouping:** Cost_Center → Age_Class_String → DIVERSE → PLNTMSTR_SYMBOL → ORDER_CODE → LOT_ID
- **Fields:** AMT_PER_UNIT, Age_Class_String, CLIENT_ASSOCIATE, Cost_Center, GRADING_SPECS, ID_SOURCE2, LOT_ID, ORDER_CODE, PACK_ID, ROOT_PRUNE_TARGET, Species, SumOfNUMBER_OF_ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupHeader4: `=IIf([diverse],"Non-Traditional","Traditional") & " Species"`
  - GroupHeader2: `=Sum([PACKED])`
  - GroupFooter1: `=Sum([PACKED])`
  - GroupFooter1: `="Total for " & [Species]`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total for " & [Age_Class_String]`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total for " & [Cost_Center]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`

## Report: Packed_for_Outplant_Checklist_by_Class_Client
- **Caption:** Packed for Outplanting
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Checklist_by_Class_Client
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → Cost_Center → Age_Class_String → PLNTMSTR_SYMBOL → ORDER_CODE → LOT_ID
- **Fields:** AMT_PER_UNIT, Age_Class_String, CLIENT_ASSOCIATE, Cost_Center, GRADING_SPECS, ID_SOURCE2, LOT_ID, ORDER_CODE, PACK_ID, ROOT_PRUNE_TARGET, Reporting_Parent, Species, SumOfNUMBER_OF_ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupHeader2: `=Sum([PACKED])`
  - GroupFooter1: `=Sum([PACKED])`
  - GroupFooter1: `="Total for " & [Species]`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total for " & [Age_Class_String]`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total for " & [Cost_Center]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`

## Report: Packed_for_Outplant_Summary_by_Class
- **Caption:** Packed for Outplanting
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_Class
- **Record source:** ``
- **Grouping:** Cost_Center → Age_Class_String → DIVERSE → PLNTMSTR_SYMBOL → ORDER_CODE → LOT_ID
- **Fields:** Cost_Center, [Age_Class_String], [Species]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupHeader3: `=IIf([diverse],"Non-Traditional","Traditional") & " Species"`
  - GroupFooter1: `=Sum([PACKED])`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total For " & IIf([diverse],"Non-Traditional","Traditional") & " Species"`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total for " & [Age_Class_String]`
  - GroupFooter5: `=Sum([PACKED])`
  - GroupFooter5: `="Total for " & [Cost_Center]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`

## Report: Packed_for_Outplant_Summary_by_Class_Client
- **Caption:** Packed for Outplanting
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_Class_Client
- **Record source:** ``
- **Grouping:** Cost_Center → Age_Class_String → Reporting_Parent → LOT_ID
- **Fields:** Cost_Center, Reporting_Parent, [Age_Class_String]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupFooter2: `=Sum([PACKED])`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total for " & [Age_Class_String]`
  - GroupFooter5: `=Sum([PACKED])`
  - GroupFooter5: `="Total for " & [Cost_Center]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`

## Report: Packed_for_Outplant_Summary_by_region
- **Caption:** Packed for Outplanting
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_region
- **Record source:** ``
- **Grouping:** Reporting_Region
- **Fields:** Reporting_Region
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupFooter1: `=Sum([PACKED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`

## Report: Packed_for_Outplant_Summary_by_Species
- **Caption:** Packed for Outplanting
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Outplant_Summary_by_Species
- **Record source:** ``
- **Grouping:** DIVERSE → PLNTMSTR_SYMBOL → Cost_Center → Age_Class_String → ORDER_CODE → LOT_ID
- **Fields:** Cost_Center, Species, [Age_Class_String]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupHeader4: `=IIf([diverse],"Non-Traditional","Traditional") & " Species"`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total for " & [Cost_Center]`
  - GroupFooter1: `=Sum([PACKED])`
  - GroupFooter1: `="Total for " & [Species]`
  - GroupFooter5: `="Total For " & IIf([diverse],"Non-Traditional","Traditional") & " Species"`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`

## Report: Packed_for_Surplus_Sales_Checklist_by_Class
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Surplus_Sales_Checklist_by_Class
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → Cost_Center → Age_Class_String → PLNTMSTR_SYMBOL → ORDER_CODE → LOT_ID
- **Fields:** AMT_PER_UNIT, Age_Class_String, BZ, CLIENT_ASSOCIATE, Cost_Center, Elev, GRADING_SPECS, ID_SOURCE2, LOCATION, LOT_ID, ORDER_CODE, PACK_ID, ROOT_PRUNE_TARGET, SZ, Species, SumOfNUMBER_OF_ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupHeader2: `=Sum([PACKED])`
  - GroupFooter1: `=Sum([PACKED])`
  - GroupFooter1: `="Total for " & [Species]`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total for " & [Age_Class_String]`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total for " & [Cost_Center]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Outplanting FY" & [Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER]`

## Report: Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List
- **Record source:** ``
- **Grouping:** Cost_Center → Reporting_Parent → ASSOCIATE → Product_for_Cycle → PLNTMSTR_SYMBOL → ORDER_CODE → LOT_ID
- **Fields:** AMT_PER_UNIT, ASSOCIATE, BZ, CHARGE_PER_AMT, Cost_Center, Elev, ID_SOURCE2, LOT_ID, Product_for_Cycle, Reporting_Parent, SZ, Species, SumOfNUMBER_OF_ACTIVITY_UNITS
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - GroupHeader2: `=Sum([PACKED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_Inventory_Inv_Dist_Client_Associate Subreport
- **Caption:** Field_tag_agreements subreport
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_Inventory_Inv_Dist_Client_Associate Subreport
- **Record source:** `SELECT [NMIS_AGREEMENTS].[AGREEMENT_LOT_CN], [ASSOCIATE_NAME] & " - " & [CLIENT_ASSOCIATE] & " " & [AMOUNT_REQUESTED] & "M" AS CLIENT_ASSOCIATE_STRING FROM NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_AGREEMENTS].[CLIENT_ASSOCIATE]) AND ([NMIS_ASSOCIATES].[ASSOCIATE]=[NMIS_AGREEMENTS].[CLIENT_ASSOCIATE]);`
- **Grouping:** 
- **Fields:** CLIENT_ASSOCIATE_STRING

## Report: Plant_Inventory_matrix
- **Caption:** Plant Inventory Worksheet
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_matrix
- **Record source:** `Plant_Inventory_Worksheet Query`
- **Grouping:** B_or_C → ID
- **Subreports:** Report.Plant_Inventory_Size_Matrix_Blank_Subreport
- **Fields:** Client_and_ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`

## Report: Plant_Inventory_Report_by_End_Year_by_Product
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_by_End_Year_by_Product
- **Record source:** `Plant_Inventory_Report_Query`
- **Grouping:** Cost_Center → END_FY → BEGIN_FY → Age_Class
- **Fields:** Age_Class, Cost_Center, Requested_for_fy, Requested_fy_for_fy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![PLANT_INVENTORY_REPORTS]![Comment]`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_Inventory_Report_by_Forest_by_Product
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_by_Forest_by_Product
- **Record source:** `Plant_Inventory_Report_Query`
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → END_FY → BEGIN_FY → Cost_Center → Age_Class → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ASSOCIATE, Age_Class, CLIENT_ASSOCIATE, Cost_Center, Reporting_Parent, Requested_for_fy, Requested_fy_for_fy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![PLANT_INVENTORY_REPORTS]![Comment]`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_Inventory_Report_by_Forest_by_Species_Product
- **Caption:** NMIS_Plant_Inventory
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_by_Forest_by_Species_Product
- **Record source:** `Plant_Inventory_Report_Query`
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → END_FY → BEGIN_FY → Cost_Center → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ASSOCIATE, Age_Class, CLIENT_ASSOCIATE, Cost_Center, PLNTMSTR_SYMBOL, Reporting_Parent, Requested_for_fy, Requested_fy_for_fy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![PLANT_INVENTORY_REPORTS]![Comment]`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_Inventory_Report_Detailed__Product
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_Detailed__Product
- **Record source:** ``
- **Grouping:** Cost_Center → END_FY → BEGIN_FY → Age_Class → NMIS_AGREEMENT_LOTS_ID → SOURCE
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class, CN, Cost_Center, Density, END_FY, End_Season, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, Requested_for_fy, Requested_fy_for_fy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![PLANT_INVENTORY_REPORTS]![Comment]`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_Inventory_Report_Detailed_by_Forest
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_Detailed_by_Forest
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → END_FY → BEGIN_FY → Cost_Center → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, ASSOCIATE, AgLotID_Source, Age_Class, CLIENT_ASSOCIATE, CN, Cost_Center, Density, END_FY, End_Season, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, PLNTMSTR_SYMBOL, Reporting_Parent, Requested_for_fy, Requested_fy_for_fy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![PLANT_INVENTORY_REPORTS]![Comment]`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([GROSS])`
  - GroupFooter0: `=Sum([NET_INV_M])`
  - GroupFooter0: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter1: `=Sum([GROSS])`
  - GroupFooter1: `=Sum([NET_INV_M])`
  - GroupFooter1: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_Inventory_Report_Detailed_Species_Product
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PLANT_INVENTORY_REPORTS › Plant_Inventory_Report_Detailed_Species_Product
- **Record source:** ``
- **Grouping:** Cost_Center → END_FY → BEGIN_FY → Age_Class → PLNTMSTR_SYMBOL → SOURCE → NMIS_AGREEMENT_LOTS_ID
- **Fields:** ACTIVITY_DATE, AMOUNT_REQUESTED, AgLotID_Source, Age_Class, CN, Cost_Center, Density, END_FY, End_Season, GROSS, Inv_Type, Net_Inv_M, ORIG_AMOUNT_REQUESTED, PLNTMSTR_SYMBOL, Requested_for_fy, Requested_fy_for_fy
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![PLANT_INVENTORY_REPORTS]![Comment]`
  - GroupFooter6: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter6: `=Sum([GROSS])`
  - GroupFooter6: `=Sum([NET_INV_M])`
  - GroupFooter6: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([GROSS])`
  - GroupFooter2: `=Sum([NET_INV_M])`
  - GroupFooter2: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter4: `=Sum([GROSS])`
  - GroupFooter4: `=Sum([NET_INV_M])`
  - GroupFooter4: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([GROSS])`
  - GroupFooter3: `=Sum([NET_INV_M])`
  - GroupFooter3: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([AMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([GROSS])`
  - GroupFooter5: `=Sum([NET_INV_M])`
  - GroupFooter5: `=Sum([ORIG_AMOUNT_REQUESTED])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_inventory_Rpt_Size_Matrix
- **Caption:** 
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.Plant_Inventory_Inv_Dist_Client_Associate Subreport, Report.Plant_inventory_Size_Matrix_Count subreport, Report.Plant_inventory_Size_Matrix_PCT subreport, Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport
- **Fields:** ACTIVITY_DATE, ID, ID_SOURCE2, NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING.SIZE_SPEC_STRING, SIZE_SPEC_STRING_ALT, Standard, TOTAL_REQUEST, What_It_Is_Longest
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!SAMPLES+NZ(Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!ADDITIONAL_SAMPLES,0)`
  - Detail: `=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SAMPLES subform1].Form!Sum_of_Sample_Count`
  - Detail: `=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORY_SIZES subform].Form!TOTAL_SIZED`
  - Detail: `=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!TARGET_FACTOR`
  - Detail: `=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!Shipping_Factor`
  - Detail: `=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!GROSS_INV`
  - Detail: `=Forms!NMIS_PRODUCT_INVENTORIES![NMIS_PRODUCT_INVENTORIES subform1].Form!NET_INV`
  - Detail: `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![TARGET_FACTOR_ALT]`
  - Detail: `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![Shipping_Factor_ALT]`
  - Detail: `=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![NET_INV_ALT]`
  - PageFooterSection: `=Now()`

## Report: Plant_inventory_Rpt_Size_Matrix_Group
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → ID
- **Subreports:** Report.Plant_inventory_Size_Matrix_Count_Group subreport, Report.Plant_inventory_Size_Matrix_PCT_Group subreport, Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport
- **Fields:** ACTIVITY_DATE, Client, Gross, ID, ID_SOURCE2, Ingrowth_ALT_PCT, Ingrowth_PCT, NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING_SIZE_SPEC_STRING, Net, Net_Alt, PCT_AT_SPEC, PCT_AT_SPEC_ALT, Req, SAMPLES, SIZE_SPEC_STRING_ALT, Ship_Factor, Ship_Factor_Alt, Standard, Total_Counted, Total_Sized, What_It_Is_Longest
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![Contact_CN]`
  - PageFooterSection: `=Now()`

## Report: Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group
- **Record source:** ``
- **Grouping:** CLIENT_ASSOCIATE → ID
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_matrix_Location_Subreport, Report.Plant_inventory_Size_Matrix_PCT2_group subreport
- **Fields:** ACTIVITY_DATE, Client, Gross, ID, ID_SOURCE2, Ingrowth_ALT_PCT, Ingrowth_PCT, NMIS_PRODUCT_INVENTORY_SIZE_SPEC_STRING_SIZE_SPEC_STRING, Net, Net_Alt, PCT_AT_SPEC, PCT_AT_SPEC_ALT, Req, SAMPLES, SIZE_SPEC_STRING_ALT, Ship_Factor, Ship_Factor_Alt, Standard, Total_Counted, Total_Sized, What_It_Is_Longest
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORY_MATRIX]![Contact_CN]`
  - PageFooterSection: `=Now()`

## Report: Plant_Inventory_Size_Matrix_Blank_Subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet_w_matrix › Plant_Inventory_Size_Matrix_Blank_Subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** HT_HEADING
- **Calculated:**
  - PageHeaderSection: `="Height (" & [Specs_Unit_Code] & ")"`
  - PageHeaderSection: `="Caliper (mm)"`
  - PageHeaderSection: `="A"`
  - PageHeaderSection: `="B"`
  - PageHeaderSection: `="C"`
  - PageHeaderSection: `="D"`
  - PageHeaderSection: `="E"`
  - PageHeaderSection: `="F"`
  - PageHeaderSection: `="G"`

## Report: Plant_inventory_Size_Matrix_Count subreport
- **Caption:** Size_Matrix_Xtab subreport
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_inventory_Size_Matrix_Count subreport
- **Record source:** `Plant_inv_matrix_xtab`
- **Grouping:** 
- **Subreports:** Report.PLANT_INVENTORY_SPECS_UNIT_CODE subreport
- **Fields:** A, B, C, D, E, F, G, Ht_Heading
- **Calculated:**
  - ReportHeader: `="A"`
  - ReportHeader: `="B"`
  - ReportHeader: `="C"`
  - ReportHeader: `="D"`
  - ReportHeader: `="E"`
  - ReportHeader: `="F"`
  - ReportHeader: `="G"`
  - ReportHeader: `="Height (" & [PLANT_INVENTORY_SPECS_UNIT_CODE subreport].[Report]![SPECS_UNIT_CODE] & ")"`

## Report: Plant_inventory_Size_Matrix_Count_Group subreport
- **Caption:** Size_Matrix_Xtab subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group › Plant_inventory_Size_Matrix_Count_Group subreport
- **Record source:** `*Plant_Inv_Matrix_Group_Count_xtab_Table`
- **Grouping:** 
- **Subreports:** Report.PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport
- **Fields:** A, B, C, D, E, F, G, Ht_Heading
- **Calculated:**
  - ReportHeader: `="A"`
  - ReportHeader: `="B"`
  - ReportHeader: `="C"`
  - ReportHeader: `="D"`
  - ReportHeader: `="E"`
  - ReportHeader: `="F"`
  - ReportHeader: `="G"`
  - ReportHeader: `="Height (" & [PLANT_INVENTORY_SPECS_UNIT_CODE subreport].[Report]![SPECS_UNIT_CODE] & ")"`

## Report: Plant_inventory_Size_Matrix_PCT subreport
- **Caption:** Size_Matrix_Xtab subreport
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_inventory_Size_Matrix_PCT subreport
- **Record source:** `Plant_inv_matrix_PCT_xtab`
- **Grouping:** 
- **Subreports:** Report.PLANT_INVENTORY_SPECS_UNIT_CODE subreport
- **Fields:** A, B, C, D, E, F, G, Ht_Heading
- **Calculated:**
  - ReportHeader: `="A"`
  - ReportHeader: `="B"`
  - ReportHeader: `="C"`
  - ReportHeader: `="D"`
  - ReportHeader: `="E"`
  - ReportHeader: `="F"`
  - ReportHeader: `="G"`
  - ReportHeader: `="Height (" & [PLANT_INVENTORY_SPECS_UNIT_CODE subreport].[Report]![SPECS_UNIT_CODE] & ")"`

## Report: Plant_inventory_Size_Matrix_PCT2_group subreport
- **Caption:** Size_Matrix_Xtab subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group › Plant_inventory_Size_Matrix_PCT2_group subreport
- **Record source:** `*Plant_Inv_Matrix_Group_PCT_xtab2_Table`
- **Grouping:** 
- **Subreports:** Report.PLANT_INVENTORY_SPECS_UNIT_CODE2g subreport
- **Fields:** A, B, C, D, E, F, G, Ht_Heading
- **Calculated:**
  - ReportHeader: `="A"`
  - ReportHeader: `="B"`
  - ReportHeader: `="C"`
  - ReportHeader: `="D"`
  - ReportHeader: `="E"`
  - ReportHeader: `="F"`
  - ReportHeader: `="G"`
  - ReportHeader: `="Height (" & [PLANT_INVENTORY_SPECS_UNIT_CODE subreport].[Report]![SPECS_UNIT_CODE] & ")"`

## Report: Plant_inventory_Size_Matrix_PCT_Group subreport
- **Caption:** Size_Matrix_Xtab subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group › Plant_inventory_Size_Matrix_PCT_Group subreport
- **Record source:** `*Plant_Inv_Matrix_Group_PCT_xtab_Table`
- **Grouping:** 
- **Subreports:** Report.PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport
- **Fields:** A, B, C, D, E, F, G, Ht_Heading
- **Calculated:**
  - ReportHeader: `="A"`
  - ReportHeader: `="B"`
  - ReportHeader: `="C"`
  - ReportHeader: `="D"`
  - ReportHeader: `="E"`
  - ReportHeader: `="F"`
  - ReportHeader: `="G"`
  - ReportHeader: `="Height (" & [PLANT_INVENTORY_SPECS_UNIT_CODE subreport].[Report]![SPECS_UNIT_CODE] & ")"`

## Report: PLANT_INVENTORY_SPECS_UNIT_CODE subreport
- **Caption:** PLANT_INVENTORY_SPECS_UNIT_CODE subreport
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Plant_inventory_Rpt_Size_Matrix › Plant_inventory_Size_Matrix_Count subreport › PLANT_INVENTORY_SPECS_UNIT_CODE subreport
- **Record source:** `SELECT PLANT_INVENTORY_SPECS_UNIT_CODE.ID_ACTIVITY_CN, PLANT_INVENTORY_SPECS_UNIT_CODE.AGREEMENT_LOT_CN, PLANT_INVENTORY_SPECS_UNIT_CODE.SPECS_UNIT_CODE FROM PLANT_INVENTORY_SPECS_UNIT_CODE WHERE (((PLANT_INVENTORY_SPECS_UNIT_CODE.ID_ACTIVITY_CN)=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![ID_ACTIVITY_CN]));`
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, ID_ACTIVITY_CN, SPECS_UNIT_CODE

## Report: PLANT_INVENTORY_SPECS_UNIT_CODE2g subreport
- **Caption:** PLANT_INVENTORY_SPECS_UNIT_CODE subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_PCT_Only_Group › Plant_inventory_Size_Matrix_PCT2_group subreport › PLANT_INVENTORY_SPECS_UNIT_CODE2g subreport
- **Record source:** `SELECT PLANT_INVENTORY_SPECS_UNIT_CODE.AGREEMENT_LOT_CN, PLANT_INVENTORY_SPECS_UNIT_CODE.SPECS_UNIT_CODE FROM PLANT_INVENTORY_SPECS_UNIT_CODE;`
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, ID_ACTIVITY_CN, SPECS_UNIT_CODE

## Report: PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport
- **Caption:** PLANT_INVENTORY_SPECS_UNIT_CODE subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › NMIS_PRODUCT_INVENTORY_MATRIX › Plant_inventory_Rpt_Size_Matrix_Group › Plant_inventory_Size_Matrix_Count_Group subreport › PLANT_INVENTORY_SPECS_UNIT_CODE_Group subreport
- **Record source:** `SELECT PLANT_INVENTORY_SPECS_UNIT_CODE.ID_ACTIVITY_CN, PLANT_INVENTORY_SPECS_UNIT_CODE.AGREEMENT_LOT_CN, PLANT_INVENTORY_SPECS_UNIT_CODE.SPECS_UNIT_CODE FROM PLANT_INVENTORY_SPECS_UNIT_CODE;`
- **Grouping:** 
- **Fields:** AGREEMENT_LOT_CN, ID_ACTIVITY_CN, SPECS_UNIT_CODE

## Report: Plant_Inventory_Worksheet
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet
- **Record source:** ``
- **Grouping:** B_or_C → Age_Class → MinOfLOCATION → MaxOfDIST_FROM_BED_BEG → ID
- **Subreports:** Report.Plant_Inventory_Worksheet_Field_Location_Index Subform, Report.Plant_Inventory_Worksheet_Client_Associate Subreport
- **Fields:** AGREEMENT_LOT_CN, Age_Class, Client_and_ID, DistBetween, FirstOfActual_Sow_Calculated, FirstOfTOTAL_REQUEST, INV_SIZE_SAMPLE, Plots, SOURCE_LOT_CN
- **Calculated:**
  - Detail: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=Forms!Switchboard!NMIS_FISCAL_YEAR_Current.Form!FISCAL_YEAR_TEXT`
  - Detail: `=IIf([B_or_C]="B","Bareroot ","Container ") & "Inventory Worksheet"`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Plant_Inventory_Worksheet_Blank
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheet_Blank
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: Plant_Inventory_Worksheet_Client_Associate Subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet › Plant_Inventory_Worksheet_Client_Associate Subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** CLIENT_ASSOCIATE_STRING

## Report: Plant_Inventory_Worksheet_Field_Location_Index Subform
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN › Plant_Inventory_Worksheet_Field_Location_Index Subform
- **Record source:** ``
- **Grouping:** AGREEMENT_LOT_CN → LOCATION
- **Fields:** BEGIN_INDEX, END_INDEX, Ft_In_Lot, Location, SUBLOT_NO
- **Calculated:**
  - GroupFooter0: `=Sum([Ft_In_Lot])`

## Report: Plant_Inventory_Worksheet_w_matrix
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Plant_Inventory_Worksheets Form › Plant_Inventory_Worksheet_w_matrix
- **Record source:** ``
- **Grouping:** B_or_C → MinOfLOCATION → MaxOfDIST_FROM_BED_BEG → Age_Class → ID
- **Subreports:** Report.Plant_Inventory_Worksheet_Field_Location_Index Subform, Report.Plant_Inventory_Worksheet_Client_Associate Subreport, Report.Plant_Inventory_Size_Matrix_Blank_Subreport
- **Fields:** AGREEMENT_LOT_CN, Age_Class, Client_and_ID, DistBetween, FirstOfActual_Sow_Calculated, FirstOfTOTAL_REQUEST, INV_SIZE_SAMPLE, Plots, SOURCE_LOT_CN, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([B_or_C]="B","Bareroot ","Container ") & "Inventory Worksheet"`
  - Detail: `=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_TEXT]`
  - PageFooterSection: `=Now()`

## Report: Plant_Processing_Table_Priorities
- **Caption:** Processing Table Assgnments
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.NMIS_Processing_Table_Priorities_c1 subreport, Report.NMIS_Processing_Table_Priorities_c2 subreport, Report.NMIS_Processing_Table_Priorities_c3 subreport, Report.NMIS_Processing_Table_Priorities_c4 subreport
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Plant_Processing_Table_Priorties]![Processing_Date]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Plant_Processing_Table_Priorties]![General_Comments]`

## Report: Plant_Processing_Table_Priorities_pc
- **Caption:** Processing Table Assigments - Precooler
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pc
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.NMIS_Processing_Table_Priorities_c1_pc subreport, Report.NMIS_Processing_Table_Priorities_c2_pc subreport, Report.NMIS_Processing_Table_Priorities_c3_pc subreport, Report.NMIS_Processing_Table_Priorities_c4_pc subreport
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Plant_Processing_Table_Priorties]![Processing_Date]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Plant_Processing_Table_Priorties]![General_Comments]`

## Report: Plant_Processing_Table_Priorities_pms
- **Caption:** Processing Table Assgnments
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities_pms
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.NMIS_Processing_Table_Priorities_c1_pms subreport, Report.NMIS_Processing_Table_Priorities_c2_pms subreport, Report.NMIS_Processing_Table_Priorities_c3_pms subreport, Report.NMIS_Processing_Table_Priorities_c4_pms subreport
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Plant_Processing_Table_Priorties]![Processing_Date]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Plant_Processing_Table_Priorties]![General_Comments]`

## Report: Plant_Quarterly_Rept
- **Caption:** Plant_Quarterly_Rept
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › Plant_Quarterly_Report › Plant_Quarterly_Rept
- **Record source:** `SELECT [*Plant_Quarterly_Report Table].*, IIf([B_or_C]="B","Bareroot - ",IIf([B_or_C]="C","Container - ","Unknown - ")) & IIf(Forms!Plant_Quarterly_Report!Category_Code="WCF","Working Capital Fund (WCF)","Special Projects") AS Group_Header FROM [*Plant_Quarterly_Report Table] WHERE ((([*Plant_Quarterly_Report Table].B_or_C)="b" Or ([*Plant_Quarterly_Report Table].B_or_C)="c"));`
- **Grouping:** B_or_C → Age_Class
- **Fields:** Age_Class, Cooler_Dest, End_Balance, Field_Dest, Firm_Orders, Group_Header, Inv_Adj, Other_Gain_or_Loss, Prev_FY_Bal, Prev_Qtr_Bal, Shipped, Sown, To_New_AC, cc_Change, cc_change_From
- **Calculated:**
  - PageHeaderSection: `=IIf(Forms!Plant_Quarterly_Report!Quarter="1A","Age Class Adjustment, First Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="1","First Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="2","Second Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="3","Third Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="4","Fourth Quarter ","Yearly Report "))))) & "FY " & Forms!Plant_Quarterly_Report!FY_Select`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Total Est Net Physical Inventory as of  " & Forms!Plant_Quarterly_Report!End_Date_for_Previous_FY`
  - PageHeaderSection: `=IIf(Forms!Plant_Quarterly_Report!Quarter="1A","* = Cost Center Change")`
  - Detail: `=Round([Firm_Orders],2)-Round([End_Balance],2)`
  - Detail: `=NZ([six],0)+NZ([To_New_AC],0)`
  - Detail: `=NZ([Prev_Qtr_Bal],0)+NZ([Inv_Adj],0)`
  - Detail: `=NZ([eight],0)+NZ([Sown],0)`
  - Detail: `=NZ([ten],0)+NZ([Shipped],0)+NZ([Cooler_Dest],0)+NZ([Field_Dest],0)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Precooler_Destroy Form
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Precooler_Destroy Form
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: Precooler_Destroy_Short Form
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Precooler_Destroy_Short Form
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: PROCESS_PAYMENT
- **Caption:** PROCESS_PAYMENT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT
- **Record source:** `PROCESS_PAYMENT`
- **Grouping:** contract_item → pack_date → id
- **Fields:** CI, CONTRACT_NO, PAYMENT_PER_AMT_GROSS, Reduced_PAYMENT_PER AMT, adjusted_gross, adjusted_gross_payment, amount_packed, contract_item, deductions, gross_processed, gross_reduction, hourly_payment, id, incremental_payment, marginal_reduction, pack_date, reduced_gross_payment, text_line1, text_line2, text_line3, text_line4, text_line5, total_payment
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - GroupFooter0: `=Sum([hourly_payment])`
  - GroupFooter0: `=Sum([gross_processed])`
  - GroupFooter0: `=Sum([gross_reduction])`
  - GroupFooter0: `=Sum([adjusted_gross])`
  - GroupFooter0: `=Sum([adjusted_gross_payment])`
  - GroupFooter0: `=Sum([reduced_gross_payment])`
  - GroupFooter0: `=Sum([deductions])`
  - GroupFooter0: `=Sum([incremental_payment])`
  - GroupFooter0: `=Sum([total_payment])`
  - GroupFooter0: `=Sum([marginal_reduction])`
  - GroupFooter0: `=Sum([amount_packed])`
  - ReportFooter: `=Sum([hourly_payment])`
  - ReportFooter: `=Sum([gross_processed])`
  - ReportFooter: `=Sum([gross_reduction])`
  - ReportFooter: `=Sum([adjusted_gross])`
  - ReportFooter: `=Sum([adjusted_gross_payment])`
  - ReportFooter: `=Sum([reduced_gross_payment])`
  - ReportFooter: `=Sum([deductions])`
  - ReportFooter: `=Sum([incremental_payment])`
  - ReportFooter: `=Sum([total_payment])`
  - ReportFooter: `=Sum([marginal_reduction])`
  - ReportFooter: `=Sum([amount_packed])`

## Report: PROCESS_PAYMENT_CONDENSED
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_CONDENSED
- **Record source:** ``
- **Grouping:** contract_item → pack_date → id
- **Subreports:** Report.PROCESS_PAYMENT_INCREMENTAL_Subreport
- **Fields:** Adj_Payment_Amt_Net, CI, CONTRACT_NO, Cull_Pct, Cull_Pct_Adjust_Pct, Cull_Pct_Over_30, IP2, Net_Payment, Net_Payment_Cull, PAYMENT_PER_AMT2, PAYMENT_PER_AMT_Cull_adj, Quality_Adj_Pct, Quality_Pct, Reduced_PAYMENT_PER AMT, amount_packed, contract_item, ds, gross_processed, hourly_payment, id, pack_date, total_payment_net
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - GroupFooter0: `=Sum([hourly_payment])`
  - GroupFooter0: `=Sum([gross_processed])`
  - GroupFooter0: `=Sum([Net_Payment])`
  - GroupFooter0: `=Sum([IP2])`
  - GroupFooter0: `=Sum([total_payment_net])`
  - GroupFooter0: `=Sum([amount_packed])`
  - GroupFooter0: `=Sum([Net_Payment_Cull])`
  - PageFooterSection: `=Date() & "  " & Time()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([hourly_payment])`
  - ReportFooter: `=Sum([gross_processed])`
  - ReportFooter: `=Sum([Net_Payment])`
  - ReportFooter: `=Sum([IP2])`
  - ReportFooter: `=Sum([total_payment_net])`
  - ReportFooter: `=Sum([amount_packed])`
  - ReportFooter: `=Sum([Net_Payment_Cull])`

## Report: PROCESS_PAYMENT_INCREMENTAL
- **Caption:** PROCESS_PAYMENT_INCREMENTAL
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_INCREMENTAL
- **Record source:** `SELECT PROCESSING_INCREMENTAL_TEMP.*, NMIS_CONTRACT_ITEMS.UNIT_CODE FROM NMIS_CONTRACT_ITEMS INNER JOIN PROCESSING_INCREMENTAL_TEMP ON NMIS_CONTRACT_ITEMS.CONTRACT_ITEM = PROCESSING_INCREMENTAL_TEMP.CONTRACT_ITEM WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]));`
- **Grouping:** UNIT_CODE → CONTRACT_ITEM
- **Fields:** CONTRACT_ITEM, CONTRACT_ITEM_DESC, PAYMENT_PER_UNIT, UNIT_CODE, units
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Contract_No]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - Detail: `=Val([Expr1])`
  - GroupFooter1: `="Totals for " & [UNIT_CODE]`
  - GroupFooter1: `=Sum([Expr1])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Expr1])`

## Report: PROCESS_PAYMENT_INCREMENTAL_Subreport
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_CONDENSED › PROCESS_PAYMENT_INCREMENTAL_Subreport
- **Record source:** ``
- **Grouping:** UNIT_CODE → CONTRACT_ITEM
- **Fields:** CONTRACT_ITEM, CONTRACT_ITEM_DESC, PAYMENT_PER_UNIT, UNIT_CODE, units
- **Calculated:**
  - Detail: `=Val([Expr1])`
  - GroupFooter1: `="Totals for " & [UNIT_CODE]`
  - GroupFooter1: `=Sum([Expr1])`
  - GroupFooter1: `=Sum([units])`
  - ReportFooter: `=Sum([Expr1])`

## Report: PROCESS_PAYMENT_Summary
- **Caption:** PROCESS_PAYMENT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_Summary
- **Record source:** `PROCESS_PAYMENT`
- **Grouping:** contract_item → pack_date → id
- **Fields:** CONTRACT_NO, contract_item
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - GroupFooter0: `=Sum([hourly_payment])`
  - GroupFooter0: `=Sum([gross_processed])`
  - GroupFooter0: `=Sum([Net_Payment])`
  - GroupFooter0: `=Sum([IP2])`
  - GroupFooter0: `=Sum([total_payment_net])`
  - GroupFooter0: `=Sum([amount_packed])`
  - GroupFooter0: `=Sum([Net_Payment_Cull])`
  - PageFooterSection: `=Date() & "  " & Time()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([hourly_payment])`
  - ReportFooter: `=Sum([gross_processed])`
  - ReportFooter: `=Sum([Net_Payment])`
  - ReportFooter: `=Sum([IP2])`
  - ReportFooter: `=Sum([total_payment_net])`
  - ReportFooter: `=Sum([amount_packed])`
  - ReportFooter: `=Sum([Net_Payment_Cull])`

## Report: PROCESS_PAYMENT_w_Incremental
- **Caption:** PROCESS_PAYMENT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › PROCESS_PAYMENT_w_Incremental
- **Record source:** `PROCESS_PAYMENT`
- **Grouping:** contract_item → pack_date → id
- **Subreports:** Report.PROCESS_PAYMENT_INCREMENTAL_Subreport
- **Fields:** CI, CONTRACT_NO, PAYMENT_PER_AMT_GROSS, Reduced_PAYMENT_PER AMT, adjusted_gross, adjusted_gross_payment, amount_packed, contract_item, deductions, gross_processed, gross_reduction, hourly_payment, id, incremental_payment, marginal_reduction, pack_date, reduced_gross_payment, text_line1, text_line2, text_line3, text_line4, text_line5, total_payment
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=[Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - GroupFooter0: `=Sum([hourly_payment])`
  - GroupFooter0: `=Sum([gross_processed])`
  - GroupFooter0: `=Sum([gross_reduction])`
  - GroupFooter0: `=Sum([adjusted_gross])`
  - GroupFooter0: `=Sum([adjusted_gross_payment])`
  - GroupFooter0: `=Sum([reduced_gross_payment])`
  - GroupFooter0: `=Sum([deductions])`
  - GroupFooter0: `=Sum([incremental_payment])`
  - GroupFooter0: `=Sum([total_payment])`
  - GroupFooter0: `=Sum([marginal_reduction])`
  - GroupFooter0: `=Sum([amount_packed])`
  - ReportFooter: `=Sum([hourly_payment])`
  - ReportFooter: `=Sum([gross_processed])`
  - ReportFooter: `=Sum([gross_reduction])`
  - ReportFooter: `=Sum([adjusted_gross])`
  - ReportFooter: `=Sum([adjusted_gross_payment])`
  - ReportFooter: `=Sum([reduced_gross_payment])`
  - ReportFooter: `=Sum([deductions])`
  - ReportFooter: `=Sum([incremental_payment])`
  - ReportFooter: `=Sum([total_payment])`
  - ReportFooter: `=Sum([marginal_reduction])`
  - ReportFooter: `=Sum([amount_packed])`

## Report: Processing_and_Shipping_Record_for_TP_Report
- **Caption:** Processing and Shipping Record for TP Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Processing_and_Shipping_Record_for_TP_Report
- **Record source:** `Processing_and_Shipping_for_TP_Record`
- **Grouping:** ID
- **Fields:** ACTIVITY_CODE, ALL_NOTES, Destination_Associate, ID, ORDER_AMT, Order, SOURCE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard!FY_For_Reports`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Processing_and_Shipping_Record_Report
- **Caption:** Processing_and_Shipping_Record_Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Processing_and_Shipping_Record_Report
- **Record source:** `Processing_and_Shipping_Record`
- **Grouping:** Parent_Code_and_Name → Associate_Code_and_Name → Class → ID
- **Fields:** ACTIVITY_CODE, ALL_NOTES, Associate_Code_and_Name, Class, ID, ORDER_AMT, Order, Parent_Code_and_Name, SOURCE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard!FY_For_Reports`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Processing_Client_Heads_Up
- **Caption:** Client Heads Up
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Processing_Client_Heads_Up
- **Record source:** ``
- **Grouping:** Priority → Location → BED_SORT_ORDER → Lot ID
- **Subreports:** Report.Lifting_Priorties subreport1, Report.Processing_Client_Heads_Up_subreport
- **Fields:** CLIENT_ASSOCIATE, CONTACT, Lot ID, ORDER_AMT, Order_Size_Spec_W_Prune2, Priority, Species_Age_Class
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Processing_Client_Heads_Up_subreport
- **Caption:** Lifting_Priorties subreport
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Processing_Client_Heads_Up › Processing_Client_Heads_Up_subreport
- **Record source:** ``
- **Grouping:** 
- **Fields:** CONTACT, Client

## Report: Processing_Contract_No_Quality_Samples
- **Caption:** No Quality Monitoring Samples
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › Processing_Contract_No_Quality_Samples
- **Record source:** ``
- **Grouping:** 
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, CLIENT_ASSOCIATE, CONTRACT_ITEM, ID, ORDER_AMT, Order ID
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Inclusive Dates: " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - PageFooterSection: `=Now()`

## Report: Processing_Contract_No_Quality_Samples_no_data
- **Caption:** No Quality Monitoring Samples
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › Processing_Contract_Processed_not_in_pmt_temp › Processing_Contract_No_Quality_Samples_no_data
- **Record source:** ``
- **Grouping:** 
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, CLIENT_ASSOCIATE, CONTRACT_ITEM, ID, ORDER_AMT, Order ID
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Inclusive Dates: " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - PageFooterSection: `=Now()`

## Report: Processing_Contract_Processed_not_in_pmt_temp
- **Caption:** Lots Processed not included in Contract Est
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Misc Subform › PROCESS_PAYMENT_ESTIMATE_INVOICE › Processing_Contract_Processed_not_in_pmt_temp
- **Record source:** `SELECT Processing_Contract_Lots_Processed_by_Date_Range.ID, Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_DATE, Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_CODE, PROCESSING_PMT_TEMP.amount_packed, Processing_Contract_Lots_Processed_by_Date_Range.Order, Processing_Contract_Lots_Processed_by_Date_Range.CONTRACT_ITEM, Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_UNITS FROM PROCESSING_PMT_TEMP RIGHT JOIN Processing_Contract_Lots_Processed_by_Date_Range ON PROCESSING_PMT_TEMP.ID = Processing_Contract_Lots_Processed_by_Date_Range.ID WHERE (((PROCESSING_PMT_TEMP.ID) Is Null)) ORDER BY Processing_Contract_Lots_Processed_by_Date_Range.ACTIVITY_DATE;`
- **Grouping:** 
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, CONTRACT_ITEM, ID, Order, amount_packed
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Inclusive Dates: " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Begin_Date] & " - " & [Forms]![PROCESS_PAYMENT_ESTIMATE_INVOICE]![End_Date]`
  - PageFooterSection: `=Now()`

## Report: Processing_QI_Summary_By_Lot_and_Date_Range
- **Caption:** 
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist › Processing_QI_Summary_By_Lot_and_Date_Range
- **Record source:** ``
- **Grouping:** Agreement_Lot_ID
- **Fields:** Agreement_Lot_ID, Count, Mechanical_Damage, Pest_Damage, Roots, Table_Sorting_Quality, Top_Size, Vigor
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Processing " & Forms!Processing_QI_Daily_Checklist!Begin_Date & IIf(Forms!Processing_QI_Daily_Checklist!End_Date<>Forms!Processing_QI_Daily_Checklist!Begin_Date," to " & Forms!Processing_QI_Daily_Checklist!End_Date)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Processing_QI_Summary_By_Table_and_Date_Range
- **Caption:** 
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist › Processing_QI_Summary_By_Table_and_Date_Range
- **Record source:** ``
- **Grouping:** SAMPLE_STATION
- **Subreports:** Report.Processing_QI_Summary_By_Table_and_Date_Range_Subreport
- **Fields:** Count, Mechanical_Damage, Pest_Damage, Roots, SAMPLE_STATION, Table_Sorting_Quality, Top_Size, Vigor
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Processing " & Forms!Processing_QI_Daily_Checklist!Begin_Date & IIf(Forms!Processing_QI_Daily_Checklist!End_Date<>Forms!Processing_QI_Daily_Checklist!Begin_Date," to " & Forms!Processing_QI_Daily_Checklist!End_Date)`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Processing_QI_Summary_By_Table_and_Date_Range_Subreport
- **Caption:** NMIS_Processing_QI_Shed_Summary
- **Menu path:** Switchboard › NMIS_PROCESS_QUALITY_SAMPLES › Processing_QI_Daily_Checklist › Processing_QI_Summary_By_Table_and_Date_Range › Processing_QI_Summary_By_Table_and_Date_Range_Subreport
- **Record source:** `Processing_QI_Samples_Table_Summary_by_Date_Range4`
- **Grouping:** 
- **Fields:** Count, Mechanical_Damage, Pest_Damage, Roots, Table_Sorting_Quality, Top_Size, Vigor

## Report: Processing_Quality_Recording_Form_050357
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Order_Pack_Form › Processing_Quality_Recording_Form_050357
- **Record source:** ``
- **Grouping:** Cost_Center → ID
- **Fields:** CLIENT, CLI_ORDER, ID, Order_Size_Spec_W_Prune, SOURCE_CODE1, Species_Product_Description
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=IIf([Cost_Center]="B","Amt/Bag: _____","Amt/Box: _____")`
  - Detail: `=IIf([Cost_Center]="B","Too Long")`
  - Detail: `=IIf([Cost_Center]="B","Too Short")`
  - Detail: `=IIf([Cost_Center]="B","Knots","Comment")`
  - Detail: `=IIf([Cost_Center]="B","Sample Size","Extra Seedlings")`
  - Detail: `=IIf([Cost_Center]="B","Bndl Counts","Bag Counts")`
  - Detail: `=IIf([Cost_Center]="B","Amt/Bag","Amt/Box")`
  - Detail: `=IIf([Cost_Center]="B","Bag Count","Box Count")`
  - PageFooterSection: `=[ID] & " / " & Left$([ORDER_CN],Len([ORDER_CN])-7)`

## Report: Processing_Table_Assignments_Detailed
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Processing_Table_Assignments_Detailed
- **Record source:** ``
- **Grouping:** TABLE → PROCESSING_PRIORITY → ID → ORDER_CN
- **Subreports:** Report.Table_assignment_Precool_detailed Subrep
- **Fields:** ACTIVITY_CODE, All_Overrun, CLIENT, CONTRACT_ITEM, ID_ORDER, NNote, NOTE, Order_Size_Spec_W_Prune, SERVICES_STRING, SOURCE_CODE, Species_Product_Description, Status, TA, [Total_Order]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Plant_Processing_Table_Priorties]![Processing_Date]`
  - Detail: `=IIf([SERVICES_STRING] Like "*dblsrt*","Double Sort")`
  - PageFooterSection: `=Now()`

## Report: Processing_Table_Sign_Precooler_Totals
- **Caption:** Processing_Table_Sign_Precooler_Totals
- **Menu path:** Switchboard › NMIS_PROCESS_LABELS_MAIN › NMIS_PROCESS_LABELS_ST1 › NMIS_ORDERS_PROCESSING_TABLE_SIGN_Labeler › Processing_Table_Sign_Precooler_Totals
- **Record source:** `SELECT transaction_totals_precooler_balance.AGREEMENT_LOT_CN, transaction_totals_precooler_balance.SumOfNUMBER_OF_ACTIVITY_UNITS, transaction_totals_precooler_balance.UNIT_CODE, [SumOfNUMBER_OF_ACTIVITY_UNITS] & " " & [Unit_Code] AS Display FROM transaction_totals_precooler_balance;`
- **Grouping:** 
- **Fields:** Display

## Report: Product_Inventory_Data_Summary
- **Caption:** 
- **Menu path:** Switchboard › Open_Product_Inventories_Form › NMIS_PRODUCT_INVENTORIES › Product_Inventory_Data_Summary
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.NMIS_PRODUCT_INVENTORY_Summary subreport
- **Fields:** Age_Class, ID, ID_Activities_CN, ID_SOURCE2, Loc, Major_Client, TOTAL_REQUEST
- **Calculated:**
  - PageHeaderSection: `="Inventory Data Summary"`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Total_Containers subform].[Form]![Total_Containers]`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=[Forms]![NMIS_PRODUCT_INVENTORIES]![Agreement_Lot_Default_Factors_For_Cycle subform].[Form]![Plot_Size]`

## Report: PRODUCT_PULL_ticket
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › PRODUCT_PULL_ticket
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.PRODUCT_TKT_LOTS_PULL subrep
- **Fields:** ASSOC_NAME, Associate_NOTE, CARRIER, CLIENT, CN, CONTACT_CN, DELIVERY_NAME, DESIRED_DATE, FY, NOTE, PARENT_NAME, Reference, Reporting_Parent, TKT_NAME, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="(" & [Reporting_Parent] & ")"`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Product_Storage_Containers_Used
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Containers_Used
- **Record source:** ``
- **Grouping:** FISCAL_YEAR
- **Fields:** AvgOfAMT_PER_UNIT, FISCAL_YEAR, UNIT_CODE, UNIT_DESC, Units
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Begin_Date] & IIf(Not IsNull([End_Date])," - " & [End_Date])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Product_Storage_Containers_Used_by_client
- **Caption:** Product Storage Units Use Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Containers_Used_by_client
- **Record source:** ``
- **Grouping:** FISCAL_YEAR → UNIT_CODE
- **Fields:** CLIENT_ASSOCIATE, FISCAL_YEAR, UNIT_CODE, UNIT_DESC, Units
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Begin_Date] & IIf(Not IsNull([End_Date])," - " & [End_Date])`
  - GroupFooter0: `=Sum([Units])`
  - GroupFooter0: `="Total for " & [UNIT_CODE] & " - " & [unit_desc]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Product_Storage_Detailed_Summary
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Detailed_Summary
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → FISCAL_YEAR → Client → AGREEMENT_LOT_ID → Plntmstr_symbol → Sort → SUBLOT_NO → Source_Location
- **Subreports:** Report.PRODUCT_STORAGE_SUMMARY_SUBREPORT
- **Fields:** AGREEMENT_LOT_ID, Client, FISCAL_YEAR, PG, SUBLOT_NO, Source_Location, SumOfNet, UNIT, unit
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([SumOfNet])`
  - GroupFooter0: `=Sum([SumOfNet])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Product_Storage_Detailed_Summary_with_notes
- **Caption:** Product Storage Detailed Summary
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Detailed_Summary_with_notes
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → FISCAL_YEAR → Client → ID → Plntmstr_symbol → Sort → SUBLOT_NO → Source_Location
- **Subreports:** Report.PRODUCT_STORAGE_SUMMARY_SUBREPORT
- **Fields:** Client, FISCAL_YEAR, ID, NOTE, PG, SUBLOT_NO, Source_Location, SumOfNet, UNIT, unit
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([SumOfNet])`
  - GroupFooter0: `=Sum([SumOfNet])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Product_Storage_Lot_Index
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Lot_Index
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → AGREEMENT_LOT_ID → Plntmstr_symbol → Sort → SUBLOT_NO → Source_Location
- **Subreports:** Report.PRODUCT_STORAGE_SUMMARY_SUBREPORT
- **Fields:** AGREEMENT_LOT_ID, END_FY, PG, Product_for_Cycle, SUBLOT_NO, Source_Location, SumOfNet, unit
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([SumOfNet])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: PRODUCT_STORAGE_RECORD
- **Caption:** PRODUCT_STORAGE_RECORD
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PRODUCT_STORAGE_RECORD
- **Record source:** `PRODUCT_STORAGE_RECORD Query`
- **Grouping:** ID → CN → Grow_Location
- **Fields:** ALL, CLIENT, CLIENT_NAME, GRADING_SPECS, Grow_Location, ID, ID_SOURCE2, INSERTED_DATE, ORDER_AMT, ORDER_TYPE, ORUN, Order_ID, PRODUCT_GROUP, SERVICES_STRING, client
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[ID] & " / " & [order_id]`
  - GroupFooter2: `=[ID] & " / " & [order_id]`

## Report: PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM
- **Caption:** PRODUCT_STORAGE_RECORD
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_INPUT › NMIS_PROCESSING_ORDERS_INPUT › PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM
- **Record source:** ``
- **Grouping:** Grow_Location → ID → CN
- **Fields:** ALL, CLIENT, CLIENT_NAME, GRADING_SPECS, Grow_Location, ID, ID_SOURCE2, INSERTED_DATE, ORDER_AMT, ORDER_TYPE, ORUN, PRODUCT_GROUP, SERVICES_STRING
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM
- **Caption:** 
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › PRODUCT_STORAGE_RECORD_FROM_ORDER_REVIEW_FORM
- **Record source:** ``
- **Grouping:** Grow_Location → ID → CN
- **Fields:** ALL, CLIENT, CLIENT_NAME, GRADING_SPECS, Grow_Location, ID, ID_SOURCE2, INSERTED_DATE, ORDER_AMT, ORDER_TYPE, ORUN, PRODUCT_GROUP, SERVICES_STRING
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: Product_Storage_Summary
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Summary
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → FISCAL_YEAR → Client → ID → order_ID_lot_ID → Plntmstr_symbol → Sort → SUBLOT_NO → Source_Location → Bed_Start
- **Fields:** Client, FISCAL_YEAR, PG, SUBLOT_NO, Source_Location, UNIT, order_ID_lot_ID, unit
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([SumOfNet])`
  - GroupFooter0: `=Sum([SumOfNet])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Product_Storage_Summary2
- **Caption:** Packaging Summary
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Summary2
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → FISCAL_YEAR → Client → Plntmstr_symbol → Sort → order_ID_lot_ID → SUBLOT_NO → Source_Location → Bed_Start
- **Fields:** Client, FISCAL_YEAR, PG, PLNTMSTR_SYMBOL, SUBLOT_NO, Source_Location, UNIT, order_ID_lot_ID, unit
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([SumOfNet])`
  - GroupFooter2: `=Sum([SumOfNet])`
  - GroupFooter0: `=Sum([SumOfNet])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Product_Storage_Summary3
- **Caption:** Product Storage Summary by Species
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Summary3
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → FISCAL_YEAR → Plntmstr_symbol → Client → Sort → SUBLOT_NO → NMIS_ORDERS.CN → Source_Location → Bed_Start
- **Fields:** FISCAL_YEAR, PG, PLNTMSTR_SYMBOL, SUBLOT_NO, UNIT, [Source_Location], order_ID_lot_ID, unit
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([SumOfNet])`
  - GroupFooter2: `=Sum([SumOfNet])`
  - GroupFooter0: `=Sum([SumOfNet])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: PRODUCT_STORAGE_SUMMARY_SUBREPORT
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Product_Storage_Summary › Product_Storage_Detailed_Summary › PRODUCT_STORAGE_SUMMARY_SUBREPORT
- **Record source:** `SELECT [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].*, [ORDER] & [SUBLOT_NO] AS Order_SUBLOT, [CLIENT_ASSOCIATE] & "/" & [ORDER] AS CA_ORDER FROM [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE] ORDER BY [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].ORDER, [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].LOCATION, [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].SUBLOT_NO, [*PRODUCT_STORAGE_SUMMARY_SUBREPORT_TABLE].AMT_PER_UNIT;`
- **Grouping:** 
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, AMT_PER_UNIT, BALANCE, CA_ORDER, CLIENT_ASSOCIATE, LOCATION, SUBLOT_NO, SumOfNUMBER_OF_ACTIVITY_UNITS, UNIT_CODE

## Report: PRODUCT_TICKET
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PRODUCT_TICKET
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.PRODUCT_TKT_LOTS subrep
- **Fields:** ASSOC_NAME, CARRIER, CLIENT, CN, CONTACT_CN, DELIVERY_NAME, DESIRED_DATE, FY, NOTE, NURSERY_CONTACT_CN, PARENT_NAME, Reference, Reporting_Parent, TKT_NAME, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="(" & [Reporting_Parent] & ")"`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: PRODUCT_ticket2b
- **Caption:** PRODUCT_TICKET
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › PRODUCT_ticket2b
- **Record source:** `PRODUCT_TICKET2 Query`
- **Grouping:** TKT_NO
- **Subreports:** Report.PRODUCT_TKT2_LOTS subrep
- **Fields:** ASSOCIATE_NAME, CARRIER, CLIENT, CN, DELIVERY_NAME, DESIRED_DATE, EXT_DOC_REF, FY, NOTE, PARENT_NAME, Reporting_Parent, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[PRODUCT_TKT_LOTS subrep].Report!TKT_NAME`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: PRODUCT_TKT2_LOTS subrep
- **Caption:** PRODUCT_TKT_LOTS Query
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › PRODUCT_ticket2b › PRODUCT_TKT2_LOTS subrep
- **Record source:** `PRODUCT_TKT_ORDR Query`
- **Grouping:** TICKET_CN → NMIS_ID_LOCATIONS.UNIT_CODE → Product_Unit → PRODUCT_DESC2 → ID → ORDER_ID_ACTIVITY → CONTAINERS
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, AMT_PER_UNIT, CONTAINERS, NMIS_ID_LOCATIONS.UNIT_CODE, ORDER_ID_ACTIVITY, PRODUCT_DESC2, Product_Unit, SPCL_SVCS, TICKET_CN, TKT_NAME, TREES
- **Calculated:**
  - GroupHeader1: `=Sum([CONTAINERS])`
  - GroupHeader1: `=Sum([TREES])`
  - Detail: `=IIf([ORDER_FOREST]<>Mid$(NZ([Reports]![PRODUCT_TICKET2]![Reporting_Parent],"      "),3,2),"l")`
  - GroupFooter2: `=Sum([CONTAINERS])`
  - GroupFooter2: `=Sum([TREES])`
  - GroupFooter2: `="Totals for " & [PRODUCT_DESC2]`
  - GroupFooter0: `=Sum([CONTAINERS])`
  - GroupFooter0: `="Totals for Ticket " & [Tkt_No]`
  - GroupFooter0: `=Sum([TREES])`

## Report: PRODUCT_TKT_LOTS subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PRODUCT_TICKET › PRODUCT_TKT_LOTS subrep
- **Record source:** ``
- **Grouping:** TICKET_CN → Cat → PRODUCT_DESC2 → Product_Unit → Scientific_Name → Agreement_Lot_ID_and_Source → NMIS_ID_LOCATIONS.UNIT_CODE → ID_SUBLOT → ORDER_ID_ACTIVITY → CONTAINERS
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, AMT_PER_UNIT, Activity_Note, CLIENT_ASSOCIATE, CONTAINERS, Cat, NMIS_ID_LOCATIONS.UNIT_CODE, ORDER_ID_ACTIVITY, PRODUCT_DESC2, Product_Unit, SPCL_SVCS, Scientific_Name, TICKET_CN, TKT_NAME, TREES, VERNACULAR
- **Calculated:**
  - GroupHeader1: `=Sum([CONTAINERS])`
  - GroupHeader1: `=Sum([TREES])`
  - Detail: `=IIf([ORDER_FOREST]<>Mid$(NZ([Reports]![PRODUCT_TICKET]![Reporting_Parent],"      "),3,2),"l")`
  - GroupFooter3: `=Sum([CONTAINERS])`
  - GroupFooter3: `=Sum([TREES])`
  - GroupFooter2: `=Sum([CONTAINERS])`
  - GroupFooter2: `=Sum([TREES])`
  - GroupFooter2: `="Totals for " & [PRODUCT_DESC2]`
  - GroupFooter6: `=Sum([CONTAINERS])`
  - GroupFooter6: `=Sum([TREES])`
  - GroupFooter6: `="Totals for "`
  - GroupFooter0: `=Sum([CONTAINERS])`
  - GroupFooter0: `="Totals for Ticket " & [Tkt_No]`
  - GroupFooter0: `=Sum([TREES])`

## Report: PRODUCT_TKT_LOTS_PULL subrep
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › PRODUCT_PULL_ticket › PRODUCT_TKT_LOTS_PULL subrep
- **Record source:** ``
- **Grouping:** TICKET_CN → LOCATION → Agreement_Lot_ID_and_Source → ID_SUBLOT → ORDER_ID_ACTIVITY → CONTAINERS
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE, AMT_PER_UNIT, CONTAINERS, LOCATION_DESC, NMIS_ID_LOCATIONS.UNIT_CODE, ORDER_ID_ACTIVITY, Product_Unit, SPCL_SVCS, TICKET_CN, TKT_NAME, TREES
- **Calculated:**
  - GroupHeader1: `=Sum([CONTAINERS])`
  - GroupHeader1: `=Sum([TREES])`
  - Detail: `=IIf([ORDER_FOREST]<>Mid$(NZ([Reports]![PRODUCT_PULL_TICKET]![Reporting_Parent],"      "),3,2),"l")`
  - GroupFooter0: `=Sum([CONTAINERS])`
  - GroupFooter0: `="Total containers for " & [Tkt_No]`

## Report: PROOF_ALL
- **Caption:** PROOF_ALL_LOTS
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PROOF_ALL
- **Record source:** ``
- **Grouping:** Page_Break → Sort → CATEGORY_DESC → PRODUCT_CLASS → END_FY → ID
- **Subreports:** Report.PROOF_ALL_AGR, Report.PROOF_ALL_ORD, Report.PROOF_ALL_SOW, Report.PROOF_ALL_LFT, Report.PROOF_ALL_LCT, Report.PROOF_ALL_PCT
- **Fields:** AGR_LOT_CN, CATEGORY_DESC, GROSS_INV, ID, NET_INV, Product_Species, SIZE, Sort, SumOfAMOUNT_REQUESTED
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - PageHeaderSection: `=[Show Notes (y to show or blank to not show)]`
  - Detail: `=[PROOF_ALL_ORD].[Report]![Sum_Orders]`
  - Detail: `=NZ([PROOF_ALL_ORD].[Report]![Sum_Packed],"No Pack")`
  - Detail: `=IIf([Net_Inv]>=[SumOfAmount_Requested],[SumOfAmount_Requested],[Net_Inv])`
  - Detail: `=IIf(Round([Obligation],3)>Round([Total_Orders],3),"**Obligation Bal " & Round([Obligation]-(IIf(nz([Total_Packed],0)<nz([Total_Orders],0),nz([Total_Packed],0),nz([Total_Orders],0))),3) & " M **","")`

## Report: PROOF_ALL_AGR
- **Caption:** PROOF_ALL_AGR subrep
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_AGR
- **Record source:** `**proof_all_agr`
- **Grouping:** AGR_LOT_CN → CLIENT_ASSOCIATE
- **Fields:** AGR_LOT_CN, AMOUNT_REQUESTED, CLIENT_ASSOCIATE
- **Calculated:**
  - GroupFooter0: `=Sum([AMOUNT_REQUESTED])`

## Report: PROOF_ALL_From_Billing_Form
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form
- **Record source:** ``
- **Grouping:** Page_Break → Sort → CATEGORY_DESC → PRODUCT_CLASS → END_FY → ID
- **Subreports:** Report.PROOF_ALL_AGR, Report.PROOF_ALL_ORD_From_Billing_Form, Report.PROOF_ALL_SOW, Report.PROOF_ALL_LFT, Report.PROOF_ALL_LCT, Report.PROOF_ALL_PCT
- **Fields:** AGR_LOT_CN, CATEGORY_DESC, GROSS_INV, ID, NET_INV, Product_Species, SIZE, Sort, SumOfAMOUNT_REQUESTED
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Page " & [Page] & " of " & [Pages]`
  - PageHeaderSection: `=Now()`
  - PageHeaderSection: `=[Forms]![Switchboard]![FY_For_Reports]`
  - PageHeaderSection: `=[Show Notes (y to show or blank to not show)]`
  - Detail: `=IIf([Net_Inv]>=[SumOfAmount_Requested],[SumOfAmount_Requested],[Net_Inv])`
  - Detail: `=[PROOF_ALL_ORD].[Report]![Sum_Orders]+Nz([PROOF_ALL_ORD].[Report]![Sum_Overrun],0)`
  - Detail: `=NZ([PROOF_ALL_ORD].[Report]![Sum_Packed],"No Pack")`
  - Detail: `=IIf([Total_Packed]<[Obligation],IIf(Round([Obligation],3)>Round([Total_Orders],3),"**Obligation Bal " & Round([Obligation]-(IIf(nz([Total_Packed],0)<nz([Total_Orders],0),nz([Total_Packed],0),nz([Total_Orders],0))),3) & " M **",""))`

## Report: PROOF_ALL_GRADE
- **Caption:** PROOF_ALL_GRADE Query
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_ORD_From_Billing_Form › PROOF_ALL_GRADE
- **Record source:** `PROOF_ALL_GRADE Query`
- **Grouping:** ORDER_CN → GRADE
- **Fields:** GRADE, GRADE_PCT, ORDER_CN

## Report: PROOF_ALL_LCT
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_LCT
- **Record source:** ``
- **Grouping:** AGR_LOT_CN
- **Fields:** AGR_LOT_CN, CONTAINERS, USE
- **Calculated:**
  - ReportFooter: `=Sum([CONTAINERS])`

## Report: PROOF_ALL_LFT
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_LFT
- **Record source:** ``
- **Grouping:** AGR_LOT_CN
- **Fields:** AGR_LOT_CN, CONTAINERS, USE
- **Calculated:**
  - ReportFooter: `=Sum([CONTAINERS])`

## Report: PROOF_ALL_ORD
- **Caption:** PROOF_ALL_ORD subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › PROOF_ALL › PROOF_ALL_ORD
- **Record source:** `SELECT [**proof_all_ord].*, IIf(Left$(nz([Reports]![PROOF_ALL]![Show_Notes],"N"),1)="Y",IIf(Not IsNull([Client_Note]),"C: " & [Client_note] & " ")) & IIf(Left$(nz([Reports]![PROOF_ALL]![Show_Notes],"N"),1)="Y",IIf(Not IsNull([Nursery_Note]),"N: " & [Nursery_note])) AS [Note] FROM [**proof_all_ord] INNER JOIN NMIS_ORDERS ON [**proof_all_ord].O_CN = NMIS_ORDERS.CN;`
- **Grouping:** AGR_LOT_CN → CLIENT_ASSOCIATE → ACTIVITY_CODE → O_CN
- **Subreports:** Report.PROOF_ALL_GRADE
- **Fields:** ACTIVITY_CODE, AGR_LOT_CN, Activity_Hours, Activity_Hours_Contract_Item, CLIENT_ASSOCIATE, Note, ORDER_AMT, ORD_ID, ORUN, OVERRUN_ALL, PK_TREES, SERVICES_STRING, SIZE
- **Calculated:**
  - Detail: `=IIf([SIZE]<>[Reports]![PROOF_ALL]![SIZE],"k","")`
  - Detail: `=IIf((Left$([CLIENT_ASSOCIATE],4) & "00")<>[Reports]![PROOF_ALL]![Sort],"j")`
  - Detail: `=IIf([Services_String] Like "*2nd*","l")`
  - Detail: `=IIf([Services_String] Like "*DBLSRT*","m")`
  - GroupFooter1: `=Sum([ORDER_AMT])`
  - GroupFooter1: `=Sum([PK_TREES])`
  - GroupFooter1: `=Sum([Activity_Hours])`
  - GroupFooter1: `=Sum([Activity_Hours])`

## Report: PROOF_ALL_ORD_From_Billing_Form
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_ORD_From_Billing_Form
- **Record source:** ``
- **Grouping:** AGR_LOT_CN → CLIENT_ASSOCIATE → ACTIVITY_CODE → O_CN
- **Subreports:** Report.PROOF_ALL_GRADE
- **Fields:** ACTIVITY_CODE, AGR_LOT_CN, Activity_Hours, Activity_Hours_Contract_Item, CLIENT_ASSOCIATE, Higrade, Note, ORDER_AMT, ORD_ID, ORUN, OVERRUN_ALL, PK_TREES, SERVICES_STRING, SIZE
- **Calculated:**
  - Detail: `=IIf([SIZE]<>[Reports]![PROOF_ALL_From_Billing_Form]![SIZE],"k","")`
  - Detail: `=IIf([CLIENT_ASSOCIATE]<>[Reports]![PROOF_ALL_From_Billing_Form]![PROOF_ALL_AGR].[Report]![CLIENT_ASSOCIATE],"j")`
  - Detail: `=IIf([Services_String] Like "*2nd*","l")`
  - Detail: `=IIf([Services_String] Like "*DBLSRT*" And Not IsNull([Activity_Hours]),"m")`
  - GroupFooter1: `=Sum([ORDER_AMT])`
  - GroupFooter1: `=Sum([PK_TREES])`
  - GroupFooter1: `=Sum([Activity_Hours])`
  - GroupFooter1: `=Sum([Activity_Hours])`
  - GroupFooter1: `=Sum([PK_TREES])/[Reports]![PROOF_ALL_From_Billing_Form]![SumOfAMOUNT_REQUESTED]`
  - GroupFooter1: `=Sum([PK_TREES])/[Reports]![PROOF_ALL_From_Billing_Form]![NET_INV]`
  - GroupFooter1: `=IIf(Not IsNull([PCTofReq]),"Req")`
  - GroupFooter1: `=IIf(Not IsNull([PCTofNET]),"Net")`
  - GroupFooter1: `=Sum([ORUN])`

## Report: PROOF_ALL_PCT
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_PCT
- **Record source:** ``
- **Grouping:** AGR_LOT_CN
- **Fields:** AGR_LOT_CN, PK_C, USE
- **Calculated:**
  - ReportFooter: `=Sum([PK_C])`

## Report: PROOF_ALL_SOW
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › PROOF_ALL_From_Billing_Form › PROOF_ALL_SOW
- **Record source:** ``
- **Grouping:** AGR_LOT_CN
- **Fields:** AGR_LOT_CN, SOWN
- **Calculated:**
  - ReportFooter: `=Sum([SOWN])`

## Report: Propagule_Billing
- **Caption:** 
- **Menu path:** Switchboard › Propagule_Billing_Report › Propagule_Billing
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → Jobcode → PRODUCT_DESC → ACTIVITY_CODE → SOURCE
- **Fields:** CLIENT_ASSOCIATE, Chg_Per_AC, ID, Jobcode, Min_Chg_Used, No_Harvest, ORDER_AMT, PRODUCT_DESC, Reporting_Parent, SOURCE, Setup_Charge, Total_Charge
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre]`
  - Detail: `=Round([MGMT_CODE_PCT],2)`
  - GroupFooter1: `=Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre])`
  - GroupFooter1: `=Sum([Total_Charge])`
  - GroupFooter2: `=Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre])`
  - GroupFooter2: `=Sum([Total_Charge])`
  - GroupFooter2: `=[Forms]![Propagule_Billing_Report]![Title_Line]`
  - GroupFooter2: `=[Forms]![Propagule_billing_Report]![Signature_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Propagule_Billing_summary
- **Caption:** 
- **Menu path:** Switchboard › Propagule_Billing_Report › Propagule_Billing_summary
- **Record source:** ``
- **Grouping:** Reporting_Parent → CLIENT_ASSOCIATE → Jobcode → SOURCE
- **Fields:** CLIENT_ASSOCIATE, Reporting_Parent
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `="Propagule Invoice Summary FY " & [fiscal_year]`
  - GroupFooter1: `=Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre])`
  - GroupFooter1: `=Sum([Total_Charge])`
  - GroupFooter2: `=Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre])`
  - GroupFooter2: `=Sum([Total_Charge])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum(Round([Order_Amt]*[MGMT_CODE_PCT]/100,3)/[Forms]![Propagule_Billing_Report]![Bedfeet_Per_Acre])`
  - ReportFooter: `=Sum([Total_Charge])`

## Report: Propagule_Destroy_Priorities
- **Caption:** NMIS_TOLIFT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Destroy_Priorities
- **Record source:** ``
- **Grouping:** HARVEST_METHOD → SORT → ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HARVEST_METHOD, HARVEST_PRIORITY, ID, NOTE, Number_Of_Beds, Total_Ft, VERNACULAR, [Scientific_Name]
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="Planned Destroy  " & [Forms]![Propagule_Harvest_Priorties]![Harvest_Date]`
  - GroupFooter0: `=Sum([Total_Ft])`
  - GroupFooter0: `=Sum([Number_Of_Beds])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=[Forms]![Propagule_Harvest_Priorties]![General_Comments]`
  - ReportFooter: `=Sum([Total_Ft])`
  - ReportFooter: `=Sum([Number_Of_Beds])`

## Report: PROPAGULE_HARVEST_DRYING_BIN
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN
- **Record source:** ``
- **Grouping:** Number_Of_Tags → ID → CLIENT_ASSOCIATE
- **Subreports:** Report.Plant_Inventory_Worksheet_Field_Location_Index Subform, Report.Plant_Inventory_Worksheet_Field_Location_Index Subform
- **Fields:** CLIENT_ASSOCIATE, ID2, ID_ORDER, Location, Number_Of_Tags, PLNTMSTR_SYMBOL, SOURCE, Scientific_Name, VERNACULAR, id2
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard!FY_For_Reports`
  - Detail: `=Forms!Drying_Tray_Input_Form![Date:]`
  - Detail: `=Forms!Drying_Tray_Input_Form!Initials`
  - Detail: `=Forms!Drying_Tray_Input_Form!Harvest_Method`
  - Detail: `=Forms!Drying_Tray_Input_Form!Number_Of_Trays`
  - Detail: `=Forms!Drying_Tray_Input_Form![Date:]`
  - Detail: `=Forms!Drying_Tray_Input_Form!Initials`
  - Detail: `=Forms!Drying_Tray_Input_Form!Harvest_Method`
  - Detail: `=Forms!Drying_Tray_Input_Form!Number_Of_Trays`
  - PageFooterSection: `=Now()`

## Report: PROPAGULE_HARVEST_DRYING_BIN_Label
- **Caption:** NMIS_ORDER_FORM
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN_Label
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE
- **Fields:** CLIENT_ASSOCIATE, ID, Location, Number_Of_Tags, Order_ID, PLNTMSTR_SYMBOL, SOURCE, Scientific_Name, VERNACULAR
- **Calculated:**
  - Detail: `=Forms!Drying_Tray_Input_Form![Date:]`
  - Detail: `=Forms!Drying_Tray_Input_Form!Initials`
  - Detail: `=Forms!Drying_Tray_Input_Form!Harvest_Method`
  - Detail: `=Forms!Drying_Tray_Input_Form!Number_Of_Trays`
  - Detail: `=[Forms]![Drying_Tray_Input_Form]![Date:]`
  - Detail: `=[Forms]![Drying_Tray_Input_Form]![Initials]`
  - Detail: `=[Forms]![Drying_Tray_Input_Form]![Harvest_Method]`
  - Detail: `=[Forms]![Drying_Tray_Input_Form]![Number_Of_Trays]`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=[Forms]![Switchboard]![FY_For_Reports]`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=[Forms]![Switchboard]![FY_For_Reports]`

## Report: PROPAGULE_HARVEST_DRYING_BIN_Single_Tray
- **Caption:** NMIS Propagule Harvest Drying Tray Tag
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Drying_Tray_Input_Form › PROPAGULE_HARVEST_DRYING_BIN_Single_Tray
- **Record source:** ``
- **Grouping:** ID → CLIENT_ASSOCIATE
- **Subreports:** Report.Plant_Inventory_Worksheet_Field_Location_Index Subform, Report.Plant_Inventory_Worksheet_Field_Location_Index Subform
- **Fields:** CLIENT_ASSOCIATE, ID, ID2, ID_ORDER, Location, PLNTMSTR_SYMBOL, SOURCE, Scientific_Name, VERNACULAR
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Switchboard!FY_For_Reports`
  - Detail: `=Forms!Drying_Tray_Input_Form![Date:]`
  - Detail: `=Forms!Drying_Tray_Input_Form!Initials`
  - Detail: `=Forms!Drying_Tray_Input_Form!Harvest_Method`
  - Detail: `=Forms!Drying_Tray_Input_Form!Number_Of_Trays`
  - Detail: `=Forms!Drying_Tray_Input_Form![Date:]`
  - Detail: `=Forms!Drying_Tray_Input_Form!Initials`
  - Detail: `=Forms!Drying_Tray_Input_Form!Harvest_Method`
  - Detail: `=Forms!Drying_Tray_Input_Form!Number_Of_Trays`
  - PageFooterSection: `=Now()`

## Report: Propagule_Harvest_Priorities
- **Caption:** NMIS_TOLIFT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities
- **Record source:** ``
- **Grouping:** HARVEST_METHOD → SORT → ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HARVEST_METHOD, HARVEST_PRIORITY, ID, NOTE, Number_Of_Beds, Total_Ft, VERNACULAR, [Scientific_Name]
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="Planned Harvest for  " & [Forms]![Propagule_Harvest_Priorties]![Harvest_Date]`
  - GroupFooter0: `=Sum([Total_Ft])`
  - GroupFooter0: `=Sum([Number_Of_Beds])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=[Forms]![Propagule_Harvest_Priorties]![General_Comments]`
  - ReportFooter: `=Sum([Total_Ft])`
  - ReportFooter: `=Sum([Number_Of_Beds])`

## Report: Propagule_Harvest_Priorities_by_Client_loc_Checklist
- **Caption:** Propagule Harvest Accomplishment Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_by_Client_loc_Checklist
- **Record source:** ``
- **Grouping:** Major_Client → MinOfMinOfLOCATION → ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HD, ID, Major_Client
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="As of " & Date()`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Propagule_Harvest_Priorities_by_loc_Checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_by_loc_Checklist
- **Record source:** ``
- **Grouping:** MinOfMinOfLOCATION → ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HD, ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="As of " & Date()`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Propagule_Harvest_Priorities_Checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_Checklist
- **Record source:** ``
- **Grouping:** ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HD, ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="As of " & Date()`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Propagule_Harvest_Priorities_Harvested
- **Caption:** Propagule Harvest Accomplishment Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_Harvested
- **Record source:** `SELECT NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_PROPAGULE_HARVEST_PRIORITIES.NOTE, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_DATE, NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN, NMIS_SPECIES.SPECIES_GROUP FROM NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_PROPAGULE_HARVEST_PRIORITIES INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) WHERE (((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_DATE) Is Not Null) AND ((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY)=[Forms]![Propagule_Harvest_Priorties]![Like_Harvest_FY]));`
- **Grouping:** SPECIES_GROUP → HARVEST_PRIORITY → ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HARVEST_DATE, ID, SPECIES_GROUP
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="As of " & Date()`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Propagule_Harvest_Priorities_Harvested_by_Date
- **Caption:** Propagule Harvest Accomplishment Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_Harvested_by_Date
- **Record source:** `SELECT NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_PROPAGULE_HARVEST_PRIORITIES.NOTE, NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN, NMIS_SPECIES.SPECIES_GROUP, [HARVEST_DATE] & " - " & [HARVEST_METHOD] AS HD FROM NMIS_SPECIES INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_PROPAGULE_HARVEST_PRIORITIES INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) AND (NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SPECIES_PRODUCTS.PLNTMSTR_SYMBOL) WHERE (((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY)=[Forms]![Propagule_Harvest_Priorties]![Like_Harvest_FY]) AND ((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_DATE) Is Not Null));`
- **Grouping:** SPECIES_GROUP → HD → HARVEST_PRIORITY → ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HD, ID, SPECIES_GROUP
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="As of " & Date()`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Propagule_Harvest_Priorities_no_Harvest
- **Caption:** Propagule Harvest Accomplishment Report
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Harvest_Priorities_no_Harvest
- **Record source:** `SELECT NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_PRIORITY, NMIS_AGREEMENT_LOTS.ID, NMIS_PROPAGULE_HARVEST_PRIORITIES.NOTE, IIf([HARVEST]=True,IIf(Not IsNull([HARVEST_DATE]),[HARVEST_DATE],"NOT HARVESTED"),"**NOT TO BE HARVESTED**") AS HD, NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY, NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST FROM NMIS_PROPAGULE_HARVEST_PRIORITIES INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_PROPAGULE_HARVEST_PRIORITIES.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST_FY) Like [Forms]![Propagule_Harvest_Priorties]![Like_Harvest_FY]) AND ((NMIS_PROPAGULE_HARVEST_PRIORITIES.HARVEST)=False));`
- **Grouping:** ID
- **Subreports:** Report.Propagule_Harvest_Priorities_Subform
- **Fields:** HD, ID
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="As of " & Date()`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]`
  - Detail: `=[Propagule_Harvest_Priorities_Subform].[Report]![Sum_SumOfTotal_Activity_Units]/[Forms]![Propagule_Harvest_Priorties]![NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Propagule_Harvest_Priorities_Subform
- **Caption:** Field Form
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Propagule_Harvest_Priorties › Propagule_Destroy_Priorities › Propagule_Harvest_Priorities_Subform
- **Record source:** `SELECT [*Propagule_Harvest_Priorities_Lot_Table].* FROM [*Propagule_Harvest_Priorities_Lot_Table];`
- **Grouping:** ID → MinOfMinOfLOCATION → SUBLOT_NO
- **Fields:** Major_Client, MaxOfMaxOfLOCATION, MinOfACTIVITY_DATE, MinOfMinOfLOCATION, SOURCE, SumOfTotal_Activity_Units
- **Calculated:**
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`

## Report: Propagule_Order_Field_Location_Index Subform
- **Caption:** Field Index
- **Menu path:** Switchboard › Open_NMIS_PROCESSING_ORDERS_Review › NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE › ORDER_FORM_PROPAGULE mt › ORDER_FORM_SPECS_PROPAGULE mt Subrep › Propagule_Order_Field_Location_Index Subform
- **Record source:** `SELECT [*Field_Location_Propagule_Inv_Subform].* FROM [*Field_Location_Propagule_Inv_Subform];`
- **Grouping:** AGREEMENT_LOT_CN → BEGIN_DATE → LOCATION
- **Fields:** BEGIN_DATE, BEGIN_INDEX, END_INDEX, Ft_In_Lot, Location, SUBLOT_NO
- **Calculated:**
  - GroupFooter0: `=Sum([Ft_In_Lot])`

## Report: PXPLT_MCODES Subrep
- **Caption:** ORDER_FORM_MCODES Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN › PXPLT_MCODES Subrep
- **Record source:** `SELECT NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, Sum(NMIS_CLIENT_MGMT_CODES.MGMT_CODE_PCT) AS SumOfMGMT_CODE_PCT, NMIS_CLIENT_MGMT_CODES.ORDER_CN FROM NMIS_ORDERS INNER JOIN NMIS_CLIENT_MGMT_CODES ON NMIS_ORDERS.CN = NMIS_CLIENT_MGMT_CODES.ORDER_CN WHERE (((NMIS_CLIENT_MGMT_CODES.FISCAL_YEAR_USED)=[Forms]![Switchboard]![FY_For_Reports]) AND ((Left$([nmis_orders].[CLIENT_ASSOCIATE],4)) Not Like Left$([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Owned_Code],4))) GROUP BY NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.ORDER_CN;`
- **Grouping:** CLIENT_ASSOCIATE
- **Fields:** ORDER_CN
- **Calculated:**
  - Detail: `=[CLIENT_ASSOCIATE] & " " & [SumOfMGMT_CODE_PCT] & "%"`

## Report: Request_Checklist_by_Age_Class
- **Caption:** Request_Summary_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_by_Age_Class
- **Record source:** `Request_Summary`
- **Grouping:** CATEGORY_CODE → Class → PARENT_ASSOCIATE → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL → ID
- **Fields:** Adj_Req, Agreement_Source_Required, Beg_FY, CATEGORY_CODE, CLIENT_ASSOCIATE, Class, Contact_Name, ID, PARENT_ASSOCIATE, PlntmstrSymbol_SourceID, SumOfAMOUNT_REQUESTED, [Class]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter7: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([Agreement_Source_Required])`
  - GroupFooter7: `=Sum([Adj_Req])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Agreement_Source_Required])`
  - GroupFooter3: `=Sum([Adj_Req])`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Agreement_Source_Required])`
  - GroupFooter2: `=Sum([Adj_Req])`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Agreement_Source_Required])`
  - GroupFooter0: `=Sum([Adj_Req])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([Agreement_Source_Required])`
  - ReportFooter: `=Sum([Adj_Req])`

## Report: Request_Checklist_by_Age_Class_End_Year
- **Caption:** Request_Summary_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_by_Age_Class_End_Year
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → Beg_FY → Class → PARENT_ASSOCIATE → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL → ID
- **Fields:** Adj_Req, Agreement_Source_Required, Beg_End_FY, CATEGORY_CODE, CLIENT_ASSOCIATE, Class, Contact_Name, ID, PARENT_ASSOCIATE, PlntmstrSymbol_SourceID, SumOfAMOUNT_REQUESTED, [BEG_FY], [Class]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter7: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([Agreement_Source_Required])`
  - GroupFooter7: `=Sum([Adj_Req])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Agreement_Source_Required])`
  - GroupFooter3: `=Sum([Adj_Req])`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Agreement_Source_Required])`
  - GroupFooter2: `=Sum([Adj_Req])`
  - GroupFooter5: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([Agreement_Source_Required])`
  - GroupFooter5: `=Sum([Adj_Req])`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Agreement_Source_Required])`
  - GroupFooter0: `=Sum([Adj_Req])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([Agreement_Source_Required])`
  - ReportFooter: `=Sum([Adj_Req])`

## Report: Request_Checklist_by_Age_Class_End_Year_Summary
- **Caption:** Request_Summary_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_by_Age_Class_End_Year_Summary
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → Beg_FY → Class → PARENT_ASSOCIATE → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL → ID
- **Fields:** Beg_End_FY, CATEGORY_CODE, CLIENT_ASSOCIATE, Class, PARENT_ASSOCIATE, [BEG_FY], [Class]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter7: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter7: `=Sum([Agreement_Source_Required])`
  - GroupFooter7: `=Sum([Adj_Req])`
  - GroupFooter3: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter3: `=Sum([Agreement_Source_Required])`
  - GroupFooter3: `=Sum([Adj_Req])`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter2: `=Sum([Agreement_Source_Required])`
  - GroupFooter2: `=Sum([Adj_Req])`
  - GroupFooter5: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter5: `=Sum([Agreement_Source_Required])`
  - GroupFooter5: `=Sum([Adj_Req])`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Agreement_Source_Required])`
  - GroupFooter0: `=Sum([Adj_Req])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([Agreement_Source_Required])`
  - ReportFooter: `=Sum([Adj_Req])`

## Report: Request_Checklist_Summary_by_Age_Class
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Request_Checklist_Summary_by_Age_Class
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → ClassBC → PARENT_ASSOCIATE → CLIENT_ASSOCIATE → PLNTMSTR_SYMBOL → ID
- **Fields:** BEGIN_CONTAINER, Beg_FY, CATEGORY_CODE, [Class]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([EST_CONTAINERS_REQUIRED])`
  - GroupFooter2: `=Sum([Adj_Req])`
  - GroupFooter2: `=Sum([Agreement_Source_Required])`
  - GroupFooter2: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([EST_CONTAINERS_REQUIRED])`
  - GroupFooter0: `=Sum([SumOfAMOUNT_REQUESTED])`
  - GroupFooter0: `=Sum([Agreement_Source_Required])`
  - GroupFooter0: `=Sum([Adj_Req])`
  - GroupFooter0: `=Sum([Total_Containers])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfAMOUNT_REQUESTED])`
  - ReportFooter: `=Sum([Agreement_Source_Required])`
  - ReportFooter: `=Sum([Adj_Req])`
  - ReportFooter: `=Sum([EST_CONTAINERS_REQUIRED])`
  - ReportFooter: `=Sum([Total_Containers])`

## Report: Seed_Bank_Receiving_Work_List
- **Caption:** 
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Bank_Receiving_Work_List
- **Record source:** ``
- **Grouping:** STORED_FOR_ASSOCIATE → PLNTMSTR_SYMBOL → ID_SOURCEB → SOURCE
- **Subreports:** Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Fields:** NMIS_SOURCE_LOTS_ID, SOURCE, STORED_FOR_ASSOCIATE, TICKET_CN, TKT_NO, TKT_NO_and_Date, Withdrawal_Amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Seed_Shipping_Ticket Subform]![DESIRED_DATE]`
  - PageHeaderSection: `=[Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]`
  - PageHeaderSection: `=[Forms]![Seed_Shipping_Ticket Subform]![NOTE]`
  - Detail: `=IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Bank_Stratification_Record
- **Caption:** 
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Bank_Stratification_Record
- **Record source:** ``
- **Grouping:** StockType_Vernacular → Forest → Agreement_Lot_ID
- **Fields:** ABS_Activity_Units, Agreement_Lot_ID, Agreement_Lot_ID_Unknown, Forest, StockType_Vernacular
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Bank_Work_Order
- **Caption:** 
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Seed_Bank_Work_Order
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.NMIS_ID_LOCATIONS subreport1, Report.Seed_Bank_Work_Order subreport
- **Fields:** CHECK_STRAT, Foreign_Sow, GROSS_SOURCE_PER_UNIT, HARVEST_ASF_ADJUSTMENT, HARVEST_FACTOR_1, HARVEST_FACTOR_2, HARVEST_FACTOR_3, ID_SOURCE2B, Last Test Date, NMIS_SOURCE_LOTS_ID, NOTE, SOURCE_CALC, SOURCE_GERM_PCT, SOURCE_PURITY_PCT, SOURCE_REQUIRED, SOURCE_STRATIFIED, SOWING_GROUP, SPECIES_PRODUCT_CN, STORED_AT_ASSOCIATE, Seed_Per_Cell, Sum Of ACTIVITY_UNITS, THINNING_PROBABILITY_PCT, TOTAL_REQUEST
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `=IIf([NMIS_SOURCE_LOTS_ID]<>[Seed_Bank_Work_Order subreport].[Report]![SOURCE_ID],"**Check Source Lot**",Null)`
  - ReportHeader: `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID])`
  - PageHeaderSection: `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID])`
  - PageHeaderSection: `=[BEGIN_FY] & [BEGIN_SEASON_CODE] & " - " & [END_FY] & [END_SEASON_CODE]`
  - Detail: `=Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED`
  - Detail: `=Forms!NMIS_AGREEMENT_LOTS![NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID])`
  - PageFooterSection: `=IIf(IsNull([HF1_CODE]),"HF1",[HF1_CODE])`
  - PageFooterSection: `=IIf(IsNull([HF2_CODE]),"HF2",[HF2_CODE])`
  - PageFooterSection: `=IIf(IsNull([HF3_CODE]),"HF3",[HF3_CODE])`
  - PageFooterSection: `=IIf(IsNull([HF4_CODE]),"HF4",[HF4_CODE])`
  - PageFooterSection: `=IIf([HF1_FORMULA_OP]="/","10000/",Null)`
  - PageFooterSection: `=IIf([HF2_FORMULA_OP]="/","10000/",Null)`
  - PageFooterSection: `=IIf([HF3_FORMULA_OP]="/","10000/",Null)`
  - PageFooterSection: `=IIf([HF4_FORMULA_OP]="/","10000/",Null)`

## Report: Seed_Bank_Work_Order subreport
- **Caption:** Seed_Bank_Work_Order subreport
- **Menu path:** Switchboard › NMIS_ID_ACTIVITY_FORM › NMIS_AGREEMENT_LOTS › Seed_Bank_Work_Order › Seed_Bank_Work_Order subreport
- **Record source:** `SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, IIf(Not IsNull([contact_cn]),"Contact: " & [FIRST_NAME] & " " & [LAST_NAME] & "   ","") & IIf(Not IsNull([NMIS_AGREEMENTS].[NOTE]),"Note: " & [NMIS_AGREEMENTS].[NOTE],"") AS Contact_Note, NMIS_AGREEMENTS.CN, IIf(Not IsNull([contact_cn]),"Contact: " & [FIRST_NAME] & " " & [LAST_NAME],"") AS Contact, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.ID AS SOURCE_ID FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_AGREEMENTS LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN;`
- **Grouping:** 
- **Subreports:** Report.NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport
- **Fields:** AMOUNT_REQUESTED, CLIENT_ASSOCIATE, Contact_Note, SOURCE_ID

## Report: Seed_Bank_Work_Order_by_ID_Range
- **Caption:** 
- **Menu path:** Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › Seed_Bank_Work_Order_by_ID_Range
- **Record source:** ``
- **Grouping:** 
- **Subreports:** Report.Seed_Bank_Work_Order_by_ID_range subreport, Report.NMIS_ID_LOCATIONS subreport1
- **Fields:** CHECK_STRAT, EST_CONTAINERS_REQUIRED, Foreign_Sow, GROSS_SOURCE_PER_UNIT, HARVEST_ASF_ADJUSTMENT, HARVEST_FACTOR_1, HARVEST_FACTOR_2, HARVEST_FACTOR_3, HARVEST_FACTOR_4, ID_SOURCE2, NOTE, SOURCE_CALC, SOURCE_GERM_PCT, SOURCE_PURITY_PCT, SOURCE_REQUIRED, SOURCE_STRATIFIED, SOWING_GROUP, SPECIES_PRODUCT_CN, STORED_AT_ASSOCIATE, Seed_Per_Cell, Sum Of ACTIVITY_UNITS, TOTAL_REQUEST, Test_Date, UNIT_DESC
- **Calculated:**
  - PageHeaderSection: `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID])`
  - PageHeaderSection: `=[BEGIN_FY] & [BEGIN_SEASON_CODE] & " - " & [END_FY] & [END_SEASON_CODE]`
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf([SOURCE_LOT_ID]<>[Seed_Bank_Work_Order subreport].[Report]![SOURCE_ID],"**Check Source Lot**",Null)`
  - PageHeaderSection: `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `=IIf([Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]="061019",IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]),[ID])`
  - PageFooterSection: `=IIf(IsNull([HF1_CODE]),"HF1",[HF1_CODE])`
  - PageFooterSection: `=IIf(IsNull([HF2_CODE]),"HF2",[HF2_CODE])`
  - PageFooterSection: `=IIf(IsNull([HF3_CODE]),"HF3",[HF3_CODE])`
  - PageFooterSection: `=IIf(IsNull([HF4_CODE]),"HF4",[HF4_CODE])`
  - PageFooterSection: `=IIf([HF1_FORMULA_OP]="/","10000/",Null)`
  - PageFooterSection: `=IIf([HF2_FORMULA_OP]="/","10000/",Null)`
  - PageFooterSection: `=IIf([HF3_FORMULA_OP]="/","10000/",Null)`
  - PageFooterSection: `=IIf([HF4_FORMULA_OP]="/","10000/",Null)`

## Report: Seed_Bank_Work_Order_by_ID_range subreport
- **Caption:** Seed_Bank_Work_Order subreport
- **Menu path:** Switchboard › Source_Material_Work_Order_By_Lot_ID_Range › Seed_Bank_Work_Order_by_ID_Range › Seed_Bank_Work_Order_by_ID_range subreport
- **Record source:** `SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, IIf(Not IsNull([contact_cn]),"Contact: " & [FIRST_NAME] & " " & [LAST_NAME] & "   ","") & IIf(Not IsNull([NMIS_AGREEMENTS].[NOTE]),"Note: " & [NMIS_AGREEMENTS].[NOTE],"") AS Contact_Note, NMIS_AGREEMENTS.CN, IIf(Not IsNull([contact_cn]),"Contact: " & [FIRST_NAME] & " " & [LAST_NAME],"") AS Contact, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.ID AS SOURCE_ID FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_AGREEMENTS LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN;`
- **Grouping:** 
- **Subreports:** Report.NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order_by_ID_range subreport
- **Fields:** AMOUNT_REQUESTED, CLIENT_ASSOCIATE, Contact_Note, SOURCE_ID

## Report: Seed_Bank_Work_Order_Checklist
- **Caption:** Seed_Bank_Work_Order
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Source_Material_Work_List › Seed_Bank_Work_Order_Checklist
- **Record source:** `Seed_Bank_Work_Order_by_species_and_product query`
- **Grouping:** Cost_Center → PRODUCT_CLASS → PLNTMSTR_SYMBOL → SOURCE
- **Subreports:** Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Fields:** ID, NMIS_SOURCE_LOTS_ID, PRODUCT_CLASS, SOURCE, SOURCE_REQUIRED, Sum Of ACTIVITY_UNITS, TKT_NO_and_Date, Withdrawal_Amt, [PLNTMSTR_SYMBOL]
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Heading]`
  - PageHeaderSection: `=IIf([Forms]![Source_Material_Work_List]![Plntmstr_Symbol]="*","pipo",[Forms]![Source_Material_Work_List]![Plntmstr_Symbol])`
  - Detail: `=IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Bank_Work_Order_list
- **Caption:** Seed_Bank_Work_Order
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Source_Material_Work_List › Seed_Bank_Work_Order_list
- **Record source:** `Seed_Bank_Work_Order_by_species_and_product query`
- **Grouping:** Cost_Center → PLNTMSTR_SYMBOL → SOURCE → ID → PRODUCT_CLASS
- **Subreports:** Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Fields:** ID, NMIS_SOURCE_LOTS_ID, SOURCE, SOURCE_REQUIRED, Sum Of ACTIVITY_UNITS, TKT_NO_and_Date, Withdrawal_Amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Seed will be used at " & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=[Heading]`
  - PageHeaderSection: `=IIf(([Forms]![Source_Material_Work_List]![Plntmstr_Symbol]="*"),"PIPO",[Forms]![Source_Material_Work_List]![Plntmstr_Symbol])`
  - PageHeaderSection: `=[Forms]![Source_Material_Work_List]![Ordered_By]`
  - PageHeaderSection: `=[Forms]![Source_Material_Work_List]![Ticket_ID]`
  - PageHeaderSection: `=[Forms]![Source_Material_Work_List]![Date]`
  - Detail: `=IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Bank_Work_Order_Ship_list
- **Caption:** 
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › Seed_Bank_Work_Order_Ship_list
- **Record source:** ``
- **Grouping:** PLNTMSTR_SYMBOL → ID_SOURCEB → SOURCE
- **Subreports:** Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Fields:** NMIS_SOURCE_LOTS_ID, SOURCE, Seed_Balance, TICKET_CN, TKT_NO, TKT_NO_and_Date, Withdrawal_Amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Seed_Shipping_Ticket Subform]![DESIRED_DATE]`
  - PageHeaderSection: `=[Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]`
  - PageHeaderSection: `=[Forms]![Seed_Shipping_Ticket Subform]![NOTE]`
  - Detail: `=IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Bank_Work_Order_Sow_list
- **Caption:** 
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Bank_Work_Order_Sow_list
- **Record source:** ``
- **Grouping:** PLNTMSTR_SYMBOL → ID_SOURCEB → SOURCE
- **Subreports:** Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Fields:** ID, NMIS_SOURCE_LOTS_ID, SOURCE, Seed_Balance, TKT_NO, TKT_NO_and_Date, Withdrawal_Amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![DESIRED_DATE]`
  - PageHeaderSection: `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![DELIVERED_TO_ASSOCIATE]`
  - PageHeaderSection: `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![NOTE]`
  - Detail: `=IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Bank_Work_Order_Sow_list2
- **Caption:** 
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Bank_Work_Order_Sow_list2
- **Record source:** ``
- **Grouping:** LOCATION → PLNTMSTR_SYMBOL → ID_SOURCEB → SOURCE
- **Subreports:** Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1
- **Fields:** ID, NMIS_SOURCE_LOTS_ID, SOURCE, Seed_Balance, TKT_NO, TKT_NO_and_Date, Withdrawal_Amt
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![DESIRED_DATE]`
  - PageHeaderSection: `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![DELIVERED_TO_ASSOCIATE]`
  - PageHeaderSection: `=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![NOTE]`
  - Detail: `=IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn")`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: seed_combo_ticket
- **Caption:** 
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › seed_combo_ticket
- **Record source:** ``
- **Grouping:** TICKET_CN → CATEGORY_CODE → DIVERSE → PLNTMSTR_SYMBOL → SOURCE_CODE → CN2
- **Fields:** ACTIVITY_CODE, ACTIVITY_UNITS, CATEGORY_CODE, DESTINATION_ASSOCIATE, ID, NOTE, SOURCE, TICKET_CN, UNIT_CODE
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species")`
  - GroupFooter0: `=Sum([Activity_Units])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: seed_entry_edit_lot_bag_label
- **Caption:** seed_shipping_ticket
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › NMIS_ID_ACTIVITIES_NEW_LOTS Subform › seed_entry_edit_lot_bag_label
- **Record source:** ``
- **Grouping:** 
- **Fields:** ABS_Activity_Units, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, PURITY_PCT, STRATIFIED, Scientific_Name, Test_Date2, VERNACULAR, [ID], [Source]
- **Calculated:**
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: Seed_Extraction_Billing
- **Caption:** 
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › Seed_Extraction_Billing
- **Record source:** ``
- **Grouping:** Billing_Associate → ID
- **Subreports:** Report.NMIS_CLIENT_MGMT_CODES2 subreport, Report.EXTRACTION_BY_MGMT_CODE subreport, Report.EXTRACTION_INCOME_BY_MGMT_CODE subreport
- **Fields:** ACTIVITY_UNITS, Billing_Associate, CATEGORY_CODE, Hourly_Charges, ID_SOURCE2B, SumOfCHARGE_USED_FOR_ACTIVITY
- **Calculated:**
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=Date()`
  - GroupHeader1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date]`
  - GroupFooter1: `=Sum([Hourly_Charges])`
  - GroupFooter1: `=Sum([SumOfCHARGE_USED_FOR_ACTIVITY])`
  - GroupFooter1: `=Sum([ACTIVITY_UNITS])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line]`

## Report: Seed_Non_WCF_Billing
- **Caption:** 
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing
- **Record source:** ``
- **Grouping:** Billing_Associate → Billing_Subunit → GROUP → DIVERSE → PLNTMSTR_SYMBOL → ID_SOURCE2B → ACTIVITY_DATE → ACTIVITY_CODE → MGMT_CODE
- **Subreports:** Report.SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport, Report.SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport
- **Fields:** ACTIVITY_UNITS_PER_MGMT_CODE, ALID, Billing_Associate, Billing_Subunit, CATEGORY_CODE, CHG, DIVERSE, GROUP, ID_SOURCE2B, MC, PLNTMSTR_SYMBOL, TKT_Activity, UNIT_CODE, [CHARGE]
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode]),"Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode])`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC]),"Not Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC])`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=Date()`
  - GroupHeader1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date]`
  - GroupHeader0: `=IIf([GROUP]=3,"(Balance as of " & [Forms]![Seed_Non_WCF_Billing_Report]![Storage_bill_Date] & ")")`
  - Detail: `=IIf([Min_Chg_Used]="j","Min Chg",IIf([Charge_Per_Unit]<>0,"/" & [UC],"****"))`
  - GroupFooter0: `=Sum([CHARGE])`
  - GroupFooter0: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line]`
  - GroupFooter1: `=Sum([CHARGE])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Title_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Non_WCF_Billing2
- **Caption:** 
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing2
- **Record source:** ``
- **Grouping:** Billing_Associate → Billing_Subunit → GROUP → DIVERSE → PLNTMSTR_SYMBOL → Min_Chg_Used → CHG → UC → ACTIVITY_CODE → MGMT_CODE
- **Subreports:** Report.SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport, Report.SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport
- **Fields:** Billing_Associate, Billing_Subunit, CATEGORY_CODE, CHG, DIVERSE, GROUP, MC, Min_Chg_Used, PLNTMSTR_SYMBOL, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode]),"Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode])`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC]),"Not Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC])`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=Date()`
  - GroupHeader1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date]`
  - GroupHeader0: `=IIf([GROUP]=3,"(Balance as of " & [Forms]![Seed_Non_WCF_Billing_Report]![Storage_bill_Date] & ")")`
  - GroupFooter5: `=Sum([CHARGE])`
  - GroupFooter5: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter5: `=IIf(Not IsNull([Min_Chg_Used]),Count([activity_code]))`
  - GroupFooter5: `=IIf(Not IsNull([Min_Chg_Used]),"/Lot",[CPU_Used])`
  - GroupFooter3: `=Sum([CHARGE])`
  - GroupFooter3: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line]`
  - GroupFooter1: `=Sum([CHARGE])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Title_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Non_WCF_Billing3
- **Caption:** 
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing3
- **Record source:** ``
- **Grouping:** Billing_Associate → Billing_Subunit → GROUP → DIVERSE → MGMT_CODE → CHG → Min_Chg_Used → UC → ACTIVITY_CODE
- **Subreports:** Report.SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport, Report.SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport
- **Fields:** Billing_Associate, Billing_Subunit, CATEGORY_CODE, CHG, DIVERSE, GROUP, MC, Min_Chg_Used, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Selected for Like Job Code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode] & "  AND NOT Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC]`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=Date()`
  - GroupHeader1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date]`
  - GroupHeader0: `=IIf([GROUP]=3,"(Balance as of " & [Forms]![Seed_Non_WCF_Billing_Report]![Storage_bill_Date] & ")")`
  - GroupFooter0: `=Sum([CHARGE])`
  - GroupFooter0: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter0: `=IIf(IsNull([Min_Chg_Used]),Count([activity_code]))`
  - GroupFooter0: `=IIf(Not IsNull([Min_Chg_Used]),"/Lot",[CPU_Used])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line]`
  - GroupFooter1: `=Sum([CHARGE])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Title_Line]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seed_Non_WCF_Billing3_summary
- **Caption:** 
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing3_summary
- **Record source:** ``
- **Grouping:** Billing_Associate → Billing_Subunit → GROUP → DIVERSE → CHG → Min_Chg_Used → UC → ACTIVITY_CODE
- **Fields:** Billing_Associate, Billing_Subunit, CHG, DIVERSE, GROUP, Min_Chg_Used, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Selected for Like Job Code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode] & "  AND NOT Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![NotLikeJC]`
  - GroupFooter0: `=Sum([CHARGE])`
  - GroupFooter0: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter0: `=IIf(IsNull([Min_Chg_Used]),Count([activity_code]))`
  - GroupFooter0: `=IIf(Not IsNull([Min_Chg_Used]),"/Lot",[CPU_Used])`
  - GroupFooter2: `=Sum([CHARGE])`
  - GroupFooter2: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter1: `=Sum([CHARGE])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([CHARGE])`

## Report: SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport
- **Caption:** 
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing › SEED_NON_WCF_BILLING_BY_MGMT_CODE subreport
- **Record source:** ``
- **Grouping:** BILLING_ASSOCIATE → Management_Code
- **Fields:** Management_Code, SumOfCHARGE
- **Calculated:**
  - GroupFooter2: `=Sum([SumOfCHARGE])`

## Report: SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport
- **Caption:** 
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Non_WCF_Billing › SEED_NON_WCF_BILLING_INCOME_BY_MGMT_CODE subreport
- **Record source:** ``
- **Grouping:** BILLING_ASSOCIATE → Income_Mgmt_Code
- **Fields:** Income_MGMT_CODE, SumOfCHARGE
- **Calculated:**
  - GroupFooter2: `=Sum([SumOfCHARGE])`

## Report: Seed_Quarterly_Report
- **Caption:** Seed_Quarterly_Report
- **Menu path:** Switchboard › Seed_Quarterly_Report › Seed_Quarterly_Report
- **Record source:** `Seed_Quarterly_Report Query`
- **Grouping:** DIVERSE → PLNTMSTR_SYMBOL
- **Fields:** BEGINNING_BALANCE, DESTROY, DIVERSE, DONATION, ENDING_BALANCE, PLNTMSTR_SYMBOL, SALES, SOWN, TESTING, VERNACULAR, WEIGHT_CHANGE, XFER_IN, XFER_OUT
- **Calculated:**
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Begin_Date`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!End_Date`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Like_Client`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Category_Code`
  - GroupFooter1: `=Sum([BEGINNING_BALANCE])`
  - GroupFooter1: `=Sum([DONATION])`
  - GroupFooter1: `=Sum([WEIGHT_CHANGE])`
  - GroupFooter1: `=Sum([XFER_IN])`
  - GroupFooter1: `=Sum([XFER_OUT])`
  - GroupFooter1: `=Sum([DESTROY])`
  - GroupFooter1: `=Sum([SALES])`
  - GroupFooter1: `=Sum([SOWN])`
  - GroupFooter1: `=Sum([TESTING])`
  - GroupFooter1: `=Sum([ENDING_BALANCE])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`
  - ReportFooter: `=Sum([BEGINNING_BALANCE])`
  - ReportFooter: `=Sum([DONATION])`
  - ReportFooter: `=Sum([WEIGHT_CHANGE])`
  - ReportFooter: `=Sum([XFER_IN])`
  - ReportFooter: `=Sum([XFER_OUT])`
  - ReportFooter: `=Sum([DESTROY])`
  - ReportFooter: `=Sum([SALES])`
  - ReportFooter: `=Sum([SOWN])`
  - ReportFooter: `=Sum([TESTING])`
  - ReportFooter: `=Sum([ENDING_BALANCE])`

## Report: Seed_Quarterly_Report_Diverse
- **Caption:** Seed_Quarterly_Report
- **Menu path:** Switchboard › Seed_Quarterly_Report › Seed_Quarterly_Report_Diverse
- **Record source:** `Seed_Quarterly_Report_Diverse Query`
- **Grouping:** 
- **Fields:** BEGINNING_BALANCE, DESTROY, DONATION, ENDING_BALANCE, PLNTMSTR_SYMBOL, SALES, SOWN, TESTING, VERNACULAR, WEIGHT_CHANGE, XFER_IN, XFER_OUT
- **Calculated:**
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Begin_Date`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!End_Date`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Like_Client`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Category_Code`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`
  - ReportFooter: `=Sum([BEGINNING_BALANCE])`
  - ReportFooter: `=Sum([DONATION])`
  - ReportFooter: `=Sum([WEIGHT_CHANGE])`
  - ReportFooter: `=Sum([XFER_IN])`
  - ReportFooter: `=Sum([XFER_OUT])`
  - ReportFooter: `=Sum([DESTROY])`
  - ReportFooter: `=Sum([SALES])`
  - ReportFooter: `=Sum([SOWN])`
  - ReportFooter: `=Sum([TESTING])`
  - ReportFooter: `=Sum([ENDING_BALANCE])`

## Report: Seed_Quarterly_Report_NON_Diverse
- **Caption:** Seed_Quarterly_Report
- **Menu path:** Switchboard › Seed_Quarterly_Report › Seed_Quarterly_Report_NON_Diverse
- **Record source:** `Seed_Quarterly_Report_NON_Diverse Query`
- **Grouping:** 
- **Fields:** BEGINNING_BALANCE, DESTROY, DONATION, ENDING_BALANCE, PLNTMSTR_SYMBOL, SALES, SOWN, TESTING, VERNACULAR, WEIGHT_CHANGE, XFER_IN, XFER_OUT
- **Calculated:**
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Begin_Date`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!End_Date`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Like_Client`
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=Forms!Seed_Quarterly_Report!Category_Code`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=Now()`
  - ReportFooter: `=Sum([BEGINNING_BALANCE])`
  - ReportFooter: `=Sum([DONATION])`
  - ReportFooter: `=Sum([WEIGHT_CHANGE])`
  - ReportFooter: `=Sum([XFER_IN])`
  - ReportFooter: `=Sum([XFER_OUT])`
  - ReportFooter: `=Sum([DESTROY])`
  - ReportFooter: `=Sum([SALES])`
  - ReportFooter: `=Sum([SOWN])`
  - ReportFooter: `=Sum([TESTING])`
  - ReportFooter: `=Sum([ENDING_BALANCE])`

## Report: Seed_Sales_Billing
- **Caption:** Extraction_Non_WCF_Billing
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › Seed_Sales_Billing
- **Record source:** `SELECT [**Seed_Billing_Table].*, [**Seed_Billing_Table].Billing_Subunit FROM [**Seed_Billing_Table] WHERE ((([**Seed_Billing_Table].Billing_Subunit) Like [Forms]![Seed_Non_WCF_Billing_Report]![Like_Client] & "*"));`
- **Grouping:** Billing_Associate → PLNTMSTR_SYMBOL → ID_SOURCE2B → ACTIVITY_CODE → MGMT_CODE
- **Subreports:** Report.SEED_SALES_BILLING_BY_MGMT_CODE subreport, Report.SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport
- **Fields:** ACTIVITY_UNITS_PER_MGMT_CODE, Billing_Associate, CATEGORY_CODE, CHARGE_PER_UNIT, ID_SOURCE2B, MC, TKT_Activity, UNIT_CODE, [CHARGE]
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!Nursery_Associate_Code`
  - GroupHeader1: `=Date()`
  - GroupHeader1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Begin_Date] & " - " & [Forms]![Seed_Non_WCF_Billing_Report]![End_Date]`
  - Detail: `=IIf([Charge_Per_Unit]<>0,"/" & [UNIT_CODE],"****")`
  - GroupFooter1: `=Sum([CHARGE])`
  - GroupFooter1: `=Sum([ACTIVITY_UNITS_PER_MGMT_CODE])`
  - GroupFooter1: `=[Forms]![Seed_Non_WCF_Billing_Report]![Signature_Line]`

## Report: SEED_SALES_BILLING_BY_MGMT_CODE subreport
- **Caption:** EXTRACTION_BY_MGMT_CODE subreport
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › Seed_Sales_Billing › SEED_SALES_BILLING_BY_MGMT_CODE subreport
- **Record source:** `SELECT IIf(Not IsNull([MGMT_CODE]) And [MGMT_CODE]<>[BILLING_ASSOCIATE],[Billing_Subunit] & " " & [MGMT_CODE],[Billing_Subunit] & " ******") AS Management_Code, Sum([**Seed_Billing_Table].CHARGE) AS SumOfCHARGE, [**Seed_Billing_Table].Billing_Associate FROM [**Seed_Billing_Table] GROUP BY IIf(Not IsNull([MGMT_CODE]) And [MGMT_CODE]<>[BILLING_ASSOCIATE],[Billing_Subunit] & " " & [MGMT_CODE],[Billing_Subunit] & " ******"), [**Seed_Billing_Table].Billing_Associate HAVING ((([**Seed_Billing_Table].Billing_Associate) Like [Forms]![Seed_Non_WCF_Billing_Report]![Like_Client] & "*")) ORDER BY IIf(Not IsNull([MGMT_CODE]) And [MGMT_CODE]<>[BILLING_ASSOCIATE],[Billing_Subunit] & " " & [MGMT_CODE],[Billing_Subunit] & " ******");`
- **Grouping:** BILLING_ASSOCIATE → Management_Code
- **Fields:** Management_Code, SumOfCHARGE
- **Calculated:**
  - GroupFooter2: `=Sum([SumOfCHARGE])`

## Report: SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport
- **Caption:** EXTRACTION_BY_MGMT_CODE subreport
- **Menu path:** Switchboard › Non_WCF_Storage_Billing_Report › Seed_Sales_Billing › SEED_SALES_BILLING_INCOME_BY_MGMT_CODE subreport
- **Record source:** `SELECT [**Seed_Billing_Table].Income_Mgmt_Code, Sum([**Seed_Billing_Table].CHARGE) AS SumOfCHARGE, [**Seed_Billing_Table].Billing_Associate FROM [**Seed_Billing_Table] WHERE ((([**Seed_Billing_Table].MC) Not Like "*No*Ch*")) GROUP BY [**Seed_Billing_Table].Income_Mgmt_Code, [**Seed_Billing_Table].Billing_Associate HAVING ((([**Seed_Billing_Table].Billing_Associate) Like [Forms]![Seed_Non_WCF_Billing_Report]![Like_Client] & "*"));`
- **Grouping:** BILLING_ASSOCIATE → Income_Mgmt_Code
- **Fields:** Income_MGMT_CODE, SumOfCHARGE
- **Calculated:**
  - GroupFooter2: `=Sum([SumOfCHARGE])`

## Report: seed_shipping_bag_tags
- **Caption:** seed_shipping_ticket
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_bag_tags
- **Record source:** ``
- **Grouping:** TICKET_CN → CATEGORY_CODE → DIVERSE → PLNTMSTR_SYMBOL → SOURCE_CODE
- **Fields:** ABS_Activity_Units, ID_SOURCEB, UNIT_CODE
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: seed_shipping_lot_label_040207
- **Caption:** seed_shipping_ticket
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_lot_label_040207
- **Record source:** ``
- **Grouping:** 
- **Fields:** ABS_Activity_Units, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, PURITY_PCT, STRATIFIED, Scientific_Name, Test_Date2, VERNACULAR, [ID], [Source]
- **Calculated:**
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: seed_shipping_lot_label_by_Ticket
- **Caption:** seed_shipping_ticket
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_lot_label_by_Ticket
- **Record source:** ``
- **Grouping:** 
- **Fields:** ABS_Activity_Units, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, PURITY_PCT, STRATIFIED, Scientific_Name, Test_Date2, VERNACULAR, [ID], [Source]
- **Calculated:**
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: seed_shipping_lot_label_sw_040207
- **Caption:** seed_shipping_ticket
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform › seed_shipping_lot_label_sw_040207
- **Record source:** ``
- **Grouping:** 
- **Fields:** ABS_Activity_Units, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, PURITY_PCT, STRATIFIED, Scientific_Name, Test_Date2, VERNACULAR, [ID], [Source]
- **Calculated:**
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: seed_shipping_ticket
- **Caption:** 
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_ticket
- **Record source:** ``
- **Grouping:** TICKET_CN → ACTIVITY_CODE → CATEGORY_CODE → PLNTMSTR_SYMBOL → SOURCE_CODE → ID
- **Subreports:** Report.NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport
- **Fields:** ABS_Activity_Units, ACTIVITY_CODE, CATEGORY_CODE, DESTINATION_ASSOCIATE, ID, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, SOURCE, STORED_FOR_ASSOCIATE, TICKET_CN, UNIT_CODE
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([ABS_Activity_Units])`
  - GroupFooter0: `=Sum(Nz([NMIS_ID_ACTIVITIES.AMT_PER_UNIT],0))`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: seed_shipping_ticket_with_Test_Data
- **Caption:** 
- **Menu path:** Switchboard › Seed_Shipping_Ticket Subform › seed_shipping_ticket_with_Test_Data
- **Record source:** ``
- **Grouping:** TICKET_CN → ACTIVITY_CODE → CATEGORY_CODE → PLNTMSTR_SYMBOL → SOURCE_CODE
- **Fields:** ABS_Activity_Units, ACTIVITY_CODE, CATEGORY_CODE, DESTINATION_ASSOCIATE, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID, PURITY_PCT, SOURCE, STRATIFIED, TICKET_CN, Test_Date2, UNIT_CODE
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter0: `=Sum([ABS_Activity_Units])`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: seed_sow_withdrawal_ticket
- **Caption:** 
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › seed_sow_withdrawal_ticket
- **Record source:** ``
- **Grouping:** TICKET_CN → CATEGORY_CODE → DIVERSE → PLNTMSTR_SYMBOL → SOURCE_CODE → AGREEMENT_LOT_CN → ACTIVITY_CODE
- **Subreports:** Report.NMIS_CLIENT_MGMT_CODES_Shipping_Ticket subreport
- **Fields:** ABS_Activity_Units, ACTIVITY_CODE, ACTIVITY_DATE, Agreement_Lot_ID, CATEGORY_CODE, DESTINATION_ASSOCIATE, ID_SOURCE, TICKET_CN, UNIT_CODE
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species")`
  - GroupFooter0: `=Sum(Abs([ACTIVITY_UNITS_TO_SUM]))`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: seed_sow_withdrawal_ticket_with_Test_Data
- **Caption:** 
- **Menu path:** Switchboard › Seed_Sow_Withdrawal_Ticket Subform › seed_sow_withdrawal_ticket_with_Test_Data
- **Record source:** ``
- **Grouping:** TICKET_CN → CATEGORY_CODE → DIVERSE → PLNTMSTR_SYMBOL → SOURCE_CODE → Agreement_Lot_ID → ACTIVITY_CODE
- **Fields:** ABS_Activity_Units, Agreement_Lot_ID, CATEGORY_CODE, DELIVERED_TO_ASSOCIATE, FILLED_PCT, GERM_PCT, GROSS_SOURCE_PER_UNIT, ID_SOURCE2, PURITY_PCT, STRATIFIED, TICKET_CN, Test_Date2, UNIT_CODE
- **Calculated:**
  - ReportHeader: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - GroupHeader1: `=IIf([DIVERSE]=True,"Non-Traditonal Species","Traditional Species")`
  - GroupFooter0: `=IIf(Not IsNull([abs_activity_units]),Sum(Abs([Activity_Units_to_Sum])))`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - PageFooterSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: Seed_Sown_for_Other_Than_Storage_Parent
- **Caption:** 
- **Menu path:** Switchboard › Seed_Non_WCF_Billing_Report › Seed_Sown_for_Other_Than_Storage_Parent
- **Record source:** ``
- **Grouping:** TKT_NO → Source ID → Sown For
- **Fields:** ACTIVITY_CODE, ACTIVITY_UNITS, CATEGORY_CODE, MGMT_CODE, MGMT_CODE_PCT, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, Nursery ID, STORED_FOR_ASSOCIATE, Source ID, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode]),"Like Job code: " & [Forms]![Seed_Non_WCF_Billing_Report]![LikeJobcode])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Seedbox_Label_Large_ID
- **Caption:** Seedbox_Labels
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › Seedbox_Label_Large_ID
- **Record source:** `SELECT NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL, NMIS_SPECIES.VERNACULAR, NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_SOURCE_LOTS.SOURCE_CODE, NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.Scientific_Name FROM NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query INNER JOIN (NMIS_SPECIES INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) ON NMIS_SPECIES.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) ON NMIS_SPECIES_SCIENTIFIC_NAME_COMBINE_Query.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL WHERE (((NMIS_SOURCE_LOTS.CN)=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN]));`
- **Grouping:** CN
- **Fields:** ASSOCIATE_NAME, ID, PLNTMSTR_SYMBOL, SOURCE_CODE, STORED_FOR_ASSOCIATE, Scientific_Name, VERNACULAR

## Report: Seedbox_Labels
- **Caption:** Seedbox Labels
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › Seedbox_Labels
- **Record source:** `Seedbox Label Query`
- **Grouping:** CN → Tag
- **Fields:** ID, PLNTMSTR_SYMBOL, SF, SOURCE, Scientific_Name, VERNACULAR, Weight
- **Calculated:**
  - Detail: `=[Forms]![Lot_ID_Input_Form2]![Loction]`
  - Detail: `=" " & [Sublot]`
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`

## Report: Seedbox_Labels2
- **Caption:** Seedbox_Labels
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS_INPUT › Seedbox_Labels2
- **Record source:** `Seedbox Label Query2`
- **Grouping:** CN
- **Fields:** ASSOCIATE_NAME, ID, PLNTMSTR_SYMBOL, SOURCE_CODE, STORED_FOR_ASSOCIATE, Scientific_Name, VERNACULAR
- **Calculated:**
  - Detail: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: seedbox_labels_0503572e
- **Caption:** Seedbox Labels
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Source Subform › Lot_ID_Input_Form2e › seedbox_labels_0503572e
- **Record source:** `Seedbox Label Query_050357_e1`
- **Grouping:** Tag
- **Fields:** ID, Loc, SF, SOURCE, Scientific_Name, VERNACULAR, Weight, sp_no_plntmstr_symbol

## Report: seedbox_labels_050357s
- **Caption:** Seedbox Labels
- **Menu path:** Switchboard › NMIS_SOURCE_LOTS › Lot_ID_Input_Form2 › seedbox_labels_050357s
- **Record source:** `Seedbox Label Query`
- **Grouping:** Tag
- **Fields:** ID, SF, SOURCE, Scientific_Name, VERNACULAR, Weight, sp_no_plntmstr_symbol
- **Calculated:**
  - Detail: `=[Forms]![Lot_ID_Input_Form2]![Loction] & [sublot]`

## Report: Ship_Ticket_Summary_by_Category
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Ship_Ticket_Summary_by_Category
- **Record source:** ``
- **Grouping:** CATEGORY_CODE → Date → Ticket No → Ticket No → ID → Order
- **Fields:** ActivityCode, CATEGORY_CODE, CHARGE_PER_TICKET, DELIVERED_TO_ASSOCIATE, Date, GBL_PCT, Show_NOTE, Ticket FY, Ticket No, Ticket Type
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader1: `=Sum([Units])`
  - GroupHeader1: `=Sum([AMT(M)])`
  - GroupFooter4: `=Sum([Units])`
  - GroupFooter4: `=Sum([AMT(M)])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Units])`
  - ReportFooter: `=Sum([AMT(M)])`

## Report: Ship_Ticket_Summary_by_Ticket_No
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Ship_Ticket_Summary_by_Ticket_No
- **Record source:** ``
- **Grouping:** Ticket Type → TKT_SORT → Ticket No → ID → Order
- **Fields:** ActivityCode, CHARGE_PER_TICKET, DELIVERED_BY_ASSOCIATE, DELIVERED_TO_ASSOCIATE, Date, EXT_DOC_REF, GBL_PCT2, Show_NOTE, Ticket FY, Ticket No, Ticket Type
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([Units])`
  - GroupHeader2: `=Sum([AMT(M)])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Units])`
  - ReportFooter: `=Sum([AMT(M)])`

## Report: Ship_Ticket_Summary_by_Ticket_No_TSO
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Ship_Ticket_Summary_by_Ticket_No_TSO
- **Record source:** ``
- **Grouping:** Ticket Type → TKT_SORT → Ticket No → ID → Order
- **Fields:** ActivityCode, CHARGE_PER_TICKET, DELIVERED_BY_ASSOCIATE, DELIVERED_TO_ASSOCIATE, Date, EXT_DOC_REF, GBL_PCT2, Show_NOTE, Ticket FY, Ticket No, Ticket Type
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([Units])`
  - GroupHeader2: `=Sum([AMT(M)])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Units])`
  - ReportFooter: `=Sum([AMT(M)])`

## Report: Ship_Ticket_Summary_by_Ticket_No_TSO2
- **Caption:** 
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › Ship_Ticket_Summary_by_Ticket_No_TSO2
- **Record source:** ``
- **Grouping:** Ticket Type → TKT_SORT → Ticket No → ID → Order
- **Fields:** ACTIVITY_CODE, CHARGE_PER_TICKET, DELIVERED_BY_ASSOCIATE, DELIVERED_TO_ASSOCIATE, Date, EXT_DOC_REF, GBL_PCT2, Show_NOTE, Ticket FY, Ticket No, Ticket Type
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupHeader2: `=Sum([Units])`
  - GroupHeader2: `=Sum([AMT(M)])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Units])`
  - ReportFooter: `=Sum([AMT(M)])`

## Report: Ship_Ticket_Summary_by_TSO
- **Caption:** Product Shipping Ticket Summary
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_TICKETS_charge_per_ticket1 › Ship_Ticket_Summary_by_TSO
- **Record source:** `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.CHARGE_PER_TICKET, Val(Nz([GBL_PCT],0)) AS GBLPCT, [DELIVERED_TO_ASSOCIATE] & " - " & [nmis_associates].[associate_name] AS Del_To, NMIS_TICKETS.DELIVERED_BY_ASSOCIATE, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY, [**Product_Ship_Ticket_Total_Containers_Table].Containers, [**Product_Ship_Ticket_Total_Containers_Table].SHIP_MILES, [**Product_Ship_Ticket_Total_Containers_Table].Rack_Eq, NMIS_TICKETS.NOTE FROM ([**Product_Ship_Ticket_Total_Containers_Table] RIGHT JOIN NMIS_TICKETS ON [**Product_Ship_Ticket_Total_Containers_Table].TICKET_CN = NMIS_TICKETS.CN) INNER JOIN NMIS_ASSOCIATES ON NMIS_TICKETS.DELIVERED_TO_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_TICKETS.EXT_DOC_REF)=[Forms]![NMIS_TICKETS_charge_per_ticket1]![EXT_DOC_REF]) AND ((NMIS_TICKETS.TICKET_TYPE)="p"));`
- **Grouping:** TKT_NO
- **Fields:** CHARGE_PER_TICKET, DELIVERED_BY_ASSOCIATE, Del_To, EXT_DOC_REF, FY, GBLPCT, NOTE, Rack_Eq, SHIP_MILES, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([CHARGE_PER_TICKET])`
  - ReportFooter: `=Sum([GBLPCT])`

## Report: Ship_Ticket_Summary_by_TSO_tkt
- **Caption:** Product Shipping Ticket Summary
- **Menu path:** Switchboard › Client_Bill_Menu › NMIS_SHIPPING_TICKET subform › NMIS_TICKETS_charge_per_ticket2 › Ship_Ticket_Summary_by_TSO_tkt
- **Record source:** `SELECT NMIS_TICKETS.CN, NMIS_TICKETS.CHARGE_PER_TICKET, Val([GBL_PCT]) AS GBLPCT, [DELIVERED_TO_ASSOCIATE] & " - " & [nmis_associates].[associate_name] AS Del_To, NMIS_TICKETS.DELIVERED_BY_ASSOCIATE, NMIS_TICKETS.TKT_NO, NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.FY, [**Product_Ship_Ticket_Total_Containers_Table].Containers, [**Product_Ship_Ticket_Total_Containers_Table].SHIP_MILES, [**Product_Ship_Ticket_Total_Containers_Table].Rack_Eq, NMIS_TICKETS.NOTE FROM ([**Product_Ship_Ticket_Total_Containers_Table] RIGHT JOIN NMIS_TICKETS ON [**Product_Ship_Ticket_Total_Containers_Table].TICKET_CN = NMIS_TICKETS.CN) INNER JOIN NMIS_ASSOCIATES ON NMIS_TICKETS.DELIVERED_TO_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_TICKETS.EXT_DOC_REF)=[Forms]![NMIS_TICKETS_charge_per_ticket2]![EXT_DOC_REF]) AND ((NMIS_TICKETS.TICKET_TYPE)="p"));`
- **Grouping:** TKT_NO
- **Fields:** CHARGE_PER_TICKET, DELIVERED_BY_ASSOCIATE, Del_To, EXT_DOC_REF, FY, GBLPCT, NOTE, Rack_Eq, SHIP_MILES, TKT_NO
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([CHARGE_PER_TICKET])`
  - ReportFooter: `=Sum([GBLPCT])`

## Report: Shipping_Summary_By_Parent_Associate
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Shipping_Summary_By_Parent_Associate
- **Record source:** `SELECT Agreement_Lot_Ship_Totals.FISCAL_YEAR, Agreement_Lot_Ship_Totals.PRODUCT_GROUP, Agreement_Lot_Ship_Totals.PARENT_ASSOCIATE, Agreement_Lot_Ship_Totals.PRODUCT_CLASS, Agreement_Lot_Ship_Totals.PLNTMSTR_SYMBOL, Sum(NMIS_AGREEMENT_LOTS.TOTAL_REQUEST) AS SumOfTOTAL_REQUEST, Sum(Agreement_Lot_Ship_Totals.Ship) AS SumOfShip, Agreement_Lot_Ship_Totals.PG, Agreement_Lot_Ship_Totals.UC, IIf(Left$([CATEGORY_CODE],1)="B","Bareroot",IIf(Left$([CATEGORY_CODE],1)="C","Container","")) AS Cat FROM NMIS_AGREEMENT_LOTS INNER JOIN Agreement_Lot_Ship_Totals ON NMIS_AGREEMENT_LOTS.CN = Agreement_Lot_Ship_Totals.AGREEMENT_LOT_CN GROUP BY Agreement_Lot_Ship_Totals.FISCAL_YEAR, Agreement_Lot_Ship_Totals.PRODUCT_GROUP, Agreement_Lot_Ship_Totals.PARENT_ASSOCIATE, Agreement_Lot_Ship_Totals.PRODUCT_CLASS, Agreement_Lot_Ship_Totals.PLNTMSTR_SYMBOL, Agreement_Lot_Ship_Totals.PG, Agreement_Lot_Ship_Totals.UC, IIf(Left$([CATEGORY_CODE],1)="B","Bareroot",IIf(Left$([CATEGORY_CODE],1)="C","Container","")) HAVING (((Agreement_Lot_Ship_Totals.PARENT_ASSOCIATE) Like [like Parent (Leave blank for all)] & "*"));`
- **Grouping:** PARENT_ASSOCIATE → PRODUCT_GROUP → Cat → PRODUCT_CLASS
- **Fields:** Cat, FISCAL_YEAR, PARENT_ASSOCIATE, PG, PLNTMSTR_SYMBOL, PRODUCT_CLASS, SumOfShip, SumOfTOTAL_REQUEST, UC
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - GroupFooter1: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter1: `=Sum([SumOfShip])`
  - GroupFooter1: `="Totals for " & [PRODUCT_CLASS]`
  - GroupFooter4: `="Totals for " & [Cat]`
  - GroupFooter4: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter4: `=Sum([SumOfShip])`
  - GroupFooter2: `="Totals for " & [Parent_Associate] & " " & [PRODUCT_GROUP]`
  - GroupFooter2: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter2: `=Sum([SumOfShip])`
  - PageFooterSection: `=Now()`

## Report: Shipping_Summary_By_Stocktype
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Shipping_Summary_By_Stocktype
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → Cat → PRODUCT_CLASS → PLNTMSTR_SYMBOL
- **Fields:** Cat, FISCAL_YEAR, PG, PRODUCT_CLASS, UC
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - GroupFooter1: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter1: `=Sum([SumOfShip])`
  - GroupFooter4: `="Totals for " & [Cat]`
  - GroupFooter4: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter4: `=Sum([SumOfShip])`
  - GroupFooter2: `="Totals for " & [PRODUCT_GROUP]`
  - GroupFooter2: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter2: `=Sum([SumOfShip])`
  - PageFooterSection: `=Now()`

## Report: Shipping_Summary_By_Stocktype_Species2
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Shipping Subform › Shipping_Summary_By_Stocktype_Species2
- **Record source:** ``
- **Grouping:** PRODUCT_GROUP → Cat → Diverse2 → PRODUCT_CLASS → PLNTMSTR_SYMBOL
- **Fields:** Cat, Diverse2, FISCAL_YEAR, PG, PLNTMSTR_SYMBOL, PRODUCT_CLASS, SumOfShip, SumOfTOTAL_REQUEST, UC
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - GroupFooter1: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter1: `=Sum([SumOfShip])`
  - GroupFooter1: `="Totals for " & [PRODUCT_CLASS]`
  - GroupFooter3: `="Totals for " & [Diverse2]`
  - GroupFooter3: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter3: `=Sum([SumOfShip])`
  - GroupFooter4: `="Totals for " & [Cat]`
  - GroupFooter4: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter4: `=Sum([SumOfShip])`
  - GroupFooter2: `="Totals for " & [PRODUCT_GROUP]`
  - GroupFooter2: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter2: `=Sum([SumOfShip])`
  - PageFooterSection: `=Now()`

## Report: SowTrans_act_tot_vs_trans_total_checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › SowTrans_act_tot_vs_trans_total_checklist
- **Record source:** ``
- **Grouping:** ID → CN → ACTIVITY_DATE
- **Subreports:** Report.NMIS_TRANSACTIONS_SowXplt_check subreport
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, ACTIVITY_UNITS, CN, ID, LastOfNOTE, NMIS_ID_ACTIVITIES.FISCAL_YEAR, Transaction Total, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`
  - PageFooterSection: `=Now()`

## Report: Stock_Lifting_Worksheet
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Stock_Lifting_Worksheet
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: Stock_Location_Worksheet
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Stock_Location_Worksheet
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: Stock_Location_Worksheet_Container
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Stock_Location_Worksheet_Container
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: Stock_Location_Worksheet_id_change
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Stock_Location_Worksheet_id_change
- **Record source:** ``
- **Grouping:** 
- **Fields:** 
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery]`

## Report: SURPLUS_ORDER_STATUS
- **Caption:** SURPLUS_ORDER_STATUS
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › SURPLUS_ORDER_STATUS
- **Record source:** `SURPLUS_ORDER_STATUS Query`
- **Grouping:** ASSOCIATE_NAME → ID
- **Fields:** ASSOCIATE_NAME, CLIENT_ASSOCIATE, DATE_PACK, ID, ORDER, PACK_AMT, SOURCE_CODE
- **Calculated:**
  - PageHeaderSection: `=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Table_assignment_FLD_CNT_detailed subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Processing_Table_Assignments_Detailed › Table_assignment_Precool_detailed Subrep › Table_assignment_FLD_CNT_detailed subrep
- **Record source:** `SELECT [**Lot_Lift_CNTNR].*, Round([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/1000,2) AS Gross, Round([NO_FLD_CONT]*[AMT_PER_UNIT]/1000,2) AS Net FROM [**Lot_Lift_CNTNR];`
- **Grouping:** 
- **Fields:** C_CN, FLD_CONT, NO_FLD_CONT

## Report: Table_assignment_FLD_CNTNR mt subrep
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c2 subreport › Table_assignment_Precool mt Subrep › Table_assignment_FLD_CNTNR mt subrep
- **Record source:** `SELECT [**Lot_Lift_CNTNR].*, Round([NO_FLD_CONT]*[AMT_PER_UNIT_INV_GROSS]/1000,2) AS Gross, Round([NO_FLD_CONT]*[AMT_PER_UNIT]/1000,2) AS Net FROM [**Lot_Lift_CNTNR];`
- **Grouping:** 
- **Fields:** C_CN, FLD_CONT, NO_FLD_CONT

## Report: Table_assignment_Precool mt Subrep
- **Caption:** ORDER_FORM Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Plant_Processing_Table_Priorities › NMIS_Processing_Table_Priorities_c2 subreport › Table_assignment_Precool mt Subrep
- **Record source:** `**Lot_Lift_Ft`
- **Grouping:** ACTIVITY_DATE
- **Subreports:** Report.Table_assignment_FLD_CNTNR mt subrep
- **Fields:** ACTIVITY_DATE

## Report: Table_assignment_Precool_detailed Subrep
- **Caption:** ORDER_FORM Subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Plant_Processing_Table_Priorties › Processing_Table_Assignments_Detailed › Table_assignment_Precool_detailed Subrep
- **Record source:** `**Lot_Lift_Ft`
- **Grouping:** ACTIVITY_DATE
- **Subreports:** Report.Table_assignment_FLD_CNT_detailed subrep
- **Fields:** ACTIVITY_DATE

## Report: TOLIFT
- **Caption:** NMIS_TOLIFT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT
- **Record source:** `TOLIFT Query`
- **Grouping:** LOT_LOC → BED_SORT_ORDER → ID
- **Subreports:** Report.TOLIFT_ORDER subrep
- **Fields:** ID, LIFTED, LOT_LGTH, LOT_LOC, NET_INV, ORDER_SUM, PLNTMSTR_SYMBOL, Partial_Lift, SURPLUS, TOLIFT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: TOLIFT_by_age_class_species
- **Caption:** NMIS_TOLIFT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_by_age_class_species
- **Record source:** `TOLIFT Query`
- **Grouping:** Age_Class_String → LOT_LOC → BED_SORT_ORDER → ID
- **Subreports:** Report.TOLIFT_ORDER subrep
- **Fields:** Age_Class_String, ID, LIFTED, LOT_LGTH, LOT_LOC, NET_INV, ORDER_SUM, PLNTMSTR_SYMBOL, Partial_Lift, SURPLUS, TOLIFT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - GroupFooter3: `=[Age_Class_String] & " Totals:"`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([ORDER_SUM])`
  - GroupFooter3: `=Sum([SURPLUS])`
  - GroupFooter3: `=Sum([LOT_LGTH])`
  - GroupFooter3: `=Sum([TOLIFT])`
  - GroupFooter3: `=Sum([LIFTED])`
  - GroupFooter3: `=Sum([Surplus_Ft])`
  - GroupFooter3: `=Sum([ToLift_M])`
  - GroupFooter3: `=Sum([Lifted_M])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([ORDER_SUM])`
  - ReportFooter: `=Sum([SURPLUS])`
  - ReportFooter: `=Sum([LOT_LGTH])`
  - ReportFooter: `=Sum([TOLIFT])`
  - ReportFooter: `=Sum([LIFTED])`
  - ReportFooter: `=Sum([Surplus_Ft])`
  - ReportFooter: `=Sum([ToLift_M])`
  - ReportFooter: `=Sum([Lifted_M])`

## Report: TOLIFT_BY_PRIORITY
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform › TOLIFT_BY_PRIORITY
- **Record source:** ``
- **Grouping:** ShowNote → Priority → LOT_LOC → BED_SORT_ORDER → ID
- **Subreports:** Report.TOLIFT_ORDER_Lift_Priority subrep
- **Fields:** Comment, ID, LIFTED, LOC2, LOT_LGTH, NET_INV, ORDER_SUM, PLNTMSTR_SYMBOL, Partial_Lift, Priority, SURPLUS, TOLIFT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Priorties]![Report_Date]`
  - GroupHeader3: `=[Forms]![Lifting_Priorties]![Comments]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=[Forms]![Lifting_Priorties]![Comments]`

## Report: TOLIFT_CNOTE subrep
- **Caption:** NMIS_TOLIFT_ORDER_NOTES Query
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT › TOLIFT_ORDER subrep › TOLIFT_CNOTE subrep
- **Record source:** `TOLIFT_O_CNOTE Query`
- **Grouping:** 
- **Fields:** CLIENT_NOTE, OC_CN

## Report: TOLIFT_Condensed
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › TOLIFT_Condensed
- **Record source:** ``
- **Grouping:** LOT_LOC → BED_SORT_ORDER → ID
- **Fields:** ID, LIFTED, LOT_LGTH, LOT_LOC, NET_INV, ORDER_SUM, PLNTMSTR_SYMBOL, Partial_Lift, SURPLUS, TOLIFT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date()`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: TOLIFT_Condensed2
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Condensed2
- **Record source:** ``
- **Grouping:** Age_Class_String → PLNTMSTR_SYMBOL → LOT_LOC → BED_SORT_ORDER → ID
- **Fields:** Age_Class_String, ID, LIFTED, LOT_LGTH, LOT_LOC, NET_INV, ORDER_SUM, PLNTMSTR_SYMBOL, Partial_Lift, SURPLUS, TOLIFT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([ORDER_SUM])`
  - GroupFooter0: `=Sum([SURPLUS])`
  - GroupFooter0: `=Sum([LOT_LGTH])`
  - GroupFooter0: `=Sum([TOLIFT])`
  - GroupFooter0: `=Sum([LIFTED])`
  - GroupFooter0: `=Sum([Surplus_Ft])`
  - GroupFooter0: `=Sum([ToLift_M])`
  - GroupFooter0: `=Sum([Lifted_M])`
  - GroupFooter3: `=[Age_Class_String] & " Totals:"`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([ORDER_SUM])`
  - GroupFooter3: `=Sum([SURPLUS])`
  - GroupFooter3: `=Sum([LOT_LGTH])`
  - GroupFooter3: `=Sum([TOLIFT])`
  - GroupFooter3: `=Sum([LIFTED])`
  - GroupFooter3: `=Sum([Surplus_Ft])`
  - GroupFooter3: `=Sum([ToLift_M])`
  - GroupFooter3: `=Sum([Lifted_M])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([ORDER_SUM])`
  - ReportFooter: `=Sum([SURPLUS])`
  - ReportFooter: `=Sum([LOT_LGTH])`
  - ReportFooter: `=Sum([TOLIFT])`
  - ReportFooter: `=Sum([LIFTED])`
  - ReportFooter: `=Sum([Surplus_Ft])`
  - ReportFooter: `=Sum([ToLift_M])`
  - ReportFooter: `=Sum([Lifted_M])`

## Report: TOLIFT_Condensed3
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Condensed3
- **Record source:** ``
- **Grouping:** Age_Class_String → LOT_LOC → BED_SORT_ORDER → ID
- **Fields:** Age_Class_String, ID, LIFTED, LOT_LGTH, LOT_LOC, NET_INV, ORDER_SUM, PLNTMSTR_SYMBOL, Partial_Lift, SURPLUS, TOLIFT
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - GroupFooter3: `=[Age_Class_String] & " Totals:"`
  - GroupFooter3: `=Sum([NET_INV])`
  - GroupFooter3: `=Sum([ORDER_SUM])`
  - GroupFooter3: `=Sum([SURPLUS])`
  - GroupFooter3: `=Sum([LOT_LGTH])`
  - GroupFooter3: `=Sum([TOLIFT])`
  - GroupFooter3: `=Sum([LIFTED])`
  - GroupFooter3: `=Sum([Surplus_Ft])`
  - GroupFooter3: `=Sum([ToLift_M])`
  - GroupFooter3: `=Sum([Lifted_M])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([ORDER_SUM])`
  - ReportFooter: `=Sum([SURPLUS])`
  - ReportFooter: `=Sum([LOT_LGTH])`
  - ReportFooter: `=Sum([TOLIFT])`
  - ReportFooter: `=Sum([LIFTED])`
  - ReportFooter: `=Sum([Surplus_Ft])`
  - ReportFooter: `=Sum([ToLift_M])`
  - ReportFooter: `=Sum([Lifted_M])`

## Report: TOLIFT_Condensed_by_major_client_Field_Form
- **Caption:** NMIS_TOLIFT
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Condensed_by_major_client_Field_Form
- **Record source:** `TOLIFT_Field_By_Major_Client Query`
- **Grouping:** Reporting_Parent → LOT_LOC → BED_SORT_ORDER → ID
- **Fields:** ID, LIFTED, LOT_LGTH, LOT_LOC, NET_INV, ORDER_SUM, PLNTMSTR_SYMBOL, Partial_Lift, SURPLUS, TOLIFT, reporting_parent
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date()`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - GroupFooter4: `=Sum([NET_INV])`
  - GroupFooter4: `=Sum([ORDER_SUM])`
  - GroupFooter4: `=Sum([SURPLUS])`
  - GroupFooter4: `=Sum([LOT_LGTH])`
  - GroupFooter4: `=Sum([TOLIFT])`
  - GroupFooter4: `=Sum([LIFTED])`
  - GroupFooter4: `=Sum([Surplus_Ft])`
  - GroupFooter4: `=Sum([ToLift_M])`
  - GroupFooter4: `=Sum([Lifted_M])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: TOLIFT_NNOTE subrep
- **Caption:** NMIS_TOLIFT_ORDER_NOTES Query
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT › TOLIFT_ORDER subrep › TOLIFT_NNOTE subrep
- **Record source:** `TOLIFT_O_NNOTE Query`
- **Grouping:** 
- **Fields:** NURSERY_NOTE, ON_CN

## Report: TOLIFT_ORDER subrep
- **Caption:** NMIS_TOLIFT_ORDER subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT › TOLIFT_ORDER subrep
- **Record source:** `**TOLIFT_ORDER_TABLE`
- **Grouping:** CLIENT_ASSOCIATE → ACTIVITY_CODE
- **Subreports:** Report.TOLIFT_CNOTE subrep, Report.TOLIFT_NNOTE subrep
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, CN, FISCAL_YEAR, ORDER_AMT, OVERRUN_ALL, OVERRUN_AMT, Order_Size_Spec_W_Prune2, PACK

## Report: TOLIFT_ORDER_Lift_Priority subrep
- **Caption:** NMIS_TOLIFT_ORDER subrep
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Priorties › Lifting_Priorties_Data_Subform › TOLIFT_BY_PRIORITY › TOLIFT_ORDER_Lift_Priority subrep
- **Record source:** `SELECT [**TOLIFT_ORDER_TABLE].*, NMIS_ORDER_SERVICES_STRING.SERVICES_STRING, "RP: " & [ROOT_PRUNE_TARGET] AS RP, IIf(Not IsNull([DESIRED_DATE]),"Desired Date: ") & [DESIRED_DATE] AS DD, IIf([BE_AT_PACK],"Be At Pack") AS bap FROM (NMIS_ORDER_SERVICES_STRING INNER JOIN [**TOLIFT_ORDER_TABLE] ON NMIS_ORDER_SERVICES_STRING.ORDER_CN = [**TOLIFT_ORDER_TABLE].CN) INNER JOIN NMIS_ORDERS ON [**TOLIFT_ORDER_TABLE].CN = NMIS_ORDERS.CN;`
- **Grouping:** CLIENT_ASSOCIATE → ACTIVITY_CODE
- **Subreports:** Report.TOLIFT_CNOTE subrep, Report.TOLIFT_NNOTE subrep
- **Fields:** ACTIVITY_CODE, AGREEMENT_LOT_CN, CLIENT_ASSOCIATE, CN, DD, FISCAL_YEAR, ORDER_AMT, ORDER_SIZE_SPEC_STRING, OVERRUN_ALL, OVERRUN_AMT, PACK, RP, SERVICES_STRING, bap

## Report: TOLIFT_Remaining
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Remaining
- **Record source:** ``
- **Grouping:** Age_Class_String → PLNTMSTR_SYMBOL → LOT_LOC → BED_SORT_ORDER → ID
- **Fields:** Age_Class_String, ID, LOT_LOC, NET_INV, ORDER_SUM, Partial_Lift, TOLIFT, Vernacular_With_Code
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date()`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([ORDER_SUM])`
  - GroupFooter0: `=Sum([TOLIFT])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([ORDER_SUM])`
  - ReportFooter: `=Sum([TOLIFT])`

## Report: TOLIFT_Remaining_w_notes
- **Caption:** To Lift by Age Class, Species and Location
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › Lifting_Locations_Form › TOLIFT_Remaining_w_notes
- **Record source:** `TOLIFT_remaining_Field Query`
- **Grouping:** Age_Class_String → PLNTMSTR_SYMBOL → LOT_LOC → BED_SORT_ORDER → ID
- **Subreports:** Report.TOLIFT_ORDER subrep
- **Fields:** Age_Class_String, ID, LOT_LOC, NET_INV, ORDER_SUM, Partial_Lift, TOLIFT, Vernacular_With_Code
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Begin_Location] & " - " & [Forms]![Lifting_Locations_Form]![End_Location]`
  - PageHeaderSection: `=[Forms]![Lifting_Locations_Form]![Like_Plntmstr_Symbol] & "/" & [Forms]![Lifting_Locations_Form]![Like_Age_Class]`
  - PageHeaderSection: `=IIf(Not IsNull([Forms]![Lifting_Locations_Form]![Order_Mod_Date]),[Forms]![Lifting_Locations_Form]![Order_Mod_Date],"*") & " - " & Date()`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([ORDER_SUM])`
  - GroupFooter0: `=Sum([TOLIFT])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([NET_INV])`
  - ReportFooter: `=Sum([ORDER_SUM])`
  - ReportFooter: `=Sum([TOLIFT])`

## Report: TOLIFT_Summary
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › TOLIFT_Summary
- **Record source:** ``
- **Grouping:** CC → LOCATION_TYPE → Age_Class2
- **Fields:** Age_Class2, CC, Containers_to_Process, CountOfCN, GROSS_INV, LOCATION_TYPE, NET_INV, SumOfTOTAL_REQUEST
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([Containers_to_Process])`
  - GroupFooter2: `=Sum([GROSS_INV])`
  - GroupFooter2: `=Sum([NET_INV])`
  - GroupFooter2: `=Sum([CountOfCN])`
  - GroupFooter2: `=Sum([SumOfTOTAL_REQUEST])`
  - GroupFooter0: `=Sum([Containers_to_Process])`
  - GroupFooter0: `=Sum([GROSS_INV])`
  - GroupFooter0: `=Sum([NET_INV])`
  - GroupFooter0: `=Sum([CountOfCN])`
  - GroupFooter0: `=Sum([SumOfTOTAL_REQUEST])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: transaction_Totals_by_End_FY_location_Type_and_Product_Class
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_End_FY_location_Type_and_Product_Class
- **Record source:** ``
- **Grouping:** End_fy_and_season → LOCATION_TYPE → Age_Class → AG_ID_SOURCE → UNIT_CODE
- **Fields:** Age_Class, End_fy_and_season, LT2, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter2: `=Sum([Net])`
  - GroupFooter2: `=Sum([Gross])`
  - GroupFooter2: `=Sum([FirstOfTOTAL_REQUEST])`
  - GroupFooter2: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter1: `=Sum([Net])`
  - GroupFooter1: `=Sum([Gross])`
  - GroupFooter1: `=Sum([FirstOfTOTAL_REQUEST])`
  - GroupFooter1: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`
  - GroupFooter1: `="Total For " & [LT2]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Net])`
  - ReportFooter: `=Sum([Gross])`
  - ReportFooter: `=Sum([firstOfTOTAL_REQUEST])`
  - ReportFooter: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`

## Report: transaction_Totals_by_location_Type
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_location_Type
- **Record source:** ``
- **Grouping:** LOCATION_TYPE → UNIT_CODE
- **Fields:** Gross, LOCATION_TYPE, Net, SumOfTotal_Activity_Units, UNIT_CODE
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter1: `=Sum([Net])`
  - GroupFooter1: `=Sum([Gross])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Net])`
  - ReportFooter: `=Sum([Gross])`

## Report: transaction_Totals_by_location_Type_Agreement_Lot_TP
- **Caption:** transaction_Totals_by_location_Type
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_location_Type_Agreement_Lot_TP
- **Record source:** ``
- **Grouping:** ACTIVITY_CODE → Age_Class → End_fy_and_season → SOURCE → AG_ID_SOURCE → UNIT_CODE
- **Fields:** ACTIVITY_CODE, ACTIVITY_DATE, AG_ID_SOURCE, Age_Class, End_fy_and_season, FirstOfTOTAL_REQUEST, Gross, Net, SumOfTotal_Activity_Units, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - Detail: `=[Net]-[FirstOfTOTAL_REQUEST]`
  - Detail: `=(([Net]-[FirstOfTOTAL_REQUEST])/[FirstOfTOTAL_REQUEST])*100`
  - GroupFooter2: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter2: `=Sum([Net])`
  - GroupFooter2: `=Sum([Gross])`
  - GroupFooter2: `=Sum([FirstOfTOTAL_REQUEST])`
  - GroupFooter2: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`
  - GroupFooter3: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter3: `=Sum([Net])`
  - GroupFooter3: `=Sum([Gross])`
  - GroupFooter3: `=Sum([FirstOfTOTAL_REQUEST])`
  - GroupFooter3: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([SumOfTotal_Activity_Units])`
  - ReportFooter: `=Sum([Net])`
  - ReportFooter: `=Sum([Gross])`
  - ReportFooter: `=Sum([firstOfTOTAL_REQUEST])`
  - ReportFooter: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`

## Report: transaction_Totals_by_location_Type_and_Product_Class
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › transaction_Totals_by_location_Type_and_Product_Class
- **Record source:** ``
- **Grouping:** LOCATION_TYPE → Age_Class → End_fy_and_season → AG_ID_SOURCE → UNIT_CODE
- **Fields:** Age_Class, LT2, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - GroupFooter2: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter2: `=Sum([Net])`
  - GroupFooter2: `=Sum([Gross])`
  - GroupFooter2: `=Sum([FirstOfTOTAL_REQUEST])`
  - GroupFooter2: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`
  - GroupFooter1: `=Sum([SumOfTotal_Activity_Units])`
  - GroupFooter1: `=Sum([Net])`
  - GroupFooter1: `=Sum([Gross])`
  - GroupFooter1: `=Sum([FirstOfTOTAL_REQUEST])`
  - GroupFooter1: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`
  - GroupFooter1: `="Total For " & [LT2]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([Net])`
  - ReportFooter: `=Sum([Gross])`
  - ReportFooter: `=Sum([firstOfTOTAL_REQUEST])`
  - ReportFooter: `=Sum([Net]-[FirstOfTOTAL_REQUEST])`

## Report: Transplant_Checklist
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist
- **Record source:** ``
- **Grouping:** PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → TP For → ID → SIZE_SPEC_STRING
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, BEGIN_FY, END_FY, Location, PLNTMSTR_SYMBOL, PREVIOUS_NURSERY_ASSOCIATE, Prev_ID, SIZE_SPEC_STRING, SPECIES_PRODUCT_DESC, TOTAL_REQUEST, TP For
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="FY " & Forms!Switchboard!FY_For_Reports`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Transplant_Checklist_by_Stocktype_and_Species
- **Caption:** Transplant_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist_by_Stocktype_and_Species
- **Record source:** `Transplant_Checklist Query`
- **Grouping:** SPECIES_PRODUCT_DESC → PLNTMSTR_SYMBOL → TP For → ID → SIZE_SPEC_STRING
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, BEGIN_FY, END_FY, Location, PLNTMSTR_SYMBOL, PREVIOUS_NURSERY_ASSOCIATE, Prev_ID, SIZE_SPEC_STRING, SPECIES_PRODUCT_DESC, TOTAL_REQUEST, TP For
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="FY " & Forms!Switchboard!FY_For_Reports`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`

## Report: Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals
- **Caption:** Transplant_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals
- **Record source:** `Transplant_Checklist Query`
- **Grouping:** SPECIES_PRODUCT_DESC → PLNTMSTR_SYMBOL → TP For → ID → SIZE_SPEC_STRING
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, BEGIN_FY, BF_Transplanted, END_FY, Location, PLNTMSTR_SYMBOL, PREVIOUS_NURSERY_ASSOCIATE, Prev_ID, SIZE_SPEC_STRING, SPECIES_PRODUCT_DESC, TOTAL_REQUEST, TP For
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="FY " & Forms!Switchboard!FY_For_Reports`
  - GroupFooter0: `=Sum([TOTAL_REQUEST])`
  - GroupFooter0: `="Subtotal for " & [PLNTMSTR_SYMBOL]`
  - GroupFooter0: `=Sum(nz([BF_Transplanted],0))`
  - GroupFooter1: `=Sum([TOTAL_REQUEST])`
  - GroupFooter1: `="Subtotal for " & [SPECIES_PRODUCT_DESC]`
  - GroupFooter1: `=Sum(nz([BF_Transplanted],0))`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([TOTAL_REQUEST])`
  - ReportFooter: `=Sum([TOTAL_REQUEST])`

## Report: Transplant_Checklist_W_Subtotals
- **Caption:** Transplant_Checklist
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Production Subform › Transplant_Checklist_W_Subtotals
- **Record source:** `Transplant_Checklist Query`
- **Grouping:** PLNTMSTR_SYMBOL → SPECIES_PRODUCT_DESC → TP For → ID → SIZE_SPEC_STRING
- **Fields:** AGREEMENT_LOT_ID_AND_SOURCE2, BEGIN_FY, END_FY, Location, PLNTMSTR_SYMBOL, PREVIOUS_NURSERY_ASSOCIATE, Prev_ID, SIZE_SPEC_STRING, SPECIES_PRODUCT_DESC, TOTAL_REQUEST, TP For
- **Calculated:**
  - ReportHeader: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - ReportHeader: `="FY " & Forms!Switchboard!FY_For_Reports`
  - GroupFooter1: `=Sum([TOTAL_REQUEST])`
  - GroupFooter1: `="Subtotal for " & [SPECIES_PRODUCT_DESC]`
  - GroupFooter0: `=Sum([TOTAL_REQUEST])`
  - GroupFooter0: `="Subtotal for " & [PLNTMSTR_SYMBOL]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([TOTAL_REQUEST])`

## Report: XPLT_AT_JHSN
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN
- **Record source:** ``
- **Grouping:** ORDER_CODE → OWNER → Product_Class_for_Processing → PLNTMSTR_SYMBOL → LOT_ID
- **Subreports:** Report.PXPLT_MCODES Subrep
- **Fields:** ACTIVITY_CODE, AMT_PER_UNIT, CLIENT_ASSOCIATE, CONTACT, ID_SOURCE2, LOT_ID, New_Agreement_Lot_ID, Notes, Nursery_Owned_Request, ORDER_CODE, OWNER, Order_Size_Spec_W_Prune2, PACK_ID, PLNTMSTR_SYMBOL, Product_Class_for_Processing, SumOfNUMBER_OF_ACTIVITY_UNITS, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Packed for Nursery Transplant for FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageHeaderSection: `=IIf([owner]="Nursery Owned","Orig Req")`
  - PageHeaderSection: `=IIf([owner]="Nursery Owned","","New Lot ID")`
  - GroupHeader2: `=Sum([PACKED])`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total Packed for " & [OWNER]`
  - GroupFooter0: `=Sum([Nursery_Owned_Request])`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total Packed for " & [ORDER_CODE]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Transplanting FY" & [Forms]![Switchboard]![FY_For_Reports]`

## Report: XPLT_AT_JHSN_by_Client_Sp_age_class
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN_by_Client_Sp_age_class
- **Record source:** ``
- **Grouping:** ORDER_CODE → OWNER → CLIENT_ASSOCIATE → Product_Class_for_Processing → PLNTMSTR_SYMBOL → LOT_ID
- **Subreports:** Report.PXPLT_MCODES Subrep
- **Fields:** ACTIVITY_CODE, AMT_PER_UNIT, CLIENT_ASSOCIATE, CONTACT, ID_SOURCE2, LOT_ID, Notes, Nursery_Owned_Request, ORDER_CODE, OWNER, Order_Size_Spec_W_Prune2, PACK_ID, PLNTMSTR_SYMBOL, Product_Class_for_Processing, SumOfNUMBER_OF_ACTIVITY_UNITS, UNIT_CODE, [New_Agreement_Lot_ID]
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Packed for Nursery Transplant for FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageHeaderSection: `=IIf([owner]="Nursery Owned","Orig Req")`
  - PageHeaderSection: `=IIf([owner]="Nursery Owned","","New Lot ID")`
  - GroupHeader2: `=Sum([PACKED])`
  - GroupFooter8: `=Sum([PACKED])`
  - GroupFooter7: `=[Product_Class_for_Processing] & " Totals"`
  - GroupFooter7: `=Sum([PACKED])`
  - GroupFooter5: `=Sum([PACKED])`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total Packed for " & [OWNER]`
  - GroupFooter0: `=Sum([Nursery_Owned_Request])`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total Packed for " & [ORDER_CODE]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Transplanting FY" & [Forms]![Switchboard]![FY_For_Reports]`

## Report: XPLT_AT_JHSN_by_Store_Loc
- **Caption:** 
- **Menu path:** Switchboard › REPORTS Form › Reports_Menu_Processing Subform › XPLT_AT_JHSN_by_Store_Loc
- **Record source:** ``
- **Grouping:** ORDER_CODE → OWNER → LOCATION → PLNTMSTR_SYMBOL → LOT_ID
- **Fields:** ACTIVITY_CODE, AMT_PER_UNIT, CLIENT_ASSOCIATE, ID_SOURCE2, LOCATION, LOT_ID, New_Agreement_Lot_ID, Nursery_Owned_Request, ORDER_CODE, OWNER, Order_Size_Spec_W_Prune2, PACK_ID, PLNTMSTR_SYMBOL, SumOfNUMBER_OF_ACTIVITY_UNITS, UNIT_CODE
- **Calculated:**
  - PageHeaderSection: `=Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery`
  - PageHeaderSection: `="Packed for Nursery Transplant for FY " & [Forms]![Switchboard]![FY_For_Reports]`
  - PageHeaderSection: `=IIf([owner]="Nursery Owned","Orig Req")`
  - PageHeaderSection: `=IIf([owner]="Nursery Owned","","New Lot ID")`
  - GroupHeader2: `=Sum([PACKED])`
  - GroupFooter0: `=Sum([PACKED])`
  - GroupFooter0: `="Total Packed for " & [OWNER]`
  - GroupFooter0: `=Sum([Nursery_Owned_Request])`
  - GroupFooter4: `=Sum([PACKED])`
  - GroupFooter4: `="Total Packed for " & [ORDER_CODE]`
  - PageFooterSection: `=Now()`
  - PageFooterSection: `="Page " & [Page] & " of " & [Pages]`
  - ReportFooter: `=Sum([PACKED])`
  - ReportFooter: `="Total Packed for Transplanting FY" & [Forms]![Switchboard]![FY_For_Reports]`
