//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadeLife > 0 && _root.arcadeAvoidCount < maxHint)
   {
      if(_Y > 150)
      {
         _parent.hint2._x = _X;
         _parent.hint2._alpha = 225 - Math.abs(_Y / 2);
      }
      else if(_Y > 50)
      {
         _parent.hint2._alpha = Math.abs(_Y) - 50;
      }
      else
      {
         _parent.hint2._alpha = 0;
      }
   }
   else
   {
      _parent.hint2._alpha = 0;
   }
   _Y = yloc;
   if(_root.arcadeAvoidCount >= 5)
   {
      yspeed += power / 50 / _root.fps * 40;
      if(_root.save.rankedMode != true)
      {
         yloc -= yspeed * (1 - _root.save.unrankedPower[7] * 0.05) * (0.82 + _root.save.arcadeDifficulty[2] * 0.06);
      }
      else
      {
         yloc -= yspeed * (0.82 + _root.save.arcadeDifficulty[2] * 0.06);
      }
      if(yspeed > power / _root.fps * 40)
      {
         yspeed = power / _root.fps * 40;
      }
      if(yspeed > 30)
      {
         yspeed = 30;
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
      if(_Y < -300)
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
      yspeed = 0;
      _X = 0 + Math.random() * 250 - Math.random() * 250;
      yloc = 500;
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


