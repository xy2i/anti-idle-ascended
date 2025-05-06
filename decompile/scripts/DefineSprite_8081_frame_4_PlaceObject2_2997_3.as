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
   _parent.totalLoc += Math.round(_parent.shopMoveSpeed);
   if(_parent.totalLoc > 0)
   {
      _parent.shopMoveSpeed = -2;
   }
   if(_parent.totalLoc < -5000)
   {
      _parent.shopMoveSpeed = 2;
   }
   _X = loc;
}


onClipEvent(load){
   fr = 1;
   gotoAndStop(fr);
   loc = 0;
}


