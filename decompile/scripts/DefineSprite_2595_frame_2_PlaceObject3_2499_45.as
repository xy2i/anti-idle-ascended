//! status=pending
on(release,keyPress "<Right>"){
   if(_parent.auView < _root.challengeTime.length - 2)
   {
      _parent.auView += 1;
   }
}


onClipEvent(enterFrame){
   if(_parent.auView < _root.challengeTime.length - 2)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   _alpha = 0;
}


