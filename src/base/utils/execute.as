executeCommand = function(raw)
{
	if (raw.charAt(0) == "/")
	{
		raw = raw.slice(1, raw.length);
	}
	args = raw.split(" ");
	switch(args[0].toLowerCase())
	{
		//$CMD_LIST
		default:
			respond("Unknown command.")
	}
	command = "";
}