-- String.find is used to identify specific characters or strings within a string or variable.
-- Once the character or string is found, the result is true and code can be executed.

-- Example:

function stringFind()
local myString = "This is the best string ever";

    if string.find(myString, "best") then
        interfaceMngr:ShowMessage("You just found the best string ever", "Alert");
    else
        interfaceMngr:ShowMessage("That was not the best string ever", "Alert");
    end
end
