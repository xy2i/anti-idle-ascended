//! status=pending
on(release){
   if(_root.save.gDifficulty < 3 || _root.save.level >= 3000)
   {
      _parent.awesomeShop.gotoAndStop(2);
   }
   else
   {
      _root.showPopup("Impossible Ascension","You have to reach level 3,000 to enter Awesome Shop.");
   }
}


