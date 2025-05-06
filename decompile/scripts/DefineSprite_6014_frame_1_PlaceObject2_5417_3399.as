//! status=pending
onClipEvent(enterFrame){
   fr = 1;
   if(_root.saveid < 10)
   {
      if(_root.save.arenaLevel >= 10 && _root.save.arenaPixel >= 5000 && _root.save.arenaTutorial == 0)
      {
         if(_parent._currentframe == 1)
         {
            fr = 2;
         }
         else if(_parent._currentframe == 9)
         {
            fr = 3;
         }
         else if(_parent._currentframe == 7)
         {
            if(_parent.fullCraft.craftCurrent == 2)
            {
               fr = 4;
            }
            else
            {
               fr = 5;
            }
         }
      }
      else if(_root.save.arenaTutorial == 1)
      {
         if(_parent._currentframe == 7)
         {
            fr = 6;
         }
         else if(_parent._currentframe == 9)
         {
            fr = 7;
         }
         else if(_parent._currentframe == 1)
         {
            fr = 8;
         }
      }
      else
      {
         fr = 9;
      }
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


