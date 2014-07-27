-- Below is a description of magic characters and patterns used in Lua.
-- Some of the information below was gathered from:  http://www.lua.org/pil/20.2.html

-- Setting a variable equal to something: =
-- Variables are declared by using the word "local".
-- Example:

local myVariableName = "this can be a string, number, array"


-- Concatenation (joining characters and strings together: ..
-- Example:

local myString = "This is " .. "the best string ever."


-- Equality test (is equal to): ==
-- Example test:

local Author = "Bill Jones"
local transactionAuthor = GetFieldValue("Transaction", "LoanAuthor")

if Author == transactionAuthor then
  interfaceMngr:ShowMessage("The Author is Bill Jones", "Transaction Information");
else
  interfaceMngr:ShowMessage("The Author is not Bill Jones", "Transaction Information");
end

-- Inequality test (is not equal to): ~=
-- In this example, we are setting a variable called author to act as a placeholder for LoanAuthor or PhotoArticleAuthor.
local transactionType = GetFieldValue("Transaction", "RequestType")
local author = ""

if transactionType ~= "Loan" then
  author = GetFieldValue("Transaction", "PhotoArticleAuthor")
else
  author = GetFieldValue("Transaction", "LoanAuthor")
end
  

-- Magic Characters (These characters have specific functions, but the characters can be escaped by using an escape character.
( ) . % + - * ? [ ^ $

-- Escape Characters
% for escaping magic characters
\ for everything else

-- Character classes:
.	all characters
%a	letters
%c	control characters
%d	digits
%l	lower case letters
%p	punctuation characters
%s	space characters
%u	upper case letters
%w	alphanumeric characters
%x	hexadecimal digits
%z	the character with representation 0
