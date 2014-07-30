-- About AddonName.lua
--
-- Author: Bill Jones III, SUNY Geneseo, IDS Project, jonesw@geneseo.edu
-- AddonName.lua provides a basic shell structure for an Addon.
-- There is a config file that is associated with this Addon.
-- scriptActive must be set to true for the script to run.
-- autoSearch (boolean) determines whether the search is performed automatically when a request is opened or not.
--
-- set autoSearch to true for this script to automatically run the search when the request is opened.

local settings = {};
settings.autoSearch = GetSetting("AutoSearch");
settings.FriendsURL = GetSetting("FriendsURL");
local interfaceMngr = nil;
local AddonNameForm = {};
AddonNameForm.Form = nil;
AddonNameForm.Browser = nil;
AddonNameForm.RibbonPage = nil;



function Init()
    -- The line below makes this Addon only work on Loan Transactions.
    -- if GetFieldValue("Transaction", "RequestType") == "Loan" then
    interfaceMngr = GetInterfaceManager();

    -- Create browser
    AddonNameForm.Form = interfaceMngr:CreateForm("AddonName", "Script");
    AddonNameForm.Browser = AddonNameForm.Form:CreateBrowser("AddonName", "AddonName", "AddonName");

    -- Hide the text label
    AddonNameForm.Browser.TextVisible = false;

    --Suppress Javascript errors
    AddonNameForm.Browser.WebBrowser.ScriptErrorsSuppressed = true;

    -- Since we didn't create a ribbon explicitly before creating our browser, it will have created one using the name we passed the CreateBrowser method. We can retrieve that one and add our buttons to it.
    AddonNameForm.RibbonPage = AddonNameForm.Form:GetRibbonPage("AddonName");
    -- The GetClientImage("Search32") pulls in the magnifying glass icon. There are other icons that can be used.
    -- AddonNameForm.RibbonPage:CreateButton("Search", GetClientImage("Search32"), "Search", "AddonName");
	-- Here we are adding a new button to the ribbon
	AddonNameForm.RibbonPage:CreateButton("Search ISxN", GetClientImage("Search32"), "SearchISxN", "AddonName");
	AddonNameForm.RibbonPage:CreateButton("Search Title", GetClientImage("Search32"), "SearchTitle", "AddonName");
	AddonNameForm.RibbonPage:CreateButton("Phrase Search", GetClientImage("Search32"), "SearchPhrase", "AddonName");
	AddonNameForm.RibbonPage:CreateButton("New URL", GetClientImage("Fraud32"), "NewURL", "AddonName");

    AddonNameForm.Form:Show();
            
if settings.autoSearch then
SearchISxN();
end
    end
-- end

-- function Search()
	
	-- local author = "";
	-- if GetFieldValue("Transaction", "LoanAuthor") ~= "" then	
		-- author = GetFieldValue("Transaction", "LoanAuthor");
	-- elseif GetFieldValue("Transaction", "PhotoArticleAuthor") ~= "" then
		-- author = GetFieldValue("Transaction", "PhotoArticleAuthor");
	-- end
		-- AddonNameForm.Browser:Navigate("https://www.google.com/?gws_rd=ssl#q=" .. author);
		-- interfaceMngr:ShowMessage("The message that appears to the users", "Whatever is on top of the window");
-- end

-- function SecondFunction()
-- interfaceMngr:ShowMessage("Did this work?  SecondFunction", "Whatever is on top of the window");


-- end
function NewURL()
		AddonNameForm.Browser:Navigate(settings.FriendsURL);

end

function SearchISxN()
    if GetFieldValue("Transaction", "ISSN") ~= "" then
		AddonNameForm.Browser:Navigate("https://www.google.com/?gws_rd=ssl#q=" .. GetFieldValue("Transaction", "ISSN"));
	else
       interfaceMngr:ShowMessage("ISxN is not available from request form", "Insufficient Information");
	end
end

function SearchPhrase()
    if GetFieldValue("Transaction", "RequestType") == "Loan" then  
	   AddonNameForm.Browser:Navigate("https://www.google.com/?gws_rd=ssl#q=" ..  "\"" .. GetFieldValue("Transaction", "LoanTitle")  .. "\"");
	else
	   AddonNameForm.Browser:Navigate("https://www.google.com/?gws_rd=ssl#q=" ..  "\"" .. GetFieldValue("Transaction", "PhotoArticleTitle") .. "\"");
	end
end

function SearchTitle()
    if GetFieldValue("Transaction", "RequestType") == "Loan" then  
	   AddonNameForm.Browser:Navigate("https://www.google.com/?gws_rd=ssl#q=" ..  GetFieldValue("Transaction", "LoanTitle"));
	else
	   AddonNameForm.Browser:Navigate("https://www.google.com/?gws_rd=ssl#q=" .. GetFieldValue("Transaction", "LoanTitle"));
	end
end
