//! status=pending
on(release){
   _root.setInitDeck("10.7.5.19.1.47.1.49.1.51.1.53.2.55.1.57.1.61.1.109.2.123.3.125.1.127.5.129.1.131.1.133.1.137.1.139.1.141.1.149.1.167.1.189.1.205.1.217");
   _root.save.fcgInitDeck = 2;
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


