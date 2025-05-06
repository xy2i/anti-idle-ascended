//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Cards</font></b>\n" + tempDesc;
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   checkDelay += 1;
   if(checkDelay > 80)
   {
      if(_root.save.featureCardToolbar == true)
      {
         gotoAndStop(1);
         cardActivated = 0;
         tempDesc = "<font color=\'#FFFF00\'>";
         if(_root.save.doubleExpTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\n1.5x EXP: <b>" + _root.convertSecFull(_root.save.doubleExpTime) + "</b>";
         }
         if(_root.save.doubleCoinTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\n1.5x Coin: <b>" + _root.convertSecFull(_root.save.doubleCoinTime) + "</b>";
         }
         tempDesc += "</font><font color=\'#BBDDFF\'>";
         if(_root.save.rewardBotTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nIdlebot: <b>" + _root.convertSecFull(_root.save.rewardBotTime) + "</b>";
         }
         if(_root.save.autoHarvestTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nAutoharvest: <b>" + _root.convertSecFull(_root.save.autoHarvestTime) + "</b>";
         }
         if(_root.save.batteryChargerTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nBattery Charger: <b>" + _root.convertSecFull(_root.save.batteryChargerTime) + "</b>";
         }
         if(_root.save.demandMasterTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nDemand Master: <b>" + _root.convertSecFull(_root.save.demandMasterTime) + "</b>";
         }
         if(_root.save.quickAdventuresTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nQuick Adventures: <b>" + _root.convertSecFull(_root.save.quickAdventuresTime) + "</b>";
         }
         tempDesc += "</font><font color=\'#CCFF99\'>";
         if(_root.save.eliteButtonTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nInvincibility Stars: <b>" + _root.convertSecFull(_root.save.eliteButtonTime) + "</b>";
         }
         if(_root.save.stadiumProTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nStadium Pro: <b>" + _root.convertSecFull(_root.save.stadiumProTime) + "</b>";
         }
         if(_root.save.powerUserTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nFCG Power User: <b>" + _root.convertSecFull(_root.save.powerUserTime) + "</b>";
         }
         if(_root.save.eliteFisherTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nElite Fisher: <b>" + _root.convertSecFull(_root.save.eliteFisherTime) + "</b>";
         }
         tempDesc += "</font><font color=\'#FFCC99\'>";
         if(_root.save.noAntsTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\nAuto Ant Spray: <b>" + _root.convertSecFull(_root.save.noAntsTime) + "</b>";
         }
         if(_root.save.doubleQuestTime > 0)
         {
            cardActivated += 1;
            tempDesc += "\n2x Quest Reward: <b>" + _root.convertSecFull(_root.save.doubleQuestTime) + "</b>";
         }
         tempDesc += "</font>";
         if(cardActivated > 0)
         {
            _alpha = 100;
         }
         else
         {
            _alpha = 30;
         }
         cardText.text = cardActivated;
      }
      else
      {
         gotoAndStop(2);
      }
      checkDelay = 0;
   }
}


onClipEvent(load){
   checkDelay = 80;
}


