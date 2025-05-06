//! status=pending
onClipEvent(enterFrame){
   power = 0.5 + _root.arcadeDifficulty * 0.02;
   if(_root.arcadePongPowerType == "Gravity")
   {
      power += 0.1;
   }
   if(_Y > _parent.ball._y + dist)
   {
      yspeed -= power;
   }
   if(_Y < _parent.ball._y - dist)
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
   yspeed = 0;
   dist = 20;
}


