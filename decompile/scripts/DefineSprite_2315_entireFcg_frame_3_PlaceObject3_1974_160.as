//! status=pending
onClipEvent(enterFrame){
   val = _root.fcg_player_mfreeze;
   if(val > 0)
   {
      gotoAndStop(4);
      healDisp.text = val;
   }
   else
   {
      gotoAndStop(3);
   }
}


onClipEvent(load){
   gotoAndStop(3);
}


