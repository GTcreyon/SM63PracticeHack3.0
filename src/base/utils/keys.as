keyPos = 0;
var keyListener = new Object();
keyListener.onKeyDown = function()
{
	var asc = Key.getAscii();
	if(asc > 31 && asc < 127)
	{
		command = command.slice(0,keyPos) + chr(asc) + command.slice(keyPos,command.length);
		keyPos += 1;
	}
	else
	{
		switch(Key.getCode())
		{
			case Key.BACKSPACE:
				command = command.slice(0,keyPos - 1) + command.slice(keyPos,command.length);
				keyPos -= 1;
				break;
			case Key.DELETEKEY:
				command = command.slice(0,keyPos) + command.slice(keyPos + 1,command.length);
				break;
			case Key.ENTER:
				executeCommand(command);
				break;
			case Key.LEFT:
				keyPos -= 1;
				break;
			case Key.RIGHT:
				keyPos += 1;
		}
	 keyPos = Math.max(Math.min(keyPos,command.length),0);
	}
};
Key.addListener(keyListener);