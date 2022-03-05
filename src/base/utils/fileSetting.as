// Sets the state of every star coin.
setAllStarCoins = function(bool) {
        i = 1;
        while (i <= 64) {
            _root.StarCoin[i] = bool;
            i++;
        }
        _root.CalculateStarCoins();
}

// Sets the state of a specific star coin.
setStarCoin = function(number, bool) {
	if (bool == undefined) {
		_root.StarCoin[number] = !_root.StarCoin[number];
	} else {
		_root.StarCoin[number] = bool;
	}
	_root.CalculateStarCoins();
}

// Sets the state of every star.
setAllStars = function(bool) {
	i = 1;
	while (i <= 64) {
		_root.Star[i] = bool;
		i++;
	}
	_root.CalculateStars();
}

// Sets the state of a specific star.
setStar = function(number, bool) {
	if (bool == undefined) {
		_root.Star[number] = !_root.Star[number];
	} else {
		_root.Star[number] = bool;
	}
	_root.CalculateStars();
}

// Sets the state of every fludd stored in levels.
setFluddArray = function(bool) {
	_root.FluddArray = ["",
		["", bool, bool, bool], // BoB
		["", bool, bool, bool], // SL
		["", bool, bool, bool], // HMC
		["", bool, bool, bool], // BM
		["", bool, bool, bool], // LLL
		["", bool, bool, bool], // TTM
		["", bool, bool, bool], // RR
		["", bool, bool, bool], // BT3
		["", bool, bool, bool], // SSL
		["", bool, bool, bool], // WDW
		["", bool, bool, bool]]; // TTC
}