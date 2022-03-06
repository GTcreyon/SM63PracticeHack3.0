//ghostmode;ghost|phBOOL^Enables Ghostmode - invincibility, infinite fludd, noclip, no gravity.
if(phBool(args[1]) || args[1] == undefined)
{
	executeCommand("hp inf")
	executeCommand("power inf")
	executeCommand("water inf")
	executeCommand("lives inf")
	executeCommand("nc 1")
	_root.gravity = 0
	respond("Ghostmode enabled.")
}
else
{
	executeCommand("hp 8")
	executeCommand("power 100")
	executeCommand("water 10000")
	executeCommand("lives 4")
	executeCommand("nc 0")
	_root.gravity = 1
	respond("Ghostmode disabled.")
}