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
         _root.house.gotoAndStop(24);
      }
   }
   else if(_root.save.gDifficulty == 3)
   {
      _root.showPopup("Impossible Ascension","You have to reach level 3,000 to unlock this feature.");
   }
   else
   {
      _root.showPopup("Access Denied","You have to reach level 1,000 to unlock this feature. Keep playing!");
   }
}


onClipEvent(load){
   if(_root.save.level >= 3000)
   {
      _alpha = 100;
   }
   else if(_root.save.gDifficulty < 3 && _root.save.level >= 1000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


