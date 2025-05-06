//! status=pending
on(release){
   temp = _parent.var23;
   if(!isNaN(temp))
   {
      i = 26;
      while(i <= 100)
      {
         _root.save.gardenMastery[i] = Math.round(temp);
         i++;
      }
   }
}


