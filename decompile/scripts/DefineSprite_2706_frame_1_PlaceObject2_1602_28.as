//! status=pending
on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.gDifficulty < 3 || _root.save.level >= 2000)
   {
      _root.house.gotoAndStop(17);
   }
   else
   {
      _root.showPopup("Impossible Ascension","You have to reach level 2,000 to open Mystery Boxes.");
   }
}


onClipEvent(load){
   if(_root.save.gDifficulty < 3 || _root.save.level >= 2000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


