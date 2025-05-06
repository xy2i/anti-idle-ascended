//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadeTimeLeft > 5)
   {
      if(Key.isDown(37) || Key.isDown(65))
      {
         if(holdLeft == false)
         {
            holdLeft = true;
            if(_root.arcadeMyCount > 0)
            {
               _root.arcadeMyCount -= 1;
               _root.arcadeIdleTime = _root.arcadeTimeLeft - 5;
               if(_root.arcadeIdleTime > 10)
               {
                  _root.arcadeIdleTime = 10;
               }
            }
         }
      }
      else
      {
         holdLeft = false;
      }
      if(Key.isDown(39) || Key.isDown(68))
      {
         if(holdRight == false)
         {
            holdRight = true;
            if(_root.arcadeMyCount < 99)
            {
               _root.arcadeMyCount += 1;
               _root.arcadeIdleTime = _root.arcadeTimeLeft - 5;
               if(_root.arcadeIdleTime > 10)
               {
                  _root.arcadeIdleTime = 10;
               }
            }
            else
            {
               _root.arcadeMyCount = "C";
               _root.save.lolBug = 1337;
               aniPlay = true;
            }
         }
      }
      else
      {
         holdRight = false;
      }
   }
   if(aniPlay == true)
   {
      rCount += 1;
      _rotation = _rotation - 6;
      if(rCount > 30)
      {
         _parent._parent.gotoAndStop(38);
      }
   }
   targetX = 50 + _root.arcadeMyCount * 4;
   _X = _X + (targetX - _X) / 4;
   countText.text = _root.arcadeMyCount;
}


onClipEvent(load){
   holdLeft = false;
   holdRight = false;
   aniPlay = false;
   rCount = 0;
   targetX = 50;
}


