-- Add description
local currentTN = GetFieldValue("Transaction", "TransactionNumber");
ExecuteCommand("AddNote", {currentTN, "NCIP Response for BorrowingCheckInItem received successfully"});
SaveDataSource("Transaction");
