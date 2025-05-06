//! status=pending
on(release){
   temp = _parent.var1;
   if(!isNaN(temp))
   {
      _root.save.level = 1;
      _root.save.totalExp = 0;
      _root.save.currentExp = Math.round(temp);
   }
}


