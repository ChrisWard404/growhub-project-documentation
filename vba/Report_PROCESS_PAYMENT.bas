Option Compare Database

Private Sub Report_Open(Cancel As Integer)

        DoCmd.Close acReport, "Processing_Contract_Processed_not_in_pmt_temp"

End Sub
