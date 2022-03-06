//nozzleunlock;fluddunlock;nu;fu|OPTION[bob/sl/hmc/bm/lll/ttm/rr/bt3/ssl/wdw/ttc/all],OPTION[h/r/t/all],phBOOL^Sets the saved nozzles in a specific world.
var world = args[1]
var nozzle = args[2]
var bool = phBool(args[3])
if (world === undefined || nozzle === undefined || bool === undefined) {
	respond("Invalid syntax.")
} else {
	var worlds = ["bob", "sl", "hmc", "bm", "lll", "ttm", "rr", "bt3", "ssl", "wdw", "ttc"]
	var nozzles = ["h", "r", "t"]
	if(world == "all"){
		var worldID = 0
		var h = 11
	} else {
		worldID = worlds.indexOf(world)
		h = worldID + 1
	}
	if(nozzle == "all"){
		var nozzleID = 0
		var k = 3
	} else {
		var nozzleID = nozzles.indexOf(nozzle.toLowerCase())
		k = 1
	}
	while(worldID < h) {
		while(nozzleID < k) {
			_root.FluddArray[worldID + 1][nozzleID + 1] = true
			nozzleID += 1
		}
		nozzleID = 0
		worldID += 1
	}
	respond("Updated nozzles.")
}