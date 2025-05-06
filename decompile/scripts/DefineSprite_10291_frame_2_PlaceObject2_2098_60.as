//! status=pending
on(keyPress "!"){
   if(_root.saveid < 10)
   {
      _parent.gotoAndStop(7);
   }
   else if(_root.saveid < 20)
   {
      _parent.gotoAndStop(22);
   }
   else
   {
      _parent.gotoAndStop(24);
   }
}


on(keyPress "#"){
   _root.saveGlobal.aurianMode = true;
}


on(release){
   _root.save.totalMute += 1;
}


