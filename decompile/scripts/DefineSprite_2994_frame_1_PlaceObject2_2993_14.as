//! status=pending
onClipEvent(enterFrame){
   checkDelay += 1;
   if(checkDelay > 200)
   {
      gotoAndStop(1);
      checkDelay = 0;
      cardActivated = 0;
      if(_root.save.doubleExpTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.doubleCoinTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.rewardBotTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.autoHarvestTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.batteryChargerTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.demandMasterTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.eliteButtonTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.stadiumProTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.powerUserTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.quickAdventuresTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.eliteFisherTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.noAntsTime > 0)
      {
         cardActivated += 1;
      }
      if(_root.save.doubleQuestTime > 0)
      {
         cardActivated += 1;
      }
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
}


onClipEvent(load){
   checkDelay = 200;
}


