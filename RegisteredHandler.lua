-- This function is used when there is a form that needs to have text entered into it and a button needs to be clicked.


-- In the RegisteredPageHandler, the "formExists" text stays constant across Addons.
-- The second value below, "f", is the name of the form on the webpage.
-- If a form with the name "f" exists on the page, it will run a function with the name of the third value.
-- The forth value tells the Addon that this is not a critical operation and will not crash if it is incomplete.

-- The handlers are set prior to navigating to the page

function Search()
	AddonNameForm.Browser:RegisterPageHandler("formExists", "f", "GoogleLoaded", false);
	AddonNameForm.Browser:Navigate("http://books.google.com/advanced_book_search");	
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
	AddonNameForm.Browser:SetFormValue("f", "as_isbn", GetFieldValue("Transaction", "ISSN"));
	AddonNameForm.Browser:SetFormValue("f", "as_brr", "1");
   else 
	AddonNameForm.Browser:SetFormValue("f", "as_epq", GetFieldValue("Transaction", "LoanTitle"));
	AddonNameForm.Browser:SetFormValue("f", "as_brr", "1");
   end
 	AddonNameForm.Browser:ClickObject("btnG");
end
