//! status=pending
on(dragOver,rollOver){
   focus = true;
   _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
}


on(release){
   doThis();
}


on(rollOut,dragOut){
   focus = false;
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   checkAlpha();
   if(Key.isDown(16) && focus == true && _root.save.petMana < _parent.petMaxB)
   {
      doThis();
   }
}


onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.lolGems[10];
      if(req >= _parent.petCost7)
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
      if(_root.save.lolGems[10] >= _parent.petCost7)
      {
         sellRatio = 0.9;
         if(_root.save.permaBanPenalty[32] == 3)
         {
            sellRatio = 0.95;
         }
         else if(_root.save.permaBanPenalty[32] == 2)
         {
            sellRatio = 0.93;
         }
         else if(_root.save.permaBanPenalty[32] == 1)
         {
            sellRatio = 0.92;
         }
         _root.save.lolProfit += Math.floor(_root.save.lolPrice[10] * sellRatio) * _parent.petCost7;
         _root.save.lolSpent[10] -= Math.ceil(_root.save.lolSpent[10] * _parent.petCost7 / _root.save.lolGems[10]);
         _root.save.lolGems[10] -= _parent.petCost7;
         _parent.feedPet(7);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}


