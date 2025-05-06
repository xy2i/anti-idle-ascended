//! status=pending
on(dragOver,rollOver){
   if(_root.save.dragonReward == 0)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 100! Here are some Cards to help you. Different Cards have different effects. Use them in the Cards screen (World -> Cards)!\n\nReach Lv. 250 to claim your next reward!";
   }
   else if(_root.save.dragonReward == 1)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 250! Here are two Legendary Boxes, which contain random Cards! Open them in the Mystery Box screen (World -> Mystery Box). There are many other types of Mystery Boxes available too. You can get them from various places, or buy them from the Mystery Shop.\n\nReach Lv. 500 to claim your next reward!";
   }
   else if(_root.save.dragonReward == 2)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 500! Here are 5,000 Quest Tokens, which you can use to buy awesome items in the Special Shop! Visit the Special Shop by pressing the Quest or Event buttons below, then click the Special Shop button. If you haven\'t unlocked the Special Shop yet, you will need to pay 10,000 Quest Tokens.\n\nReach Lv. 1,000 to claim your next reward!";
   }
   else if(_root.save.dragonReward >= 3 && _root.save.dragonReward <= 10)
   {
      _root.actiondescription = "Congratulations on reaching Lv. " + _root.withComma(1000 + (_root.save.dragonReward - 3) * 1000) + "! Here is a Supply Crate to help you. The Supply Crate contains various items in different features to help you progress faster!\n\nKeep leveling up to get more rewards!";
   }
   else if(_root.save.dragonReward == 11)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 9,000! Here is a Supply Crate to help you. After reaching Lv. 9,000, you can ascend by taking the sword in this screen to the Ye Olde Pub in the Battle Arena and then battle The Ascendant!";
   }
   else if(_root.save.dragonReward == 12)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 9,001! Here is another Supply Crate to help you.";
   }
}


on(release){
   if(_root.save.dragonReward < deserve)
   {
      _root.save.dragonReward += 1;
      if(_root.save.dragonReward == 1)
      {
         _root.save.ripoffCard[5] += 1;
         _root.save.ripoffCard[6] += 1;
         _root.save.ripoffCard[7] += 1;
         _root.save.ripoffCard[8] += 1;
         _root.dispNews(123,"You have gained 1 Idlebot Card!");
         _root.dispNews(123,"You have gained 1 Autoharvest Card!");
         _root.dispNews(123,"You have gained 1 Invincibility Stars Card!");
         _root.dispNews(123,"You have gained 1 Battery Charger Card!");
      }
      if(_root.save.dragonReward == 2)
      {
         _root.save.mysteryBox[4] += 2;
         _root.dispNews(123,"You have gained 2 Legendary Boxes!");
      }
      if(_root.save.dragonReward == 3)
      {
         _root.save.questToken += 5000;
         _root.dispNews(123,"You have gained 5,000 Quest Tokens!");
      }
      if(_root.save.dragonReward >= 4)
      {
         _root.save.mysteryBox[10] += 1;
         _root.dispNews(123,"You have gained 1 Supply Crate!");
      }
   }
   if(_root.save.dragonReward == 0)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 100! Here are some Cards to help you. Different Cards have different effects. Use them in the Cards screen (World -> Cards)!\n\nReach Lv. 250 to claim your next reward!";
   }
   else if(_root.save.dragonReward == 1)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 250! Here are two Legendary Boxes, which contain random Cards! Open them in the Mystery Box screen (World -> Mystery Box). There are many other types of Mystery Boxes available too. You can get them from various places, or buy them from the Mystery Shop.\n\nReach Lv. 500 to claim your next reward!";
   }
   else if(_root.save.dragonReward == 2)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 500! Here are 5,000 Quest Tokens, which you can use to buy awesome items in the Special Shop! Visit the Special Shop by pressing the Achievement or Quest button below, then click the Special Shop button. If you haven\'t unlocked the Special Shop yet, you will need to pay 10,000 Quest Tokens.\n\nReach Lv. 1,000 to claim your next reward!";
   }
   else if(_root.save.dragonReward >= 3 && _root.save.dragonReward <= 10)
   {
      _root.actiondescription = "Congratulations on reaching Lv. " + _root.withComma(1000 + (_root.save.dragonReward - 3) * 1000) + "! Here is a Supply Crate to help you. The Supply Crate contains various items in different features to help you progress faster!\n\nKeep leveling up to get more rewards!";
   }
   else if(_root.save.dragonReward == 11)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 9,000! Here is a Supply Crate to help you. After reaching Lv. 9,000, you can ascend by taking the sword in this screen to the Ye Olde Pub in the Battle Arena and then battle The Ascendant!";
   }
   else if(_root.save.dragonReward == 12)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 9,001! Here is another Supply Crate to help you.";
   }
   if(_root.save.dragonReward >= deserve)
   {
      _root.actiondescription = "";
      gotoAndStop(2);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   deserve = 0;
   if(_root.save.bestLevel >= 100)
   {
      deserve = 1;
   }
   if(_root.save.bestLevel >= 250)
   {
      deserve = 2;
   }
   if(_root.save.bestLevel >= 500)
   {
      deserve = 3;
   }
   if(_root.save.bestLevel >= 1000)
   {
      deserve = 3 + Math.floor(_root.save.bestLevel / 1000);
   }
   if(_root.save.bestLevel >= 9001)
   {
      deserve = 13;
   }
   if(_root.save.dragonReward >= deserve)
   {
      gotoAndStop(2);
   }
}


