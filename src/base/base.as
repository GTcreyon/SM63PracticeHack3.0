if(_root.setup == true)
{
	removeMovieClip(this);
}
else
{
	_root.setup = true;
	_root.camlock = true;
	_root.typing = false;
	command = "";
	response = "";
	responseTime = 0;
	requestReset = 0;
	//$BASE_INIT
	onEnterFrame = function()
	{
		var tempCommand = command + " "; //add a space to allow it to be underlined for the cursor
		if(responseTime > 0)
		{
			responseTime -= 1;
		}
		else
		{
			response = "";
		}
		if(_root.typing)
		{
			_root.cmd = tempCommand.slice(0,keyPos) + "<u>" + tempCommand.charAt(keyPos) + "</u>" + tempCommand.slice(keyPos + 1,tempCommand.length) + "\n" + response;
		}
		else
		{
			_root.cmd = "\n" + response
		}

		if(requestReset == 1)
		{
			requestReset = 0
			_root.Course.Char.attackFrame = "";
		}
		if(requestReset == 2)
		{
			requestReset = 1
		}

		this.swapDepths(0);
		this.swapDepths(_root.getNextHighestDepth());
	};
}
