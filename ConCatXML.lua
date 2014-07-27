-- This method of concatenation makes it easy to break up lines of XML into human readable text.
-- Each line appends an additional tag and value to the complete XML message.
-- Each line of text begins and ends with a single quote.
-- The semi-colon is only used at the very end when the string is complete.

local cib = '';
	cib = cib .. '<NCIPMessage version="http://www.niso.org/ncip/v1_0/imp1/dtd/ncip_v1_0.dtd">'
	cib = cib .. '<CheckInItem>'
	cib = cib .. '<InitiationHeader>'
	cib = cib .. '<FromAgencyId>'
	cib = cib .. '<UniqueAgencyId>'
	cib = cib .. '<Scheme>' .. Settings.checkInItem_from_uniqueAgency_scheme .. '</Scheme>'
	cib = cib .. '<Value>' .. Settings.checkInItem_from_uniqueAgency_value .. '</Value>'
	cib = cib .. '</UniqueAgencyId>'
	cib = cib .. '</FromAgencyId>'
	cib = cib .. '<ToAgencyId>'
	cib = cib .. '<UniqueAgencyId>'
	cib = cib .. '<Scheme>' .. Settings.checkInItem_to_uniqueAgency_scheme .. '</Scheme>'
	cib = cib .. '<Value>' .. Settings.checkInItem_to_uniqueAgency_value .. '</Value>'
	cib = cib .. '</UniqueAgencyId>'
	cib = cib .. '</ToAgencyId>'
	cib = cib .. '</InitiationHeader>'
	cib = cib .. '<UniqueItemId>'
	cib = cib .. '<UniqueAgencyId>'
	cib = cib .. '<Scheme>' .. Settings.checkInItem_uniqueItem_agency_scheme .. '</Scheme>'
	cib = cib .. '<Value>' .. Settings.checkInItem_uniqueItem_agency_value .. '</Value>'
	cib = cib .. '</UniqueAgencyId>'
	cib = cib .. '<ItemIdentifierValue>' .. tn .. '</ItemIdentifierValue>'
	cib = cib .. '</UniqueItemId>'
	cib = cib .. '</CheckInItem>'
	cib = cib .. '</NCIPMessage>'
	return cib;
end
