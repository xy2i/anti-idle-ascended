//! status=pending
on(release){
   if(_root.save.gardenFruit >= 10 && _root.save.gardenFullness <= 9990)
   {
      _root.save.gardenFruit -= 10;
      _root.save.gardenFullness += 10;
      if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
      {
         _root.save.gardenFullness += 40;
      }
      else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
      {
         _root.save.gardenFullness += 10;
      }
      if(_root.save.gardenFullness > 10000)
      {
         _root.save.gardenFullness = 10000;
      }
      _root.gainEXP(Math.floor(400000 * Math.pow(_root.save.level,0.6)));
      _root.dispNews(172,"Gained: " + _root.withComma(Math.floor(400000 * Math.pow(_root.save.level,0.6))) + " EXP!");
   }
   else if(_root.save.gardenFullness >= 9990)
   {
      _root.showPopup("Cannot Eat","You are too full to eat more Randomfruit at the moment.");
   }
}


onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      if(_root.save.gardenFruit >= 10 && _root.save.gardenFullness <= 9990)
      {
         _root.save.gardenFruit -= 10;
         _root.save.gardenFullness += 10;
         if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
         {
            _root.save.gardenFullness += 40;
         }
         else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
         {
            _root.save.gardenFullness += 10;
         }
         if(_root.save.gardenFullness > 10000)
         {
            _root.save.gardenFullness = 10000;
         }
         _root.gainEXP(Math.floor(400000 * Math.pow(_root.save.level,0.6)));
         _root.dispNews(172,"Gained: " + _root.withComma(Math.floor(400000 * Math.pow(_root.save.level,0.6))) + " EXP!");
      }
      else if(_root.save.gardenFullness >= 9990)
      {
         _root.showPopup("Cannot Eat","You are too full to eat more Randomfruit at the moment.");
      }
   }
}


