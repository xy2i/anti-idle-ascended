//! status=pending
on(release){
   temp = _parent.var8;
   if(!isNaN(temp))
   {
      i = 26;
      while(i <= 100)
      {
         _root.save.gardenSeed[i] = Math.round(temp);
         i++;
      }
   }
}


