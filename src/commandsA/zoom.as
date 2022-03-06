//zoom|NUMBER^Sets the camera zoom to the given value.
var zoom = Number(args[1])
_root.CameraZoom = zoom;
respond("Zoom has been set to " + zoom + ".");