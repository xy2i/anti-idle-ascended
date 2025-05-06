//! status=pending
on(release){
   if(_alpha > 50)
   {
      if(_root.saveid == 24)
      {
         _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
      }
      else
      {
         _root.house.gotoAndStop(11);
      }
   }
}


onClipEvent(load){
   if(_root.save.featureStadium == true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


