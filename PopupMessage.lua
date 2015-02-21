-- Include this line within a function to display information in a popup window.
interfaceMngr:ShowMessage("First Line in Quotes - user message.", "Title of popup box");
-- The first line in quotes is the message to the user that displays in the center of the dialog window.
-- The second line in quotes is the name/heading of the MessageBox window.

-- Explanation of code below :: Begin

-- The line below shows the user a pop up with a message "First Line in Quotes - user message." with "Title of popup box" at the top of the popup
interfaceMngr:ShowMessage("First Line in Quotes - user message.", "Title of popup box");
-- You can put this message anywhere in your code to help troubleshoot or indicate to the user the end of a function

-- This function (called "search") could be called at a button press from the ILLiad ribbon
function search()
-- Here we are defining a variable called "Author" and the value of that variable is equal to the Author Field in the Transaction    
    local Author = GetFieldValue("Transaction", "Author");
-- Using ~= means "not equal to".  The line below says: If the Author field is not equal to "empty" then show this message
    if Author ~= "" then
-- Here we call the popup message and append the value of Author to the message that is presented to the user.
-- using ".." is like glue.  We glue our message in quotes with the value of the Author variable.
        interfaceMngr:ShowMessage("The author is" .. Author, "Name of the Author");
    else
-- The "else" above means that the Author field was empty.  Below we let the user know that information.
        interfaceMngr:ShowMessage("The author name is not available from the request form", "Insufficient information");
    end
end


-- clean written function in lua

function search()
    local Author = GetFieldValue("Transaction", "Author");
    if Author ~= "" then
        interfaceMngr:ShowMessage("The author is" .. Author, "Name of the Author");
    else
        interfaceMngr:ShowMessage("The author name is not available from the request form", "Insufficient information");
    end
end
