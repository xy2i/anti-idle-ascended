//! status=pending
on(release){
   if(_root.save.coin >= repairCost)
   {
      _root.save.coin -= repairCost;
      if(_root.save.buttonBroken == true)
      {
         _root.save.buttonBroken = false;
         _root.dispNews(73,"Button repaired! (-" + _root.withComma(repairCost) + " Coins)");
         buttonFull._rotation = Math.random() * 10 - Math.random() * 10;
      }
      else
      {
         _root.save.immortality += 1;
         _root.buttonLife = 5000;
         _root.dispNews(73,"Button repaired! (-" + _root.withComma(repairCost) + " Coins)");
      }
   }
   _parent.buttonFull.resetRot();
   _root.buttonScore = 0;
}


onClipEvent(enterFrame){
   if(_root.save.buttonBroken != true)
   {
      repairCost = Math.ceil(Math.sqrt(_root.save.level) * 5000) + 25631;
      _alpha = 10;
   }
   else
   {
      repairCost = Math.ceil(Math.sqrt(_root.save.level) * 500) + 2564;
      _alpha = 100;
   }
   repairCost = Math.floor(repairCost / 25) * 100;
   if(repairCost > 2000000)
   {
      repairCost = 2000000;
   }
   _parent.repairText.text = "-" + _root.withComma(repairCost);
}


onClipEvent(load){
   repairCost = 0;
}


