-- The two methods below show ways to submit the value within a search form.

-- One way is to reference the name of the form that is being submitted.
-- Example:

AddonNameForm.Browser:SubmitForm(string formName);

-- For Google, this would be:
SomeGoogleAddon.Browser:SubmitForm("gbqf");


-- You can also reference the name of a button.
AddonNameForm.Browser:ClickObject(string formName)

-- For ExLibris Primo, this would be:
ExLibrisForm.Browser:ClickObject("goButton")
