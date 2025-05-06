//! status=pending
on(release){
   if(_parent.popScreen._currentframe != 2 && _parent.popScreen._currentframe != 4)
   {
      if(_root.save.arenaTutorial == 1)
      {
         _root.save.arenaTutorial = 2;
      }
      _parent.popScreen.gotoAndStop(2);
   }
   else
   {
      _parent.popScreen.gotoAndStop(1);
   }
}


