//doorwarp;warpdoor;door|STRING^Warps to a given door based on its internal ID.
var door = args[1];
_root.DoorTrasition(args[1]);
_root.Course.Char.attackFrame = "none";
var resetAnim = function(){
	_root.Course.Char.attackFrame = "";
}
setTimeout(resetAnim, 1)
respond("Warped to door " + door + ".")