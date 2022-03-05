//health;hp|OPTION[NUMBER/refill/empty/death/infinity]^Sets a certain amount of health to the player. From 0 to 8.
if (args[1] == "refill" || args[1] == "full" || args[1] == "fill") {
	_root.CharHP = 8;
	respond("Health has been refilled.");
} else if (args[1] == "death" || args[1] == "kill" || args[1] == "empty") {
	_root.CharHP = 0;
	respond("Health emptied.");
} else if (args[1] == "infinite" || args[1] == "infinity" || args[1] == "inf") {
	_root.CharHP = NaN
	respond("Health is now infinite.");
} else {
	_root.CharHP = args[1];
	respond("Health has been set to " + _root.CharHP + ".");
}
