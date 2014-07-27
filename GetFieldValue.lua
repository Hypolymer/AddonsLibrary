-- There are many fields in the request that you will want to get information from for your Addon.
-- The table the information is pulled from is usually the Transactions Table.
-- For more information about fields within the Transactions Table, visit:  
-- https://prometheus.atlas-sys.com/display/illiad/Key+ILLiad+Data+Tables

-- To get the value of a field within the table, use the following command:
GetFieldValue("Name of Table", "Name of Field");


-- Below are common fields used to get data from.

-- LoanAuthor (Author for a returnable item)
GetFieldValue("Transaction", "LoanAuthor");

-- LoanTitle (Title for a returnable item)
GetFieldValue("Transaction", "LoanTitle");

-- ArticleAuthor (Author for an article)
GetFieldValue("Transaction", "PhotoArticleAuthor");

-- ArticleTitle (Title for an article)
GetFieldValue("Transaction", "PhotoArticleTitle");

-- JournalTitle (Title for a journal)
GetFieldValue("Transaction", "PhotoJournalTitle");

-- ISSN (ISSN or ISBN for a request)
GetFieldValue("Transaction", "ISSN");


-- A variable can be set to These values, or the values can be concatenated directly into a string.

