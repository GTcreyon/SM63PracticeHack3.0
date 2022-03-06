//power;fluddpower|OPTION[refill/empty/infinity/NUMBER]^Sets the remaining fludd power. From 0 to 8.
var infPower = function(){
	_root.Power = _root.TotalPower
}
clearInterval(powerInterval)
if (args[1] == "refill" || args[1] == "full" || args[1] == "fill") {
	_root.Power = _root.TotalPower
	respond("Power has been refilled.");
} else if (args[1] == "death" || args[1] == "kill" || args[1] == "empty") {
	_root.Power = 0;
	respond("Power emptied.");
} else if (args[1] == "infinite" || args[1] == "infinity" || args[1] == "inf") {
	powerInterval = setInterval(infPower, 1)
	respond("Power is now infinite.");
} else {
	_root.Power = args[1];
	respond("Power has been set to " + _root.Power + ".");
}
