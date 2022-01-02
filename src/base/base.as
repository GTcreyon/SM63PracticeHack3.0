if(_root.setup == true)
{
	removeMovieClip(this);
}
else
{
	_root.setup = true;
	command = "";
	response = "";
	responseTime = 0;
	typing = false;
	//$BASE_INIT
	onEnterFrame = function()
	{
		var tempCommand = command;
		if(tempCommand.charAt(tempCommand.length - 1) != " ")
		{
			tempCommand += " ";
		}
		if(responseTime > 0)
		{
			responseTime -= 1;
		}
		else
		{
			response = "";
		}
		if(typing)
		{
			_root.cmd = tempCommand.slice(0,keyPos) + "<u>" + tempCommand.charAt(keyPos) + "</u>" + tempCommand.slice(keyPos + 1,tempCommand.length) + "\n" + response;
		}
		else
		{
			_root.cmd = ""
		}
		this.swapDepths(0);
		this.swapDepths(_root.getNextHighestDepth());
	};
}
