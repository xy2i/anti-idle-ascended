//! status=pending
on(release){
   if(_root.save.greenCoin >= _parent.costA && _root.save.progSpeedAuto < 200)
   {
      _root.save.greenCoin -= _parent.costA;
      _root.save.progSpeedAuto += 1;
      _root.dispNews(15,"Idle Mode Speed upgraded to " + _root.save.progSpeedAuto + "%!");
      _parent.dispProgSpeed();
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.greenCoin >= _parent.costA)
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


