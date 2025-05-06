//! status=pending
on(dragOver,rollOver){
   focus = true;
   if(_alpha == 100)
   {
      _root.actiondescription = "Coin: <b>+" + _root.withComma(_root.fishArray[_parent.ID].coin * Math.pow(_root.save.bestLevel,0.6) * mult) + "</b>";
   }
}


on(release){
   doThis();
}


on(rollOut,dragOut){
   focus = false;
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.fishArray[_parent.ID].coin > 0 && _root.save.fishLeft[_parent.ID] > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && focus == true)
   {
      doFr += 1;
      if(Key.isDown(17))
      {
         doFr = 1;
      }
      if(doFr <= 10)
      {
         doThis();
      }
      else if(doFr <= 50)
      {
         i = 1;
         while(i <= 5)
         {
            doThis();
            i++;
         }
      }
      else
      {
         i = 1;
         while(i <= 25)
         {
            doThis();
            i++;
         }
      }
   }
   else
   {
      doFr = 0;
   }
}


onClipEvent(load){
   function doThis()
   {
      if(_root.fishArray[_parent.ID].coin > 0 && _root.save.fishLeft[_parent.ID] > 0)
      {
         _root.save.fishLeft[_parent.ID] -= 1;
         _root.gainCoin(Math.floor(_root.fishArray[_parent.ID].coin * Math.pow(_root.save.bestLevel,0.6) * mult));
         _parent.checkStat();
      }
   }
   _alpha = 30;
   focus = false;
   doFr = 0;
   mult = 1;
   if(_root.save.permaBanPenalty[30] == 3)
   {
      mult = 2;
   }
   else if(_root.save.permaBanPenalty[30] == 2)
   {
      mult = 1.6;
   }
   else if(_root.save.permaBanPenalty[30] == 1)
   {
      mult = 1.4;
   }
}


