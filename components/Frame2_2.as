radiansToAngle = function(a)
{
   a = 57.29577951308232 * a;
   return a;
};
angleToRadians = function(a)
{
   a = a / 180 * 3.141592653589793;
   return a;
};
groundFriction = function(a, b, c)
{
   if(a > 0)
   {
      d = 1;
   }
   else
   {
      d = -1;
   }
   a = Math.abs(a);
   a -= b;
   if(a < 0)
   {
      a = 0;
   }
   a /= c;
   a *= d;
   return a;
};
moveObject = function(a, b, c)
{
   c._x += a;
   c._y += b;
};
moveObjectFromAngle = function(a, b, c)
{
   c._x += Math.cos(angleToRadians(b)) * a;
   c._y += Math.sin(angleToRadians(b)) * a;
};
moveObjectFromRadians = function(a, b, c)
{
   c._x += Math.cos(b) * a;
   c._y += Math.sin(b) * a;
};
shuffleArray = function(a, b)
{
   d = a.push();
   i = 0;
   while(i < b)
   {
      e = random(d);
      f = random(d);
      if(e !== f)
      {
         g = a[e];
         a[e] = a[f];
         a[f] = g;
      }
      i++;
   }
   return a;
};
_root.MoveAllPlats = function(Yamount, Xamount)
{
   Xamount = Math.round(Xamount * 10) / 10;
   Yamount = Math.round(Yamount * 10) / 10;
   if(Math.abs(Yamount) > 0.1 || Math.abs(Xamount) > 0.1)
   {
      _root.Course.Platforms._y += Yamount;
      _root.Course.Platforms._x += Xamount;
      _root.Course.BPlatforms._y += Yamount;
      _root.Course.BPlatforms._x += Xamount;
      _root.Course.FrontGFX._y += Yamount;
      _root.Course.FrontGFX._x += Xamount;
      _root.Course.BackGFX._y += Yamount;
      _root.Course.BackGFX._x += Xamount;
      _root.Course.Water._y += Yamount;
      _root.Course.Water._x += Xamount;
      _root.Course.Lava._y += Yamount;
      _root.Course.Lava._x += Xamount;
      _root.Course.Puddle._y += Yamount;
      _root.Course.Puddle._x += Xamount;
      _root.Course.Ice._y += Yamount;
      _root.Course.Ice._x += Xamount;
      _root.Course.Edge._y += Yamount;
      _root.Course.Edge._x += Xamount;
      _root.Course.CamEdge._y += Yamount;
      _root.Course.CamEdge._x += Xamount;
      _root.BGCourse.BG._y += Yamount / 10;
      _root.BGCourse.BG._x += Xamount / 10;
      _root.MidBackground.BG._y += Yamount / 5;
      _root.MidBackground.BG._x += Xamount / 5;
      _root.BGCloseCourse.BG._y += Yamount / 2;
      _root.BGCloseCourse.BG._x += Xamount / 2;
      _root.Course.Char._y += Yamount;
      _root.Course.Char._x += Xamount;
      _root.Course.Enemyhurt._y += Yamount;
      _root.Course.Enemyhurt._x += Xamount;
   }
};
_root.KeyUP = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(_root.mousemoveY + Math.abs(_root.mousemoveX / 2) < -30 && _root.pointer._y < 150 || _root.pointer._y < 75)
      {
         return true;
      }
      return false;
   }
   if(Key.isDown(38))
   {
      return true;
   }
   return false;
};
_root.KeyDOWN = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(_root.mousemoveY - Math.abs(_root.mousemoveX / 2) > 30 && _root.pointer._y > 150 || _root.pointer._y > 200)
      {
         return true;
      }
      return false;
   }
   if(Key.isDown(40))
   {
      return true;
   }
   return false;
};
_root.KeyLEFT = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(_root.pointer._x < _root.screensizeX / 2 - _root.screensizeX / 5 || _root.mousemoveX < -15 && _root.pointer._x < _root.screensizeX / 2 - _root.screensizeX / 6 || _root.mousemoveX < -40 && _root.pointer._x < _root.screensizeX / 2 + _root.screensizeX / 8)
      {
         return true;
      }
      return false;
   }
   if(Key.isDown(37))
   {
      return true;
   }
   return false;
};
_root.KeyRIGHT = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(_root.pointer._x > _root.screensizeX / 2 + _root.screensizeX / 5 || _root.mousemoveX > 15 && _root.pointer._x > _root.screensizeX / 2 + _root.screensizeX / 6 || _root.mousemoveX > 40 && _root.pointer._x > _root.screensizeX / 2 - _root.screensizeX / 8)
      {
         return true;
      }
      return false;
   }
   if(Key.isDown(39))
   {
      return true;
   }
   return false;
};
_root.KeyTapRIGHT = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(_root.pointer._x > _root.screensizeX / 2 + _root.screensizeX / 8 || _root.mousemoveX > 7 && _root.pointer._x > _root.screensizeX / 2 + _root.screensizeX / 8 || _root.mousemoveX > 30 && _root.pointer._x > _root.screensizeX / 2 - _root.screensizeX / 7)
      {
         return true;
      }
      return false;
   }
};
_root.KeyTapLEFT = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(_root.pointer._x < _root.screensizeX / 2 - _root.screensizeX / 8 || _root.mousemoveX > 7 && _root.pointer._x < _root.screensizeX / 2 - _root.screensizeX / 8 || _root.mousemoveX > 30 && _root.pointer._x < _root.screensizeX / 2 - _root.screensizeX / 7)
      {
         return true;
      }
      return false;
   }
};
_root.KeyTapDOWN = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(222))
   {
      return true;
   }
   return false;
};
_root.KeyTapUP = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(186))
   {
      return true;
   }
   return false;
};
_root.KeySPACE = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(_root.MouseDown == true)
      {
         return true;
      }
      return false;
   }
   if(Key.isDown(67) || Key.isDown(32))
   {
      return true;
   }
   return false;
};
_root.KeyMinus = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(34) || Key.isDown(189))
   {
      return true;
   }
   return false;
};
_root.KeyPlus = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(33) || Key.isDown(187))
   {
      return true;
   }
   return false;
};
_root.KeyHome = function()
{
	if(_root.typing) {
		return false;
	}
   if(_root.WiiMode == true)
   {
      if(Key.isDown(80))
      {
         return true;
      }
      return false;
   }
   if(Key.isDown(80))
   {
      return true;
   }
   return false;
};
_root.KeySHIFT = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(16))
   {
      return true;
   }
   return false;
};
_root.KeySPIN = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(88))
   {
      return true;
   }
   return false;
};
_root.KeyX = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(88))
   {
      return true;
   }
   return false;
};
_root.KeyZ = function()
{
	if(_root.typing) {
		return false;
	}
   if(Key.isDown(90))
   {
      return true;
   }
   return false;
};
_root.ChangeFludd = function()
{
	if(_root.typing) {
		return false;
	}
   tellTarget(_root.Course.Char)
   {
      fluddchanged = false;
      if(_root.Fluddpow == "")
      {
         if(changeFludd == true && (_root.FluddArray[_root.Playinglevel][1] == true || _root.SaveFluddH == true))
         {
            _root.Fluddpow = "H";
            fluddchanged = true;
         }
         else if(changeFludd == true && (_root.FluddArray[_root.Playinglevel][2] == true || _root.SaveFluddR == true))
         {
            _root.Fluddpow = "R";
            fluddchanged = true;
         }
         else if(changeFludd == true && (_root.FluddArray[_root.Playinglevel][3] == true || _root.SaveFluddT == true))
         {
            _root.Fluddpow = "T";
            fluddchanged = true;
         }
      }
      else if(_root.Fluddpow == "H")
      {
         if(changeFludd == true && (_root.FluddArray[_root.Playinglevel][2] == true || _root.SaveFluddR == true))
         {
            _root.Fluddpow = "R";
            fluddchanged = true;
         }
         else if(changeFludd == true && (_root.FluddArray[_root.Playinglevel][3] == true || _root.SaveFluddT == true))
         {
            _root.Fluddpow = "T";
            fluddchanged = true;
         }
         else if(changeFludd == true)
         {
            _root.Fluddpow = "";
            fluddchanged = true;
         }
      }
      else if(_root.Fluddpow == "R")
      {
         if(changeFludd == true && (_root.FluddArray[_root.Playinglevel][3] == true || _root.SaveFluddT == true))
         {
            _root.Fluddpow = "T";
            fluddchanged = true;
         }
         else if(changeFludd == true)
         {
            _root.Fluddpow = "";
            fluddchanged = true;
         }
      }
      else if(_root.Fluddpow == "T")
      {
         if(changeFludd == true)
         {
            _root.Fluddpow = "";
            fluddchanged = true;
         }
      }
      if(fluddchanged == true)
      {
         _root.Mariosound = new Sound(this);
         _root.Mariosound.attachSound("FluddSwitch");
         _root.Mariosound.start(0,1);
         _root.Mariosound.setVolume(_root.MarioVolume);
      }
   }
};
