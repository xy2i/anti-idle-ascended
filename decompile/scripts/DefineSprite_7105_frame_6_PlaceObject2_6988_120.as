//! status=pending
onClipEvent(enterFrame){
   itemName = _parent.field.stadiumHero.curItem;
   if(itemName == "Speed Boost")
   {
      fr = 2;
   }
   else if(itemName == "Energy Drain")
   {
      fr = 3;
   }
   else if(itemName == "Slow")
   {
      fr = 4;
   }
   else if(itemName == "Stun")
   {
      fr = 5;
   }
   else if(itemName == "Darkness")
   {
      fr = 6;
   }
   else
   {
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


