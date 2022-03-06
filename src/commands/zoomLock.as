//zoomlock;zl|phSTATE^Enables or disables the default zoom locking.
var state = phState(args[1])
if (state == 1) {
	if (_root.Maxzoomin == Infinity)
	{
		_root.Maxzoomin = 200;
		_root.Maxzoomout = 50;
		respond("Zoom Lock: ON");
	}
	else
	{
		respond("Zoom lock is already enabled.");
	}
}
else if (state == 0) {
	if (_root.Maxzoomin == Infinity)
	{
		respond("Zoom lock is already disabled.");
	}
	else
	{
		_root.Maxzoomin = Infinity;
		_root.Maxzoomout = -Infinity;
		respond("Zoom Lock: OFF");
	}
}
else if (state == -1)
{
	if(_root.Maxzoomin == Infinity)
	{
		_root.Maxzoomin = 200;
		_root.Maxzoomout = 50;
		respond("Zoom Lock: ON [toggle]");
	}
	else
	{
		_root.Maxzoomin = Infinity;
		_root.Maxzoomout = -Infinity;
		respond("Zoom Lock: OFF [toggle]");
	}
}