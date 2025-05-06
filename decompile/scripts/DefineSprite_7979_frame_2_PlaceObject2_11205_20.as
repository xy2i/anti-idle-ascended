//! status=pending
on(release){
   if(_root.save.fighterMakerReward == true)
   {
      _root.save.fighterMakerReward = false;
   }
   else
   {
      _root.save.fighterMakerReward = true;
   }
}


onClipEvent(enterFrame){
   if(_root.save.fighterMakerReward == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


onClipEvent(load){
   if(isNaN(_root.save.fighterMakerReward))
   {
      _root.save.fighterMakerReward = false;
   }
   _visible = false;
   if(_root.save.curBusiness == 3 || _root.save.curBusiness == 4)
   {
      _visible = true;
   }
}


