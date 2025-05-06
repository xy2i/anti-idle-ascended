//! status=pending
on(release){
   if(_root.save.buttonPurple >= 500)
   {
      _root.save.buttonPurple -= 500;
      _root.save.buttonBless += 2000;
      _root.dispNews(74,"Button Blessing (2,000 clicks) purchased! (-500 Purple Buttons)");
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.buttonPurple >= 500)
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


