//! status=pending
onClipEvent(load){
   rank = 0;
   z = 1;
   while(z <= 12)
   {
      if(_root.arcadeScore >= _root.mmrRankArr[z])
      {
         rank = z;
      }
      z++;
   }
   if(rank > 0)
   {
      gotoAndStop(rank);
   }
   else
   {
      gotoAndStop(13);
   }
}


