-- Include this line within a function to display information in a popup window.
-- The first line in quotes is the message to the user that displays in the center of the dialog window.
-- The second line in quotes is the name/heading of the MessageBox window.

interfaceMngr:ShowMessage("First Line in Quotes - user message.", "Title of popup box");

function search()
    local Author = GetFieldValue("Transaction", "Author");
    if Author ~= "" then
        interfaceMngr:ShowMessage("The author is" .. Author, "Name of the Author");
    else
        interfaceMngr:ShowMessage("The author name is not available from the request form", "Insufficient information");
    end
end
