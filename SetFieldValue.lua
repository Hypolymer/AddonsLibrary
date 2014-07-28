-- There are a few fields in the request that you will want to set information via your Addon.
-- The table the information is set in is the Transactions Table.
-- You will need to create a variable that stores the value you want to save in the transaction field. 
-- For more information about fields within the Transactions Table, visit:
-- https://prometheus.atlas-sys.com/display/illiad/Key+ILLiad+Data+Tables

-- To set the value of a field within the table, use the following command:
SetFieldValue("Name of Table", "Name of Field", variableValue);

-- Item Call Number
SetFieldValue("Transaction", "CallNumber", variableValue);

-- Item Location
SetFieldValue("Transaction", "Location", variableValue);

-- Item Number
SetFieldValue("Transaction", "ItemNumber", variableValue);

-- ItemInfo1 (This could also be ItemInfo2, ItemInfo3, ItemInfo4, ItemInfo5)
SetFieldValue("Transaction", "ItemInfo1", variableValue);

