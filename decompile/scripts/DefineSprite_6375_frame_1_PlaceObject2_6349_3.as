//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadePongPowerType == "Gravity")
   {
      yspeed += 0.15;
   }
   if(_root.arcadePongPowerType == "Slower Paddle")
   {
      power = 0.4;
      if(_root.save.arcadeDifficulty[1] == 3)
      {
         power = 0.36;
      }
      if(_root.save.arcadeDifficulty[1] == 4)
      {
         power = 0.34;
      }
   }
   else
   {
      power = 0.5;
      if(_root.save.arcadeDifficulty[1] == 3)
      {
         power = 0.45;
      }
      if(_root.save.arcadeDifficulty[1] == 4)
      {
         power = 0.42;
      }
   }
   if(_root.save.rankedMode != true)
   {
      power *= 1 + 0.04 * _root.save.unrankedPower[4];
   }
   if(_root.arcadePongPowerType == "Smaller Paddle")
   {
      _yscale = 90;
      if(_root.save.arcadeDifficulty[1] == 3)
      {
         _yscale = 87;
      }
      if(_root.save.arcadeDifficulty[1] == 4)
      {
         _yscale = 85;
      }
   }
   else
   {
      _yscale = 100;
      if(_root.save.arcadeDifficulty[1] == 3)
      {
         _yscale = 96;
      }
      if(_root.save.arcadeDifficulty[1] == 4)
      {
         _yscale = 94;
      }
   }
   if(_root.save.rankedMode != true)
   {
      _yscale = _yscale * (1 + 0.03 * _root.save.unrankedPower[3]);
   }
   elapsed += 0.025;
   powerMult = 1.5 - elapsed / 120;
   if(powerMult < 1)
   {
      powerMult = 1;
   }
   power *= powerMult;
   if(_root.arcadePongPowerType != "Frozen Paddle" || _parent.ball._x > 115)
   {
      if(Key.isDown(_root.saveGlobal.keyPongUp1) || Key.isDown(_root.saveGlobal.keyPongUp2))
      {
         yspeed -= power;
      }
      if(Key.isDown(_root.saveGlobal.keyPongDown1) || Key.isDown(_root.saveGlobal.keyPongDown2))
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
   if(_root.arcadePongPowerType == "Invisible Paddle")
   {
      if(_parent.ball._x < 215)
      {
         _alpha = 0;
      }
      else if(_parent.ball._x < 265)
      {
         _alpha = _parent.ball._x * 2 - 430;
      }
      else
      {
         _alpha = 100;
      }
   }
   else
   {
      _alpha = 100;
   }
}


onClipEvent(load){
   power = 0.5;
   yspeed = 0;
   elapsed = 0;
}


