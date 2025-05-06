//! status=pending
on(release){
   temp = _parent.var21;
   if(!isNaN(temp))
   {
      _root.save.awesomeEnergy = Math.round(temp);
   }
}


