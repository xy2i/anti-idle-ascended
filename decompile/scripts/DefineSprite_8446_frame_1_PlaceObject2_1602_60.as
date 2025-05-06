//! status=pending
on(release){
   temp = _parent.var12;
   if(!isNaN(temp))
   {
      _root.save.buttonPress = Math.round(temp);
      _root.save.buttonPressToday = Math.round(temp);
   }
}


