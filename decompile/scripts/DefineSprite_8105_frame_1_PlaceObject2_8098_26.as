//! status=pending
on(dragOver,rollOver){
   if(_root.save.rewardBotTime > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Idlebot is Working!</font></b>\nIdlebot will turn Idle Mode ON/OFF automatically depending on whether or not you are active. Even when inactive, the first half of the Progress Bar is filled at Idle Mode OFF speed!";
   }
   else if(_root.save.featureIdleMode == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Idle Mode</font></b>\nWhen Idle Mode is ON, you don\'t have to interact with the keyboard or mouse to claim rewards from the Progress Bar. However, when Idle Mode is OFF, the Progress Bar fills more quickly.\n\nYou can click this button to turn Idle Mode ON/OFF.";
   }
}


on(release){
   if(_root.save.featureIdleMode == true && _root.save.idleMode == false && _root.save.rewardClaim >= 5 && _root.save.rewardBotTime <= 0)
   {
      _root.save.idleMode = true;
   }
   else if(_root.save.featureIdleMode == true && _root.save.idleMode == true)
   {
      _root.save.idleMode = false;
   }
   else if(_root.save.rewardBotTime <= 0)
   {
      if(_root.save.rewardClaim >= 5)
      {
         _root.showPopup("Buy Idle Mode now!","You have to purchase Idle Mode in the shop.");
      }
      else
      {
         _root.showPopup("Not ready yet!","You have to claim 5 rewards before you turn Idle Mode on.");
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.featureIdleMode == false && _root.save.rewardBotTime <= 0)
   {
      fts = 3;
   }
   else if(_root.save.rewardBotTime > 0)
   {
      if(_root.save.idleMode == false)
      {
         fts = 4;
      }
      else
      {
         fts = 5;
      }
   }
   else if(_root.save.idleMode == false)
   {
      fts = 1;
   }
   else if(_root.save.idleMode == true)
   {
      fts = 2;
   }
   if(_currentframe != fts)
   {
      gotoAndStop(fts);
   }
}


onClipEvent(load){
   if(_root.save.idleMode == false)
   {
      gotoAndStop(1);
   }
   else if(_root.save.idleMode == true)
   {
      gotoAndStop(2);
   }
}


