//! status=pending
onClipEvent(enterFrame){
   if(_root.player_cardsLeft < 1)
   {
      gotoAndStop(3);
   }
   else if(_root.fullHandX > 6)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


