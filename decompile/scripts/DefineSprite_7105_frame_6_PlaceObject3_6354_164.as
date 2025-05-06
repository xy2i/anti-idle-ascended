//! status=pending
onClipEvent(enterFrame){
   if(_parent.field.stadiumHero.health > 0)
   {
      insideBar.gotoAndStop(1);
      targetScale = _parent.field.stadiumHero.health;
      if(targetScale > 100)
      {
         targetScale = 100;
      }
   }
   else
   {
      insideBar.gotoAndStop(2);
      targetScale = _parent.field.stadiumHero.revive / 4;
      if(targetScale > 100)
      {
         targetScale = 100;
      }
   }
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
}


onClipEvent(load){
   insideBar._xscale = 0;
   insideBar.gotoAndStop(1);
}


