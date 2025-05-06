//! status=pending
on(release){
   _root.setInitDeck("10.5.5.17.1.27.1.29.1.31.1.33.2.35.1.37.1.43.2.103.3.105.1.107.3.109.1.113.3.115.1.121.1.129.1.149.1.167.2.183.1.185.1.205.1.215");
   _root.save.fcgInitDeck = 1;
   _parent.gotoAndStop(2);
}


on(rollOver){
   _alpha = 50;
}


onClipEvent(enterFrame){
   if(_alpha > 10)
   {
      _alpha = _alpha - 2;
   }
}


onClipEvent(load){
   _alpha = 0;
}


