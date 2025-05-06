//! status=pending
on(dragOver,rollOver){
   if(_root.save.awesomeAuto[_parent._currentframe] > 0)
   {
      _root.actiondescription = "This is the option you selected the last time you encountered this adventure. You can press 0 on your keyboard to select this option.";
   }
}


on(release){
   _parent.choice0();
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.awesomeAuto[_parent._currentframe] == 0)
   {
      _alpha = 0;
   }
   else
   {
      _alpha = 100;
      _Y = 137.5 + _root.save.awesomeAuto[_parent._currentframe] * 25;
   }
   if(_root.house.holding[0] == 1 || _root.house.holding[0] >= 20 && _root.house.holding[0] <= 144000)
   {
      _parent.choice0();
   }
}


onClipEvent(load){
   _alpha = 0;
}


