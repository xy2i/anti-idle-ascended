//! status=pending
on(release){
   if(_root.save.gardenFruit >= 1000)
   {
      _root.save.gardenFruit -= 1000;
      _root.gainCoin(Math.floor(25000000 * Math.pow(_root.save.level,0.6)));
      _root.save.gardenPoint += 10000;
      _root.dispNews(172,"Gained: " + _root.withComma(Math.floor(25000000 * Math.pow(_root.save.level,0.6))) + " Coins + 10,000 Garden Points!");
   }
}


onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      if(_root.save.gardenFruit >= 1000)
      {
         _root.save.gardenFruit -= 1000;
         _root.gainCoin(Math.floor(25000000 * Math.pow(_root.save.level,0.6)));
         _root.save.gardenPoint += 10000;
         _root.dispNews(172,"Gained: " + _root.withComma(Math.floor(25000000 * Math.pow(_root.save.level,0.6))) + " Coins + 10,000 Garden Points!");
      }
   }
}


