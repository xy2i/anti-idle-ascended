//! status=pending
on(release){
   if(_root.save.boost < targetBoost - 1)
   {
      _root.gainBoost(9999,1);
   }
}


onClipEvent(enterFrame){
   targetBoost = _root.boostMax;
   _parent.r1.text = targetBoost + "%";
   if(_root.save.boost < targetBoost - 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   _alpha = 30;
   targetBoost = _root.boostMax;
}


