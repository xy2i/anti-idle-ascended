//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Use an Energy Refill to refill 20% of your Adventure Energy. You can also press 9 on your keyboard.";
   if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
   {
      _root.actiondescription += "\n\nDuring an Impossible Ascension, there is a cooldown for using Energy Refills after 1,000 Energy Refills are used. You have used <b>" + _root.withComma(_root.save.refillAsc) + "</b> Energy Refills this Ascension.";
   }
}


on(release){
   if(_root.save.awesomeRefill > 0 && _root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 4 && _root.save.refillNext < 600)
   {
      if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
      {
         _root.save.refillAsc += 1;
         if(_root.save.refillAsc >= 1000)
         {
            _root.save.refillNext += 30;
         }
      }
      _root.save.awesomeRefill -= 1;
      _root.save.awesomeEnergy += _root.save.awesomeMaxEnergy;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.awesomeRefill > 0 && _root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 4 && _root.save.refillNext < 600)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(_root.house.holding[9] == 1 || _root.house.holding[9] >= 20 && _root.house.holding[9] <= 144000)
   {
      if(_root.save.awesomeRefill > 0 && _root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 4 && _root.save.refillNext < 600)
      {
         if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
         {
            _root.save.refillAsc += 1;
            if(_root.save.refillAsc >= 1000)
            {
               _root.save.refillNext += 30;
            }
         }
         _root.save.awesomeRefill -= 1;
         _root.save.awesomeEnergy += _root.save.awesomeMaxEnergy;
      }
   }
}


