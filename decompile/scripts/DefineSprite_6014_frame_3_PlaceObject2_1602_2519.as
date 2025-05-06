//! status=pending
on(release){
   if(Key.isDown(16))
   {
      i = 0;
      while(i <= 1199)
      {
         _root.save.drawingBoardHex[i] = "000000";
         _root.save.drawingBoardAlp[i] = 0;
         i++;
      }
   }
}


