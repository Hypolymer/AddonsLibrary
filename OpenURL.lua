-- The following code will be pasted below the Addon Shell
-- Pay close attention to the URL when you search.  Sometimes your search term is included right in the URL.
-- We can take advantage of this by appending the value to the URL.
-- Using two dots with a space around the dots " .. " is called a concatenation.  This glues strings together.


function Search()
	if GetFieldValue("Transaction", "ISSN") ~= "" then
		AddonNameForm.Browser:Navigate("http://www.bing.com/search?q=" .. GetFieldValue("Transaction", "ISSN"));
	else
		AddonNameForm.Browser:Navigate("http://www.bing.com/search?q=" .. GetFieldValue("Transaction", "LoanTitle"));
    end
end
