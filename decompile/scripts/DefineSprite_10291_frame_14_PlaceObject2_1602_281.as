//! status=pending
on(dragOver,rollOver){
   focus = true;
}


on(release){
   doThis();
}


on(rollOut,dragOut){
   focus = false;
}


onClipEvent(enterFrame){
   checkAlpha();
   if(Key.isDown(16) && focus == true)
   {
      doThis();
   }
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.petMana >= 200)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   function doThis()
   {
      if(_root.save.petMana >= 200)
      {
         if(_root.save.careerLevel[11] < 200 || Math.random() < 0.7)
         {
            _root.save.petMana -= 200;
         }
         _root.gainCareerEXP(11,2000,true);
         if(_root.save.questType == "Mad Skillz")
         {
            if(_root.save.questSubtype == "Mystery Effect")
            {
               _root.save.questCount += 1;
            }
         }
         rewardToGet = random(20) + 1;
         if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
         {
            rewardToGet = random(19) + 2;
         }
         if(rewardToGet > 15 && Math.random() < 0.95 || Math.random() < 0.04)
         {
            rewardToGet = random(3) + 2;
         }
         if(rewardToGet == 1)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 600;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 400;
            }
            else
            {
               varToGet = 200;
            }
            _root.progPercent += varToGet * 100;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Insta-Progress!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Insta-Progress!");
         }
         if(rewardToGet == 2)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 6;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 4;
            }
            else
            {
               varToGet = 2;
            }
            _root.save.boostPotion += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Regular Boost Potions!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Regular Boost Potions!");
         }
         if(rewardToGet == 3)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 30;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 20;
            }
            else
            {
               varToGet = 10;
            }
            _root.save.doubleCoinTime += varToGet * 60;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " min. 1.5x Coin!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " minutes of 1.5x Coin!");
         }
         if(rewardToGet == 4)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 30;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 20;
            }
            else
            {
               varToGet = 10;
            }
            _root.save.doubleExpTime += varToGet * 60;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " min. 1.5x EXP!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " minutes of 1.5x EXP!");
         }
         if(rewardToGet == 5)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 600;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 400;
            }
            else
            {
               varToGet = 200;
            }
            _root.save.gardenFruit += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Randomfruit!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Randomfruit!");
         }
         if(rewardToGet == 6)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 600;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 400;
            }
            else
            {
               varToGet = 200;
            }
            _root.save.arenaBacon += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            if(_root.save.vegetarianMode == true)
            {
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Broccoli!";
               _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Broccoli!");
            }
            else
            {
               _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Bacon!";
               _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Bacon!");
            }
         }
         if(rewardToGet == 7)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 600;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 400;
            }
            else
            {
               varToGet = 200;
            }
            _root.save.buttonPurple += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Purple Buttons!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Purple Buttons!");
         }
         if(rewardToGet == 8)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 600;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 400;
            }
            else
            {
               varToGet = 200;
            }
            _root.save.arcade100kMedal += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Arcade 100k Medals!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Arcade 100k Medals!");
         }
         if(rewardToGet == 9)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 60000;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 40000;
            }
            else
            {
               varToGet = 20000;
            }
            _root.save.stadiumToken += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Stadium Tokens!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Stadium Tokens!");
         }
         if(rewardToGet == 10)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 60000;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 40000;
            }
            else
            {
               varToGet = 20000;
            }
            _root.save.fcgCash += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " FCG Cash!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " FCG Cash!");
         }
         if(rewardToGet == 11)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 600;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 400;
            }
            else
            {
               varToGet = 200;
            }
            _root.save.lolGems[10] += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Lv. 10 LolMarket Gems!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Lv. 10 LolMarket Gems!");
         }
         if(rewardToGet == 12)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 600;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 400;
            }
            else
            {
               varToGet = 200;
            }
            _root.save.specialPetFood += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Special Pet Food!";
            _root.dispNews(154,"You have gained +" + _root.withComma(varToGet) + " Special Pet Food!");
         }
         if(rewardToGet == 13)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 6;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 4;
            }
            else
            {
               varToGet = 2;
            }
            _root.save.mysteryBox[1] += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Explosion Crates!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Explosion Crates!");
         }
         if(rewardToGet == 14)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 6;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 4;
            }
            else
            {
               varToGet = 2;
            }
            _root.save.mysteryBox[7] += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Awesome Crates!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Awesome Crates!");
         }
         if(rewardToGet == 15)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 6;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 4;
            }
            else
            {
               varToGet = 2;
            }
            _root.save.mysteryBox[8] += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Chaos Crates!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Chaos Crates!");
         }
         if(rewardToGet == 16)
         {
            if(Math.random() < 0.01)
            {
               varToGet = 6;
            }
            else if(Math.random() < 0.04)
            {
               varToGet = 4;
            }
            else
            {
               varToGet = 2;
            }
            _root.save.megaBoostPotion += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Mega Boost Potions!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Mega Boost Potions!");
         }
         if(rewardToGet == 17)
         {
            if(Math.random() < 0.01)
            {
               varToGet = 6;
            }
            else if(Math.random() < 0.04)
            {
               varToGet = 4;
            }
            else
            {
               varToGet = 2;
            }
            _root.save.gardenMegaFertilizer += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Mega Fertilizers!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Mega Fertilizers!");
         }
         if(rewardToGet == 18)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 15;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 10;
            }
            else
            {
               varToGet = 5;
            }
            _root.save.gardenFertilizer += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Fertilizers!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Fertilizers!");
         }
         if(rewardToGet == 19)
         {
            if(Math.random() < 0.04)
            {
               varToGet = 15;
            }
            else if(Math.random() < 0.2)
            {
               varToGet = 10;
            }
            else
            {
               varToGet = 5;
            }
            _root.save.awesomeRefill += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Energy Refills!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Energy Refills!");
         }
         if(rewardToGet == 20)
         {
            if(Math.random() < 0.01)
            {
               varToGet = 6;
            }
            else if(Math.random() < 0.04)
            {
               varToGet = 4;
            }
            else
            {
               varToGet = 2;
            }
            _root.save.megaCareerPotion += varToGet;
            _root.accomplishPop.targetX = 10;
            _root.accomplishPop.count = 0;
            _root.accomplishPop.gotoAndStop(5);
            _root.accomplishPop.lolMessage.text = "You have gained " + _root.withComma(varToGet) + " Mega Career Potions!";
            _root.dispNews(154,"You have gained " + _root.withComma(varToGet) + " Mega Career Potions!");
         }
         _parent.checkStuff();
      }
   }
   focus = false;
   checkAlpha();
}


