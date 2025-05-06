//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click here to convert 3 hours of REST time to 30 minutes of Cyborg Energy.\n\nYour REST time: <b>" + _root.convertSecFull(_root.save.restTime) + "</b>\n\nClick here while holding Shift to spend 250 White Coins for 40 minutes of Cyborg Energy. \n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Energy is required for Simulation Cyborg to operate. Get more Cyborg Energy by recharging.";
}


on(release){
   if(Key.isDown(16) && _root.save.whiteCoin >= 250)
   {
      _root.save.whiteCoin -= 250;
      _root.save.botEnergy += 2400;
      if(_root.save.botEnergy > 359999)
      {
         _root.save.botEnergy = 359999;
      }
      _root.actiondescription = "Click here to convert 3 hours of REST time to 30 minutes of Cyborg Energy.\n\nYour REST time: <b>" + _root.convertSecFull(_root.save.restTime) + "</b>\n\nClick here while holding Shift to spend 250 White Coins for 40 minutes of Cyborg Energy. \n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Energy is required for Simulation Cyborg to operate. Get more Cyborg Energy by recharging.";
   }
   else if(_root.save.restTime >= 10800)
   {
      _root.save.restTime -= 10800;
      _root.save.botEnergy += 1800;
      if(_root.save.botEnergy > 359999)
      {
         _root.save.botEnergy = 359999;
      }
      _root.actiondescription = "Click here to convert 3 hours of REST time to 30 minutes of Cyborg Energy.\n\nYour REST time: <b>" + _root.convertSecFull(_root.save.restTime) + "</b>\n\nClick here while holding Shift to spend 250 White Coins for 40 minutes of Cyborg Energy. \n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Energy is required for Simulation Cyborg to operate. Get more Cyborg Energy by recharging.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


