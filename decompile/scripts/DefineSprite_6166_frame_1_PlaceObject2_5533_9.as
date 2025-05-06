//! status=pending
on(release){
   if(_root.save.arcade100kMedal >= 500)
   {
      _root.save.arcade100kMedal -= 500;
      _root.save.arcadeBless += 10;
      _root.house.scoreMedalText.text = _root.withComma(_root.save.arcade100kMedal);
      _root.dispNews(98,"Arcade Blessing (10 games) purchased! (-500 Arcade 100k Medals)");
   }
}


onClipEvent(enterFrame){
   checkAlpha();
}


onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.arcade100kMedal >= 500)
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


