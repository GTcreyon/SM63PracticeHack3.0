//nozzle|WORLD,NOZZLE,phBOOL^Sets the saved nozzles in a specific world.
var world = args[1]
var nozzle = args[2]
var bool = args[3]
if (world === undefined || nozzle === undefined || bool === undefined) {
	respond("Invalid syntax.")
} else {
	_root.utils.setWorldNozzle(world, nozzle, bool)
	respond("Saved nozzles from worlds have been updated.")
}