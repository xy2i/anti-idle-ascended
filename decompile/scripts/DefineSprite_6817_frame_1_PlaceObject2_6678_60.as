//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadeTimeLeft > 5)
   {
      if(_root.arcadeMyCount > _root.arcadeDragonCount && Math.random() < 0.1 && _root.arcadeQuestionAppear > _root.arcadeTimeLeft)
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
      if(_root.arcadeMyCount < _root.arcadeDragonCount && Math.random() < 0.1 && _root.arcadeQuestionAppear > _root.arcadeTimeLeft)
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
         _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in Triangle Count.");
         _parent._parent.gotoAndStop(2);
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


