//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to buy 1,000 Cyborg Points using 200 White Coins.\n\nClick here while holding Shift to buy 10,000 Cyborg Points using 2,000 White Coins.\n\nClick here while holding Ctrl to buy 100,000 Cyborg Points using 20,000 White Coins.\n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Points are required to make Simulation Cyborg perform tasks. Get more Cyborg Points by using Arcade, Stadium, TukkunFCG and Fishing.";
}


on(release){
   if(Key.isDown(17) && _root.save.whiteCoin >= 20000)
   {
      _root.save.whiteCoin -= 20000;
      _root.gainCyborgPoint(100000);
      _root.actiondescription = "Click here to buy 1,000 Cyborg Points using 200 White Coins.\n\nClick here while holding Shift to buy 10,000 Cyborg Points using 2,000 White Coins.\n\nClick here while holding Ctrl to buy 100,000 Cyborg Points using 20,000 White Coins.\n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Points are required to make Simulation Cyborg perform tasks. Get more Cyborg Points by using Arcade, Stadium, TukkunFCG and Fishing.";
   }
   else if(Key.isDown(16) && _root.save.whiteCoin >= 2000)
   {
      _root.save.whiteCoin -= 2000;
      _root.gainCyborgPoint(10000);
      _root.actiondescription = "Click here to buy 1,000 Cyborg Points using 200 White Coins.\n\nClick here while holding Shift to buy 10,000 Cyborg Points using 2,000 White Coins.\n\nClick here while holding Ctrl to buy 100,000 Cyborg Points using 20,000 White Coins.\n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Points are required to make Simulation Cyborg perform tasks. Get more Cyborg Points by using Arcade, Stadium, TukkunFCG and Fishing.";
   }
   else if(_root.save.whiteCoin >= 200)
   {
      _root.save.whiteCoin -= 200;
      _root.gainCyborgPoint(1000);
      _root.actiondescription = "Click here to buy 1,000 Cyborg Points using 200 White Coins.\n\nClick here while holding Shift to buy 10,000 Cyborg Points using 2,000 White Coins.\n\nClick here while holding Ctrl to buy 100,000 Cyborg Points using 20,000 White Coins.\n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Points are required to make Simulation Cyborg perform tasks. Get more Cyborg Points by using Arcade, Stadium, TukkunFCG and Fishing.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


