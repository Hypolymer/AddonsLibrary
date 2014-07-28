-- The following code provides 


function InputLocation()

  -- the line below looks for the element <em> with the class "RTADivTitle_0".
  -- if that <em> exists, the rest of the code will execute.
	if ExLibrisForm.Browser:GetElementInFrame(em,"RTADivTitle_0")~= nil then
	  -- the line below creates an array of elements that are of <span> type
    local cElements = ExLibrisForm.Browser.WebBrowser.Document:GetElementsByTagName("span");
      -- if the array is empty, the function ends
			if cElements == nil then
				return false;
			end
			-- the number of items in the array is counted	
			for i=0, cElements.Count - 1 do
			  -- the items in the array are indexed and stored in the variable "element1"
				element1 = ExLibrisForm.Browser:GetElementByCollectionIndex(cElements, i);
			    
			  -- if <span> elements exist in the array, the function continues   
				if element1.ParentNode ~= nil then
				  -- the line below looks through the <span> elements for the className
					if element1:GetAttribute("className")=="EXLAvailabilityCollectionName" then
					    -- if the className "EXLAvailabilityCollectionName" exists, it is set to a local variable by getting the inner text
					    local dElement = element1.InnerText;
					  -- Here the Location field is set to the value of the InnerText of the dElement
						SetFieldValue("Transaction", "Location", dElement);
						-- if the user has selected to receive popups when importing Call#, they will receive a popup
						if settings.Popup then
						interfaceMngr:ShowMessage("Location has been set to: " .. dElement, "Collection Info Updated for Request");
						end  -- for if PopUp						
						break  -- stops the loop once the value is found
					end  -- for if GetAttribute
				end -- for if element1.ParentNode
	    end  -- for loop
  end -- for if GetElementInFrame
end -- for function
