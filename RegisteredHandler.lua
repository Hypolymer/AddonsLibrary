-- This function is used when their is a form that needs to have text entered into it and a button needs to be clicked.


-- In the RegisteredPageHandler, the formExists value stays constant across Addons.
-- The second value below, "f", is the name of the form on the webpage.
-- If a form with the name "f" exists on the page, it will run a function with the name of the third value.
-- The forth value tells the Addon that this is not a critical operation and will not crash if it is incomplete.

-- The handlers are set prior to navigating to the page

function Search()
	browser:RegisterPageHandler("formExists", "f", "GoogleLoaded", false);
	browser:Navigate("http://books.google.com/advanced_book_search");	
end


-- For the SetFormValue, there are three pieces of information that must be included.
-- The first value is the "form name".
-- The second value is the "input id".
-- The third value is the information that will be placed in the form.

-- After the information is placed in the form, browser:ClickObject("btnG") is called.
-- "btnG" is the name of the input with the type "submit" for the clickable button.
-- This line makes it so the form is automatically submitted after the information is entered into the form.

function GoogleLoaded()
   if GetFieldValue("Transaction", "ISSN") ~= "" then
	browser:SetFormValue("f", "as_isbn", GetFieldValue("Transaction", "ISSN"));
	browser:SetFormValue("f", "as_brr", "1");
   else 
	browser:SetFormValue("f", "as_epq", GetFieldValue("Transaction", "LoanTitle"));
	browser:SetFormValue("f", "as_brr", "1");
   end
 	browser:ClickObject("btnG");
end
