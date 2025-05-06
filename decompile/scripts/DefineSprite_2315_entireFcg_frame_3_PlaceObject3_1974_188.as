//! status=pending
onClipEvent(enterFrame){
   val = _root.fcg_opponent_mrec;
   if(val > 0)
   {
      healDisp.text = val;
      gotoAndStop(1);
   }
   else if(val < 0)
   {
      healDisp.text = -1 * val;
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
}


onClipEvent(load){
   gotoAndStop(3);
}


