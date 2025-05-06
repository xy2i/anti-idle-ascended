//! status=pending
on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff8Cost)
   {
      _root.save.fcgCash -= _parent.buff8Cost;
      _root.save.fcgBuff[8] += 1;
   }
   _parent.checkPrice();
}


onClipEvent(enterFrame){
   if(_root.save.fcgCash >= _parent.buff8Cost)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


