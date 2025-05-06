//! status=pending
on(dragOver,rollOver){
   if(tim >= 300)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Overcap!</font></b>\nYou have had over 999,999,999 Green Coins for more than 5 minutes. Please spend Green Coins until you have 999,999,999 Green Coins or below to be able to continue gaining more Green Coins.";
   }
   else if(tim >= 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Overcap!</font></b>\nYou have over 999,999,999 Green Coins. If you do not spend your Coins within 5 minutes, you will stop being able to gain more Coins until you have 999,999,999 Green Coins or below. Please spend Green Coins until you have 999,999,999 Green Coins or below to be able to continue gaining more Green Coins.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   tim = _root.save.greenCoinOvercap;
   if(tim >= 300)
   {
      gotoAndStop(2);
   }
   else if(tim > 0)
   {
      gotoAndStop(1);
      timText.text = _root.convertSecCD(300 - tim);
   }
   else
   {
      gotoAndStop(3);
   }
}


onClipEvent(load){
   gotoAndStop(3);
}


