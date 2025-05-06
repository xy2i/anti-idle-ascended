//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadePongPowerType == "Gravity")
   {
      yspeed += 0.15;
   }
   if(_root.arcadePongPowerType == "Slower Paddle")
   {
      power = 0.4;
   }
   else
   {
      power = 0.5;
   }
   if(_root.arcadePongPowerType == "Smaller Paddle")
   {
      _yscale = 85;
   }
   else
   {
      _yscale = 100;
   }
   elapsed += 0.025;
   powerMult = 1.5 - elapsed / 120;
   if(powerMult < 1)
   {
      powerMult = 1;
   }
   power *= powerMult;
   if(_Y > _parent.pongMonster)
   {
      yspeed -= power;
   }
   if(_Y < _parent.pongMonster)
   {
      yspeed += power;
   }
   yspeed *= 0.9;
   _Y = _Y + yspeed;
   if(_Y < 20 + _height / 2)
   {
      _Y = 21 + _height / 2;
      yspeed *= -0.8;
   }
   if(_Y > 230 - _height / 2)
   {
      _Y = 229 - _height / 2;
      yspeed *= -0.8;
   }
}


onClipEvent(load){
   power = 0.5;
   yspeed = 0;
   elapsed = 0;
}


