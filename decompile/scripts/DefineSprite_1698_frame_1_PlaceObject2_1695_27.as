//! status=pending
on(release){
   _root.setInitDeck("10.11.5.23.1.85.1.87.1.89.1.91.2.93.1.95.1.99.1.109.1.129.1.149.2.163.3.165.3.167.1.171.1.175.3.177.2.179.1.181.1.197.1.205.1.221");
   _root.save.fcgInitDeck = 4;
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


