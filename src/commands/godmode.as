//godmode;god|phBOOL^Enables Godmode - invincibility and infinite fludd.
if(phBool(args[1]) || args[1] == undefined)
{
	executeCommand("hp inf")
	executeCommand("power inf")
	executeCommand("water inf")
	executeCommand("lives inf")
	respond("Godmode enabled.")
}
else
{
	executeCommand("hp 8")
	executeCommand("power 100")
	executeCommand("water 10000")
	executeCommand("lives 4")
	respond("Godmode disabled.")
}