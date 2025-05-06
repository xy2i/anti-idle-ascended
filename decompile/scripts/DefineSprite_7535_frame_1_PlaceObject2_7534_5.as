//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Feeding Reward Bar</b></font>\nFeed the Dragon of Wisdom to fill the Feeding Reward Bar! Whenever it\'s full, you\'ll gain 1% Dragon Boost (which means 1% higher Max Boost). After you reach 300% Dragon Boost, you\'ll gain a random reward instead!\n\nYour current Dragon Boost is displayed on the right.\n\n\nFeed the Dragon of Wisdom <b>" + (reqFeed - _root.save.feedMeter) + "</b> more times for your next reward!";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   checkBar();
}


onClipEvent(load){
   function checkBar()
   {
      if(_root.save.boostZebra >= 300)
      {
         reqFeed = 500;
      }
      else if(_root.save.boostZebra >= 250)
      {
         reqFeed = 250;
      }
      else if(_root.save.boostZebra >= 200)
      {
         reqFeed = 100;
      }
      else if(_root.save.boostZebra >= 150)
      {
         reqFeed = 50;
      }
      else if(_root.save.boostZebra >= 100)
      {
         reqFeed = 25;
      }
      else if(_root.save.boostZebra >= 50)
      {
         reqFeed = 10;
      }
      else
      {
         reqFeed = 5;
      }
      if(_root.save.feedMeter >= reqFeed)
      {
         _root.save.feedMeter -= reqFeed;
         if(_root.save.boostZebra < 300)
         {
            _root.save.boostZebra += 1;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(4);
            _root.accomplishPop.lolMessage.text = "You have gained 1% Dragon Boost!";
         }
         else
         {
            if(Math.random() < 0.0005)
            {
               rewardToGet = 1;
            }
            else if(Math.random() < 0.2)
            {
               rewardToGet = 2 + random(5);
            }
            else if(Math.random() < 0.5)
            {
               rewardToGet = 7 + random(5);
            }
            else
            {
               rewardToGet = 12 + random(5);
            }
            if(rewardToGet >= 2 && rewardToGet <= 8)
            {
               if(Math.random() < 0.01)
               {
                  varToGet = 40;
               }
               else if(Math.random() < 0.1)
               {
                  varToGet = 30;
               }
               else if(Math.random() < 0.3)
               {
                  varToGet = 20;
               }
               else
               {
                  varToGet = 10;
               }
            }
            else if(rewardToGet >= 9 && rewardToGet <= 11)
            {
               if(Math.random() < 0.01)
               {
                  varToGet = 100;
               }
               else if(Math.random() < 0.1)
               {
                  varToGet = 75;
               }
               else if(Math.random() < 0.3)
               {
                  varToGet = 50;
               }
               else
               {
                  varToGet = 25;
               }
            }
            else if(rewardToGet >= 12 && rewardToGet <= 14)
            {
               if(Math.random() < 0.01)
               {
                  varToGet = 2000;
               }
               else if(Math.random() < 0.1)
               {
                  varToGet = 1500;
               }
               else if(Math.random() < 0.3)
               {
                  varToGet = 1000;
               }
               else
               {
                  varToGet = 500;
               }
            }
            if(rewardToGet == 1)
            {
               _root.gainWhiteCoin(2500);
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained 2,500 White Coins!!!";
               _root.dispNews(122,"You have gained 2,500 White Coins!!!");
            }
            else if(rewardToGet == 2)
            {
               _root.save.mysteryBox[4] += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Legendary Boxes!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Legendary Boxes!");
            }
            else if(rewardToGet == 3)
            {
               _root.save.gardenMegaFertilizer += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Mega Fertilizers!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Mega Fertilizers!");
            }
            else if(rewardToGet == 4)
            {
               _root.save.megaCareerPotion += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Mega Career Potions!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Mega Career Potions!");
            }
            else if(rewardToGet == 5)
            {
               _root.save.fishFound[3] += varToGet;
               _root.save.fishLeft[3] += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Golden Treasure Boxes!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Golden Treasure Boxes!");
            }
            else if(rewardToGet == 6)
            {
               _root.save.fishFound[6] += varToGet;
               _root.save.fishLeft[6] += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Golden Keys!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Golden Keys!");
            }
            else if(rewardToGet == 7)
            {
               _root.save.fishFound[2] += varToGet;
               _root.save.fishLeft[2] += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Silver Treasure Boxes!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Silver Treasure Boxes!");
            }
            else if(rewardToGet == 8)
            {
               _root.save.fishFound[5] += varToGet;
               _root.save.fishLeft[5] += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Silver Keys!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Silver Keys!");
            }
            else if(rewardToGet == 9)
            {
               _root.save.gardenFertilizer += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Fertilizers!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Fertilizers!");
            }
            else if(rewardToGet == 10)
            {
               _root.save.careerPotion += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Random Career Potions!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Random Career Potions!");
            }
            else if(rewardToGet == 11)
            {
               _root.save.awesomeRefill += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Energy Refills!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Energy Refills!");
            }
            else if(rewardToGet == 12)
            {
               _root.save.arenaChaoticFragment += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Chaotic Fragments of Chaos!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Chaotic Fragments of Chaos!");
            }
            else if(rewardToGet == 13)
            {
               _root.save.arenaUnobtainium += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Unobtainium!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Unobtainium!");
            }
            else if(rewardToGet == 14)
            {
               _root.save.arenaSuperiorCraft += varToGet;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Superior Crafting Material!";
               _root.dispNews(122,"You have gained " + _root.withComma(varToGet) + " Superior Crafting Material!");
            }
            else if(rewardToGet == 15)
            {
               _root.save.doubleExpTime += 10800;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained 3 hr. 1.5x EXP!";
               _root.dispNews(122,"You have gained 3 hr. 1.5x EXP!");
            }
            else if(rewardToGet == 16)
            {
               _root.save.doubleCoinTime += 10800;
               _root.accomplishPop.targetX = 10;
               _root.accomplishPop.count = 0;
               _root.accomplishPop.gotoAndStop(4);
               _root.accomplishPop.lolMessage.text = "You have gained 3 hr. 1.5x Coins!";
               _root.dispNews(122,"You have gained 3 hr. 1.5x Coins!");
            }
         }
      }
      targetScale = _root.save.feedMeter / reqFeed * 100;
      barInside._xscale += (targetScale - barInside._xscale) / 10;
      boostText.text = _root.save.boostZebra + "%";
   }
   barInside._xscale = 0;
   checkBar();
}


