//water|OPTION[refill/empty/infinity/NUMBER]^Sets the water tank value. From 0 to 10000.
var infWater = function(){
	_root.WaterAmount = _root.TotalWater
}
clearInterval(waterInterval)
if (args[1] == "refill" || args[1] == "full" || args[1] == "fill") {
	_root.WaterAmount = _root.TotalWater
	respond("Water has been refilled.");
} else if (args[1] == "death" || args[1] == "kill" || args[1] == "empty") {
	_root.WaterAmount = 0;
	respond("Water emptied.");
} else if (args[1] == "infinite" || args[1] == "infinity" || args[1] == "inf") {
	waterInterval = setInterval(infWater, 1)
	respond("Water is now infinite.");
} else {
	_root.WaterAmount = args[1];
	respond("Water has been set to " + _root.WaterAmount + ".");
}
