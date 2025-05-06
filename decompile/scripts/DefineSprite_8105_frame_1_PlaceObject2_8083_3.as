//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Progress Bar</font></b>\nWhen the Progress Bar is full, do anything to claim your reward. Or you can turn Idle Mode on to claim rewards automatically.\n\nProgress Bar Speed:\n<b>" + _root.save.progSpeedAuto + "%</b> (Idle Mode ON)\n<b>" + _root.save.progSpeedManual + "%</b> (Idle Mode OFF)\n\nEpic Skills: <b>" + _root.totalEpicSkill + "</b>\nEquipped Module Slots: <b>" + _root.moduleSlotOccupied + "</b> / 9\nProgress Capacity: <b>" + _root.withComma(_root.save.progStore) + "%</b>\nReward Multiplier: <b>" + _root.withComma((1 + _root.achRedCoin / 10000 + _root.save.petBestLevel / 100 + (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 + _root.save.mainQuestS * 10) / 2500) * 100) + "%</b>\n\nIncrease reward from Progress Bar by finishing Achievements, Main Quests, and by raising a Pet.\n\n<font color=\'#FFFF00\'>Click here to upgrade Progress Bar Speed, Epic Skills or change Progress Bar Modules.</font>\n\n<font color=\'#FFFF00\'>Click here while holding Ctrl to spend all your Coins in Insta-Progress.</font>";
}


on(release){
   _root.save.progTutorial = true;
   if(Key.isDown(17))
   {
      ipGain = Math.floor(_root.save.coin / 75000000);
      _root.save.coin -= ipGain * 75000000;
      _root.progPercent += ipGain * 100;
   }
   else if(_root.optionsScreen._currentframe != 20)
   {
      _root.optionsScreen.gotoAndStop(20);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   delay += 1;
   if(delay >= 2)
   {
      delay = 0;
      if(_root._quality == "BEST" || _root._quality == "HIGH")
      {
         glow2 = new flash.filters.GlowFilter(65535,40,5,5,pow,1,false,false);
         filters = [glow2];
      }
      numberdisp = Math.floor(_root.progPercent) + "%";
   }
   ibf = 6;
   if(_root.progPercent >= 100)
   {
      if(_root._quality == "BEST" || _root._quality == "HIGH")
      {
         pow = 1;
      }
      numberdisp = "Ready!";
   }
   if(_root.progPercent >= 200)
   {
      numberdisp = "Ready! [" + _root.withComma(Math.floor(_root.progPercent / 100)) + "]";
   }
   if(_root.save.idleMode == true)
   {
      ibf = 12;
   }
   if(_root.save.rewardBotTime > 0)
   {
      ibt = 10 + _root.save.progStore * 0.01;
      if(_root.cursoridle >= ibt)
      {
         ibf = 12;
      }
      if(_root.cursoridle >= ibt && _root.cursoridle < ibt + 5)
      {
         numberdisp = "IDLEBOT ACTIVATED";
      }
      else if(_root.cursoridle > ibt / 2 && _root.cursoridle < ibt)
      {
         numberdisp = "Idlebot activating in " + Math.floor(ibt - _root.cursoridle) + "s";
      }
   }
   if(_root.progPercent >= 100)
   {
      if(_root.cursoridle < 0.5 || _root.save.rewardBotTime > 0 || _root.save.idleMode == true)
      {
         _root.claimReward();
      }
   }
   insideBar.xscale = _root.progPercent;
   if(_root.progPercent > 100)
   {
      if(_root.progPercent >= _root.save.progStore)
      {
         insideBar2.xscale = 0;
         insideBar3.xscale = 100;
         insideBar4.xscale = 0;
      }
      else if(_root.progPercent % 200 > 100)
      {
         insideBar2.xscale = 0;
         insideBar4.xscale = _root.progPercent % 200 - 100;
         if(_root.progPercent > 300)
         {
            insideBar3.xscale = 100;
         }
         else
         {
            insideBar3.xscale = 0;
         }
      }
      else
      {
         insideBar2.xscale = 100;
         insideBar3.xscale = _root.progPercent % 200;
         insideBar4.xscale = 0;
      }
   }
   else
   {
      insideBar2.xscale = 0;
      insideBar3.xscale = 0;
      insideBar4.xscale = 0;
   }
   if(_root.save.rewardBotTime > 0)
   {
      ibt = 10 + _root.save.progStore * 0.01;
      if(_root.cursoridle >= ibt)
      {
         insideBar2.xscale = insideBar._xscale;
         if(insideBar2.xscale > 50)
         {
            insideBar2.xscale = 50;
         }
      }
   }
   if(pow > 0)
   {
      pow -= 0.1;
   }
   insideBar2._xscale = insideBar2.xscale;
   insideBar3._xscale = insideBar3.xscale;
   if(insideBar._currentframe != ibf)
   {
      insideBar.gotoAndStop(ibf);
   }
}


onClipEvent(keyUp){
   if(_root.cursoridle < 600)
   {
      _root.cursoridle = 0;
   }
}


onClipEvent(load){
   pow = 0;
   bg.gotoAndStop(6);
   insideBar.gotoAndStop(6);
   insideBar2.gotoAndStop(10);
   insideBar3.gotoAndStop(11);
   insideBar4.gotoAndStop(10);
   textBox.textColor = 13434879;
   textBox._y -= 1;
}


onClipEvent(mouseDown){
   _root.cursoridle = 0;
}


