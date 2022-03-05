phBool = function(arg)
{
	switch(arg.toLowerCase())
	{
		case "on":
		case "true":
		case "yes":
		case "1":
			return true;
		case "off":
		case "false":
		case "no":
		case "0":
			return false;
		default:
			return undefined;
	}
}