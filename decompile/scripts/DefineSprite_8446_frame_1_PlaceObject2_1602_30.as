//! status=pending
on(release){
   temp = _parent.var6;
   if(!isNaN(temp))
   {
      i = 1;
      while(i <= 50)
      {
         _root.save.gardenSlotEXP[i] = Math.round(temp);
         i++;
      }
   }
}


