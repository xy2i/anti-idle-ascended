//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Shop</font></b>\nWhere new features, feature upgrades and other awesome things can be purchased!";
}


on(release){
   if(_root.optionsScreen._currentframe < 29 || _root.optionsScreen._currentframe > 32)
   {
      _root.optionsScreen.gotoAndStop(28 + _root.shopScreenPage);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


