//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arcadeDifficulty[2] == 4)
   {
      if(_root.arcadeAvoidCount % 20 < 10)
      {
         _rotation = _rotation + 10 / _root.fps;
      }
      else
      {
         _rotation = _rotation - 10 / _root.fps;
      }
      if(_root.arcadeAvoidCount >= 1 && ena == false)
      {
         _alpha = _alpha + 100 / _root.fps;
         if(_alpha > 100)
         {
            _alpha = 100;
            ena = true;
         }
      }
      if(this.hitTest(_parent._parent.radar._x + 10,_parent._parent.radar._y + 80,true) && _root.arcadeShieldTime < -0.2 && ena == true)
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
   }
   else if(_root.arcadeAvoidCount >= 480)
   {
      if(_alpha < 30)
      {
         _alpha = _alpha + 100 / _root.fps;
      }
      if(_root.arcadeAvoidCount % 20 < 10)
      {
         _rotation = _rotation + 10 / _root.fps;
      }
      else
      {
         _rotation = _rotation - 10 / _root.fps;
      }
      if(_root.arcadeAvoidCount >= 500 && ena == false)
      {
         _alpha = _alpha + 100 / _root.fps;
         if(_alpha > 100)
         {
            _alpha = 100;
            ena = true;
         }
      }
      if(this.hitTest(_parent._parent.radar._x + 10,_parent._parent.radar._y + 80,true) && _root.arcadeShieldTime < -0.2 && ena == true)
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
   }
}


onClipEvent(load){
   ena = false;
   if(_root.save.arcadeDifficulty[2] < 4)
   {
      _alpha = 0;
   }
   else
   {
      _alpha = 30;
   }
}


