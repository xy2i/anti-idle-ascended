//! status=pending
onClipEvent(enterFrame){
   if(_root.save.featureDoomSprayer == true && _root.sprayCooldown2 <= 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


