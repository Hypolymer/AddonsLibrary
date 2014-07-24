-- There are many ways to modify strings.
-- For more information on Lua strings, please visit http://lua-users.org/wiki/StringsTutorial

-- Example: Concatenation
local string1 = "I want to"
local string2 = "tell you a story."
local finalString = string1 .. " " .. string2

-- The output would be:
I want to tell you a story.
-- string1 was glued to a space, and that space was glued to string2


-- We can modify strings using string.gsub
-- The first value is the string.
-- The second value is the pattern or character we are looking for in the string
-- The third value is what will replace the pattern or character.

-- In this example, we are looking at the LoanTitle string and looking for any spaces.
-- Each space will be replaced with a "+" sign.

-- oatdmodstring1a is taking the first modified string and replacing the "/" sign with a space
-- oatdmodstring1b is taking the second modified string and replacing the ":" sign with a space

local oatdmodstring1 = string.gsub(GetFieldValue ("Transaction", "LoanTitle"), " ", "+");
local oatdmodstring1a = string.gsub(oatdmodstring1, "/", " ");
local oatdmodstring1b = string.gsub(oatdmodstring1a, ":", " ");
