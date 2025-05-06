//! status=pending
on(dragOver,rollOver){
   if(_root.save.fishLevel < 50)
   {
      if(_parent.ready == true && _root.save.coin >= coinCost)
      {
         _root.actiondescription = "<font color=\'#FFFF00\'><b>Skill Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\nCatch more and better fish!";
      }
      else if(_parent.ready == true)
      {
         _root.actiondescription = "<font color=\'#FFFF00\'><b>Skill Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\n<font color=\'#FF0000\'>You don\'t have enough Coins.</font>";
      }
   }
}


on(release){
   if(_root.save.fishLevel >= 50 && _root.save.fishExamLeft < 0)
   {
      if(_root.fishStatus != 2)
      {
         _parent.fishPop.gotoAndStop(4);
      }
   }
   else if(_root.save.fishLevel < 30 && _parent.ready == true && _root.save.coin >= coinCost)
   {
      _root.save.coin -= coinCost;
      _root.save.fishExp = 0;
      _root.save.fishTotalExp += _parent.reqExp;
      _root.save.fishLevel += 1;
      _root.save.fishBestLevel = _root.save.fishLevel;
      _root.dispNews(120,"Your Fishing Skill is now " + _root.save.fishLevel + "!");
      coinCost = Infinity;
      _parent.ready = false;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.fishLevel < 30)
   {
      coinCost = costArray[_root.save.fishLevel];
      if(isNaN(coinCost))
      {
         coinCost = Infinity;
      }
      if(_parent.ready == true && _root.save.coin >= coinCost)
      {
         _alpha = 100;
         _Y = 15;
      }
      else if(_parent.ready == true)
      {
         _alpha = 20;
         _Y = 15;
      }
      else
      {
         _alpha = 0;
         _Y = -500;
      }
   }
   else if(_root.save.fishLevel >= 50 && _root.save.fishExamLeft < 0)
   {
      _alpha = 100;
      _Y = 15;
   }
   else
   {
      _alpha = 0;
      _Y = -500;
   }
}


onClipEvent(load){
   _alpha = 0;
   costArray = new Array();
   costArray[1] = 100000000;
   costArray[2] = 200000000;
   costArray[3] = 400000000;
   costArray[4] = 700000000;
   costArray[5] = 1000000000;
   costArray[6] = 1500000000;
   costArray[7] = 2000000000;
   costArray[8] = 3000000000;
   costArray[9] = 4000000000;
   costArray[10] = 5500000000;
   costArray[11] = 7000000000;
   costArray[12] = 9000000000;
   costArray[13] = 11000000000;
   costArray[14] = 14000000000;
   costArray[15] = 18000000000;
   costArray[16] = 23000000000;
   costArray[17] = 30000000000;
   costArray[18] = 40000000000;
   costArray[19] = 50000000000;
   costArray[20] = 65000000000;
   costArray[21] = 80000000000;
   costArray[22] = 100000000000;
   costArray[23] = 150000000000;
   costArray[24] = 200000000000;
   costArray[25] = 300000000000;
   costArray[26] = 400000000000;
   costArray[27] = 500000000000;
   costArray[28] = 700000000000;
   costArray[29] = 900000000000;
   costArray[30] = Infinity;
}


