//file;f|OPTION[complete/essentials/empty]^Sets the contents of the current file to the specified profile.
if(args[1] == "complete" || args[1] == "100") {
	_root.bowserKey1 = true
	_root.bowserKey2 = true
	_root.bowserKey3 = true
	setAllStars(true)
	setAllStarCoins(true)
	setFluddArray(true)
	respond("File data set to Complete.")
} else if(args[1] == "essentials") {
	_root.bowserKey1 = true
	_root.bowserKey2 = true
	setAllStars(false)
	setAllStarCoins(false)
	setFluddArray(false)
	_root.bowserKey3 = true
	_root.Star[39] = true
	_root.Star[41] = true
	_root.Star[50] = true
	_root.Star[51] = true
	_root.Star[36] = true
	_root.CalculateStars()
	respond("File data set to Essentials.")
} else if(args[1] == "empty") {
	_root.bowserKey1 = false
	_root.bowserKey2 = false
	_root.bowserKey3 = false
	setAllStars(false)
	setAllStarCoins(false)
	setFluddArray(false)
	respond("File data set to Empty.")
}
