//! status=pending
on(release){
   if(_root.save.arcade100kMedal >= 1000 && _root.save.arcadeToken < 99)
   {
      _root.save.arcade100kMedal -= 1000;
      _root.save.arcadeToken += 50;
      _root.house.scoreMedalText.text = _root.withComma(_root.save.arcade100kMedal);
      _root.dispNews(98,"50 Arcade Tokens purchased! (-1,000 Arcade 100k Medals)");
      _parent._parent._parent.checkGlobal();
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.arcade100kMedal >= 1000 && _root.save.arcadeToken < 99)
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


