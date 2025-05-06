//! status=pending
on(dragOver,rollOver){
   if(_root.save.fishCapacity >= 100000)
   {
      _root.actiondescription = "";
   }
   else if(_root.save.coin >= coinCost)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Capacity Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\nCarry even more stuff in your bucket!";
   }
   else
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Capacity Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\n<font color=\'#FF0000\'>You don\'t have enough Coins.</font>";
   }
}


on(release){
   if(_root.save.coin >= coinCost)
   {
      _root.save.coin -= coinCost;
      _root.save.fishCapacity += 2500;
      _parent.fishCapacityText.text = _root.withComma(_root.save.fishCapacity);
      _root.dispNews(120,"Your Bucket Capacity is now " + _root.withComma(_root.save.fishCapacity) + "!");
      coinCost = 900000000;
      if(_root.save.fishCapacity > 2500)
      {
         coinCost = 3000000000;
      }
      if(_root.save.fishCapacity > 5000)
      {
         coinCost = 9000000000;
      }
      if(_root.save.fishCapacity > 7500)
      {
         coinCost = 30000000000;
      }
      if(_root.save.fishCapacity > 10000)
      {
         coinCost = 90000000000;
      }
      if(_root.save.fishCapacity > 12500)
      {
         coinCost = 300000000000;
      }
      if(_root.save.fishCapacity > 15000)
      {
         coinCost = 900000000000;
      }
      if(_root.save.fishCapacity >= 100000)
      {
         coinCost = Infinity;
      }
      if(isNaN(coinCost))
      {
         coinCost = Infinity;
      }
      if(_root.save.fishCapacity >= 100000)
      {
         _root.actiondescription = "";
         coinCost = Infinity;
      }
      else if(_root.save.coin >= coinCost)
      {
         _root.actiondescription = "<font color=\'#FFFF00\'><b>Capacity Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\nCarry even more stuff in your bucket!";
      }
      else
      {
         _root.actiondescription = "<font color=\'#FFFF00\'><b>Capacity Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\n<font color=\'#FF0000\'>You don\'t have enough Coins.</font>";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   coinCost = 900000000;
   if(_root.save.fishCapacity > 2500)
   {
      coinCost = 3000000000;
   }
   if(_root.save.fishCapacity > 5000)
   {
      coinCost = 9000000000;
   }
   if(_root.save.fishCapacity > 7500)
   {
      coinCost = 30000000000;
   }
   if(_root.save.fishCapacity > 10000)
   {
      coinCost = 90000000000;
   }
   if(_root.save.fishCapacity > 12500)
   {
      coinCost = 300000000000;
   }
   if(_root.save.fishCapacity > 15000)
   {
      coinCost = 900000000000;
   }
   if(_root.save.fishCapacity >= 100000)
   {
      coinCost = Infinity;
   }
   if(isNaN(coinCost))
   {
      coinCost = Infinity;
   }
   if(_root.save.coin >= coinCost)
   {
      _alpha = 100;
   }
   else if(_root.save.fishCapacity < 100000)
   {
      _alpha = 20;
   }
   else
   {
      _alpha = 0;
   }
}


onClipEvent(load){
   _alpha = 0;
}


