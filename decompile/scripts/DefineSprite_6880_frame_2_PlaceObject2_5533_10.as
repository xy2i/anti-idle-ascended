//! status=pending
on(release){
   if(_root.save.stadiumToken >= 50000)
   {
      _root.save.stadiumToken -= 50000;
      _root.save.stadiumBless += 10;
      _root.dispNews(98,"Stadium Blessing (10 races) purchased! (-50,000 Stadium Tokens)");
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.stadiumToken >= 50000)
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


