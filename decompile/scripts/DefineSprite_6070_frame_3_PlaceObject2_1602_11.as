//! status=pending
on(dragOver,rollOver){
   checkDesc();
}


on(release){
   if(_root.save.buttonPurple >= cost && _root.save.buttonGrandpa < 20)
   {
      _root.save.buttonPurple -= cost;
      _root.save.buttonGrandpa += 1;
      checkDesc();
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   checkCost();
}


onClipEvent(load){
   function checkCost()
   {
      cost = Math.round(Math.pow(2,_root.save.buttonGrandpa + 1) + Math.pow(_root.save.buttonGrandpa + 1,4) + Math.pow(_root.save.buttonGrandpa + 1,2) + Math.max(0,Math.pow(2,_root.save.buttonGrandpa - 9)));
      if(_root.saveid == 24)
      {
         cost = 9999999999;
      }
      if(_root.save.buttonPurple >= cost && _root.save.buttonGrandpa < 20)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   function checkDesc()
   {
      checkCost();
      if(_root.save.buttonGrandpa < 20)
      {
         _root.actiondescription = "Unlock an additional Grandpa for <b>" + _root.withComma(cost) + "</b> Purple Buttons?";
      }
   }
   cost = 0;
   checkCost();
}


