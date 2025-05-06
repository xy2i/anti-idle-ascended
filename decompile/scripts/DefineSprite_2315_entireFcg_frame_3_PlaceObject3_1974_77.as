//! status=pending
onClipEvent(enterFrame){
   delay += 1;
   if(delay > 2)
   {
      delay = 0;
      val = _root.fcg_opponent_crec;
      if(val > 0)
      {
         healDisp.text = val;
         gotoAndStop(1);
      }
      else if(val < 0)
      {
         healDisp.text = - val;
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(3);
      }
   }
}


onClipEvent(load){
   delay = 3;
}


