//! status=pending
on(release){
   temp = _parent.var5;
   if(!isNaN(temp))
   {
      _root.save.gardenEXP = Math.round(temp);
   }
}


