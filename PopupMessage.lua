-- Include this line within a function to display information in a text box.
-- The first line in quotes is the message to the user.
-- The second line in quotes is the name/heading of the MessageBox.

interfaceMngr:ShowMessage("First Line in Quotes - user message.", "Title of popup box");

function search()
    local Author = GetFieldValue("Transaction", "Author");
    if Author ~= "" then
        interfaceMngr:ShowMessage("The author is" .. Author, "Name of the Author");
    else
        interfaceMngr:ShowMessage("The author name is not available from the request form", "Insufficient information");
    end
end
