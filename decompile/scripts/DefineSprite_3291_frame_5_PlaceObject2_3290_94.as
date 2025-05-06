//! status=pending
on(press){
   holding = true;
}


on(releaseOutside,release){
   holding = false;
}


onClipEvent(enterFrame){
   if(holding == true)
   {
      tempX = Math.round(_parent._xmouse - 275);
      if(tempX > 200)
      {
         tempX = 200;
      }
      if(tempX < 0)
      {
         tempX = 0;
      }
      _root.save.aagStat4 = tempX;
   }
}


