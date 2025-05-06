//! status=pending
on(release){
   temp = _parent.var22;
   if(!isNaN(temp))
   {
      _root.save.awesomeReputation = Math.round(temp);
   }
}


