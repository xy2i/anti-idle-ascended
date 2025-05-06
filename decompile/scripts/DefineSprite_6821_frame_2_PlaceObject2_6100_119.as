//! status=pending
on(dragOver,rollOver){
   if(_root.save.rankedMode == true)
   {
      _root.actiondescription = "<b>Ranked Mode</b>\nProve your skills in Ranked Mode to increase your Rating! On Ranked Mode, upgrades are disabled but you will receive higher rewards based on your Rating. Arcade Tokens are required for Ranked Mode plays.\n\nCurrent Rating: <b>" + _parent.ratingToString(_root.arcadeTmpRating) + "</b>\nReward multiplier: <b>" + Math.round(_root.arcadeRewardMult * 100 / 3) + "%</b>\n\nClick here to switch to Unranked Mode";
   }
   else
   {
      _root.actiondescription = "<b>Unranked Mode</b>\nOn Unranked Mode, rewards are lower but upgrades are enabled and no Arcade Tokens are required to play. Rating does not increase when playing on Unranked Mode, but you will also receive higher rewards based on your Rating.\n\nCurrent Rating: <b>" + _parent.ratingToString(_root.arcadeTmpRating) + "</b>\nReward multiplier: <b>" + Math.round(_root.arcadeRewardMult * 100 / 3) + "%</b>\n\nClick here to switch to Ranked Mode";
   }
}


on(release){
   if(_root.save.rankedMode == true)
   {
      _root.save.rankedMode = false;
   }
   else
   {
      _root.save.rankedMode = true;
   }
   _parent.checkGlobal();
   if(_root.save.rankedMode == true)
   {
      _root.actiondescription = "<b>Ranked Mode</b>\nProve your skills in Ranked Mode to increase your Rating! On Ranked Mode, upgrades are disabled but you will receive higher rewards based on your Rating. Arcade Tokens are required for Ranked Mode plays.\n\nCurrent Rating: <b>" + _parent.ratingToString(_root.arcadeTmpRating) + "</b>\nReward multiplier: <b>" + Math.round(_root.arcadeRewardMult * 100 / 3) + "%</b>\n\nClick here to switch to Unranked Mode";
   }
   else
   {
      _root.actiondescription = "<b>Unranked Mode</b>\nOn Unranked Mode, rewards are lower but upgrades are enabled and no Arcade Tokens are required to play. Rating does not increase when playing on Unranked Mode, but you will also receive higher rewards based on your Rating.\n\nCurrent Rating: <b>" + _parent.ratingToString(_root.arcadeTmpRating) + "</b>\nReward multiplier: <b>" + Math.round(_root.arcadeRewardMult * 100 / 3) + "%</b>\n\nClick here to switch to Ranked Mode";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.rankedMode == true)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


onClipEvent(load){
   if(_root.save.rankedMode == true)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


