//animation;anim|NUMBER^Sets the current character animation.
var animation = args[1];
if (animation == undefined) {
	animation = "";
}
respond("Animation : " + animation);
if (animation == "" || animation == undefined)
{
	_root.Course.Char.attack = false;
	_root.Course.Char.attackFrame = "";
}
else
{
	_root.Course.Char.attack = true;
	_root.Course.Char.attackFrame = animation;
}