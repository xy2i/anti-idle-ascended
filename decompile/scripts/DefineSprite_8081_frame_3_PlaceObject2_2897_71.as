//! status=pending
onClipEvent(enterFrame){
   if(loc < -500)
   {
      fr += 2;
      gotoAndStop(fr);
      loc += 1000;
   }
   if(loc > 500 && fr > 2)
   {
      fr -= 2;
      gotoAndStop(fr);
      loc -= 1000;
   }
   loc += Math.round(_parent.shopMoveSpeed);
   _X = loc;
}


onClipEvent(load){
   fr = 2;
   gotoAndStop(fr);
   loc = 500;
}


