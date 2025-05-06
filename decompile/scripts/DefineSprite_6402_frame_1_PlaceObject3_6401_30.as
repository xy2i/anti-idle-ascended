//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadeLife > 0 && _root.arcadeMultiplier < 20)
   {
      count += 1 / _root.fps;
      if(_root.save.arcadeDifficulty[2] == 1)
      {
         count -= 0.6 / _root.fps;
      }
      if(_root.save.arcadeDifficulty[2] == 3)
      {
         count += 0.5 / _root.fps;
      }
      if(_root.save.arcadeDifficulty[2] == 4)
      {
         count += 0.7 / _root.fps;
      }
   }
   if(_alpha > 0)
   {
      dispText.text = _root.arcadeMultiplier + 1 + "x";
      if(_root.save.arcadeDifficulty[2] == 1)
      {
         _alpha = _alpha - 25 / _root.fps;
      }
      else if(_root.save.arcadeDifficulty[2] == 2)
      {
         _alpha = _alpha - 37.5 / _root.fps;
      }
      else if(_root.save.arcadeDifficulty[2] == 3)
      {
         _alpha = _alpha - 50 / _root.fps;
      }
      else
      {
         _alpha = _alpha - 25 / _root.fps;
      }
      if(this.hitTest(_parent._parent.radar._x + 10,_parent._parent.radar._y + 80,true))
      {
         _root.arcadeMultiplier += 1;
         _alpha = 0;
      }
   }
   if(_root.save.rankedMode != true)
   {
      if(count > 10 + _root.arcadeMultiplier - _root.save.unrankedPower[6] * 0.5)
      {
         reset();
      }
   }
   else if(count > 10 + _root.arcadeMultiplier)
   {
      reset();
   }
}


onClipEvent(load){
   function reset()
   {
      count = 0;
      _alpha = 100;
      if(_root.save.rankedMode != true)
      {
         _alpha = 100 + _root.save.unrankedPower[6] * 25;
      }
      _X = 0 + Math.random() * 150 - Math.random() * 150;
      _Y = 0 + Math.random() * 150 - Math.random() * 150;
      if(_X > -60 && _X <= 0)
      {
         _X = -60;
      }
      else if(_X > 0 && _X < 60)
      {
         _X = 60;
      }
      if(_Y > -60 && _Y <= 0)
      {
         _Y = -60;
      }
      else if(_Y > 0 && _Y < 60)
      {
         _Y = 60;
      }
   }
   _alpha = 0;
   count = 0;
}


