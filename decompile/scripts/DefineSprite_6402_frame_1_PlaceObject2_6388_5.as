//! status=pending
onClipEvent(enterFrame){
   _X = xloc;
   if(_root.arcadeLife > 0 && _root.arcadeAvoidCount < maxHint)
   {
      if(_X < -150)
      {
         _parent.hint3._y = _Y;
         _parent.hint3._alpha = 225 - Math.abs(_X / 2);
      }
      else if(_X < -50)
      {
         _parent.hint3._alpha = Math.abs(_X) - 50;
      }
      else
      {
         _parent.hint3._alpha = 0;
      }
   }
   else
   {
      _parent.hint3._alpha = 0;
   }
   if(_root.arcadeAvoidCount >= 25)
   {
      xspeed += power / 50 / _root.fps * 40;
      if(_root.save.rankedMode != true)
      {
         xloc += xspeed * (1 - _root.save.unrankedPower[7] * 0.05) * (0.82 + _root.save.arcadeDifficulty[2] * 0.06);
      }
      else
      {
         xloc += xspeed * (0.82 + _root.save.arcadeDifficulty[2] * 0.06);
      }
      if(xspeed > power / _root.fps * 40)
      {
         xspeed = power / _root.fps * 40;
      }
      if(xspeed > 30)
      {
         xspeed = 30;
      }
      if(this.hitTest(_parent._parent.radar._x + 10,_parent._parent.radar._y + 80,true) && _root.arcadeShieldTime < -0.2)
      {
         if(_root.arcadeLife > 0)
         {
            _root.arcadeLife = 0;
         }
         else if(_root.arcadeInvincibility <= 0)
         {
            _parent._parent.gotoAndStop(32);
         }
      }
      if(_X > 300)
      {
         _root.arcadeScore += Math.ceil(power * 200 * _root.arcadeMultiplier);
         _root.arcadeAvoidCount += 1;
         progToEarn = Math.floor(50 + _root.arcadeMultiplier * 10);
         _root.progPercent += progToEarn;
         _root.dispNews(80,"[Ultimate Avoidance] Avoided! (+" + progToEarn + "% Progress)");
         reset();
      }
   }
}


onClipEvent(load){
   function reset()
   {
      xspeed = 0;
      _Y = 0 + Math.random() * 250 - Math.random() * 250;
      xloc = -500;
      if(power < 20)
      {
         power += 0.1;
      }
      if(power >= 20)
      {
         power = 20;
      }
   }
   power = 5;
   reset();
   maxHint = 10;
   if(_root.save.rankedMode != true)
   {
      maxHint = 10 + _root.save.unrankedPower[9] * 10;
   }
   if(_root.save.arcadeConfig2 != true)
   {
      maxHint = 0;
   }
}


