--  This Addon was pulled from https://prometheus.atlas-sys.com/display/ILLiadAddons/DOAJ
--  This Addon illustrates how more than one button can be added to the Addon

local settings = {};
settings.autoSearch = GetSetting("AutoSearch");
settings.StartwithISxN = GetSetting("StartwithISxN");
local interfaceMngr = nil;
local DOAJForm = {};
DOAJForm.Form = nil;
DOAJForm.Browser = nil;
DOAJForm.RibbonPage = nil;
local doajmodstring1 = string.gsub(GetFieldValue ("Transaction", "LoanTitle"), " ", "+")
local doajmodstring2 = string.gsub(GetFieldValue ("Transaction", "PhotoArticleTitle"), " ", "+")



function Init()

	interfaceMngr = GetInterfaceManager();
			
	-- Create browser
	DOAJForm.Form = interfaceMngr:CreateForm("DOAJ", "Script");
	DOAJForm.Browser = DOAJForm.Form:CreateBrowser("DOAJ", "DOAJ", "DOAJ");
			
	-- Hide the text label
	DOAJForm.Browser.TextVisible = false;
			
	--Suppress Javascript errors
	DOAJForm.Browser.WebBrowser.ScriptErrorsSuppressed = true;
			
	-- Since we didn't create a ribbon explicitly before creating our browser, 
	-- it will have created one using the name we passed the CreateBrowser method.  
	-- We can retrieve that one and add our buttons to it.
	
	-- The line below houses the buttons
	DOAJForm.RibbonPage = DOAJForm.Form:GetRibbonPage("DOAJ");
	-- Each of the names in quotes after "DOAJForm.RibbonPage:CreateButton(" name the button.
	-- The second to last value in quotes is the name of the function that is called when the button is clicked.
	DOAJForm.RibbonPage:CreateButton("Search ISxN", GetClientImage("Search32"), "SearchISxN", "DOAJ");
	DOAJForm.RibbonPage:CreateButton("Search Title", GetClientImage("Search32"), "SearchTitle", "DOAJ");
	DOAJForm.RibbonPage:CreateButton("Phrase Search", GetClientImage("Search32"), "SearchPhrase", "DOAJ");
		
        DOAJForm.Form:Show();
            
	if settings.autoSearch then
		if settings.StartwithISxN and GetFieldValue("Transaction", "ISSN") ~= "" then
			SearchISxN();
		else
        	 	SearchTitle();
		end
	end
			 		          
end



function SearchISxN()
    if GetFieldValue("Transaction", "ISSN") ~= "" then
    	DOAJForm.Browser:Navigate("http://www.doaj.org/doaj?func=search&template=&uiLanguage=en&query=" .. GetFieldValue("Transaction", "ISSN"));
	else
        interfaceMngr:ShowMessage("ISxN is not available from request form", "Insufficient Information");
	end
end

function SearchPhrase()
    if GetFieldValue("Transaction", "RequestType") == "Loan" then  
	 	DOAJForm.Browser:Navigate("http://www.doaj.org/doaj?func=search&template=&uiLanguage=en&query=" .. "\"" .. doajmodstring1 .. "\"");
	else
	   	DOAJForm.Browser:Navigate("http://www.doaj.org/doaj?func=search&template=&uiLanguage=en&query=" .. "\"" .. doajmodstring2 .. "\"");
	end
end

function SearchTitle()
    if GetFieldValue("Transaction", "RequestType") == "Loan" then  
	  	DOAJForm.Browser:Navigate("http://www.doaj.org/doaj?func=search&template=&uiLanguage=en&query=" .. doajmodstring1);
	else
	   	DOAJForm.Browser:Navigate("http://www.doaj.org/doaj?func=search&template=&uiLanguage=en&query=" .. doajmodstring2);
	end
end
x
