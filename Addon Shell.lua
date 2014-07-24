-- About AddonName.lua
--
-- Author:  Bill Jones III, SUNY Geneseo, IDS Project, jonesw@geneseo.edu
-- AddonName.lua provides a basic shell structure for an Addon.
-- There is a config file that is associated with this Addon.
-- scriptActive must be set to true for the script to run.
-- autoSearch (boolean) determines whether the search is performed automatically when a request is opened or not.
--
-- set autoSearch to true for this script to automatically run the search when the request is opened.

local settings = {};
settings.autoSearch = GetSetting("AutoSearch");
local interfaceMngr = nil;
local AddonNameForm = {};
AddonNameForm.Form = nil;
AddonNameForm.Browser = nil;
AddonNameForm.RibbonPage = nil;



function Init()
		-- The line below makes this Addon only work on Loan Transactions.
		if GetFieldValue("Transaction", "RequestType") == "Loan" then
			interfaceMngr = GetInterfaceManager();
			
			-- Create browser
			AddonNameForm.Form = interfaceMngr:CreateForm("AddonName", "Script");
			AddonNameForm.Browser = BingForm.Form:CreateBrowser("AddonName", "AddonName", "AddonName");
			
			-- Hide the text label
			AddonNameForm.Browser.TextVisible = false;
			
			--Suppress Javascript errors
			AddonNameForm.Browser.WebBrowser.ScriptErrorsSuppressed = true;
			
			-- Since we didn't create a ribbon explicitly before creating our browser, it will have created one using the name we passed the CreateBrowser method.  We can retrieve that one and add our buttons to it.
			AddonNameForm.RibbonPage = BingForm.Form:GetRibbonPage("AddonName");
			-- The GetClientImage("Search32") pulls in the magnifying glass icon.  There are other icons that can be used.
			AddonNameForm.RibbonPage:CreateButton("Search", GetClientImage("Search32"), "Search", "AddonName");
            		AddonNameForm.Form:Show();
            
			if settings.autoSearch then
				Search();
			end
		end
	end
end


function Search()
-- Add code here.
end
