-- This code grabs the current transaction number and then adds a note to the transaction.
-- This note can be equal to a string of text, or to a pre-defined variable.
-- Example:

local currentTN = GetFieldValue("Transaction", "TransactionNumber");
ExecuteCommand("AddNote", {currentTN, "NCIP Response for BorrowingCheckInItem received successfully"});
SaveDataSource("Transaction");

sda;lfjasd;lkfjas;dlkfj
