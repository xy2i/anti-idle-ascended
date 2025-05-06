//! status=pending
onClipEvent(enterFrame){
   _alpha = 100;
   count += 1 / _root.fps;
   if(count >= 1)
   {
      count = 0;
      _root.arcadeScore += 500 * _root.arcadeMultiplier;
      if(_root.save.arcadeDifficulty[2] == 4)
      {
         _root.arcadeScore += 2000 * _root.arcadeMultiplier;
      }
   }
   if(_root.arcadeAvoidCount >= 10 || _root.save.arcadeDifficulty[2] == 4)
   {
      rotSpeed = 5;
      if(_root.save.arcadeDifficulty[2] == 4)
      {
         rotSpeed = 6;
      }
   }
   if(_root.arcadeAvoidCount >= 70)
   {
      rotSpeed = 10;
      if(_root.save.arcadeDifficulty[2] == 4)
      {
         rotSpeed = 12;
      }
   }
   if(_root.arcadeAvoidCount >= 30 || _root.save.arcadeDifficulty[2] == 4)
   {
      if(Math.random() < 0.005)
      {
         dir *= -1;
      }
   }
   _rotation = _rotation + rotSpeed * dir / _root.fps;
}


onClipEvent(load){
   rotSpeed = 0;
   dir = 1;
   count = 0;
   _alpha = 0;
}


