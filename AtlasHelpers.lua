-- provide description
-- provide require

local message = "[<NCIPMessage version="http://www.niso.org/ncip/v1_0/imp1/dtd/ncip_v1_0.dtd"><AcceptItem><InitiationHeader>
<FromAgencyId><UniqueAgencyId><Scheme></Scheme><Value>BD</Value></UniqueAgencyId></FromAgencyId><ToAgencyId><UniqueAgencyId><Scheme></Scheme><Value>WID</Value></UniqueAgencyId></ToAgencyId></InitiationHeader><UniqueRequestId><UniqueAgencyId><Scheme></Scheme><Value>BD</Value></UniqueAgencyId><RequestIdentifierValue>TN-4176020</RequestIdentifierValue></UniqueRequestId><RequestedActionType><Scheme>http://www.niso.org/ncip/v1_0/imp1/schemes/requestedactiontype/requestedactiontype.scm</Scheme><Value>Hold for Pickup</Value></RequestedActionType><UniqueUserId><UniqueAgencyId><Scheme></Scheme><Value>RLS</Value></UniqueAgencyId><UserIdentifierValue>60885516</UserIdentifierValue></UniqueUserId><UniqueItemId><UniqueAgencyId><Scheme></Scheme><Value>BD</Value></UniqueAgencyId><ItemIdentifierValue>TN-4176020</ItemIdentifierValue></UniqueItemId><ItemOptionalFields><BibliographicDescription><Author>Göhner, Dietmar</Author><Title>Beiträge zur kenntnis des südalpinen Juras mit besonderer berücksichtigung der unterjurassischen Lithiotis-Fazies </Title></BibliographicDescription></ItemOptionalFields></AcceptItem></NCIPMessage>

d

AtlasHelpers.UrlEncode(message)
