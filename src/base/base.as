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
		_root.cmd = command.slice(0,keyPos) + "<u>" + tempCommand.charAt(keyPos) + "</u>" + command.slice(keyPos + 1,command.length) + "\n" + response;
		this.swapDepths(0);
		this.swapDepths(_root.getNextHighestDepth());
	};
}
