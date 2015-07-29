--SQL queries that name selected fields for print templates


-- all in one line
	-- CustomFlags.ID AS [CustomFlags_ID], CustomFlags.NVTGC AS [CustomFlags_NVTGC], CustomFlags.FlagName AS [CustomFlags_FlagName], CustomFlags.IsSystem AS [CustomFlags_IsSystem], TransactionFlags.FlagID AS [TransactionFlags_FlagID], TransactionFlags.TransactionNumber AS [TransactionFlags_TransactionNumber], LenderAddresses.LenderString AS [LenderAddresses_LenderString], LenderAddresses.AddressNumber AS [LenderAddresses_AddressNumber], LenderAddresses.LibraryName AS [LenderAddresses_LibraryName], LenderAddresses.Address1 AS [LenderAddresses_Address1], LenderAddresses.Address2 AS [LenderAddresses_Address2], LenderAddresses.Address3 AS [LenderAddresses_Address3], LenderAddresses.Address4 AS [LenderAddresses_Address4], LenderAddresses.BAddress1 AS [LenderAddresses_BAddress1], LenderAddresses.BAddress2 AS [LenderAddresses_BAddress2], LenderAddresses.BAddress3 AS [LenderAddresses_BAddress3], LenderAddresses.BAddress4 AS [LenderAddresses_BAddress4], LenderAddresses.Fax AS [LenderAddresses_Fax], LenderAddresses.ArielAddress AS [LenderAddresses_ArielAddress], LenderAddresses.Phone AS [LenderAddresses_Phone], LenderAddresses.PriorityShipping AS [LenderAddresses_PriorityShipping], LenderAddresses.CopyrightPayer AS [LenderAddresses_CopyrightPayer], LenderAddresses.BillingExempt AS [LenderAddresses_BillingExempt], LenderAddresses.BillingCategory AS [LenderAddresses_BillingCategory], LenderAddresses.LibCopyCharge AS [LenderAddresses_LibCopyCharge], LenderAddresses.LibLoanCharge AS [LenderAddresses_LibLoanCharge], LenderAddresses.LibBillingMethod AS [LenderAddresses_LibBillingMethod], LenderAddresses.EFTS AS [LenderAddresses_EFTS], LenderAddresses.NVTGC AS [LenderAddresses_NVTGC], LenderAddresses.BorrowingDeptEmail AS [LenderAddresses_BorrowingDeptEmail], LenderAddresses.OdysseyIP AS [LenderAddresses_OdysseyIP], LenderAddresses.OverrideIFM AS [LenderAddresses_OverrideIFM], LenderAddresses.ISO AS [LenderAddresses_ISO], LenderAddresses.ISOIPAddress AS [LenderAddresses_ISOIPAddress], LenderAddresses.ISORequesterId AS [LenderAddresses_ISORequesterId], LenderAddresses.ISOUserName AS [LenderAddresses_ISOUserName], LenderAddresses.ISOPassword AS [LenderAddresses_ISOPassword], LenderAddresses.WebPassword AS [LenderAddresses_WebPassword], LenderAddresses.Blocked AS [LenderAddresses_Blocked], LenderAddresses.TrustedSender AS [LenderAddresses_TrustedSender], LenderAddresses.DefaultShippingMethodLoan AS [LenderAddresses_DefaultShippingMethodLoan], LenderAddresses.ISOTransport AS [LenderAddresses_ISOTransport], LenderAddresses.ISOEMailAddress AS [LenderAddresses_ISOEMailAddress], LenderAddresses.ISOAutoUpdateAddress AS [LenderAddresses_ISOAutoUpdateAddress], LenderAddresses.RSSID AS [LenderAddresses_RSSID], LenderAddresses.ESPShipTo AS [LenderAddresses_ESPShipTo], LenderAddresses.ESPBillTo AS [LenderAddresses_ESPBillTo], LenderAddresses.OverrideOdyssey AS [LenderAddresses_OverrideOdyssey], LenderAddresses.TrustedSenderOverride AS [LenderAddresses_TrustedSenderOverride], LenderAddresses.DefaultShippingMethodArticle AS [LenderAddresses_DefaultShippingMethodArticle], LenderAddresses.OdysseyVersion AS [LenderAddresses_OdysseyVersion], LenderAddresses.LendingDeptEmail AS [LenderAddresses_LendingDeptEmail], Users.UserName AS [Users_UserName], Users.LastName AS [Users_LastName], Users.FirstName AS [Users_FirstName], Users.SSN AS [Users_SSN], Users.Status AS [Users_Status], Users.EMailAddress AS [Users_EMailAddress], Users.Phone AS [Users_Phone], Users.Department AS [Users_Department], Users.NVTGC AS [Users_NVTGC], Users.Password AS [Users_Password], Users.NotificationMethod AS [Users_NotificationMethod], Users.DeliveryMethod AS [Users_DeliveryMethod], Users.LoanDeliveryMethod AS [Users_LoanDeliveryMethod], Users.LastChangedDate AS [Users_LastChangedDate], Users.AuthorizedUsers AS [Users_AuthorizedUsers], Users.Staff AS [Users_Staff], Users.Cleared AS [Users_Cleared], Users.Web AS [Users_Web], Users.Address AS [Users_Address], Users.Address2 AS [Users_Address2], Users.City AS [Users_City], Users.State AS [Users_State], Users.Zip AS [Users_Zip], Users.Site AS [Users_Site], Users.ExpirationDate AS [Users_ExpirationDate], Users.Special AS [Users_Special], Users.Number AS [Users_Number], Users.UserRequestLimit AS [Users_UserRequestLimit], Users.Organization AS [Users_Organization], Users.Fax AS [Users_Fax], Users.ShippingAcctNo AS [Users_ShippingAcctNo], Users.BillingCategory AS [Users_BillingCategory], Users.Country AS [Users_Country], Users.SAddress AS [Users_SAddress], Users.SAddress2 AS [Users_SAddress2], Users.SCity AS [Users_SCity], Users.SState AS [Users_SState], Users.SZip AS [Users_SZip], Users.PasswordHint AS [Users_PasswordHint], Users.SCountry AS [Users_SCountry], Users.RSSID AS [Users_RSSID], Users.AuthType AS [Users_AuthType], Users.UserInfo1 AS [Users_UserInfo1], Users.UserInfo2 AS [Users_UserInfo2], Users.UserInfo3 AS [Users_UserInfo3], Users.UserInfo4 AS [Users_UserInfo4], Users.UserInfo5 AS [Users_UserInfo5], Transactions.TransactionNumber AS [Transactions_TransactionNumber], Transactions.Username AS [Transactions_Username], Transactions.RequestType AS [Transactions_RequestType], Transactions.LoanAuthor AS [Transactions_LoanAuthor], Transactions.LoanTitle AS [Transactions_LoanTitle], Transactions.LoanPublisher AS [Transactions_LoanPublisher], Transactions.LoanPlace AS [Transactions_LoanPlace], Transactions.LoanDate AS [Transactions_LoanDate], Transactions.LoanEdition AS [Transactions_LoanEdition], Transactions.PhotoJournalTitle AS [Transactions_PhotoJournalTitle], Transactions.PhotoJournalVolume AS [Transactions_PhotoJournalVolume], Transactions.PhotoJournalIssue AS [Transactions_PhotoJournalIssue], Transactions.PhotoJournalMonth AS [Transactions_PhotoJournalMonth], Transactions.PhotoJournalYear AS [Transactions_PhotoJournalYear], Transactions.PhotoJournalInclusivePages AS [Transactions_PhotoJournalInclusivePages], Transactions.PhotoArticleAuthor AS [Transactions_PhotoArticleAuthor], Transactions.PhotoArticleTitle AS [Transactions_PhotoArticleTitle], Transactions.CitedIn AS [Transactions_CitedIn], Transactions.CitedTitle AS [Transactions_CitedTitle], Transactions.CitedDate AS [Transactions_CitedDate], Transactions.CitedVolume AS [Transactions_CitedVolume], Transactions.CitedPages AS [Transactions_CitedPages], Transactions.NotWantedAfter AS [Transactions_NotWantedAfter], Transactions.AcceptNonEnglish AS [Transactions_AcceptNonEnglish], Transactions.AcceptAlternateEdition AS [Transactions_AcceptAlternateEdition], Transactions.TransactionStatus AS [Transactions_TransactionStatus], Transactions.TransactionDate AS [Transactions_TransactionDate], Transactions.ISSN AS [Transactions_ISSN], Transactions.ILLNumber AS [Transactions_ILLNumber], Transactions.ESPNumber AS [Transactions_ESPNumber], Transactions.LendingString AS [Transactions_LendingString], Transactions.BaseFee AS [Transactions_BaseFee], Transactions.PerPage AS [Transactions_PerPage], Transactions.Pages AS [Transactions_Pages], Transactions.DueDate AS [Transactions_DueDate], Transactions.RenewalsAllowed AS [Transactions_RenewalsAllowed], Transactions.SpecIns AS [Transactions_SpecIns], Transactions.Pieces AS [Transactions_Pieces], Transactions.LibraryUseOnly AS [Transactions_LibraryUseOnly], Transactions.AllowPhotocopies AS [Transactions_AllowPhotocopies], Transactions.LendingLibrary AS [Transactions_LendingLibrary], Transactions.ReasonForCancellation AS [Transactions_ReasonForCancellation], Transactions.CallNumber AS [Transactions_CallNumber], Transactions.Location AS [Transactions_Location], Transactions.Maxcost AS [Transactions_Maxcost], Transactions.ProcessType AS [Transactions_ProcessType], Transactions.ItemNumber AS [Transactions_ItemNumber], Transactions.LenderAddressNumber AS [Transactions_LenderAddressNumber], Transactions.Ariel AS [Transactions_Ariel], Transactions.Patron AS [Transactions_Patron], Transactions.PhotoItemAuthor AS [Transactions_PhotoItemAuthor], Transactions.PhotoItemPlace AS [Transactions_PhotoItemPlace], Transactions.PhotoItemPublisher AS [Transactions_PhotoItemPublisher], Transactions.PhotoItemEdition AS [Transactions_PhotoItemEdition], Transactions.DocumentType AS [Transactions_DocumentType], Transactions.InternalAcctNo AS [Transactions_InternalAcctNo], Transactions.PriorityShipping AS [Transactions_PriorityShipping], Transactions.Rush AS [Transactions_Rush], Transactions.CopyrightAlreadyPaid AS [Transactions_CopyrightAlreadyPaid], Transactions.WantedBy AS [Transactions_WantedBy], Transactions.SystemID AS [Transactions_SystemID], Transactions.ReplacementPages AS [Transactions_ReplacementPages], Transactions.IFMCost AS [Transactions_IFMCost], Transactions.CopyrightPaymentMethod AS [Transactions_CopyrightPaymentMethod], Transactions.ShippingOptions AS [Transactions_ShippingOptions], Transactions.CCCNumber AS [Transactions_CCCNumber], Transactions.IntlShippingOptions AS [Transactions_IntlShippingOptions], Transactions.ShippingAcctNo AS [Transactions_ShippingAcctNo], Transactions.ReferenceNumber AS [Transactions_ReferenceNumber], Transactions.CopyrightComp AS [Transactions_CopyrightComp], Transactions.TAddress AS [Transactions_TAddress], Transactions.TAddress2 AS [Transactions_TAddress2], Transactions.TCity AS [Transactions_TCity], Transactions.TState AS [Transactions_TState], Transactions.TZip AS [Transactions_TZip], Transactions.TCountry AS [Transactions_TCountry], Transactions.TFax AS [Transactions_TFax], Transactions.TEMailAddress AS [Transactions_TEMailAddress], Transactions.TNumber AS [Transactions_TNumber], Transactions.HandleWithCare AS [Transactions_HandleWithCare], Transactions.CopyWithCare AS [Transactions_CopyWithCare], Transactions.RestrictedUse AS [Transactions_RestrictedUse], Transactions.ReceivedVia AS [Transactions_ReceivedVia], Transactions.CancellationCode AS [Transactions_CancellationCode], Transactions.BillingCategory AS [Transactions_BillingCategory], Transactions.CCSelected AS [Transactions_CCSelected], Transactions.OriginalTN AS [Transactions_OriginalTN], Transactions.OriginalNVTGC AS [Transactions_OriginalNVTGC], Transactions.InProcessDate AS [Transactions_InProcessDate], Transactions.InvoiceNumber AS [Transactions_InvoiceNumber], Transactions.BorrowerTN AS [Transactions_BorrowerTN], Transactions.WebRequestForm AS [Transactions_WebRequestForm], Transactions.TName AS [Transactions_TName], Transactions.TAddress3 AS [Transactions_TAddress3], Transactions.IFMPaid AS [Transactions_IFMPaid], Transactions.BillingAmount AS [Transactions_BillingAmount], Transactions.ConnectorErrorStatus AS [Transactions_ConnectorErrorStatus], Transactions.BorrowerNVTGC AS [Transactions_BorrowerNVTGC], Transactions.CCCOrder AS [Transactions_CCCOrder], Transactions.ISOStatus AS [Transactions_ISOStatus], Transactions.ShippingDetail AS [Transactions_ShippingDetail], Transactions.OdysseyErrorStatus AS [Transactions_OdysseyErrorStatus], Transactions.WorldCatLCNumber AS [Transactions_WorldCatLCNumber], Transactions.Locations AS [Transactions_Locations], Transactions.FlagType AS [Transactions_FlagType], Transactions.FlagNote AS [Transactions_FlagNote], Transactions.ItemInfo1 AS [Transactions_ItemInfo1], Transactions.ItemInfo2 AS [Transactions_ItemInfo2], Transactions.ItemInfo3 AS [Transactions_ItemInfo3], Transactions.ItemInfo4 AS [Transactions_ItemInfo4], Transactions.ItemInfo5 AS [Transactions_ItemInfo5], Transactions.SpecialService AS [Transactions_SpecialService], Transactions.DeliveryMethod AS [Transactions_DeliveryMethod], Transactions.Web AS [Transactions_Web], Transactions.CreationDate AS [Transactions_CreationDate], Transactions.PMID AS [Transactions_PMID], Transactions.DOI AS [Transactions_DOI], Transactions.LastOverdueNoticeSent AS [Transactions_LastOverdueNoticeSent], Transactions.ExternalRequest AS [Transactions_ExternalRequest], Transactions.AEUrl AS [Transactions_AEUrl], Transactions.AEPassword AS [Transactions_AEPassword]
	
	-- working set, but missing some fields
	--r = r .. "SELECT CustomFlags.FlagName, CustomFlags.ID, TransactionFlags.FlagID, TransactionFlags.TransactionNumber, Transactions.TransactionNumber AS [Transactions_TransactionNumber], Transactions.Username, Transactions.RequestType AS [Transactions_RequestType], Transactions.LoanAuthor AS [Transactions_LoanAuthor], Transactions.LoanTitle AS [Transactions_LoanTitle], Transactions.LoanPublisher AS [Transactions_LoanPublisher], Transactions.LoanDate, Transactions.TransactionStatus, Transactions.LoanEdition, Transactions.PhotoJournalTitle AS [Transactions_PhotoJournalTitle], Transactions.PhotoJournalVolume, Transactions.PhotoJournalIssue, Transactions.PhotoJournalMonth, Transactions.PhotoJournalYear, Transactions.PhotoArticleAuthor AS [Transactions_PhotoArticleAuthor], Transactions.PhotoArticleTitle AS [Transactions_PhotoArticleTitle], Transactions.TransactionDate, Users.FirstName AS [Users_FirstName], Users.LastName AS [Users_LastName]"
	--r = r .. " FROM ((TransactionFlags INNER JOIN Transactions ON TransactionFlags.TransactionNumber = Transactions.TransactionNumber) INNER JOIN CustomFlags ON TransactionFlags.FlagID = CustomFlags.ID) INNER JOIN Users ON Transactions.Username = Users.UserName"
	
	-- TransactionFlags and CustomFlags
	--r = r .. "CustomFlags.ID AS [CustomFlags_ID], CustomFlags.NVTGC AS [CustomFlags_NVTGC], CustomFlags.FlagName AS [CustomFlags_FlagName], CustomFlags.IsSystem AS [CustomFlags_IsSystem], TransactionFlags.FlagID AS [TransactionFlags_FlagID], TransactionFlags.TransactionNumber AS [TransactionFlags_TransactionNumber]," 
	-- Lender Addresses
	--"LenderAddresses.LenderString AS [LenderAddresses_LenderString], LenderAddresses.AddressNumber AS [LenderAddresses_AddressNumber], LenderAddresses.LibraryName AS [LenderAddresses_LibraryName], LenderAddresses.Address1 AS [LenderAddresses_Address1], LenderAddresses.Address2 AS [LenderAddresses_Address2], LenderAddresses.Address3 AS [LenderAddresses_Address3], LenderAddresses.Address4 AS [LenderAddresses_Address4], LenderAddresses.BAddress1 AS [LenderAddresses_BAddress1], LenderAddresses.BAddress2 AS [LenderAddresses_BAddress2], LenderAddresses.BAddress3 AS [LenderAddresses_BAddress3], LenderAddresses.BAddress4 AS [LenderAddresses_BAddress4], LenderAddresses.Fax AS [LenderAddresses_Fax], LenderAddresses.ArielAddress AS [LenderAddresses_ArielAddress], LenderAddresses.Phone AS [LenderAddresses_Phone], LenderAddresses.PriorityShipping AS [LenderAddresses_PriorityShipping], LenderAddresses.CopyrightPayer AS [LenderAddresses_CopyrightPayer], LenderAddresses.BillingExempt AS [LenderAddresses_BillingExempt], LenderAddresses.BillingCategory AS [LenderAddresses_BillingCategory], LenderAddresses.LibCopyCharge AS [LenderAddresses_LibCopyCharge], LenderAddresses.LibLoanCharge AS [LenderAddresses_LibLoanCharge], LenderAddresses.LibBillingMethod AS [LenderAddresses_LibBillingMethod], LenderAddresses.EFTS AS [LenderAddresses_EFTS], LenderAddresses.NVTGC AS [LenderAddresses_NVTGC], LenderAddresses.BorrowingDeptEmail AS [LenderAddresses_BorrowingDeptEmail], LenderAddresses.OdysseyIP AS [LenderAddresses_OdysseyIP], LenderAddresses.OverrideIFM AS [LenderAddresses_OverrideIFM], LenderAddresses.ISO AS [LenderAddresses_ISO], LenderAddresses.ISOIPAddress AS [LenderAddresses_ISOIPAddress], LenderAddresses.ISORequesterId AS [LenderAddresses_ISORequesterId], LenderAddresses.ISOUserName AS [LenderAddresses_ISOUserName], LenderAddresses.ISOPassword AS [LenderAddresses_ISOPassword], LenderAddresses.WebPassword AS [LenderAddresses_WebPassword], LenderAddresses.Blocked AS [LenderAddresses_Blocked], LenderAddresses.TrustedSender AS [LenderAddresses_TrustedSender], LenderAddresses.DefaultShippingMethodLoan AS [LenderAddresses_DefaultShippingMethodLoan], LenderAddresses.ISOTransport AS [LenderAddresses_ISOTransport], LenderAddresses.ISOEMailAddress AS [LenderAddresses_ISOEMailAddress], LenderAddresses.ISOAutoUpdateAddress AS [LenderAddresses_ISOAutoUpdateAddress], LenderAddresses.RSSID AS [LenderAddresses_RSSID], LenderAddresses.ESPShipTo AS [LenderAddresses_ESPShipTo], LenderAddresses.ESPBillTo AS [LenderAddresses_ESPBillTo], LenderAddresses.OverrideOdyssey AS [LenderAddresses_OverrideOdyssey], LenderAddresses.TrustedSenderOverride AS [LenderAddresses_TrustedSenderOverride], LenderAddresses.DefaultShippingMethodArticle AS [LenderAddresses_DefaultShippingMethodArticle], LenderAddresses.OdysseyVersion AS [LenderAddresses_OdysseyVersion], LenderAddresses.LendingDeptEmail AS [LenderAddresses_LendingDeptEmail],";
	-- Users
	--"Users.UserName AS [Users_UserName], Users.LastName AS [Users_LastName], Users.FirstName AS [Users_FirstName], Users.SSN AS [Users_SSN], Users.Status AS [Users_Status], Users.EMailAddress AS [Users_EMailAddress], Users.Phone AS [Users_Phone], Users.Department AS [Users_Department], Users.NVTGC AS [Users_NVTGC], Users.Password AS [Users_Password], Users.NotificationMethod AS [Users_NotificationMethod], Users.DeliveryMethod AS [Users_DeliveryMethod], Users.LoanDeliveryMethod AS [Users_LoanDeliveryMethod], Users.LastChangedDate AS [Users_LastChangedDate], Users.AuthorizedUsers AS [Users_AuthorizedUsers], Users.Staff AS [Users_Staff], Users.Cleared AS [Users_Cleared], Users.Web AS [Users_Web], Users.Address AS [Users_Address], Users.Address2 AS [Users_Address2], Users.City AS [Users_City], Users.State AS [Users_State], Users.Zip AS [Users_Zip], Users.Site AS [Users_Site], Users.ExpirationDate AS [Users_ExpirationDate], Users.Special AS [Users_Special], Users.Number AS [Users_Number], Users.UserRequestLimit AS [Users_UserRequestLimit], Users.Organization AS [Users_Organization], Users.Fax AS [Users_Fax], Users.ShippingAcctNo AS [Users_ShippingAcctNo], Users.BillingCategory AS [Users_BillingCategory], Users.Country AS [Users_Country], Users.SAddress AS [Users_SAddress], Users.SAddress2 AS [Users_SAddress2], Users.SCity AS [Users_SCity], Users.SState AS [Users_SState], Users.SZip AS [Users_SZip], Users.PasswordHint AS [Users_PasswordHint], Users.SCountry AS [Users_SCountry], Users.RSSID AS [Users_RSSID], Users.AuthType AS [Users_AuthType], Users.UserInfo1 AS [Users_UserInfo1], Users.UserInfo2 AS [Users_UserInfo2], Users.UserInfo3 AS [Users_UserInfo3], Users.UserInfo4 AS [Users_UserInfo4], Users.UserInfo5 AS [Users_UserInfo5],";
	-- Transactions
	--Transactions.TransactionNumber AS [Transactions_TransactionNumber], Transactions.Username AS [Transactions_Username], Transactions.RequestType AS [Transactions_RequestType], Transactions.LoanAuthor AS [Transactions_LoanAuthor], Transactions.LoanTitle AS [Transactions_LoanTitle], Transactions.LoanPublisher AS [Transactions_LoanPublisher], Transactions.LoanPlace AS [Transactions_LoanPlace], Transactions.LoanDate AS [Transactions_LoanDate], Transactions.LoanEdition AS [Transactions_LoanEdition], Transactions.PhotoJournalTitle AS [Transactions_PhotoJournalTitle], Transactions.PhotoJournalVolume AS [Transactions_PhotoJournalVolume], Transactions.PhotoJournalIssue AS [Transactions_PhotoJournalIssue], Transactions.PhotoJournalMonth AS [Transactions_PhotoJournalMonth], Transactions.PhotoJournalYear AS [Transactions_PhotoJournalYear], Transactions.PhotoJournalInclusivePages AS [Transactions_PhotoJournalInclusivePages], Transactions.PhotoArticleAuthor AS [Transactions_PhotoArticleAuthor], Transactions.PhotoArticleTitle AS [Transactions_PhotoArticleTitle], Transactions.CitedIn AS [Transactions_CitedIn], Transactions.CitedTitle AS [Transactions_CitedTitle], Transactions.CitedDate AS [Transactions_CitedDate], Transactions.CitedVolume AS [Transactions_CitedVolume], Transactions.CitedPages AS [Transactions_CitedPages], Transactions.NotWantedAfter AS [Transactions_NotWantedAfter], Transactions.AcceptNonEnglish AS [Transactions_AcceptNonEnglish], Transactions.AcceptAlternateEdition AS [Transactions_AcceptAlternateEdition], Transactions.TransactionStatus AS [Transactions_TransactionStatus], Transactions.TransactionDate AS [Transactions_TransactionDate], Transactions.ISSN AS [Transactions_ISSN], Transactions.ILLNumber AS [Transactions_ILLNumber], Transactions.ESPNumber AS [Transactions_ESPNumber], Transactions.LendingString AS [Transactions_LendingString], Transactions.BaseFee AS [Transactions_BaseFee], Transactions.PerPage AS [Transactions_PerPage], Transactions.Pages AS [Transactions_Pages], Transactions.DueDate AS [Transactions_DueDate], Transactions.RenewalsAllowed AS [Transactions_RenewalsAllowed], Transactions.SpecIns AS [Transactions_SpecIns], Transactions.Pieces AS [Transactions_Pieces], Transactions.LibraryUseOnly AS [Transactions_LibraryUseOnly], Transactions.AllowPhotocopies AS [Transactions_AllowPhotocopies], Transactions.LendingLibrary AS [Transactions_LendingLibrary], Transactions.ReasonForCancellation AS [Transactions_ReasonForCancellation], Transactions.CallNumber AS [Transactions_CallNumber], Transactions.Location AS [Transactions_Location], Transactions.Maxcost AS [Transactions_Maxcost], Transactions.ProcessType AS [Transactions_ProcessType], Transactions.ItemNumber AS [Transactions_ItemNumber], Transactions.LenderAddressNumber AS [Transactions_LenderAddressNumber], Transactions.Ariel AS [Transactions_Ariel], Transactions.Patron AS [Transactions_Patron], Transactions.PhotoItemAuthor AS [Transactions_PhotoItemAuthor], Transactions.PhotoItemPlace AS [Transactions_PhotoItemPlace], Transactions.PhotoItemPublisher AS [Transactions_PhotoItemPublisher], Transactions.PhotoItemEdition AS [Transactions_PhotoItemEdition], Transactions.DocumentType AS [Transactions_DocumentType], Transactions.InternalAcctNo AS [Transactions_InternalAcctNo], Transactions.PriorityShipping AS [Transactions_PriorityShipping], Transactions.Rush AS [Transactions_Rush], Transactions.CopyrightAlreadyPaid AS [Transactions_CopyrightAlreadyPaid], Transactions.WantedBy AS [Transactions_WantedBy], Transactions.SystemID AS [Transactions_SystemID], Transactions.ReplacementPages AS [Transactions_ReplacementPages], Transactions.IFMCost AS [Transactions_IFMCost], Transactions.CopyrightPaymentMethod AS [Transactions_CopyrightPaymentMethod], Transactions.ShippingOptions AS [Transactions_ShippingOptions], Transactions.CCCNumber AS [Transactions_CCCNumber], Transactions.IntlShippingOptions AS [Transactions_IntlShippingOptions], Transactions.ShippingAcctNo AS [Transactions_ShippingAcctNo], Transactions.ReferenceNumber AS [Transactions_ReferenceNumber], Transactions.CopyrightComp AS [Transactions_CopyrightComp], Transactions.TAddress AS [Transactions_TAddress], Transactions.TAddress2 AS [Transactions_TAddress2], Transactions.TCity AS [Transactions_TCity], Transactions.TState AS [Transactions_TState], Transactions.TZip AS [Transactions_TZip], Transactions.TCountry AS [Transactions_TCountry], Transactions.TFax AS [Transactions_TFax], Transactions.TEMailAddress AS [Transactions_TEMailAddress], Transactions.TNumber AS [Transactions_TNumber], Transactions.HandleWithCare AS [Transactions_HandleWithCare], Transactions.CopyWithCare AS [Transactions_CopyWithCare], Transactions.RestrictedUse AS [Transactions_RestrictedUse], Transactions.ReceivedVia AS [Transactions_ReceivedVia], Transactions.CancellationCode AS [Transactions_CancellationCode], Transactions.BillingCategory AS [Transactions_BillingCategory], Transactions.CCSelected AS [Transactions_CCSelected], Transactions.OriginalTN AS [Transactions_OriginalTN], Transactions.OriginalNVTGC AS [Transactions_OriginalNVTGC], Transactions.InProcessDate AS [Transactions_InProcessDate], Transactions.InvoiceNumber AS [Transactions_InvoiceNumber], Transactions.BorrowerTN AS [Transactions_BorrowerTN], Transactions.WebRequestForm AS [Transactions_WebRequestForm], Transactions.TName AS [Transactions_TName], Transactions.TAddress3 AS [Transactions_TAddress3], Transactions.IFMPaid AS [Transactions_IFMPaid], Transactions.BillingAmount AS [Transactions_BillingAmount], Transactions.ConnectorErrorStatus AS [Transactions_ConnectorErrorStatus], Transactions.BorrowerNVTGC AS [Transactions_BorrowerNVTGC], Transactions.CCCOrder AS [Transactions_CCCOrder], Transactions.ISOStatus AS [Transactions_ISOStatus], Transactions.ShippingDetail AS [Transactions_ShippingDetail], Transactions.OdysseyErrorStatus AS [Transactions_OdysseyErrorStatus], Transactions.WorldCatLCNumber AS [Transactions_WorldCatLCNumber], Transactions.Locations AS [Transactions_Locations], Transactions.FlagType AS [Transactions_FlagType], Transactions.FlagNote AS [Transactions_FlagNote], Transactions.ItemInfo1 AS [Transactions_ItemInfo1], Transactions.ItemInfo2 AS [Transactions_ItemInfo2], Transactions.ItemInfo3 AS [Transactions_ItemInfo3], Transactions.ItemInfo4 AS [Transactions_ItemInfo4], Transactions.ItemInfo5 AS [Transactions_ItemInfo5], Transactions.SpecialService AS [Transactions_SpecialService], Transactions.DeliveryMethod AS [Transactions_DeliveryMethod], Transactions.Web AS [Transactions_Web], Transactions.CreationDate AS [Transactions_CreationDate], Transactions.PMID AS [Transactions_PMID], Transactions.DOI AS [Transactions_DOI], Transactions.LastOverdueNoticeSent AS [Transactions_LastOverdueNoticeSent], Transactions.ExternalRequest AS [Transactions_ExternalRequest], Transactions.AEUrl AS [Transactions_AEUrl], Transactions.AEPassword AS [Transactions_AEPassword]";
	--r = r .. " FROM ((TransactionFlags INNER JOIN Transactions ON TransactionFlags.TransactionNumber = Transactions.TransactionNumber) INNER JOIN CustomFlags ON TransactionFlags.FlagID = CustomFlags.ID) INNER JOIN Users ON Transactions.Username = Users.UserName"
	-- LocalInfo
	--LocalInfo.NVTGC AS [LocalInfo_NVTGC], LocalInfo.SystemName AS [LocalInfo_SystemName], LocalInfo.SystemURL AS [LocalInfo_SystemURL], LocalInfo.InstitutionName AS [LocalInfo_InstitutionName], LocalInfo.LibraryName AS [LocalInfo_LibraryName], LocalInfo.OCLCSymbol AS [LocalInfo_OCLCSymbol], LocalInfo.DoclineSymbol AS [LocalInfo_DoclineSymbol], LocalInfo.RLINSymbol AS [LocalInfo_RLINSymbol], LocalInfo.GeneralContactName AS [LocalInfo_GeneralContactName], LocalInfo.GeneralPhone AS [LocalInfo_GeneralPhone], LocalInfo.GeneralEMailAddress AS [LocalInfo_GeneralEMailAddress], LocalInfo.GeneralAddress1 AS [LocalInfo_GeneralAddress1], LocalInfo.GeneralAddress2 AS [LocalInfo_GeneralAddress2], LocalInfo.GeneralCity AS [LocalInfo_GeneralCity], LocalInfo.GeneralState AS [LocalInfo_GeneralState], LocalInfo.GeneralZip AS [LocalInfo_GeneralZip], LocalInfo.GeneralFax AS [LocalInfo_GeneralFax], LocalInfo.GeneralHours AS [LocalInfo_GeneralHours], LocalInfo.BorrowingContactName AS [LocalInfo_BorrowingContactName], LocalInfo.BorrowingPhone AS [LocalInfo_BorrowingPhone], LocalInfo.BorrowingEMailAddress AS [LocalInfo_BorrowingEMailAddress], LocalInfo.BorrowingAddress1 AS [LocalInfo_BorrowingAddress1], LocalInfo.BorrowingAddress2 AS [LocalInfo_BorrowingAddress2], LocalInfo.BorrowingCity AS [LocalInfo_BorrowingCity], LocalInfo.BorrowingState AS [LocalInfo_BorrowingState], LocalInfo.BorrowingZip AS [LocalInfo_BorrowingZip], LocalInfo.BorrowingFax AS [LocalInfo_BorrowingFax], LocalInfo.BorrowingHours AS [LocalInfo_BorrowingHours], LocalInfo.BorrowingArielAddress AS [LocalInfo_BorrowingArielAddress], LocalInfo.DocDelContactName AS [LocalInfo_DocDelContactName], LocalInfo.DocDelPhone AS [LocalInfo_DocDelPhone], LocalInfo.DocDelEMailAddress AS [LocalInfo_DocDelEMailAddress], LocalInfo.DocDelAddress1 AS [LocalInfo_DocDelAddress1], LocalInfo.DocDelAddress2 AS [LocalInfo_DocDelAddress2], LocalInfo.DocDelCity AS [LocalInfo_DocDelCity], LocalInfo.DocDelState AS [LocalInfo_DocDelState], LocalInfo.DocDelZip AS [LocalInfo_DocDelZip], LocalInfo.DocDelFax AS [LocalInfo_DocDelFax], LocalInfo.DocDelHours AS [LocalInfo_DocDelHours], LocalInfo.DocDelArielAddress AS [LocalInfo_DocDelArielAddress], LocalInfo.LendingContactName AS [LocalInfo_LendingContactName], LocalInfo.LendingPhone AS [LocalInfo_LendingPhone], LocalInfo.LendingEMailAddress AS [LocalInfo_LendingEMailAddress], LocalInfo.LendingAddress1 AS [LocalInfo_LendingAddress1], LocalInfo.LendingAddress2 AS [LocalInfo_LendingAddress2], LocalInfo.LendingCity AS [LocalInfo_LendingCity], LocalInfo.LendingState AS [LocalInfo_LendingState], LocalInfo.LendingZip AS [LocalInfo_LendingZip], LocalInfo.LendingFax AS [LocalInfo_LendingFax], LocalInfo.LendingHours AS [LocalInfo_LendingHours], LocalInfo.LendingArielAddress AS [LocalInfo_LendingArielAddress], LocalInfo.GeneralCountry AS [LocalInfo_GeneralCountry], LocalInfo.BillingContactName AS [LocalInfo_BillingContactName], LocalInfo.BillingPhone AS [LocalInfo_BillingPhone], LocalInfo.BillingEMailAddress AS [LocalInfo_BillingEMailAddress], LocalInfo.BillingAddress1 AS [LocalInfo_BillingAddress1], LocalInfo.BillingAddress2 AS [LocalInfo_BillingAddress2], LocalInfo.BillingCity AS [LocalInfo_BillingCity], LocalInfo.BillingState AS [LocalInfo_BillingState], LocalInfo.BillingZip AS [LocalInfo_BillingZip], LocalInfo.BillingFax AS [LocalInfo_BillingFax], LocalInfo.BillingHours AS [LocalInfo_BillingHours],";
	