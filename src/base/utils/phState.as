phState = function(arg) //used for togglable states, e.g. noclip
{
	switch(arg)
	{
		case "on":
		case "true":
		case "enable":
		case "enabled":
		case "1":
			return 1;
		case "off":
		case "false":
		case "disable":
		case "disabled":
		case "0":
			return 0;
		default:
			return -1;
	}
}