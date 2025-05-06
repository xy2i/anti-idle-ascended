//! status=pending
on(release){
   _root.setInitDeck("10.9.5.21.1.65.1.67.1.69.1.71.2.73.1.75.1.79.1.81.1.109.1.129.2.143.3.145.1.147.3.149.1.151.3.153.1.155.1.161.1.167.1.191.1.205.1.219");
   _root.save.fcgInitDeck = 3;
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


