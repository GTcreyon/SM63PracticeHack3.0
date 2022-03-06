//air|OPTION[refill/empty/infinity/NUMBER]^Sets the remaining air. From 0 to 8.
var infAir = function(){
	_root.WaterHP = 8
}
clearInterval(airInterval)
if (args[1] == "refill" || args[1] == "full" || args[1] == "fill") {
	_root.WaterHP = 8
	respond("Air has been refilled.");
} else if (args[1] == "death" || args[1] == "kill" || args[1] == "empty") {
	_root.WaterHP = 0;
	respond("Air emptied.");
} else if (args[1] == "infinite" || args[1] == "infinity" || args[1] == "inf") {
	airInterval = setInterval(infAir, 1)
	respond("Air is now infinite.");
} else {
	_root.WaterHP = args[1];
	respond("Air has been set to " + _root.WaterHP + ".");
}
