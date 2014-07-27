-- Atlas helpers is installed by default with the ILLiad installation.
-- Atlas helpers in both a URL encoder and a URL decoder.
-- The function of the encoder is to write URL friendly strings (removing unicode characters)
-- The function of the decoder is to read strings that have been URL encoded to display human readable text.
-- Useful tool to encode and decode text on the web:  http://meyerweb.com/eric/tools/dencoder/

-- You must provide the following line before the function init() to load the Atlas Helpers class:

require "Atlas.AtlasHelpers";

-- Below is an example of a string containing unicode that cannot be passed through a WebClient:

local message = "<Author>Göhner, Dietmar</Author>"


-- In order to URL encode the string, write the following:

AtlasHelpers.UrlEncode(message)


-- This line will create the URL encoded text below:
%3CAuthor%3EGo%CC%88hner%2C%20Dietmar%3C%2FAuthor

