//! status=pending
on(release){
   if(_root.save.blueCoin >= _parent.costB && _root.save.progSpeedManual < 500)
   {
      _root.save.blueCoin -= _parent.costB;
      _root.save.progSpeedManual += 1;
      _root.dispNews(15,"Anti-Idle Mode Speed upgraded to " + _root.save.progSpeedManual + "%!");
      _parent.dispProgSpeed();
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.blueCoin >= _parent.costB)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   checkAlpha();
}


