luanet.load_assembly("System");
local fileSearch = luanet.import_type("System.IO.DirectoryInfo");
local myFileSearch = fileSearch("c:\\Program Files (x86)\\ILLiad\\Print\\");
local myFiles = myFileSearch:GetFiles();
x=0;
local FileNames = "List of Files:";
  while x < myFiles.Length do
		ApolloForm.Listbox:AddItem(myFiles[x].Name);
		x=x+1;
	end
