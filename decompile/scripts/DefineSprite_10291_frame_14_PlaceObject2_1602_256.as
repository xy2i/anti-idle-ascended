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
      req = _root.save.fcgCash;
      if(req >= _parent.petCost6)
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
      if(_root.save.fcgCash >= _parent.petCost6)
      {
         _root.save.fcgCash -= _parent.petCost6;
         _parent.feedPet(6);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}


